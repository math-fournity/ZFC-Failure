# C-77 的追问程序与 C-430 的两个成因，在第二个内核 Rzk 里重跑：在单价性公设下（C-456）

> HUMAN_EDITED；2026-10-23；Claude Code 桌面会话 a15f4b3b（接手会话 91beaf35）；独立 worktree `claude/012-opus-w8`；CG-011 完成门 G10 结论 §2.3 写明的“什么时候值得再做”，研究发起人的目标“所有的后续`GN`，全部完成并推送”之下。
>
> **起因**：
> - G10 结论（`.claude/goals/CG-011-h-deepening-followups/G10-结论.md` §2.3）原文：“研究发起人想要‘第二个内核独立确认高度轴的结果’时：用公设引入单价性，把 C-77 的程序与 C-430 的两个成因移到 Rzk 里重跑。结论的身份要写成‘在单价性公设下’。”
> - 研究发起人 2026-10-23：“我授权了，你全部做完。”目标的检查方把这一半列为未完成。
>
> **包信息**：
> - proof id：主包 `MP-CG001-TWO-CAUSES-RZK-001`（`TwoCausesUnderUnivalence.rzk`）；负控制 `-NEG-001` 至 `-NEG-004`（见“负控制”一节）。
> - claim：`CG001-C-456`。
> - 工具链：Rzk 0.11.3（Riehl–Shulman 单纯类型论的实现），官方发布包按发布方摘要钉住，记录在 `HoTT/formal/claude-cg001/directed-native/RZK_TOOLCHAIN.json`。源码首行 `#lang rzk-1`；没有声明的公理，没有假设，没有洞。
> - 单价性怎么进来：**不写成公理**。每一条用到它的定理多带一个参数 `univ : Univalence`（“类型之间的路径到等价的映射是等价”），所以每条都读作“单价性 ⟹ ……”，收据仍是无公理的。函数外延性不另设，在文件里由 `univ` 推出（Voevodsky 的论证）；“等价的纤维可缩”也由它推出。
> - 依赖：无。本包不用任何库（Rzk 0.11.3 的发布包只有可执行文件），从数据类型写起，约 1900 行。
> - 标签：`FORMAL_TWO_CAUSES_RERUN_IN_RZK_UNDER_UNIVALENCE`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §83（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**在 Rzk 里，以单价性为前提，C-77 的追问程序与 C-430 的两个成因逐条重新被内核接受：单价且所有高度一次交出，编码就没有有限层，每一次运行都没有答案；单价而高度有上限，追问就停；编码的相同是事实，第 1 问就停；倒过来读也成立。后两条中的“相同是事实就停”与“永不停就不是事实”不带单价性参数。宇宙那一条要 A 的见证；Agda 里那是 EM 空间，Rzk 0.11.3 不支持高阶路径构造子，声明不出来，所以它作为第二个参数 `K : EveryHeight` 进来。**

## 用到的词（都在 `TwoCausesUnderUnivalence.rzk` 里定义）

- **h-层** `hlevel n A`：第 0 层是可缩；第 n+1 层是“任两点之间的路径类型都在第 n 层”。
- **判定器** `Judge C`：对每个 k，给出“C 在第 k+1 层落定”或其否定，都带证明。
- **追问程序** `run C judge n k`：从第 k 问开始、燃料为 n 的一次运行。第 k 问问 C 是否在第 k+1 层落定，答“是”就停并交出 k，答“否”就走一步去问第 k+1 问。Rzk 没有余归纳类型，所以程序按它的运行写出（Agda 里是 `runFor n (askFrom k)`，两边逐条相同）。
- **永不停** `Never C judge`：从第 1 问开始，每一次运行（任何燃料）都没有答案。C-77 里它与 `question C judge ≡ never` 等价。
- **停机** `Halts C judge`：某次运行交出某个答案。
- **收集** `Collection`：一个编码的类型，加上每个编码所指的成员。
- **相同是结构** `Univalent C`；**相同是事实** `SamenessIsFact C`（编码组成集合）；**所有高度一次交出（A）** `AllHeights C`；**高度有上限** `HeightsBoundedBy k C`：与 C-430 的定义逐字对应。
- **单价性** `Univalence`：对一切类型 A、B，`idtoeqv A B : (A = B) → Equiv A B` 是等价（双侧可逆）。
- **A 的见证** `EveryHeight`：对每个 n，有一个类型，它的 (1+n) 层回路有一个不平凡的截面。

## 命题全文：C-456

