#!/usr/bin/env python3
"""Re-runnable check for the C-441 documents (HoTT/formal/claude-cg001/sameness-never-confirmed/CLAIM.md, the C-441 sections of
the evidence index and the shared matrix, CFC plan ledger round 36): the sponsor's definition of UR is quoted verbatim from
核心认知.md (KC-000054), and the phrase the documents attribute to 《最高指示-Claude版》 §1.4 (not to the sponsor) is found there and
not in the sponsor's recorded words (核心认知.md, sources/prompts/).

Written 2026-10-21, Claude Code session 91beaf35 (012-Opus).  Exit 0 iff every check passes.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def norm(s: str) -> str:
    return re.sub(r"\s+", "", s)


def main() -> int:
    core = norm((ROOT / "核心认知.md").read_text(encoding="utf-8"))
    claude_version = norm((ROOT / "最高指示-Claude版.md").read_text(encoding="utf-8"))
    prompts = "".join(norm(p.read_text(encoding="utf-8")) for p in (ROOT / "sources/prompts").glob("*.md"))
    checks = [
        ("UR definition in 核心认知.md (KC-000054)",
         norm("`UR`=`本来应该很简单的事情，甚至在X理论中，都做不到`，我想这就是一种类似芝诺悖论的`不合理`。") in core),
        ("summary phrase in 最高指示-Claude版.md §1.4",
         norm("HoTT 的宇宙里，“是不是同一个”永远确认不完") in claude_version),
        ("summary phrase absent from 核心认知.md", norm("永远确认不完") not in core),
        ("summary phrase absent from sources/prompts", norm("永远确认不完") not in prompts),
    ]
    failures = 0
    for name, ok in checks:
        failures += not ok
        print("PASS" if ok else "FAIL", name)
    print(f"{len(checks) - failures}/{len(checks)} PASS")
    return 0 if failures == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
