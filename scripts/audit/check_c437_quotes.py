#!/usr/bin/env python3
"""Re-runnable check: every passage quoted in the C-437 documents (HoTT/formal/claude-cg001/naming-conservative/CLAIM.md,
the C-437 sections of the evidence index and the shared matrix, CFC plan ledger round 33) occurs verbatim, whitespace aside,
in its source.

Sources: docs/H深化-…-20261017.md (the sponsor's 2026-10-17 words and our H analysis), dev-docs/CFC分析推进方案-20261019/001 §1
(the 2026-10-19 goal), 核心认知.md (KC-000077, the sponsor's definition of A), docs/为什么没有发现-一手层综合-20261019.md
(§2 (a)), the CG-010 alignment document (GLM's reading of ZFC-1), and the session transcript for the sponsor's 2026-10-21
instruction (outside the repository; reported as SKIP when absent).
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
    "H深化": ROOT / "docs/H深化-同一动作在极限与HoTT中的两处表现-20261017.md",
    "CFC001": ROOT / "dev-docs/CFC分析推进方案-20261019/001 - 目标、授权边界与 CFC 阻塞.md",
    "核心认知": ROOT / "核心认知.md",
    "第1问综合": ROOT / "docs/为什么没有发现-一手层综合-20261019.md",
    "认知对齐": ROOT / ".claude/goals/CG-010-remaining-formalization-alignment/认知对齐.md",
    "转录": TRANSCRIPT,
}
QUOTES = [
    ("下一步做完，全做完", "转录"),
    ("我们能不能把它形式化的元层特征找出来？", "转录"),
    ("我们假设它叫H，H可能应该被叫做：数学家认为，引入H不会发生问题。但是H在HoTT中却表现出了问题。", "H深化"),
    ("我们之前已经证明过他们的思维到底错在哪，这次要更进一步，深刻洞见问题究竟出在哪里，并彻底揭示出来", "CFC001"),
    ("A就是一个无限的步骤才能到达，从而存在的结果，当作已经存在的结果，参与运算。", "核心认知"),
    ("宣布完成，而不支付该完成对应的构造", "H深化"),
    ("一条定义就够", "第1问综合"),
    ("存在、解决、完成", "认知对齐"),
    ("数学家认为，引入H不会发生问题", "H深化"),
]


def main() -> int:
    text = {}
    for k, p in SOURCES.items():
        if p.exists():
            text[k] = norm(p.read_text(encoding="utf-8"))
    misses = skips = 0
    for quote, source in QUOTES:
        if source not in text:
            skips += 1
            print("SKIP", source, quote)
            continue
        hit = norm(quote) in text[source]
        misses += not hit
        print("HIT " if hit else "MISS", source, quote)
    print(f"{len(QUOTES) - misses - skips}/{len(QUOTES) - skips} HIT, {skips} SKIP")
    return 0 if misses == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
