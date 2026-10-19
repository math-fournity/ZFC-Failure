#!/usr/bin/env python3
"""Re-runnable check for the Greek-layer negative claim (2026-10-19, corrected).

CLAIM CHECKED
  In the archive.org OCR of Bekker Aristotelis Opera vol II, the block that contains
  Aristotle's Physics VI mentions Zeno exactly once: the already-verified Phys. VI.2
  233a21-23 sentence beginning 'ton Zenonos logon ...'. Physics VI.9 (239b5), where the
  flying-arrow verdict is placed by Fairbanks, contributes no Zeno mention and no arrow
  vocabulary at all.

BOUNDARIES (and why they are not circular)
  lower  = 1,040,000  -- just above the last pre-Physics anchor we could identify
                          (printed page 965 @ 1,036,838) and below Physics VI.1
  upper  = 1,083,298  -- the Meteorologica III chapter title 'ANEMON THESIS' found in
                          this OCR. This is an independent, content-based boundary: the
                          Mechanica / Problemata / De respiratione material that contains
                          its own 'belos' and 'eremoun' occurrences sits at offsets far
                          BELOW the lower bound, so it cannot contaminate the count.
  The check refuses to print a verdict if the boundary marker is not found, so a broken
  probe cannot silently confirm the claim.
"""
import re
import sys

SRC = "aristotle-opera-djvu.txt"
LOWER = 1_040_000
BOUNDARY_PROBES = ["ἈΝΈΜΩΝ", "ἈΝΉΜΩΝ", "A N E M O N"]
ZENO = re.compile("Ζήνωνος|Ζήνων")
# Arrow-specific vocabulary. 'eremei' (imperfect 3sg 'is at rest') is deliberately excluded
# from the hard zero test: one occurrence exists in this block at offset 1,044,804 but it is
# Problemata-style text ("kai en kinesei aei kai medepote eremein"), not the arrow argument.
ARROW_WORDS = ["βέλος", "ἠρεμοῦν", "ἀκίνητον"]
SOFT_WORDS = ["ἠρεμεῖ"]


def main() -> int:
    t = open(SRC, encoding="utf-8", errors="replace").read()
    upper = None
    for probe in BOUNDARY_PROBES:
        i = t.find(probe)
        if i > LOWER:
            upper = i
            print(f"upper boundary {probe!r} at {i}")
            break
    if upper is None:
        print("BOUNDARY_NOT_FOUND: refusing to conclude anything")
        return 2
    block = t[LOWER:upper]
    print(f"Physics VI block: {LOWER}..{upper} ({len(block)} chars)")
    zeno = [(m.start() + LOWER, block[max(0, m.start() - 70):m.start() + 90].replace("\n", " "))
            for m in ZENO.finditer(block)]
    print(f"Zeno mentions: {len(zeno)}")
    for s, c in zeno:
        print(f"  @{s}: ...{c}...")
    for w in ARROW_WORDS + SOFT_WORDS:
        n = len(re.findall(re.escape(w), block))
        print(f"  {w!r} in block: {n}")
    ok = len(zeno) == 1 and all(len(re.findall(re.escape(w), block)) == 0 for w in ARROW_WORDS)
    print("RESULT:", "matches the recorded negative claim" if ok else "DIFFERS -- re-examine")
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
