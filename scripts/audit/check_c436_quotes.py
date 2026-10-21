#!/usr/bin/env python3
"""Re-runnable check: every passage of the research sponsor's words quoted in the C-436 documents
(HoTT/formal/claude-cg001/completion-cost/CLAIM.md, 形式化追踪/11-H深化/README.md, the C-436 sections of the evidence
index and the shared matrix, CFC plan ledger round 32) occurs verbatim, whitespace aside, in its source.

Sources: docs/H深化-…-20261017.md §1 (the sponsor's 2026-10-17 words, checked there against the GUI session database)
and dev-docs/CFC分析推进方案-20261019/001 §1 (the 2026-10-19 goal, verbatim).
Written 2026-10-21, Claude Code session 91beaf35 (012-Opus).  Exit 0 iff every quote is found.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def norm(s: str) -> str:
    return re.sub(r"\s+", "", s)


SOURCES = {
    "H深化": ROOT / "docs/H深化-同一动作在极限与HoTT中的两处表现-20261017.md",
    "CFC001": ROOT / "dev-docs/CFC分析推进方案-20261019/001 - 目标、授权边界与 CFC 阻塞.md",
}
QUOTES = [
    ("我们假设它叫H，H可能应该被叫做：数学家认为，引入H不会发生问题。但是H在HoTT中却表现出了问题。", "H深化"),
    ("我们之前已经证明过他们的思维到底错在哪，这次要更进一步，深刻洞见问题究竟出在哪里，并彻底揭示出来", "CFC001"),
    ("极限那里关注的是一头一尾，或者说是终局。但是在HoTT这边", "H深化"),
    ("是过程中的内容，是HoTT要求回答的", "H深化"),
    ("一侧问终局就够、一侧被迫问过程", "H深化"),
    ("数学家认为，引入H不会发生问题", "H深化"),
    ("这次要更进一步，深刻洞见问题究竟出在哪里", "CFC001"),
]


def main() -> int:
    text = {k: norm(p.read_text(encoding="utf-8")) for k, p in SOURCES.items()}
    misses = 0
    for quote, source in QUOTES:
        hit = norm(quote) in text[source]
        misses += not hit
        print("HIT " if hit else "MISS", source, quote)
    print(f"{len(QUOTES) - misses}/{len(QUOTES)} HIT")
    return 0 if misses == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
