# 单价范畴的全体：追问会停，价格付得清（C-449）

> HUMAN_EDITED；2026-10-21；Claude Code 桌面会话 a15f4b3b（接手会话 91beaf35）；独立 worktree `claude/012-opus-w8`；目标包 CG-011，完成门 G10 的“单价 1-范畴”一半。
>
> **起因**：
> - CG-011 `GOAL.md`：“G10 Rzk 与单价 1-范畴：可行性结论写明，做或不做都要有理由。”
> - 元层特征方案 §7 第 2 条（AI 写的方案原文）：“预测第 3 问停。这验证判据的“有上限则藏”一面在集合以外也对。”
> - 可行性实查：cubical 库里已有 `is2GroupoidUnivalentCategory`（单价范畴的全体是 2-群胚），靠的是范畴的结构同一原理 `WeakEquivalence≃Path`。所以这一半做得了，代价小，决定做。Rzk 那一半的决定与理由见 `.claude/goals/CG-011-h-deepening-followups/G10-结论.md`。
>
> **包信息**：
> - proof id：主包 `MP-CG001-UNIVALENT-CATEGORIES-001`（`UnivalentCategoriesStop.agda`）；负控制 `-NEG-001`（`WrongUnivCatNever.agda`）、`-NEG-002`（`WrongUnivCatUnpayable.agda`）。
> - claim：`CG001-C-449`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --guardedness`，什么都不假定。
> - 依赖（导入，不重抄）：`../completion-cost/`（C-436）、`../questioning-delay/`（C-77 的逐层追问程序）、`../a-univalence-b/`（C-430）及其导入的包；cubical 库的 `Categories`。
> - 标签：`FORMAL_UNIVALENT_CATEGORIES_STOP`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §76（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**单价范畴（集合的范畴、群的范畴都在其中）的全体，它自己的“相同”是范畴等价，有结构，但有上限：落在第 4 层。同一个逐层追问程序，任何判定器都在两步之内答出；在第 4 层宣布完成，保得住它。宇宙用同一个程序永不停。所以“相同有结构而有上限，就藏得住 A”在集合、群之外，对范畴也对。**

## 用到的词

- **单价范畴的全体** `UnivCat = Σ (Category (ℓ-suc ℓ-zero) ℓ-zero) isUnivalent`：对象在 `Type₁`、态射在 `Type₀` 的单价范畴。成员举例：`setsMember`（集合的范畴 `SET ℓ-zero`）、`groupsMember`（群的范畴）。
- **逐层追问程序** `question C judge`（C-77）：从第 1 问起，问“C 在第 k+1 层吗”，答“是”就停在 k；**判定器** `Judge C` 是对每个 k 的一个判定。
- **在第 n 层保住对象的完成** `KeepingCompletionAt n W`（C-436）。

## 命题全文：C-449

- **(1) 落在第 4 层** `univCatBounded : isOfHLevel 4 UnivCat`（库的 `is2GroupoidUnivalentCategory`）。
- **(2) 追问会停**：
  - `univCatHalts`：对任何判定器，`runFor 2 (question UnivCat judge) ≡ just j` 对某个 j 成立，即在第 1、2、3 问里的某一问停；
  - `univCatAnswerSound`：答出的 j 是对的，`isOfHLevel (suc j) UnivCat`。
- **(3) 价格付得清** `univCatPricePaid : KeepingCompletionAt 4 UnivCat`。
- **(4) 对照** `universeContrast`：宇宙 `Type ℓ-zero` 用同一个程序永不停，任何有限层的完成都保不住（C-430、C-436）。
- **整体**：`qual-C449` 把成员与 (1)–(4) 写成一个类型，并由一个项居留。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-UNIVALENT-CATEGORIES-NEG-001` | `WrongUnivCatNever.agda` | 单价范畴的全体像宇宙一样永不停，直接拿宇宙的定理 `universeNever` 来证 | 被拒；直接原因是宇宙层级不同（`UnequalLevel`）：那条定理只说 `Type₀` 本身。(2) 证明它会停 |
| `MP-CG001-UNIVALENT-CATEGORIES-NEG-002` | `WrongUnivCatUnpayable.agda` | 任何有限层都保不住它，直接拿宇宙的定理 `universeNoKeeping` 来证 | 被拒；直接原因同上（`UnequalLevel`）。(3) 证明第 4 层保得住 |

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(4)。
- **〔标准事实与既有结果的组合，不主张原创〕**：单价范畴的全体是 2-群胚是 cubical 库的定理（范畴的结构同一原理）；“落在某层 ⟹ 追问在那么多步内停、答案是对的”是 C-77 的定理；增量是把二者接到 C-438 的判据与元层特征方案 §4 的那一行上。
- **〔对应关系，是读法，不是定理〕**：
  - **有上限则藏**：范畴的“相同”（等价）有结构，可有上限，所以追问停、价格付得清，A 看不见。这与集合的全体、群的全体（C-438、C-444）是同一面，在范畴上再出现一次。
  - **价格**：集合与群的全体落在第 3 层，单价范畴的全体落在第 4 层。相同的结构多一层，价格的上界就多一层，仍然有限。
- **〔没做到的，照实〕**：方案的预测是“第 3 问停”。本包证的是“最迟第 3 问停”：恰在第 3 问停，要证单价范畴的全体不是群胚（要有一个单价范畴，它的某个自等价有非平凡的自然自同构）。这一步没做。
- **〔不是本包承接的〕**：Rzk 那一半（见 G10 结论）；不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。

## 禁止外推

- 只说对象在 `Type₁`、态射在 `Type₀` 的那一档单价范畴；别的宇宙层级同理，但本包没有写出。
- 负控制被拒的直接原因是宇宙层级，不是“宇宙的定理在同一层上被证伪”；它们说明的只是宇宙那两条定理搬不过来，单价范畴会停、付得清，由主包的 (2)(3) 证明。
- 只在 macOS 捕获与重放。
