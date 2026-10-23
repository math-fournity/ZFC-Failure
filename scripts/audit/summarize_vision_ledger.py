#!/usr/bin/env python3
"""Summarize the ledgers written by vision_audit_workbuddy.py, and make a copy that can be committed.

Written 2026-10-22 by Claude Code session a15f4b3b for CG-011 G6 (the Verdier and Bondal–Kapranov PDFs).

Why a second file: the raw ledger holds the vision model's verbatim transcriptions of the evidence sentences.
Those are excerpts of copyrighted papers, so the raw ledger stays next to the PDFs, outside the repository.
The repository gets a redacted ledger (each transcription replaced by its opening words, length and hash) and a
Markdown summary.  Anyone with the PDF can rerun the audit and compare the hashes.

For each evidence item the summary reports:
* agreement of the two runs: similarity after typographic normalization (quotes, dashes, LaTeX wrappers, spaces),
  and whether the normalized texts are equal;
* coverage in each text source of the same page (MinerU, PDF text layer): the share of the transcription's
  characters that occur, in order, in that source (difflib matching blocks).

Usage:
  python3 -I scripts/audit/summarize_vision_ledger.py --ledger RAW.jsonl [--ledger ...] \
      --source DOC=LABEL=DIR [--source ...] --summary OUT.md --redacted OUT.jsonl [--show]
DIR holds p<NNN>.txt or p<NN>.txt per PDF page.  --show prints the full transcriptions to stdout (never to a file).
"""
from __future__ import annotations

import argparse
import difflib
import hashlib
import json
import re
import sys
import unicodedata
from collections import Counter
from pathlib import Path

LATEX = [
    (r"\\xrightarrow\{([^}]*)\}", r" → "), (r"\\(?:to|rightarrow|longrightarrow)\b", " → "),
    (r"\\(?:mathbf|mathcal|mathrm|mathbb|widetilde|operatorname|text|textit|textbf)\{([^}]*)\}", r"\1"),
    (r"\\[a-zA-Z]+", " "), (r"[${}]", " "),
]
QUOTES = str.maketrans({"’": "'", "‘": "'", "´": "'", "`": "'", "“": '"', "”": '"', "«": '"', "»": '"', "„": '"',
                        "–": "-", "—": "-", "‑": "-", "\u00a0": " "})


def norm(s: str) -> str:
    s = unicodedata.normalize("NFKC", s or "").translate(QUOTES)
    for pat, rep in LATEX:
        s = re.sub(pat, rep, s)
    s = re.sub(r"\s+([,.;:)])", r"\1", s)
    s = re.sub(r"([(])\s+", r"\1", s)
    return re.sub(r"\s+", " ", s).strip()


def coverage(ev: str, src: str) -> float:
    if not ev:
        return 0.0
    m = difflib.SequenceMatcher(None, ev, src, autojunk=False)
    return sum(b.size for b in m.get_matching_blocks()) / len(ev)


def sha16(s: str) -> str:
    return hashlib.sha256(s.encode("utf-8")).hexdigest()[:16]


def incipit(s: str, words: int = 6) -> str:
    w = s.split()
    return " ".join(w[:words]) + (" …" if len(w) > words else "")


