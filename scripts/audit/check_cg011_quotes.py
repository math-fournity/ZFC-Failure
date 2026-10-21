#!/usr/bin/env python3
"""Re-runnable check for the CG-011 documents (H-deepening v1.4/v1.5, the first-question synthesis, CFC plan 001 §3.4,
the CG-011 goal package and the CG-011 claim files): every quoted passage occurs verbatim, whitespace and Markdown bold
markers aside, in its source.

Sources: the session transcript (outside the repository; reported as SKIP when absent) for the sponsor's 2026-10-21 approval,
核心认知.md (KC-000054, KC-000056, KC-000077), and the H-deepening document §1 (the sponsor's 2026-10-17 words).
From gate G4 (C-444) on, also the passages the G4 texts quote from repository documents: H-deepening §4.1 and §7, the
first-question synthesis §2, the CFC ledger round 18 and the third-framework assessment.  Each such quote carries context
that only the original has, so the dated notes that repeat it cannot confirm themselves.
Written 2026-10-21, Claude Code session 91beaf35 (012-Opus).  Exit 0 iff every quote whose source is present is found.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
TRANSCRIPT = Path("/Users/aurolafly/.claude/projects/-Volumes-D-HoTT-AI-HANDOFF-20260911/"
                  "91beaf35-237d-4c5d-887c-cb72c58ccca2.jsonl")


def norm(s: str) -> str:
    return re.sub(r"\s+|\*\*", "", s)


SOURCES = {
    "转录": TRANSCRIPT,
    "核心认知": ROOT / "核心认知.md",
    "H深化": ROOT / "docs/H深化-同一动作在极限与HoTT中的两处表现-20261017.md",
    "第1问综合": ROOT / "docs/为什么没有发现-一手层综合-20261019.md",
    "CFC账本": ROOT / "dev-docs/CFC分析推进方案-20261019/005 - 执行进度账本.md",
    "第三框架": ROOT / "docs/第三框架检验-已有证据评估-20261019.md",
}
QUOTES = [
    ("`/Volumes/D/HoTT-worktrees/012-opus-w8/docs/H深化-同一动作在极限与HoTT中的两处表现-20261017.md`的内容可以，继续推进后续工作，直至全部完成。", "转录"),
    ("追溯这个问题的来源，我们定位到了ZFC+A，然后再看A，是微积分的基础", "H深化"),
    ("芝诺悖论打的是微积分的基础理论，极限理论，或者说实数理论、数轴都可以", "核心认知"),
    ("而实数理论，是整个微积分大厦的基础。我们要打的其实是这种。", "核心认知"),
    ("A就是一个无限的步骤才能到达，从而存在的结果，当作已经存在的结果，参与运算。", "核心认知"),
    ("`UR`=`本来应该很简单的事情，甚至在X理论中，都做不到`", "核心认知"),
    # G4 (C-444): passages quoted from repository documents, each with context only the original has
    ('则任何为"同一性/完成"记账的框架都应暴露 H（而平坦相等的框架', "H深化"),
    ("据此预测：典范性义务逐层延伸的框架（构造性类型论变体、coinductive 观测）被迫过程读法、暴露 H", "H深化"),
    ("分野的载体是典范性义务是否延伸到过程的每一层（而不只是", "H深化"),
    ("（C-75）⇒ H 显形为永不停", "H深化"),
    ("从不需要为过程逐层记账；一旦某个框架要求逐层记账（H 深化 §7 预测：典范性义务延伸到过程每层的框架），H 立刻显形。", "第1问综合"),
    ("就被削弱（不是推翻——仍可解释两个实例，但失去普适强度）", "CFC账本"),
    ("所以 §3 结论 2 不变：对抗实例仍缺。", "第三框架"),
    ('是不是"另一个演算"？——不是', "第三框架"),
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
