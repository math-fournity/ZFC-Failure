#!/usr/bin/env python3
"""Page-by-page visual audit of a parsed PDF with a WorkBuddy vision model (MinerU skill, references/visual-audit.md).

For each requested page:
  1. render the audit asset: 300 dpi grey -> 50 % threshold -> 1-bit PNG (pipeline A of the SOP), record its SHA-256;
  2. render the model input: 200 dpi grey, cut into two overlapping horizontal strips (the SOP warns that whole
     high-resolution pages fail with vision models);
  3. send the strips and the parsed text of that page to the model (default workbuddy-ai/step-5-preview at its highest
     reasoning effort, "high", through the local proxy on 127.0.0.1:3425), asking for the five-point comparison, a
     PASS / PASS± / FAIL verdict and verbatim transcriptions of the evidence sentences we rely on;
  4. repeat (default twice); a page counts as consistent only when the verdicts and the evidence transcriptions agree;
  5. append one JSON line per page to the ledger and one line to AUDIT-PROGRESS.log, immediately.

Images and parsed full texts of copyrighted sources stay outside the repository (--asset-dir); the ledger holds only
verdicts, short differences, short evidence transcriptions and image hashes.

Written 2026-10-22, Claude Code session a15f4b3b, at the research sponsor's request (use WorkBuddy's free vision models,
audit only the pages that are used).
"""
import argparse
import base64
import datetime
import hashlib
import json
import os
import re
import subprocess
import sys
import time
import urllib.request
from pathlib import Path

PROXY = "http://127.0.0.1:3425/v1/chat/completions"
KEY = "magpie"  # the local proxy's fixed key, not a secret

PROMPT = """你是一名严谨的文献视觉审计员。下面给你同一页扫描件的两张条带图（上半页、下半页，有重叠），以及这一页的转写文本（由解析工具产生）。
请逐行对照图像与转写，做五点比对：①漏行或整段丢失 ②错字（含字母、数字、标点、公式记号）③公式与上下标 ④页眉页脚或页码混入正文 ⑤跨页断词。
然后给出分级：PASS（全部吻合）、PASS±（有瑕疵但不误导，例如空格、连字、个别字母 OCR 噪声）、FAIL（内容错误或整段丢失）。
另外，请按图像逐字转写下列“证据句”（以图像为准，不要照抄转写文本；若某句在本页图像中不存在，写 "NOT_ON_PAGE"）：
{evidence}
只输出一个 JSON 对象，不要输出别的文字，格式：
{{"verdict": "PASS|PASS±|FAIL", "differences": [{{"image": "图中原文（短）", "transcript": "转写现状（短）", "kind": "漏行|错字|公式|页眉页脚|断词|其他"}}], "evidence": [{{"id": "E1", "image_text": "逐字转写"}}], "printed_page": "图中印刷页码，没有则空", "notes": "一句话"}}
differences 最多列 15 条，只列有实质意义的；每条不超过 120 字。

转写文本如下：
<<<
{text}
>>>"""


def sha16(p: Path) -> str:
    return hashlib.sha256(p.read_bytes()).hexdigest()[:16]


def render(pdf: Path, page: int, asset_dir: Path, doc: str):
    asset_dir.mkdir(parents=True, exist_ok=True)
    tmp = asset_dir / f"tmp-{os.getpid()}"  # one per process: groups of pages may run in parallel
    tmp.mkdir(exist_ok=True)
    for f in tmp.glob("*"):
        f.unlink()
    # audit asset: 300 dpi grey -> th50 1-bit
    subprocess.run(["pdftoppm", "-png", "-gray", "-r", "300", "-f", str(page), "-l", str(page), str(pdf), str(tmp / "g300")], check=True)
    g300 = sorted(tmp.glob("g300*.png"))[0]
    asset = asset_dir / f"{doc}-page-{page:03d}.png"
    subprocess.run(["magick", str(g300), "-threshold", "50%", "-strip", "-define", "png:bit-depth=1", "-compress", "zip", str(asset)], check=True)
    g300.unlink()
    # model input: 200 dpi grey, two overlapping strips
    subprocess.run(["pdftoppm", "-png", "-gray", "-r", "200", "-f", str(page), "-l", str(page), str(pdf), str(tmp / "g200")], check=True)
    g200 = sorted(tmp.glob("g200*.png"))[0]
    wh = subprocess.run(["magick", "identify", "-format", "%w %h", str(g200)], check=True, capture_output=True, text=True).stdout.split()
    w, h = int(wh[0]), int(wh[1])
    half, ov = h // 2, h // 12
    strips = []
    for k, (y, hh) in enumerate([(0, half + ov), (half - ov, h - (half - ov))]):
        out = asset_dir / f"{doc}-page-{page:03d}-strip{k + 1}.png"
        subprocess.run(["magick", str(g200), "-crop", f"{w}x{hh}+0+{y}", "+repage", str(out)], check=True)
        strips.append(out)
    g200.unlink()
    return asset, strips