**(A) 从单价性推出的底座**（Agda 里来自 cubical 库，这里重写）：
- `funext`、`is-equiv-happly`：函数外延性，`happly` 是等价；
- `is-contr-map-equiv`：等价的纤维可缩（经等价归纳 `equiv-ind`）；
- `hlevel-pi`、`hlevel-sigma`、`hlevel-equiv`：h-层对 Π、Σ、等价类型封闭；
- `is-prop-hlevel`、`is-prop-is-equiv`：“在某层”与“是等价”都是命题；
- `local-global`：对单价的收集，`loops-iter (2+n) (Code, a)` 与 `Π (x : El a), loops-iter (1+n) (El a, x)` 是同一个指向型。

**(B) C-77 的程序**（下面这些都不带单价性参数）：
- (a) 燃料方程 `run-zero`、`run-succ`、`answer-yes`、`answer-no`；同样的方程以事实代替判定器：`settled-at`、`unsettled-at-zero`、`unsettled-at`。
- (b) `sound`：运行交出 j，则 C 在第 j+1 层落定。
- (c) `halts-to-level`、`level-to-halts`：停机当且仅当 C 在某个有限层落定；`no-level-to-never`、`never-to-no-level`：永不停当且仅当一层都没有；`never-no-answer`。
- (d) 精确停机时刻：`exact-halt`、`silent-up-to`。
- (e) `question-is-search`：程序就是“找第一个 k ≥ 1 使 C 在第 k+1 层落定”的无界搜索（定义相等，`refl`）。

**(C) C-430 的两个成因**（对任意收集）：
- (1) `no-finite-level`、`never-with-both`：单价且 A，则编码没有有限层，对任意判定器永不停。机制是 (A) 的 `local-global`。
- (2) `bounded-settles`、`halts-with-bound`：单价且高度以 k 为上限，则编码在第 k+1 层落定，对任意判定器停机。
- (3) `fact-stops-at-one`：编码的相同是事实，则对任意判定器燃料 0 交出 1。**不带单价性参数。**
- (4) `never-needs-unbounded`：单价的收集上永不停，则高度没有上限；`never-needs-structure`：永不停，则编码的相同不是事实。**后者不带单价性参数。**
- 整体：类型 `TwoCauses`（以 `univ` 为前提的 (1)–(4)）由 `two-causes` 居留。

**(D) 见证与 C-79**：
- **(5a) 宇宙**（编码就是类型）：`universe-univalent`（由 `univ` 得）；`universe-all-heights`（就是 `K`）；`universe-no-level`、`universe-never`（经 (1)）；判定器 `judge-via-B` 的每个“否”都来自 (1)；**内核实跑** `universe-kernel-run`：燃料 150 得 nothing（`refl`）。
- **(5b) 1+n 层落定者的汇集**：`gathering-univalent`、`gathering-bounded`、`gathering-halts`（一切 n）；`props-stop-at-one`（命题的汇集第 1 问停）；集合的汇集：`swap-loop`（布尔值的对调给出的回路），`hset-not-set`（集合的汇集不是集合），`sets-stop-at-two`（对任意判定器，燃料 0 没有答案、燃料 1 交出 2）；判定器 `judge-sets` 与内核实跑 `sets-kernel-run`（燃料 1 得 2，`refl`）。
- **(5c) 编号收集**（编码 ℕ，成员是 `K` 给的类型）：`numbered-all-heights`、`numbered-fact`（ℕ 是集合，`nat-is-set`，编码—解码）、`numbered-stops-at-one`、`numbered-not-univalent`（经 (1)）。
- **(6) 成对收集**（编码 `Σ (_ : U), Bool`，成员取第一分量）：`paired-all-heights`、`paired-not-univalent`、`paired-no-level`、`paired-never`。不单价，却永不停：要停，相同得换成事实，不单价不够。
- **C-79 (a)**：`naturals-stop-at-one`、`bools-stop-at-one`（对任意判定器）；判定器 `judge-naturals` 与内核实跑 `naturals-kernel-run`（燃料 0 得 1，`refl`）。
- 整体：类型 `Witnesses`（以 `univ` 与 `K` 为前提）由 `witnesses` 居留。

## 与 Agda 版的差别（照实）

