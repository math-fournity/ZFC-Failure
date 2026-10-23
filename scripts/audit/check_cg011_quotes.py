#!/usr/bin/env python3
"""Re-runnable check for the CG-011 documents (H-deepening v1.4/v1.5, the first-question synthesis, CFC plan 001 §3.4,
the CG-011 goal package and the CG-011 claim files): every quoted passage occurs verbatim, whitespace and Markdown bold
markers aside, in its source.

Sources: the session transcript (outside the repository; reported as SKIP when absent) for the sponsor's 2026-10-21 approval,
核心认知.md (KC-000054, KC-000056, KC-000077), and the H-deepening document §1 (the sponsor's 2026-10-17 words).
From gate G4 (C-444) on, also the passages the G4 texts quote from repository documents: H-deepening §4.1 and §7, the
first-question synthesis §2, the CFC ledger round 18 and the third-framework assessment.  Each such quote carries context
that only the original has, so the dated notes that repeat it cannot confirm themselves.
From gate G5 (C-445) on, also the circle paradox: the sponsor's original text three (HoTT/sources/user-originals),
KC-000055/56/65, H-deepening §1 and its correction record, and the sponsor's 2026-10-21 instruction to take over session
015 (the transcript of Claude Code session a15f4b3b, outside the repository; SKIP when absent).
From the G8 follow-up (C-450) on, also the sentence of C-448's CLAIM.md (AI-written) that records the half left undone;
from the G10 follow-up (C-451) on, likewise the sentence of C-449's CLAIM.md that records its gap; from C-452 on, the
two not-done items of C-450's CLAIM.md.
Written 2026-10-21, Claude Code session 91beaf35 (012-Opus); G5 additions by session a15f4b3b.  Exit 0 iff every quote
whose source is present is found.
"""
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
PROJECTS = Path("/Users/aurolafly/.claude/projects")


def transcript(session: str, usual: str) -> Path:
    # The client files a session under the project directory of its current worktree and moves the JSONL when that
    # worktree is recycled (2026-10-23: a15f4b3b went from ...opus-015-flagging-issue-89e904 to ...festive-turing-63229f),
    # so look the session up by id and fall back to the usual place.
    found = sorted(PROJECTS.glob(f"*/{session}.jsonl"), key=lambda p: p.stat().st_size, reverse=True)
    return found[0] if found else PROJECTS / usual / f"{session}.jsonl"


TRANSCRIPT = transcript("91beaf35-237d-4c5d-887c-cb72c58ccca2", "-Volumes-D-HoTT-AI-HANDOFF-20260911")
TRANSCRIPT_015_TAKEOVER = transcript("a15f4b3b-2441-458d-b911-556a515294e3",
                                     "-Volumes-D-HoTT-AI-HANDOFF-20260911--claude-worktrees-opus-015-flagging-issue-89e904")


def norm(s: str) -> str:
    return re.sub(r"\s+|\*\*", "", s)


