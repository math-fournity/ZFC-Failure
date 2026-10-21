#!/usr/bin/env python3
"""Re-verify the Z07 keyword tables against the local Thomas/Stewart text dumps.

Usage (from repo root):
  python3 -B docs/芝诺解决考古/来源/_verify/verify_z07_textbooks.py [--texts-dir DIR]

The two source PDFs are NOT required: this only re-checks the extracted text,
whose sha256 is pinned in Z07 §1.  Pass --texts-dir to point at the directory
holding thomas_full.txt / stewart_full.txt (default /tmp/r3-pdf).

Two matching conventions are checked, because they disagree on Latin
inflections (Z07 §3.1):
  strict = ASCII word boundary  (functionis does NOT count as function)
  substr = plain substring       (functionis DOES count as function)

Exit codes: 0 = every count in Z07 reproduced; 1 = mismatch or missing file.
"""
from __future__ import annotations

import argparse
import hashlib
import re
import sys
from pathlib import Path

PINNED = {
    "thomas_full.txt": "a034b7741a2ac05c9248d54a1e3861823a21e75213b746e2442c6b1dbdbc3694",
    "stewart_full.txt": "64573644a46668c3fd939c14fa4223c53f6414acb41ea0061e35d8e0284ba143",
}

# (word, (strict_thomas, strict_steward), (substr_thomas, substr_steward))
# The steward substring hits are exactly the noise Z07 §3 names as why S1 is unusable:
# 'zeno'/'Stade' substrings fall inside Latin/German words, 'paradox'/'Paradox' inside the
# French historical preface (Bolzano / Uhde matter).  Thomas is zero under BOTH conventions,
# which is the load-bearing fact.
ZENO_FAMILY = [
    ("Zeno",      (0, 0), (0, 0)),
    ("zeno",      (0, 0), (0, 1)),
    ("Achilles",  (0, 0), (0, 0)),
    ("achilles",  (0, 0), (0, 0)),
    ("tortoise",  (0, 0), (0, 0)),
    ("paradox",   (0, 0), (0, 2)),
    ("Paradox",   (0, 0), (0, 1)),
    ("Dichotomy", (0, 0), (0, 0)),
    ("Stade",     (0, 0), (0, 1)),
]

# The steward column is the positive-control FAILURE that makes S1 unusable (Z07 §3).
CONTROLS = [
    ("derivative", (640, 0),  (1214, 0)),
    ("limit",      (489, 0),  (965, 24)),
    ("function",   (2030, 2), (3033, 84)),
    ("integral",   (826, 20), (1290, 76)),
    ("infinite",   (56, 33),  (71, 98)),
    ("infinity",   (25, 0),   (25, 0)),
]


def count_strict(text: str, word: str) -> int:
    return len(re.findall(r"\b" + re.escape(word) + r"\b", text))


def count_substr(text: str, word: str) -> int:
    return text.count(word)


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--texts-dir", default="/tmp/r3-pdf")
    args = ap.parse_args()
    d = Path(args.texts_dir)

    failures: list[str] = []
    texts: dict[str, str] = {}

    for name, want_sha in PINNED.items():
        p = d / name
        if not p.exists():
            failures.append("missing file: %s" % p)
            continue
        raw = p.read_bytes()
        got = hashlib.sha256(raw).hexdigest()
        if got != want_sha:
            failures.append("%s sha256 mismatch: got %s want %s" % (name, got, want_sha))
        texts[name] = raw.decode("utf-8", errors="replace")

    if failures:
        for f in failures:
            print("FAIL %s" % f, file=sys.stderr)
        return 1

    thomas = texts["thomas_full.txt"]
    steward = texts["stewart_full.txt"]

    def report(group, rows, fn):
        print("== %s (%s) ==" % (group, "词边界" if fn is count_strict else "子串"))
        print("  %-12s %10s %10s" % ("word", "thomas", "steward"))
        for word, (wt_, ws_), (st_, ss_) in rows:
            want = (wt_, ws_) if fn is count_strict else (st_, ss_)
            gt, gs = fn(thomas, word), fn(steward, word)
            ok = (gt == want[0]) and (gs == want[1])
            print("  %-12s %10d %10d %s" % (word, gt, gs, "OK" if ok else "MISMATCH"))
            if not ok:
                failures.append(
                    "%s[%s]: %s thomas got %d want %d / steward got %d want %d"
                    % (group, fn.__name__, word, gt, want[0], gs, want[1])
                )

    report("ZENO_FAMILY", ZENO_FAMILY, count_strict)
    report("CONTROLS", CONTROLS, count_strict)
    report("ZENO_FAMILY", ZENO_FAMILY, count_substr)
    report("CONTROLS", CONTROLS, count_substr)

    # Structural claims that the conclusion rests on.
    if count_substr(steward, "derivative") != 0:
        failures.append("Z07 §3 claim broken: steward 'derivative' substring is not 0")
    if count_substr(steward, "limit") < count_strict(steward, "limit"):
        failures.append("internal: substring cannot be less than strict count")
    for word in ("Zeno", "Achilles", "tortoise", "Dichotomy", "Stade"):
        if count_substr(thomas, word) != 0:
            failures.append("Z07 §2 claim broken: thomas has '%s' substring" % word)

    if failures:
        print()
        for f in failures:
            print("FAIL %s" % f)
        return 1

    total = 2 * (len(ZENO_FAMILY) + len(CONTROLS))
    print()
    print("OK: all %d counts reproduced under both conventions." % total)
    print("    thomas (T1): Zeno family zero in BOTH conventions, controls healthy -> valid.")
    print("    steward (S1): derivative substring 0 -> text layer broken -> unusable (as recorded).")
    return 0


if __name__ == "__main__":
    sys.exit(main())
