# 逐层记账不等于暴露：H 深化 §7 预测的对抗检验（C-444）

> HUMAN_EDITED；2026-10-21；Claude Code 桌面会话 91beaf35（012-Opus）；独立 worktree `claude/012-opus-w8`；目标包 CG-011，完成门 G4。
>
> **起因**：
> - 研究发起人 2026-10-21 认可 H 深化内容，并要求“继续推进后续工作，直至全部完成”（原话见 CG-011 `GOAL.md`）。
> - H 深化 §7 第二段的预测：“典范性义务逐层延伸的框架（构造性类型论变体、coinductive 观测）被迫过程读法、暴露 H”。
> - 第 1 问综合 §2 (c) 的机制句依赖这个预测：“一旦某个框架要求逐层记账……H 立刻显形”。
> - CFC 账本第 18 轮起，把“逐层延伸却不暴露”的对抗实例列为缺口（`docs/第三框架检验-已有证据评估-20261019.md` §2）。
>
> - proof id：主包 `MP-CG001-PER-LAYER-ACCOUNTING-001`（`PerLayerAccounting.agda`）；负控制 `-NEG-001`（`WrongSetsSilent.agda`）、`-NEG-002`（`WrongStageSuffices.agda`）。
> - claim：`CG001-C-444`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --guardedness`，什么都不假定。
> - 依赖（全部导入，不重抄）：
>   - `../completion-cost/`（C-436）、`../a-univalence-b/`（C-430）、`../sameness-never-confirmed/`（C-441）、`../same-q-univalent/`（C-112）；
>   - 以及它们导入的 `../questioning-delay/`、`../pedometer-semantics/`、`../universe-questioning/`、`../truncation-questioning/`、`../product-questioning/`。
> - 标签：`FORMAL_PER_LAYER_ACCOUNTING_IS_NOT_EXPOSURE`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §71（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**同一个内核、同一个逐层追问程序，只换被一次收齐的那个整体。**

- **集合的全体与群的全体**：相同有结构，逐层记账，追问在第 2 问就停。宣布完成的价格是 3 层，付得清。
- **宇宙**：用同一个程序，永不停，价格付不清。
- **深度轴**：每个有限阶段都在有限步内答完，可是没有一个有限阶段够用。

所以逐层记账不是暴露的充分条件。停不停，只看被收齐的整体在它自己的相同下落不落定，这就是 C-438 的判据。

## 用到的词（都在 `PerLayerAccounting.agda` 里定义或导入）

- **逐层追问** `question C judge`（C-77）：从第 1 问起逐层问“C 在第 k+1 层落定了吗”，由判定器 `judge` 回答，答“是”就停。`runFor n` 是给它 n 步。
- **三个整体**：
  - 集合的全体 `Gathering 1`（即 `hSet`）；
  - 群的全体 `Group ℓ-zero`，它的相同由结构同一原理 `GroupPath : GroupEquiv M N ≃ (M ≡ N)` 给出；
  - 宇宙 `Type ℓ-zero`。
- **在第 n 层保住对象的完成** `KeepingCompletionAt n A`（C-436）。
- **流** `Stream = ℕ → Bool`。
- **前 n 位一样** `AgreeUpTo α β n = (k : ℕ) → k < n → α k ≡ β k`。
- `differ`、`askQ`：C-441 与 C-112 的逐位找差别。

## 命题全文：C-444

- **(1) 集合的全体**：
  - `setsKernel`：逐层判定器 `gatheringJudge 1` 内核实跑，`runFor 1` 得 `just 2`（`refl`）；
  - `setsStopAtTwo`：任何判定器都如此；
  - `setsStructured`：集合的全体不是集合（Bool 的对调）；
  - `setsPriceVisible`：在第 2 层宣布完成，留不住它；
  - `setsPricePaid`：在第 3 层，留得住。
- **(2) 群的全体**：
  - `groupsKernel`：一个逐层判定器 `groupsJudge` 内核实跑，`runFor 1` 得 `just 2`（`refl`）；
  - `groupsStopAtTwo`：任何判定器都如此；
  - `groupsStructured`：群的全体不是集合。ℤ 的取负与恒等是 ℤ 到自己的两个不同的群同构，经 `GroupPath` 成为两条不同的路径；
  - `groupsBounded`：是 1-型（`isGroupoidGroup`）；
  - `groupsPriceVisible`、`groupsPricePaid`：第 2 层留不住，第 3 层留得住。
- **(3) 宇宙**：
  - `universeKernel`：同一个程序跑 1000 步无答案（`refl`，C-430）；
  - `universeNeverStops`：任何判定器都永不停（C-430）；
  - `universePriceUnpayable`：任何有限层的完成都留不住它（C-436）。
- **(4) 深度轴**：
  - `decAgreeUpTo`：前 n 位是否一样，每个 n 都可判定；
  - `stagesKernel`：全 0 流与自己前 1000 位的阶段，内核实跑答“一样”（`refl`）；
  - `sameToStages`、`stagesToSame`：相同 ⟺ 每个阶段都一样；
  - `noStageSuffices`：对每个 α 与 n，都有一个流与 α 在前 n 位一样，却与 α 不同（C-441 的 `flipAt`）；
  - `selfNeverAnswers`：逐位找差别的搜索拿 α 和自己比，任何有限步都没有答案（C-441）。
- **整体**：`qual-C444` 把 (1)–(4) 写成一个类型，并由一个项居留。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-PER-LAYER-ACCOUNTING-NEG-001` | `WrongSetsSilent.agda` | §7 的强形式落在集合的全体上：相同有结构、逐层记账，所以走了 1 步仍无答案（`runFor 1 … ≡ nothing`，`refl`） | 被拒：内核算出 `just 2` |
| `MP-CG001-PER-LAYER-ACCOUNTING-NEG-002` | `WrongStageSuffices.agda` | 一个有限阶段就够确认相同：前 1 位一样，两个流就相同 | 被拒：第 1 个阶段只答得了第 0 位，到不了任意一位。(4) 的 `noStageSuffices` 证明任何有限阶段都不够 |

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(4)。
- **〔标准事实与既有证明的重组，不主张原创〕**：
  - `hSet` 是 1-型而不是集合；群的结构同一原理与 `isGroupoidGroup` 来自 cubical 库；
  - (3) 全部来自 C-430、C-436；(4) 的“确认不了”来自 C-441。
  - 新写的部分：
    - 群的全体不是集合（取负），以及群的逐层判定器；
    - 两个整体的价格（第 2 层留不住，第 3 层留得住）；
    - 深度轴上阶段的可判定，以及“没有一个阶段够用”的阶段形式；
    - 把这些与宇宙并列成一次对照。
