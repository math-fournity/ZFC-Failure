#!/usr/bin/env python3
"""Re-verify every quoted span in Z06 against two independent SEP snapshots.

Usage (from repo root):
  python3 -B docs/芝诺解决考古/来源/_verify/verify_z06_quotes.py

Matching convention (same as Z01-Z05): strip whitespace, diacritics and all
punctuation, then lowercase, and test substring containment.  For an HTML
source the tags and entities are removed first; leaving them in produces false
negatives (documented in Z06 §1).
"""
from __future__ import annotations

import re
import sys
import unicodedata
from pathlib import Path

ROOT = Path(__file__).resolve().parents[4]
DOC = ROOT / "docs/芝诺解决考古/来源/Z06-SEP芝诺条目通读-终点不在序列内与必须被添加-20261020.md"
SRC_TXT = ROOT / "docs/芝诺解决考古/搜索原始响应-20261017/zeno-溯源/sep-zeno-huggett.txt"
SRC_HTML = ROOT / "sources/external/zfc-meta-subtheory-c0r3-20261005/SEP-Zenos-Paradoxes.html"

QUOTES = [
    ("S-SEP-1", "There is no problem at any finite point in this series, but what if the halving is carried out infinitely many times?"),
    ("S-SEP-2", "Thus the series of distances that Atalanta is required to run is: \u2026, then 1/16 of the way, then 1/8 of the way, then 1/4 of the way, and finally 1/2 of the way"),
    ("S-SEP-3", "which is to say it is never completed"),
    ("S-SEP-4", "the problem of completing a series of actions that has no final member\u2014in this case the infinite series of catch-ups before Achilles reaches the tortoise"),
    ("S-SEP-5", "1m does not occur in the sequence 0.9m, 0.99m, 0.999m, \u2026, so of course he never catches the tortoise during that sequence of runs!"),
    ("S-SEP-6", "Thus the series of catch-ups does not after all completely decompose the run: the final point\u2014at which Achilles does catch the tortoise\u2014must be added to it."),
    ("S-SEP-7", "an infinity of members followed by one more"),
    ("S-SEP-8", "Fortunately the theory of transfinites pioneered by Cantor assures us that such a series is perfectly respectable"),
    ("S-SEP-9", "the time Atalanta takes to reach the bus stop is composed of an infinite number of finite pieces\u2014\u2026, 1/8, 1/4, and 1/2 of the total time\u2014and isn\u2019t that an infinite time?"),
    ("S-SEP-10", "This work remains the \u2018received\u2019 view, and thoroughly influences the following discussion, in approach and in specific analyses."),
    ("S-SEP-11", "solutions that would satisfy Zeno\u2019s standards of rigor would not satisfy ours"),
    ("S-SEP-12", "we have clearly seen that the tools of standard modern mathematics are up to the job of resolving the paradoxes, so no such conclusion seems warranted"),
    ("S-SEP-13", "Is it really possible to complete any infinite series of actions: to complete what is known as a \u2018supertask\u2019?"),
    ("S-SEP-14", "What infinity machines are supposed to establish is that an infinite series of tasks cannot be completed"),
    ("S-SEP-15", "It would not answer Zeno\u2019s paradoxes if the mathematical framework we invoked was not a good description of actual space, time, and motion!"),
    ("S-SEP-16", "But surely they do: nothing guarantees a priori that space has the structure of the continuum, or even that parts of space add up according to Cauchy\u2019s definition."),
    ("S-SEP-17", "they are no more an argument against non-standard analysis than against the standard mathematics we have assumed here"),
    ("S-SEP-18", "there is no need for non-standard analysis to solve the paradoxes: either system is equally successful"),
    ("S-SEP-19", "But they cannot both be true of space and time: either space has infinitesimal parts or it doesn\u2019t."),
]

HTML_ENTITIES = [
    ("&nbsp;", " "), ("&rsquo;", "'"), ("&lsquo;", "'"), ("&ldquo;", '"'), ("&rdquo;", '"'),
    ("&mdash;", "-"), ("&ndash;", "-"), ("&hellip;", "..."), ("&amp;", "&"), ("&#8217;", "'"),
]


def strip_html(text: str) -> str:
    for entity, plain in HTML_ENTITIES:
        text = text.replace(entity, plain)
    return re.sub(r"<[^>]+>", " ", text)


def normalise(text: str) -> str:
    text = unicodedata.normalize("NFKD", text)
    return re.sub(r"[^A-Za-z0-9]", "", text).lower()


def main() -> int:
    if not DOC.is_file() or not SRC_TXT.is_file() or not SRC_HTML.is_file():
        print("MISSING_INPUT")
        return 2
    txt_corpus = normalise(SRC_TXT.read_text(encoding="utf-8", errors="replace"))
    html_corpus = normalise(strip_html(SRC_HTML.read_text(encoding="utf-8", errors="replace")))
    failures = []
    for quote_id, quote in QUOTES:
        needle = normalise(quote)
        in_txt = needle in txt_corpus
        in_html = needle in html_corpus
        if not (in_txt and in_html):
            failures.append((quote_id, in_txt, in_html))
    for quote_id, in_txt, in_html in failures:
        print(f"FAIL {quote_id} txt={in_txt} html={in_html}")
    print(json_line({"quotes": len(QUOTES), "failures": len(failures)}))
    return 0 if not failures else 1


def json_line(payload: dict) -> str:
    import json
    return json.dumps(payload, ensure_ascii=False, sort_keys=True)


if __name__ == "__main__":
    sys.exit(main())
