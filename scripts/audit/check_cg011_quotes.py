#!/usr/bin/env python3
"""Re-runnable check for the CG-011 documents (H-deepening v1.4, the first-question synthesis, CFC plan 001 §3.4, the
CG-011 goal package and the CG-011 claim files): every passage of the research sponsor's words they quote occurs verbatim,
whitespace aside, in its source.

Sources: the session transcript (outside the repository; reported as SKIP when absent) for the sponsor's 2026-10-21 approval,
核心认知.md (KC-000054, KC-000056, KC-000077), and the H-deepening document §1 (the sponsor's 2026-10-17 words).
Written 2026-10-21, Claude Code session 91beaf35 (012-Opus).  Exit 0 iff every quote whose source is present is found.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
TRANSCRIPT = Path("/Users/aurolafly/.claude/projects/-Volumes-D-HoTT-AI-HANDOFF-20260911/"
                  "91beaf35-237d-4c5d-887c-cb72c58ccca2.jsonl")


def norm(s: str) -> str:
    return re.sub(r"\s+", "", s)


SOURCES = {
    "转录": TRANSCRIPT,
    "核心认知": ROOT / "核心认知.md",
    "H深化": ROOT / "docs/H深化-同一动作在极限与HoTT中的两处表现-20261017.md",
}
QUOTES = [
    ("`/Volumes/D/HoTT-worktrees/012-opus-w8/docs/H深化-同一动作在极限与HoTT中的两处表现-20261017.md`的内容可以，继续推进后续工作，直至全部完成。", "转录"),
    ("追溯这个问题的来源，我们定位到了ZFC+A，然后再看A，是微积分的基础", "H深化"),
    ("芝诺悖论打的是微积分的基础理论，极限理论，或者说实数理论、数轴都可以", "核心认知"),
    ("而实数理论，是整个微积分大厦的基础。我们要打的其实是这种。", "核心认知"),
    ("A就是一个无限的步骤才能到达，从而存在的结果，当作已经存在的结果，参与运算。", "核心认知"),
    ("`UR`=`本来应该很简单的事情，甚至在X理论中，都做不到`", "核心认知"),
]


def main() -> int:
    text = {k: norm(p.read_text(encoding="utf-8")) for k, p in SOURCES.items() if p.exists()}
    misses = skips = 0
    for quote, source in QUOTES:
        if source not in text:
            skips += 1
            print("SKIP", source, quote[:40])
            continue
        hit = norm(quote) in text[source]
        misses += not hit
        print("HIT " if hit else "MISS", source, quote[:60])
    print(f"{len(QUOTES) - misses - skips}/{len(QUOTES) - skips} HIT, {skips} SKIP")
    return 0 if misses == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