SOURCES = {
    "转录": TRANSCRIPT,
    "核心认知": ROOT / "核心认知.md",
    "H深化": ROOT / "docs/H深化-同一动作在极限与HoTT中的两处表现-20261017.md",
    "第1问综合": ROOT / "docs/为什么没有发现-一手层综合-20261019.md",
    "CFC账本": ROOT / "dev-docs/CFC分析推进方案-20261019/005 - 执行进度账本.md",
    "第三框架": ROOT / "docs/第三框架检验-已有证据评估-20261019.md",
    "圆环原文": ROOT / "HoTT/sources/user-originals/Z铁律-抽象-圆环-时间维度-用户原始论述-20260901.md",
    "元层特征方案": ROOT / "dev-docs/元层特征方案-20261021.md",
    "CG-011目标": ROOT / ".claude/goals/CG-011-h-deepening-followups/GOAL.md",
    "GUI转录": ROOT / "docs/会话GUI转录-20261016至17-罗素考古芝诺立项与H深化.md",
    "接手转录": TRANSCRIPT_015_TAKEOVER,
    "C-448声明": ROOT / "HoTT/formal/claude-cg001/strict-semisimplicial/CLAIM.md",
    "C-449声明": ROOT / "HoTT/formal/claude-cg001/univalent-categories/CLAIM.md",
    "C-450声明": ROOT / "HoTT/formal/claude-cg001/sst-2ltt-fibrant/CLAIM.md",
    "C-452声明": ROOT / "HoTT/formal/claude-cg001/sst-2ltt-correspondence/CLAIM.md",
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
    # G5 (C-445): the circle paradox
    ("一个圆，其上取一点拿走，假设现在的形态是M。然后将两端展开成线段，假设现在的形态是N。", "圆环原文"),
    ("从M到N似乎没有什么障碍，那么从N复原到M我们可以做到吗？", "圆环原文"),
    ("无论N的两端逼近到什么接近的程度，都无法再还原到M的状态。可是，可是，我们当初确实得到了M啊！", "圆环原文"),
    ("同一个东西，在用于解决圆环悖论和芝诺悖论的时候是合理的，在被HoTT中发现的时候，就是不合理的", "H深化"),
    ("遗留的诚实缺口：本文 §2–§7 的分析未覆盖原文 ① 的圆环悖论维度", "H深化"),
    ("H ≡ 「宣布完成，而不支付该完成对应的构造」", "H深化"),
    ("理解我说的：抽象必然导致矛盾，是数理逻辑保证的推断。", "圆环原文"),
    ("价格看得见：逐层记账就给", "H深化"),
    ("价格付不清：要 A", "H深化"),
    ("圆环悖论和我们这个repo中对其的进一步的讨论、分析，复活了芝诺悖论的幽灵", "核心认知"),
    ("圆环悖论被用来复活芝诺悖论的幽灵，让极限理论对芝诺悖论的所谓解决，变成了掩盖。", "核心认知"),
    ("圆环悖论本质上，谈M和N相互靠近这个过程的时候，就携带了对时间维度的考察", "核心认知"),
    ("首先把未跟踪的内容提交了，然后你接手015的工作，继续完成后面应该完成的事情。", "接手转录"),
    # G6 (C-446): the sponsor's meta-level question (session 91beaf35) and two AI-written sentences of the plan it quotes
    ("我们能不能把它形式化的元层特征找出来？", "转录"),
    ("当然，如果太抽象了意义也不大，最好是恰当的抽象程度。", "转录"),
    ("下一层可试 Massey 积：两个只在第 n 层以上不同的结构，任何 n 层以下的截断都分不开。", "元层特征方案"),
    ("这要回到原始文献核实（Verdier 的 TR3、Bondal–Kapranov 的增强、Lurie 的稳定 ∞-范畴导言），现在只是假说。", "元层特征方案"),
    ("史学假说照实处理：取得原文就核，取不得就写明缺口。", "CG-011目标"),
    ("深度轴：每个有限阶段都在有限步内答完，可没有一个有限阶段够用。", "H深化"),
    ("理论只要满足这种形式化的形态（或者某些语义形态），就一定可以把 ZFC+A / ZFC-1 的问题暴露出来", "转录"),
    ("所有的后续`GN`，全部完成并推送", "接手转录"),
    # G7 (C-447): the gate, the plan's AI-written note, and KC-000065
    ("实数的“等于 0”就是数字流的“处处为 0”（桥接引理）；C-441 的结论经此落到实数。", "CG-011目标"),
    ("实数（柯西表示）与 C-418（LPO，Lean）的接合还没做。", "元层特征方案"),
    ("芝诺悖论，从第一天开始，就是一个可计算性问题，因为每次走剩下的一半，永远走不完，这是结结实实的计算步骤、过程。", "核心认知"),
    # G8 (C-448): the gate and the plan's AI-written sentence on 2LTT
    ("G8 2LTT 的无穷相干：用外层自然数按层定义内层的半单纯结构，或照实写明阻塞。", "CG-011目标"),
    ("这是 2LTT 的经典应用，是 A 在“无穷相干”上的形态，与 A7 那条线相接。", "元层特征方案"),
    # G10 (C-449 and the Rzk decision): the gate and the plan's AI-written prediction
    ("G10 Rzk 与单价 1-范畴：可行性结论写明，做或不做都要有理由。", "CG-011目标"),
    ("预测第 3 问停。这验证判据的“有上限则藏”一面在集合以外也对。", "元层特征方案"),
    # G9 (README §4 candidate): the sponsor's endorsement, from the GUI session export
    ("你这个话说得非常好：“一侧问终局就够、一侧被迫问过程”。", "GUI转录"),
    # G8 follow-up (C-450): the half C-448's CLAIM (AI-written) recorded as not done
    ("**没做到的**：对每个外层 n，把“n 维截断的半单纯类型全体”做成一个**内层**（可纤）类型，使它能回到 HoTT 里用。", "C-448声明"),
    # G10 follow-up (C-451): the gap C-449's CLAIM (AI-written) recorded
    ("恰在第 3 问停，要证单价范畴的全体不是群胚（要有一个单价范畴，它的某个自等价有非平凡的自然自同构）。这一步没做。", "C-449声明"),
    # G8 follow-ups (C-452): the two items C-450's CLAIM (AI-written) recorded as not done
    ("**两版之间的关系**：本包的 `SST n`（类型族的一版）与 C-448 的 `SSTˢ`（严格预层的一版）之间的对应没有建。", "C-450声明"),
    ("**全空间的取面**：只给了壳上的取面；单纯形全空间上的面映射可由它得到，本包没写出。", "C-450声明"),
    # C-453: the reverse direction C-452's CLAIM (AI-written) recorded as not done
    ("**反方向**：从严格的一版得到按层的一版，要经纤维：第 m+1 层取“边界恰为给定壳”的那些单纯形。", "C-452声明"),
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
