#!/usr/bin/env python3
"""locate_target_pages.py — find the few pages of a huge PDF that actually matter.

Rationale (Z07 §4): a whole book does NOT need to be parsed.  A negative claim
("term X never occurs") can be supported by a per-page coverage certificate from
cheap text extraction; the positive evidence lives on a handful of pages, which
are located first and then — and only then — handed to MinerU, then visually
audited.  MinerU is for "read it"; the visual audit is for "this sentence counts".

Usage (from repo root):
  python3 -B docs/芝诺解决考古/来源/_verify/locate_target_pages.py <pdf> \
      [--terms Zeno Achilles tortoise paradox Dichotomy] \
      [--controls limit derivative function integral] \
      [--empty-threshold 200] [--max-hits 40] [--out TSV] [--extract PAGES]

Outputs a per-page coverage certificate plus, for every term, the pages it lands on.
With --extract 74-77 it also writes a subset PDF containing just those pages via
Ghostscript (the source PDF is never split or modified).
"""
from __future__ import annotations

import argparse
import os
import re
import statistics
import subprocess
import sys
import tempfile

PDFTOPAGE = "pdftotext"


def get_pages(pdf: str):
    """Split the whole PDF into per-page text via pdftotext form-feed pages."""
    with tempfile.NamedTemporaryFile(suffix=".txt", delete=False) as tf:
        tmp = tf.name
    try:
        r = subprocess.run([PDFTOPAGE, pdf, tmp], capture_output=True, timeout=3600)
        if r.returncode != 0:
            sys.exit("pdftotext failed: %s" % r.stderr.decode("utf-8", "replace")[:300])
        text = open(tmp, "rb").read().decode("utf-8", "replace")
    finally:
        if os.path.exists(tmp):
            os.unlink(tmp)
    chunks = text.split("\f")
    if chunks and not chunks[-1].strip():
        chunks = chunks[:-1]        # trailing form-feed artefact
    return chunks


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("pdf")
    ap.add_argument("--terms", nargs="+",
                    default=["Zeno", "Achilles", "tortoise", "paradox", "Paradox", "Dichotomy"])
    ap.add_argument("--controls", nargs="+",
                    default=["limit", "derivative", "function", "integral"])
    ap.add_argument("--empty-threshold", type=int, default=200)
    ap.add_argument("--max-hits", type=int, default=40)
    ap.add_argument("--out")
    ap.add_argument("--extract", metavar="A-B")
    args = ap.parse_args()

    pages = get_pages(args.pdf)
    lens = [len(p.strip()) for p in pages]
    n = len(pages)
    empty = [i + 1 for i, L in enumerate(lens) if L < args.empty_threshold]

    lines = []
    lines.append("PDF: %s" % os.path.abspath(args.pdf))
    lines.append("pages: %d" % n)
    lines.append("chars per page: min=%d median=%d max=%d"
                 % (min(lens), int(statistics.median(lens)), max(lens)))
    lines.append("pages under %d chars: %d -> %s"
                 % (args.empty_threshold, len(empty), empty[:40]))
    lines.append("")

    def report(group, terms):
        lines.append("== %s ==" % group)
        for t in terms:
            hits = [i + 1 for i, p in enumerate(pages)
                    if 0 < len(p) and re.search(r"\b" + re.escape(t) + r"\b", p)]
            shown = hits[: args.max_hits]
            lines.append("  %-14s %6d pages  %s%s"
                         % (t, len(hits), shown, " ..." if len(hits) > len(shown) else ""))
        lines.append("")

    report("Zeno family (target negative claim)", args.terms)
    report("positive controls (pipeline validity)", args.controls)

    text = "\n".join(lines)
    print(text)
    if args.out:
        with open(args.out, "w", encoding="utf-8") as f:
            f.write(text + "\n")
        print("wrote %s" % args.out)

    if args.extract:
        a, b = (int(x) for x in args.extract.split("-"))
        base = os.path.splitext(os.path.basename(args.pdf))[0]
        out = os.path.join(os.path.dirname(os.path.abspath(args.pdf)),
                           "%s_p%d-%d.pdf" % (base, a, b))
        cmd = ["gs", "-q", "-dNOPAUSE", "-dBATCH", "-sDEVICE=pdfwrite",
               "-dFirstPage=%d" % a, "-dLastPage=%d" % b,
               "-sOutputFile=%s" % out, args.pdf]
        r = subprocess.run(cmd, capture_output=True)
        size = os.path.getsize(out) if os.path.exists(out) else -1
        print("\nsubset: %s  %d bytes  (gs rc=%d)" % (out, size, r.returncode))
        print("next: mineru parse %s --pages 1-%d --wait 540 --limit 100000000 --json --remote"
              % (os.path.basename(out), b - a + 1))

    return 0


if __name__ == "__main__":
    sys.exit(main())
