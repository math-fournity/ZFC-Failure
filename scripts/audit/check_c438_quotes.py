#!/usr/bin/env python3
"""Re-runnable check: every passage quoted in the C-438 documents (HoTT/formal/claude-cg001/exposure-criterion/CLAIM.md,
dev-docs/元层特征方案-20261021.md, the C-438 sections of the evidence index and the shared matrix, CFC plan ledger round 34,
formalization tracking chapter 11) occurs verbatim, whitespace aside, in its source.

Sources: the session transcript for the sponsor's 2026-10-21 message (outside the repository; reported as SKIP when absent),
核心认知.md (KC-000077, the definition of A), docs/H深化-…-20261017.md (the sponsor's 2026-10-17 words) and dev-docs/CFC分析推进方案-20261019/001
(the 2026-10-19 goal).  The plan document reproduces the whole 2026-10-21 message; each of its paragraphs is checked.
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
    ("下一步做完，全做完，然后想想：你觉得这个事我们可不可以再往前推进一步？", "转录"),
    ("你看，HoTT 暴露了 ZFC-1（也就是 ZFC+A）的这个问题。我们能不能把它形式化的元层特征找出来？比如在极限理论里看不到我们新发现的这个问题，它的特点是什么，而 HoTT 的特点又是什么？当然，如果太抽象了意义也不大，最好是恰当的抽象程度。", "转录"),
    ("我的意思是，我们能不能在其他理论里也找出来？当我们把 HoTT 在这个问题上的特性，以合适的形式化方式在一个更高的元层层面表达出来之后，再去观察其他理论有没有类似的元层特征。如果有，它就可以用来暴露 ZFC-1（或者说 ZFC+A）的问题。", "转录"),
    ("这样我们就能把这件事往前推进一步：不仅在 HoTT 上能验证 ZFC+A 或 ZFC-1 有问题，还可以在其他理论上找到。只要给出一个结论：理论只要满足这种形式化的形态（或者某些语义形态），就一定可以把 ZFC+A / ZFC-1 的问题暴露出来。我觉得这是后面可以做的一个工作", "转录"),
    ("我们能不能把它形式化的元层特征找出来？比如在极限理论里看不到我们新发现的这个问题，它的特点是什么，而 HoTT 的特点又是什么？当然，如果太抽象了意义也不大，最好是恰当的抽象程度。", "转录"),
    ("只要给出一个结论：理论只要满足这种形式化的形态（或者某些语义形态），就一定可以把 ZFC+A / ZFC-1 的问题暴露出来。", "转录"),
    ("A就是一个无限的步骤才能到达，从而存在的结果，当作已经存在的结果，参与运算。", "核心认知"),
    ("数学家认为，引入H不会发生问题。但是H在HoTT中却表现出了问题", "H深化"),
    ("一侧问终局就够", "H深化"),
    ("一侧被迫问过程", "H深化"),
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
