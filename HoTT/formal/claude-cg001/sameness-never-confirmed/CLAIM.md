# 深度轴：已完成的无穷对象，“是不是同一个”也是一个问不完的追问（C-441）

> HUMAN_EDITED；2026-10-21；Claude Code 桌面会话 91beaf35（012-Opus）；独立 worktree `claude/012-opus-w8`。
>
> **起因**：研究发起人 2026-10-21 的新方向，要“在其他理论里也找出来”（原话见 C-438、C-440 的 `CLAIM.md`）。C-438 把 HoTT 的特点写成“高度”轴上的判据：理论自己的相同有无穷多层。本包在“深度”轴上找同一种不合理：一层的“是不是同一个”，要无穷多步才答得完。
>
> 研究发起人对“不合理”的定义（KC-000054）【原话】：“`UR`=`本来应该很简单的事情，甚至在X理论中，都做不到`，我想这就是一种类似芝诺悖论的`不合理`。”
>
> 《最高指示-Claude版》§1.4 把 HoTT 里找到的那一个概括为：HoTT 的宇宙里，“是不是同一个”永远确认不完。这是仓库的概括，不是研究发起人的原话。
>
> - proof id：主包 `MP-CG001-SAMENESS-NEVER-CONFIRMED-001`（`SamenessNeverConfirmed.agda`）；负控制 `-NEG-001`（`WrongConfirmAtStage.agda`）、`-NEG-002`（`WrongFlipSame.agda`）。
> - claim：`CG001-C-441`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --guardedness`，什么都不假定（排中律只作为前提出现在 (4) 的一个蕴含里）。
> - 依赖（全部导入，不重抄）：`../same-q-univalent/SameQ.agda`（C-112：ω 追问 `askQ`、`neverIff`、`FromJudge.sameQuestion`）、`../a-univalence-b/`（C-430：`universeNever`），以及它们导入的 `../questioning-delay/`、`../pedometer-semantics/`、`../universe-questioning/`、`../truncation-questioning/`、`../product-questioning/`。
> - 标签：`FORMAL_SAMENESS_OF_COMPLETED_STREAMS_IS_A_NEVER_HALTING_SEARCH`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §68（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**两个已经完成的无穷流是不是同一个，就是逐位找差别的搜索会不会停：不同，有限步就能确认；相同，跑多少步都确认不了。**

- **A 在深度轴上的做法**：把所有这些追问一次答完，也就是流的相等可判定。它等价于 WLPO，排中律直接给出它，所以在 ZFC 里“是不是同一个”总有现成的答案。
- **与 HoTT 是同一个程序**：HoTT 宇宙的逐层追问与流的逐位找差别，跑的是同一个 `askQ`，都永不停。

## 用到的词（都在 `SamenessNeverConfirmed.agda` 里定义或导入）

- **流** `Stream = ℕ → Bool`：一个已完成的无穷对象。实数的二进制或柯西表示也是这种对象，本包只证流。
- **ω 追问与搜索** `OmegaQ`、`askQ`（C-112）：第 k 问的答案是一个布尔值；`askQ q s` 从第 s 问起找第一个答“是”的，找到就停。
- **找差别** `differ α β`：第 k 问是“在第 k 位找到差别了吗”。
- **在第 m 位翻转** `flipAt m α`：只改第 m 位，其余不动。
- **WLPO**：对每个流 γ，“γ 处处为 false”可判定。**流的相等可判定** `DecEqStream`。**排中律** `LEM`：每个命题可判定。

## 命题全文：C-441

- **(1) 相同 ⟺ 找差别的搜索永不停**：`sameToNever`、`neverToSame`。
- **(2) 差别有限步可确认**（`differenceConfirmed`）：若第 k 位不同，搜索在 k 步燃料内给出答案。
- **(3) 相同在任何有限阶段都确认不了**：
  - `selfNeverAnswers`：一个流和自己比，跑多少步都没有答案；
  - `noFiniteConfirmation`：对每个 n，有一个流 β（在第 n+1 位翻转），前 n+1 问都答“还没找到差别”，β 却与 α 不同。所以任何有限阶段看到的东西，同一个与不同一个都给得出。
- **(4) A 在深度轴上**：
  - `decEqToWLPO`、`wlpoToDecEq`：流的相等可判定 ⟺ WLPO；
  - `lemGivesWLPO`：排中律给出 WLPO。
- **(5) 两条轴，一个程序**：
  - `heightNever`：HoTT 宇宙的逐层追问（C-112 证明它就是 `askQ answers 1`）永不停；
  - `depthNever`：任何流和自己比，找差别的 `askQ` 永不停。
- **整体**：`qual-C441` 把 (1)–(5) 写成一个类型，并由一个项居留。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-SAMENESS-NEVER-CONFIRMED-NEG-001` | `WrongConfirmAtStage.agda` | 处处为 true 的流和自己比，搜索跑到第 3 步就确认了相同（`refl` 得 `just 0`） | 被拒：内核实跑得 `nothing`。(3) 证明跑多少步都没有答案 |
| `MP-CG001-SAMENESS-NEVER-CONFIRMED-NEG-002` | `WrongFlipSame.agda` | 处处为 false 的流在第 3 位翻转之后，与原来的流是同一个（`refl`） | 被拒：两个流在第 3 位不同。(3) 证明前几位都一样的流可以不同 |

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(5)。
- **〔标准事实，不主张原创〕**：
  - 流（与实数）的相等是 Π⁰₁ 的：不同可以在有限步确认，相同不能；
  - 相等可判定等价于 WLPO；
  - 排中律给出 WLPO。
  这些是构造性数学（Brouwer、Bishop）与可计算分析的常识。增量是把它们放进与 HoTT 的 B 同一个程序（`askQ`）里。
- **〔对应关系，是读法，不是定理〕**：
  - **“深度”轴**：一层的“是不是同一个”要无穷多步才答完。它与 C-438 的“高度”轴（相同有无穷多层）并列，是同一种不合理的两张脸：理论里一件本来应该很简单的事（判断是不是同一个），在不把无穷步当成已完成的时候，做不到。
  - **A 的两种做法**：ZFC 把两条轴都用 A 一次答完。高度上相同是事实（C-437、C-438 的 `V`），深度上用排中律（WLPO）。所以在 ZFC 里，“是不是同一个”总有现成的答案。HoTT 让高度轴的追问敞开；构造性分析让深度轴的追问敞开。
  - **与芝诺、极限的关系**：极限理论里，“跑者的位置是不是 1”这类问题，对一个只给出过程的实数，属于深度轴。经典分析用排中律把它答成事实。本包只证流，不证实数。
- **〔不是本包承接的〕**：
  - 实数本身：柯西实数的相等同样是 Π⁰₁，但本包没有形式化实数。二进制展开有 0.0111… = 0.1000… 的问题，所以流的相等不等于实数的相等。
  - LPO 与“每个单调追问都落定”的等价：在 Lean 里已证，是 C-418。本包用的是较弱的 WLPO。
  - 不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。

## 禁止外推

- 说的是流（`ℕ → Bool`），不是实数。
- “ZFC 用排中律一次答完”是对 ZFC 的标准读法；本包只证 LEM ⟹ WLPO ⟹ 相等可判定，不在 ZFC 里证任何东西。
- 只在 macOS 捕获与重放。