def page_text(d: Path, page: int) -> str | None:
    for c in (d / f"p{page:03d}.txt", d / f"p{page:02d}.txt"):
        if c.exists():
            return c.read_text(encoding="utf-8")
    return None


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--ledger", action="append", required=True)
    ap.add_argument("--source", action="append", default=[], help="DOC=LABEL=DIR")
    ap.add_argument("--summary", required=True)
    ap.add_argument("--redacted", required=True)
    ap.add_argument("--show", action="store_true")
    a = ap.parse_args()
    sources: dict[str, list[tuple[str, Path]]] = {}
    for s in a.source:
        doc, label, d = s.split("=", 2)
        sources.setdefault(doc, []).append((label, Path(d)))
    recs = [json.loads(line) for f in a.ledger for line in Path(f).read_text(encoding="utf-8").splitlines() if line.strip()]
    recs.sort(key=lambda r: (r["doc"], r["pdf_page"]))

    out = ["# 视觉审计汇总（由 `scripts/audit/summarize_vision_ledger.py` 生成，勿手改）", ""]
    redacted = []
    for doc in sorted({r["doc"] for r in recs}):
        rows = [r for r in recs if r["doc"] == doc]
        labels = [lab for lab, _ in sources.get(doc, [])]
        out += [f"## {doc}", "", f"模型：{rows[0]['model']}（{rows[0]['effort']}），每页两次；被审计的转写：{rows[0]['text_source']}。", "",
                "### 逐页", "", "| PDF 页 | 印刷页 | 两次判定 | 一致 | 差异（按类，两次合计） |", "|---|---|---|---|---|"]
        ev_rows = []
        for r in rows:
            kinds: Counter = Counter()
            printed = ""
            for run in r["runs"]:
                p = run.get("parsed") or {}
                printed = printed or str(p.get("printed_page") or "")
                kinds.update(d.get("kind", "其他") for d in p.get("differences", []))
            out.append(f"| {r['pdf_page']} | {printed} | {' / '.join(str(v) for v in r['verdicts'])} | {'是' if r['consistent'] else '否'} | "
                       + ("、".join(f"{k} {n}" for k, n in kinds.most_common()) or "无") + " |")
            texts = {lab: norm(page_text(d, r["pdf_page"]) or "") for lab, d in sources.get(doc, [])}
            ids = sorted({e.get("id") for run in r["runs"] for e in (run.get("parsed") or {}).get("evidence", [])})
            for eid in ids:
                tr = [next((norm(e.get("image_text")) for e in (run.get("parsed") or {}).get("evidence", []) if e.get("id") == eid), "")
                      for run in r["runs"]]
                sim = difflib.SequenceMatcher(None, tr[0], tr[1], autojunk=False).ratio() if len(tr) > 1 else 1.0
                same = len(set(tr)) == 1
                cov = {lab: max(coverage(t, texts[lab]) for t in tr) if texts[lab] else None for lab in labels}
                ev_rows.append((eid, r["pdf_page"], printed, incipit(tr[0]), len(tr[0]), sim, same, cov, [sha16(t) for t in tr]))
                if a.show:
                    print(f"=== {doc} p.{r['pdf_page']} {eid}")
                    for i, t in enumerate(tr, 1):
                        print(f"  run{i}: {t}")
            red = {k: v for k, v in r.items() if k != "runs"}
            red["runs"] = []
            for run in r["runs"]:
                p = run.get("parsed") or {}
                red["runs"].append({
                    "secs": run.get("secs"), "usage": run.get("usage"), "error": run.get("error"),
                    "verdict": p.get("verdict"), "printed_page": p.get("printed_page"), "notes": p.get("notes"),
                    "differences": [{"kind": d.get("kind"), "image": (d.get("image") or "")[:60], "transcript": (d.get("transcript") or "")[:60]}
                                    for d in p.get("differences", [])],
                    "evidence": [{"id": e.get("id"), "incipit": incipit(norm(e.get("image_text"))), "chars": len(norm(e.get("image_text"))),
                                  "sha256_16": sha16(norm(e.get("image_text")))} for e in p.get("evidence", [])],
                    "unparsed": run.get("raw") is not None,
                })
            redacted.append(red)
        out += ["", "### 证据句", "",
                "| 证据 | PDF 页 | 印刷页 | 开头 | 字符 | 两次相似度 | 两次相同 | " + " | ".join(f"{lab} 覆盖率" for lab in labels) + " | 哈希（两次） |",
                "|---|---|---|---|---|---|---|" + "---|" * len(labels) + "---|"]
        for eid, pg, printed, inc, n, sim, same, cov, hs in ev_rows:
            out.append(f"| {eid} | {pg} | {printed} | {inc} | {n} | {sim:.3f} | {'是' if same else '否'} | "
                       + " | ".join("—" if cov[lab] is None else f"{cov[lab]:.3f}" for lab in labels) + f" | {' / '.join(hs)} |")
        out.append("")
    out += ["覆盖率是证据句的字符按顺序出现在该来源同一页里的比例（两次转写取高者），只说明来源里有没有这句，不判断谁对。",
            "相似度与哈希都在规范化之后计算：引号、破折号、LaTeX 包装与空白统一。", ""]
    Path(a.summary).write_text("\n".join(out), encoding="utf-8")
    with open(a.redacted, "w", encoding="utf-8") as f:
        for red in redacted:
            f.write(json.dumps(red, ensure_ascii=False) + "\n")
    print(f"{len(recs)} pages; summary {a.summary}; redacted {a.redacted}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