def ask(model: str, effort: str, strips, prompt: str, timeout: int = 900):
    content = [{"type": "text", "text": prompt}]
    for s in strips:
        content.append({"type": "image_url", "image_url": {"url": "data:image/png;base64," + base64.b64encode(s.read_bytes()).decode()}})
    body = {"model": model, "reasoning_effort": effort, "messages": [{"role": "user", "content": content}]}
    req = urllib.request.Request(PROXY, data=json.dumps(body).encode(), headers={"Content-Type": "application/json", "Authorization": f"Bearer {KEY}"})
    t = time.time()
    r = json.load(urllib.request.urlopen(req, timeout=timeout))
    msg = r["choices"][0]["message"]
    raw = msg.get("content") or ""
    m = re.search(r"\{.*\}", raw, re.S)
    try:
        parsed = json.loads(m.group(0)) if m else None
    except json.JSONDecodeError:
        parsed = None
    return {"secs": round(time.time() - t, 1), "usage": r.get("usage"), "parsed": parsed, "raw": None if parsed else raw[:4000]}


def norm(s: str) -> str:
    return re.sub(r"\s+", " ", (s or "")).strip()


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--pdf", required=True)
    ap.add_argument("--doc", required=True, help="short document name used in file names and the ledger")
    ap.add_argument("--pages", required=True, help="comma-separated PDF page numbers")
    ap.add_argument("--text", required=True, help="directory with p<NNN>.txt (or p<NN>.txt) per page: the parse to be audited")
    ap.add_argument("--text-source", required=True, help="what produced the text, e.g. 'MinerU standard' or 'pdftotext text layer'")
    ap.add_argument("--evidence", default=None, help="JSON file: {page: [{id, hint}]} evidence sentences to transcribe")
    ap.add_argument("--asset-dir", required=True, help="outside the repository: page images")
    ap.add_argument("--ledger", required=True, help="JSONL ledger (append)")
    ap.add_argument("--progress", required=True, help="AUDIT-PROGRESS.log (append)")
    ap.add_argument("--model", default="workbuddy-ai/step-5-preview")
    ap.add_argument("--effort", default="high")
    ap.add_argument("--repeats", type=int, default=2)
    a = ap.parse_args()
    pdf, tdir, adir = Path(a.pdf), Path(a.text), Path(a.asset_dir)
    ev = json.loads(Path(a.evidence).read_text(encoding="utf-8")) if a.evidence else {}
    for page in [int(x) for x in a.pages.split(",")]:
        cand = [tdir / f"p{page:03d}.txt", tdir / f"p{page:02d}.txt"]
        tfile = next((c for c in cand if c.exists()), None)
        if tfile is None:
            print(f"page {page}: no text file in {tdir}", file=sys.stderr)
            return 2
        text = tfile.read_text(encoding="utf-8")
        items = ev.get(str(page), [])
        evtext = "\n".join(f"{e['id']}：{e['hint']}" for e in items) or "（本页没有指定证据句，evidence 返回空列表）"
        asset, strips = render(pdf, page, adir, a.doc)
        runs = []
        for _ in range(a.repeats):
            try:
                runs.append(ask(a.model, a.effort, strips, PROMPT.format(evidence=evtext, text=text)))
            except Exception as e:  # transport or model error: record, do not hide
                runs.append({"error": f"{type(e).__name__}: {e}"})
        verdicts = [r.get("parsed", {}).get("verdict") if r.get("parsed") else None for r in runs]
        evs = [{x.get("id"): norm(x.get("image_text")) for x in (r.get("parsed") or {}).get("evidence", [])} for r in runs]
        consistent = all(v is not None for v in verdicts) and len(set(verdicts)) == 1 and all(e == evs[0] for e in evs)
        rec = {"time": datetime.datetime.now(datetime.timezone.utc).isoformat(timespec="seconds"), "doc": a.doc, "pdf_page": page,
               "asset": asset.name, "asset_sha256_16": sha16(asset), "strips_sha256_16": [sha16(s) for s in strips],
               "text_file": tfile.name, "text_source": a.text_source, "model": a.model, "effort": a.effort,
               "verdicts": verdicts, "consistent": consistent, "runs": runs}
        with open(a.ledger, "a", encoding="utf-8") as f:
            f.write(json.dumps(rec, ensure_ascii=False) + "\n")
        with open(a.progress, "a", encoding="utf-8") as f:
            f.write(f"{datetime.datetime.now().strftime('%Y-%m-%d %H:%M')} | PAGE | {a.doc} | p.{page} | {'/'.join(str(v) for v in verdicts)} | consistent={consistent} | {a.model} {a.effort}\n")
        print(a.doc, page, verdicts, "consistent" if consistent else "INCONSISTENT")
    return 0


if __name__ == "__main__":
    sys.exit(main())
