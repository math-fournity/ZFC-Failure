# 命名与截断是同一个完成算子（C-443）

> HUMAN_EDITED；2026-10-21；Claude Code 桌面会话 91beaf35（012-Opus）；独立 worktree `claude/012-opus-w8`；目标包 CG-011，完成门 G3。
>
> **起因**：研究发起人 2026-10-21 认可 H 深化内容，并要求“继续推进后续工作，直至全部完成”（原话见 CG-011 `GOAL.md`）。H 深化 §6 (c) 要一个统一陈述：“定义‘H-完成算子’的一个形式不变量，证明极限命名与截断是其两个实例”。
>
> - proof id：主包 `MP-CG001-NAMING-IS-COMPLETION-001`（`NamingIsCompletion.agda`）；负控制 `-NEG-001`（`WrongTwoUnique.agda`）、`-NEG-002`（`WrongSwapTrivial.agda`）。
> - claim：`CG001-C-443`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --guardedness`，什么都不假定。ZFC 一侧用 cubical 库的累积层级 `V`。
> - 依赖（全部导入，不重抄）：`../completion-cost/`（C-436）、`../a-univalence-b/`（C-430），以及它们导入的 `../questioning-delay/`、`../pedometer-semantics/`、`../universe-questioning/`、`../truncation-questioning/`、`../product-questioning/`。
> - 标签：`FORMAL_NAMING_IS_COMPLETION_AT_LEVEL_ZERO`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §70（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**起名就是在第 0 层宣布完成：给满足 φ 的东西起名而不丢东西，当且仅当满足 φ 的东西“唯一存在”（见证类型可缩）。截断是同一个算子在更高的层。所以“起名要付多少”就是见证类型在第几层落定。**

- **ZFC 的累积层级 `V`**：“没有成员的集合”的见证类型可缩，第 0 层，免费。
- **HoTT 的刚性对象**：“空类型”的见证类型同样可缩，免费。
- **HoTT 里带对调的对象**：“二元集合”存在，任意两个仅仅相等，见证类型却不可缩、不是命题、不是集合，要到第 3 层才落定。
- **宇宙**：任何有限层都保不住。

代价不来自“HoTT”，来自对象的相同有没有结构：同在 HoTT 里，空类型免费，二元集合要付三层。

## 用到的词（都在 `NamingIsCompletion.agda` 里定义或导入）

- **在第 n 层保住对象的完成** `KeepingCompletionAt n W`（C-436）：一个落到 h-层 n 的类型上、又能解码回来的映射。
- **见证类型** `Witnesses φ = Σ x, φ x`：满足 φ 的东西连同它满足 φ 的证据。
- **起名**：在第 0 层完成见证类型。第 0 层的类型是可缩类型，也就是“只有一个，而且到它的路径是唯一的”。
- **`V`、`∅`、`∅-empty`、`extensionality`**：cubical 库的累积层级、空集、空集无成员、外延性。
- **二元集合** `TwoSets = Σ (X : hSet), ∥ X ≃ Bool ∥`；`two₀` 是 Bool；`swapLoop` 是 Bool 的对调（`notEq`）给出的自我相同。

## 命题全文：C-443

- **(1) 同一个算子**：
  - `completionKeeps`：对任意类型 W 与层 n，在第 n 层保住 W 的完成存在 ⟺ W 在第 n 层落定（C-436 (1)）；
  - `namingFreeIffUnique`：起名保住见证类型 ⟺ 见证类型可缩。
- **(2) ZFC**：`emptySetUnique`、`emptySetNamingFree`：在 `V` 里，“没有成员的集合”的见证类型可缩（外延性），起名免费。
- **(3) HoTT 的刚性对象**：`emptyTypeUnique`、`emptyTypeNamingFree`：“空类型”的见证类型可缩（单价性），起名免费。
- **(4) 二元集合**：
  - `twoMerelyUnique`：任意两个二元集合仅仅相等（`∥ a ≡ b ∥`）；
  - `swapIsNotRefl`：对调这条自我相同不是 `refl`；
  - `twoNotContr`、`twoNotProp`、`twoNotSet`、`twoGroupoid`：不可缩、不是命题、不是集合，是 1-型；
  - `twoCost`：第 0、1、2 层的完成都保不住它，第 3 层保得住。
- **(5) 宇宙**：`universeCost`：任何有限层的完成都保不住（C-430 的 `universeNoLevel`）。
- **整体**：`qual-C443` 把 (1)–(5) 写成一个类型，并由一个项居留。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-NAMING-IS-COMPLETION-NEG-001` | `WrongTwoUnique.agda` | 给二元集合起名免费：见证类型可缩，中心 `two₀`，到任何一个都用 `refl` | 被拒：`refl` 证不了 `two₀` 到任意一个的路径。(4) 证明它不可缩 |
| `MP-CG001-NAMING-IS-COMPLETION-NEG-002` | `WrongSwapTrivial.agda` | 对调这条自我相同就是 `refl` | 被拒：两条路径不同。(4) 的 `swapIsNotRefl` 证明沿它运输 true 得 false |

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(5)。
- **〔标准事实，不主张原创〕**：
  - 可缩即第 0 层；
  - 外延性给出空集唯一；
  - 单价性给出空类型唯一；
  - `BAut Bool` 型的二元集合类型是连通的 1-型。
  增量是把它们排成“起名的代价 = 见证类型落定的层”这一张表，接到 H 深化 §6 (c)。
- **〔对应关系，是读法，不是定理〕**：
  - **“H-完成算子”**：H 深化 §6 (c) 要的“形式不变量”读作“在第几层落定”。C-436 已证这个不变量决定一切落到有限层的完成，本包把“起名”放进同一个算子，作为第 0 层。
  - **两种命运的分界**：
    - ZFC 的相同只有一层（`V` 是集合），可定义的对象见证类型可缩，起名在第 0 层就免费，H 看不见；
    - HoTT 里，对象的相同带着结构（对调）时，起名要付到那一层；整体带着所有高度时，任何有限层都付不清（C-438）。
  - **与一阶 ZFC 的关系**：C-437 在一阶 ZFC 里证明“起名是保守扩张”。本包在 `V` 里给出同一件事的类型论形状：唯一存在 ⟹ 第 0 层的完成免费。两边说的是同一件事，这是读法。
- **〔不是本包承接的〕**：
  - “一切可设想的完成操作”都是这个算子的实例：不主张，只覆盖“落到有限层、靠解码保住”的完成；
  - 在 ZFC 里给“二元集合（不论哪一个）”起名：ZFC 用一个刚性的代表（冯·诺依曼序数 2）绕开了对调，那是定义选择，不在本包内；
  - 不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。

## 禁止外推

- `V` 是 HoTT 里 ZF 的模型，不是一阶 ZFC。
- “代价来自相同有没有结构”是 (2)(3)(4) 的读法，不是一个单独的定理。
- 只在 macOS 捕获与重放。