- **〔对应关系，是读法，不是定理〕**：
  - **对照实验**：三个整体用同一个逐层追问程序，判定器在每一层都要给出答案，内核实跑（(1)(2)(3) 的三个 `refl`）。所以“逐层记账”在三处都在，变的只是整体在它自己的相同下落不落定。
    - H 深化 §7 第二段把分野的载体放在“典范性义务是否延伸到过程的每一层”上。这个载体说法不成立：逐层的义务在集合与群上都有，追问却停。
    - 收紧后的说法就是 C-438 的判据：逐层记账，**并且**一次收齐的整体带着所有高度。
  - **价格**：逐层记账让 H 的价格看得见。
    - 在集合与群上价格是 3 层：早于第 3 层宣布完成就丢东西（对调、取负），到第 3 层免费。
    - 付不清、永不停，要的是 A：宇宙带着所有高度。
    - 深度轴同理：每个阶段的价格是有限步，所有位一次交出的整体付不清。
  - **“暴露”的两个意思**：
    - 价格看得见：逐层记账就给；
    - 价格付不清：要 A。
    - §7 第一段（“为同一性/完成记账的框架都应暴露 H”）按前一个意思成立；第二段按 §4.1 的“显形为永不停”，要后一个意思，这才需要收紧。
  - **结构集合论与结构代数**：把 `hSet` 读作结构集合论（ETCS 一类，集合连同双射作为相同），把群的全体读作结构代数，是 C-438 “把理论写成类型”的同一种读法。
- **〔不是本包承接的〕**：
  - 这不是“另一个演算”意义上的第三框架。CFC 账本第 20–21 轮的判据是推理能力的变化；那条线（定时类型论的 forcing-ticks 编译器）仍卡在构建（`docs/第三框架检验-已有证据评估-20261019.md` §2.5）。本包检验的是 §7 第二段的载体句，用同一内核里的对照来做，不需要换演算。
  - 不推出“逐层记账的框架看不见 H”：集合与群上，H 的价格看得见（第 2 层的完成丢掉对调或取负）。
  - 典范性本身是元定理，不是包内命题（与 C-83、H 深化 §4.1 的边界同款）。
  - 不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。

## 禁止外推

- “三处受同一个典范性义务约束”是关于内核的元层事实，不是包内命题；包内能核的是三个 `refl` 实跑与 (1)–(3) 的命题。
- “集合与群是另一个框架”是读法（C-438 的呈现）；本包证的是关于这三个类型的命题。
- `stagesKernel` 只实跑了一个具体的流（全 0）的 1000 个阶段；所有流、所有阶段的可判定是 `decAgreeUpTo`。
- 只在 macOS 捕获与重放。
