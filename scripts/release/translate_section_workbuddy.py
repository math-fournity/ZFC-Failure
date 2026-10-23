#!/usr/bin/env python3
"""Draft translations of one new CLAIMS.md section with a WorkBuddy model (free, through the local proxy).

Each language gets the Chinese section and, as a terminology and style reference, the section of the same language's
existing CLAIMS template that precedes it. The draft keeps the table structure, identifiers, code, paths, run IDs and
status labels exactly; only the prose is translated. Drafts are reviewed before they enter a template; the template
header names both the drafting model and the reviewer.

Written 2026-10-22, Claude Code session a15f4b3b (main release with the H-deepening packages).
"""
import argparse
import json
import re
import sys
import time
import urllib.request
from pathlib import Path

PROXY = "http://127.0.0.1:3425/v1/chat/completions"
KEY = "magpie"  # the local proxy's fixed key, not a secret
NAMES = {"en": "English", "de": "German", "fr": "French", "ru": "Russian"}

INSTRUCTIONS = """You translate one section of a mathematical claims file from Chinese into {lang}.
Rules (strict):
1. Output only the translated Markdown section, nothing before or after it, no code fences.
2. Keep the structure exactly: the level-2 heading, the quoted note, the table header and separator, and one table row per
   source row in the same order. Every row must keep the same number of cells (the same number of `|` separators).
3. Keep unchanged: everything inside backticks, identifiers such as CG001-C-436 and MP-CG001-..., run IDs, file paths,
   formal expressions (∥ A ∥ n, ≡ˢ, ⊢, 𝗭𝗙𝗖, Type₁, …), Lean/Agda names, status labels, and section references such as §6 (b).
   Quotations of the research initiator in Chinese (text inside “…” attributed to the initiator) stay in Chinese, followed
   by a translation in parentheses.
4. Translate the table header cells as: ID | {h1} | proof / run | {h3} | {h4}.
5. Use the terminology and register of the reference section below (an earlier section of the same file in {lang}),
   e.g. how it renders 一句话, 禁止外推, 负控制, 读法, 内核实跑, 精确重放. Translate 宣布完成 as the reference would render
   "declaring completion", 追问 as "questioning", 落在第 n 层 as "lies at level n", 层 as "level".
6. Be faithful: do not add, drop or soften any condition or limitation. Where the Chinese is terse, stay terse.

Reference section in {lang}:
<<<
{reference}
>>>

Chinese section to translate:
<<<
{source}
>>>"""

HEADERS = {
    "en": ("One-line claim", "Candidate", "Limits on extrapolation"),
    "de": ("Aussage in einem Satz", "Kandidat", "Grenzen der Extrapolation"),
    "fr": ("Énoncé en une phrase", "Candidat", "Limites de l'extrapolation"),
    "ru": ("Утверждение одной фразой", "Кандидат", "Пределы экстраполяции"),
}


def section_of(text: str, start: str, end: str) -> str:
    i = text.index(start)
    j = text.index(end, i)
    return text[i:j].strip()


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--source", required=True, help="the Chinese section (Markdown)")
    ap.add_argument("--lang", required=True, choices=sorted(NAMES))
    ap.add_argument("--template", required=True, help="the existing CLAIMS template of that language")
    ap.add_argument("--ref-start", required=True, help="first line of the reference section in the template")
    ap.add_argument("--ref-end", required=True, help="first line after the reference section")
    ap.add_argument("--out", required=True)
    ap.add_argument("--model", default="workbuddy-ai/deepseek-v4.1-flash")
    ap.add_argument("--effort", default="max")
    a = ap.parse_args()
    src = Path(a.source).read_text(encoding="utf-8")
    ref = section_of(Path(a.template).read_text(encoding="utf-8"), a.ref_start, a.ref_end)
    h1, h3, h4 = HEADERS[a.lang]
    prompt = INSTRUCTIONS.format(lang=NAMES[a.lang], h1=h1, h3=h3, h4=h4, reference=ref, source=src)
    body = {"model": a.model, "reasoning_effort": a.effort, "messages": [{"role": "user", "content": prompt}]}
    req = urllib.request.Request(PROXY, data=json.dumps(body).encode(), headers={"Content-Type": "application/json", "Authorization": f"Bearer {KEY}"})
    t = time.time()
    r = json.load(urllib.request.urlopen(req, timeout=3600))
    out = (r["choices"][0]["message"].get("content") or "").strip()
    out = re.sub(r"^```[a-z]*\n|\n```$", "", out)
    Path(a.out).write_text(out + "\n", encoding="utf-8")
    src_rows = [l for l in src.splitlines() if l.startswith("| `CG001-")]
    out_rows = [l for l in out.splitlines() if l.startswith("| `CG001-")]
    cells = [(s.count("|"), o.count("|")) for s, o in zip(src_rows, out_rows)]
    print(json.dumps({"lang": a.lang, "secs": round(time.time() - t, 1), "usage": r.get("usage"), "rows_src": len(src_rows),
                      "rows_out": len(out_rows), "cell_mismatch": [i for i, (x, y) in enumerate(cells) if x != y]}, ensure_ascii=False))
    return 0 if len(src_rows) == len(out_rows) else 1


if __name__ == "__main__":
    sys.exit(main())
