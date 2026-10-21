# 同一个理论里的两种命运：两层类型论（C-442）

> HUMAN_EDITED；2026-10-21；Claude Code 桌面会话 91beaf35（012-Opus）；独立 worktree `claude/012-opus-w8`。
>
> **起因**：方案 `dev-docs/元层特征方案-20261021.md` §6 的归因有三个候选前提：(a) A（现成的收集）；(b) 有结构的相同（单价性）；(c) 呈现方式（把一个理论写成一个类型）。§4 指出两层类型论（2LTT）最有判别力：同一个理论里同时有两种相同，A 的代价若只在有结构的那一层出现，就能把“代价来自理论本身”和“代价来自呈现”这两个竞争归因排除掉一大半。
>
> - proof id：主包 `MP-CG001-TWO-FATES-2LTT-001`（`TwoFatesOneTheory.agda`）；负控制 `-NEG-001`（`WrongInnerFlat.agda`）、`-NEG-002`（`WrongInnerToOuter.agda`）。
> - claim：`CG001-C-442`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --two-level --guardedness`，什么都不假定。`--two-level` 打开 Agda 的外层宇宙 `SSet`；外层的严格相等按 2LTT 满足 UIP（由模式匹配直接得到）。
> - 依赖（全部导入，不重抄）：`../exposure-criterion/`（C-438）、`../a-univalence-b/`（C-430），以及它们导入的 `../completion-cost/`、`../questioning-delay/`、`../pedometer-semantics/`、`../universe-questioning/`、`../truncation-questioning/`、`../product-questioning/`。
> - 标签：`FORMAL_ONE_THEORY_TWO_SAMENESSES_TWO_FATES`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §69（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**同一个理论里，同一个动作“把东西一次收齐成现成的整体”有两种命运：在相同是事实的外层，免费；在相同有结构的内层，追问永不停。**

- 两个宇宙都是现成的收集：外层宇宙 `SSet` 与内层宇宙 `Type`。前者的相同是事实，后者永不停。
- 同样的有限阶段（Eilenberg–MacLane 空间 K n）：
  - 在外层按外层自然数一次收齐，编码的相同是事实；
  - 在内层收齐成单价的汇集，永不停。
- 外层可以给内层的阶段编号，反过来不行。2LTT 不允许把内层的数据消去到外层。

## 用到的词（都在 `TwoFatesOneTheory.agda` 里定义或导入）

- **外层**：`SSet` 里的类型。`_≡ˢ_` 是外层的严格相等；`ℕˢ` 是外层自然数。`isPropˢ`、`isSetˢ` 是外层的命题与集合。
- **内层**：`Type` 里的类型，即 HoTT 本身。相同是路径，宇宙是单价的。
- **追问** `question`（C-77）；**收集、单价、所有高度**（C-430）；**暴露**（C-438）。
- **EM 阶段的汇集** `EMStages`：`Σ X, ∥ Σ n, X ≡ K n ∥`，其中 `K n = EM ℤ (1+n)`。
- **外层编号到内层阶段**：`toℕ : ℕˢ → ℕ`、`innerOf : ℕˢ → EMStages`。

## 命题全文：C-442

- **(1) 外层的相同全是事实**：
  - `uipˢ`、`everyOuterTypeIsSet`：每个外层类型的两条相同证明都相同；
  - `outerUniverseIsSet`：外层宇宙 `SSet` 本身也如此；
  - `outerStagesFlat`：外层自然数如此。
- **(2) 内层宇宙的追问永不停**：`innerUniverseNever`（即 C-430 的 `universeNever`）。
- **(3) 同样的阶段，两层各收齐一次**：
  - `emUnivalent`、`emAllHeights`、`emExposed`、`emNever`：内层 EM 阶段的汇集单价，所有高度都在，暴露，追问永不停；
  - `stageFinite`：每个阶段 K n 都在 3+n 层落定（`hLevelEM`）；
  - `innerOf`、`innerOfIsStage`、`toℕSuc`：外层的每个编号 n 给出内层的成员 K (toℕ n)，编号逐个对应阶段。
- **整体**：`qual-C442 : TwoFates`。这是一个外层记录，把 (1)–(3) 放在一起，由一个项居留。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-TWO-FATES-2LTT-NEG-001` | `WrongInnerFlat.agda` | 外层的相同是事实，所以内层宇宙的相同也是事实：拿外层的 `uipˢ` 证任意两条内层路径相等 | 被拒：`uipˢ` 管外层的 `_≡ˢ_`，内层路径不是它（`(A ≡ B) !=< _ ≡ˢ _`）。(2) 证明内层宇宙永不停 |
| `MP-CG001-TWO-FATES-2LTT-NEG-002` | `WrongInnerToOuter.agda` | 内层自然数可以逐个收回平坦的外层：按内层 ℕ 递归定义到 ℕˢ 的函数 | 被拒（`SortOfSplitVarError`）：2LTT 不允许把内层（可纤维化）的数据消去到外层 |

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(3)。
- **〔标准事实，不主张原创〕**：
  - 2LTT 的外层满足 UIP，内层是 HoTT，内层数据不能消去到外层；
  - 宇宙不在任何有限层（C-430）。
  2LTT 见 Annenkov–Capriotti–Kraus–Sattler 的工作，本包不引原文。增量是把同一个 A 在两层的两种命运并列，用于归因。
- **〔对应关系，是读法，不是定理〕**：
  - **归因**（方案 §6）：同一个理论、同一个 A（一次收齐成现成的整体），代价只出现在有结构的那一层。于是：
    - (a) 被告是 A 仍然成立：没有 A，内层的有限阶段各自都停（C-438）；
    - (b) 有结构的相同是探测器：同一个 A 在外层没有代价，只在内层有；
    - (c) “代价来自呈现方式”：两层用的是同一种呈现（类型连同它的相同），差别只在相同的种类。这个竞争归因由此大大削弱。
  - **外层像 ZFC**：外层的相同全是事实，宇宙也是。它是“平坦一侧”在同一个理论里的样子。
  - **不能收回**：负控制 NEG-002 读作，平坦的一层可以给有结构的一层编号，有结构的一层却不能被收回平坦的一层。这是 2LTT 的设计（保护内层的同伦意义），不是本包的定理。
- **〔不是本包承接的〕**：
  - 用外层自然数在内层定义半单纯类型（无穷相干一次写完），这是 2LTT 的经典应用，与 A7 那条线有关。本包没有做。
  - 外层宇宙“不单价”：本包没有证外层有两个同构却不严格相等的类型。
  - 不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。

## 禁止外推

- 外层 UIP 是 2LTT 的设计（Agda 的 `--two-level` 允许外层模式匹配），不是从别处推出的结论。
- 归因读法只排除“代价来自理论本身或呈现方式”的强形式，不证明 A 是唯一原因。
- 只在 macOS 捕获与重放。