1. **单价性是前提，不是原语**。Cubical Agda 里它是定理；这里每条用到它的定理都带 `univ`。
2. **A 的见证是前提**。Agda 用 EM 空间（高阶归纳类型）；Rzk 0.11.3 对路径之间的路径构造子报错，探针 `probes/HigherPathConstructor.rzk`（二维球面）的报错原文：“constructor surf declares a path between paths; higher path constructors are not supported yet”。所以宇宙、编号收集、成对收集三处带 `K : EveryHeight`；一般定理 (1)–(4) 不带。
3. **程序按燃料语义写**；“`≡ never`”换成“每一次运行都没有答案”。
4. **宇宙的内核实跑用燃料 150**（Agda 用 1000）：燃料 200 时 Rzk 0.11.3 的规范化器报 “maximum depth reached”，探针 `probes/FuelDepthLimit.rzk`。这是规范化器的限制，不是命题的：燃料 200 的那次运行照样由 (1) 是 nothing。三个探针由 `probes/run_probes.sh` 重跑，结果在 `probes/probe-results.txt`；探针不是收据。
5. **定义上的小差别**：h-层统一定义（第 1 层是“路径类型可缩”，与“任两元相等”等价，不是定义相等）；`loops-iter (n+1) P` 定义为 `loops-iter n (loops P)`（Agda 是 `Ω (Ω^ n P)`，两者等价，不是定义相等）。
6. **C-79 (b) 的“恰在第 1+n 问停”只重得 n = 0 与 n = 1**（命题第 1 问、集合第 2 问）；一般的 n 只重得停机，因为下界要第 1+n 层的见证。
7. **C-78 (b)（判定器唯一）与 (d)（另一个问题的程序）不在本包**。

## 负控制

每个负控制都在同一次运行里接在主文件之后检查（`rzk typecheck TwoCausesUnderUnivalence.rzk Wrong….rzk`）。

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-TWO-CAUSES-RZK-NEG-001` | `WrongFactNever.rzk` | 编码 ℕ（相同是事实），用具体判定器，燃料 0 没有答案 | 被拒：内核算出 `just 1` |
| `MP-CG001-TWO-CAUSES-RZK-NEG-002` | `WrongBoundedNever.rzk` | 集合的汇集（单价、高度有上限），用具体判定器，燃料 1 没有答案 | 被拒：内核算出 `just 2` |
| `MP-CG001-TWO-CAUSES-RZK-NEG-003` | `WrongBWithoutUnivalence.rzk` | 把路径类型自身的恒等等价当作编号收集的单价性交给 (1)，得出 ℕ 一层都没有 | 被拒：恒等是 `a = b` 到自身的等价，不是到成员等价的映射 |
| `MP-CG001-TWO-CAUSES-RZK-NEG-004` | `WrongUniverseAnswersEarly.rzk` | 宇宙（两个成因都在）燃料 1 交出 1 | 被拒：内核算出 nothing |

## 没做的（照实）

- **A 的见证本身**：Rzk 0.11.3 声明不出 EM 空间；宇宙一条以 `K` 为前提。
- **单价性本身**：Rzk 不内建；以 `univ` 为前提。若 Rzk 将来内建单价性（例如 Glue 类型），重测 G10 探针 5，这件事才有独立的证据价值（G10 结论 §2.3 原话的后一半）。
- **C-79 (b) 一般的 n 的下界、C-78 (b) (d)**：见上。

## 它在论证里的位置（身份分层）

- **〔机器已证，在单价性公设下〕**：上面的 (A)–(D)；四个负控制被拒。
- **〔第二个内核确认的是什么〕**：Rzk 有 `U : U`（探针 `probes/UniverseInUniverse.rzk` 被接受）。本包只在 Agda 用更高宇宙层级的地方用到它：宇宙作为收集、按递归定义的类型族、单价性对一切类型的量化。内核不能保证推导里没有用到悖论。所以这次重跑确认的是：**同一套推导在第二个、独立实现的内核里逐步检查通过**；不是“第二个基础是相容的”。
- **〔类型签名直接给出的分账〕**：哪些定理不带 `univ`，内核就已检查它们不用单价性：C-77 的全部程序事实、(3)、(4) 的后半、C-79 (a)。这与 C-430 的读法一致：去掉单价性、把相同换成事实，追问第 1 问就停，这一条本来就不靠单价性。
- **〔对应关系，是读法〕**：“两个成因”“A”“高度”“追问”“判定器”这些词不证明任何历史或哲学事实；哪一条是非现实的抽象，是研究发起人的裁定（C-430 的裁定 D4），不是定理。
- **〔不是本包承接的〕**：不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B；不证 HoTT 不一致。

## 禁止外推

- 结论的身份是“在单价性公设下”；带 `K` 的条款还要 A 的见证。
- 不说 Rzk 的基础相容（它有 `U : U`）。
- 内核实跑的燃料是 150，不是 1000。
- 只在 macOS 捕获与重放；Rzk 的运行不在 main 的重放工具 `tools/replay.py` 的覆盖范围内。
