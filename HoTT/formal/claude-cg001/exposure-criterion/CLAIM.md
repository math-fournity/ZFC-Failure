# 元层判据：一个理论什么时候暴露 A（C-438）

> HUMAN_EDITED；2026-10-21；Claude Code 桌面会话 91beaf35（012-Opus）；独立 worktree `claude/012-opus-w8`。
>
> **起因**：研究发起人 2026-10-21 在本会话中说【原话】（会话转录，2026-10-21T07:17:54Z）：
>
> > “我们能不能把它形式化的元层特征找出来？比如在极限理论里看不到我们新发现的这个问题，它的特点是什么，而 HoTT 的特点又是什么？当然，如果太抽象了意义也不大，最好是恰当的抽象程度。”
>
> > “只要给出一个结论：理论只要满足这种形式化的形态（或者某些语义形态），就一定可以把 ZFC+A / ZFC-1 的问题暴露出来。”
>
> 研究发起人对 A 的定义（KC-000077）【原话】：“A就是一个无限的步骤才能到达，从而存在的结果，当作已经存在的结果，参与运算。”
>
> 本包是这个方向的第一步：把 HoTT 在这个问题上的特点写成一个判据，并把 ZFC 与 HoTT 放进同一个框架里比较。前置结果：
>
> - C-77：逐层追问“是不是同一个”的程序；
> - C-430：单价性与“所有高度一次交出”这两个成因；
> - C-436：宣布完成的代价；
> - C-437：一阶 ZFC 里起名是保守扩张。
>
> - proof id：主包 `MP-CG001-EXPOSURE-CRITERION-001`（`ExposureCriterion.agda`）；负控制 `-NEG-001`（`WrongWholeHalts.agda`）、`-NEG-002`（`WrongOmegaSilent.agda`）。
> - claim：`CG001-C-438`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --guardedness`，什么都不假定。ZFC 的宇宙用 cubical 库的累积层级 `V`（`Cubical.HITs.CumulativeHierarchy`）。
> - 依赖（全部导入，不重抄）：`../completion-cost/`（C-436）、`../a-univalence-b/`（C-430）、`../questioning-delay/`（C-77–C-79）、`../pedometer-semantics/`、`../universe-questioning/`（取 `K`、`sec`、`secNontrivial`），以及它们导入的 `../truncation-questioning/`、`../product-questioning/`。
> - 标签：`FORMAL_EXPOSURE_IFF_NO_FINITE_LEVEL_OF_THE_COMPLETED_TOTALITY`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §66（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**一个理论暴露 A，当且仅当在它自己的“是不是同一个”之下，那个被一次收齐的整体在任何有限层都不落定。**

- 不落定时，逐层追问永不停，在任何有限层宣布完成都会换掉对象。
- 在某一层落定时，追问到那里就停，在那一层宣布完成是免费的，A 看不出代价。

两个理论的特点：

- **ZFC（极限理论的地基）**：相同是事实，累积层级 `V` 是集合。把所有有限阶段一次收齐，得到 ω，第 1 问就停。
- **HoTT**：相同有结构（单价），一次收齐的整体带着所有高度。有限层类型的全体就是这样：每个成员都在某个有限层，每个有限阶段都停，整体却永不停。

## 用到的词（都在 `ExposureCriterion.agda` 里定义或导入）

- **理论的呈现**：一个类型 X，它的元素是理论的对象，它的相同（路径）就是理论自己的“是不是同一个”。C-430 的“收集”（编码加所指成员）是一种带意义的呈现。
- **暴露** `Exposed X`：对每个 m，X 都不在 h-层 m。**落定** `Hidden X`：有某个 m，X 在 h-层 m。
- **追问** `question X judge`（C-77）：从第 1 层起逐层问“相同到这一层落定了吗”，落定就停并报出层数。
- **在 n 层保住对象的完成** `KeepingCompletionAt n X`（C-436）：一个落到 h-层 n 的类型上、又能解码回来的映射。
- **第 n 个有限阶段** `stage C n`：收集 C 里所指成员在 1+n 层落定的那些。
- **ZFC 的宇宙** `V`：HoTT Book §10.5 的累积层级，cubical 库实现。a 的成员是满足 `v ∈ₛ a` 的那些 v；ω 取库里的 `InfinitySet.ω`。
- **有限层类型的全体** `AllStages`：所有在某个有限层落定的类型，`Σ X, ∥ Σ m, isOfHLevel m X ∥`。

## 命题全文：C-438

- **(1) 判据**（对任意类型 X、任意判定器）：
  - `neverIsExposed`、`exposedIsNever`：追问永不停 ⟺ X 暴露；
  - `noKeepingIsExposed`、`exposedIsNoKeeping`：在任何一层宣布完成都保不住 X ⟺ X 暴露；
  - `haltsIsHidden`、`hiddenIsHalts`：追问停 ⟺ X 在某一层落定；
  - `hiddenCompletesFree`：X 在第 m 层落定，则在第 m 层的规范完成是等价，而且保住 X。
- **(2) 形态与元层定理**（对任意收集 C）：
  - `shapeExposes`：单价且所有高度一次交出 ⟹ 编码暴露（C-430 (1) 读成判据）；
  - `metaExposure`：单价且所有高度一次交出 ⟹ 每一个有限阶段 `stage C n` 的追问都停（它们也单价，`stageUnivalent`），而整体的追问永不停，在任何一层宣布完成都保不住整体；
  - `metaHiding`：编码的相同是事实 ⟹ 第 1 问就停，第 2 层的完成免费，不管 A 在不在；
  - `exposedNeedsStructure`、`exposedNeedsUnbounded`：暴露则相同不是事实；单价时暴露则高度没有上限。
- **(3) ZFC**：
  - `zfcStopsAtOne`、`zfcCompletionFree`：`V` 的相同是事实，第 1 问就停，第 2 层的完成免费；
  - `omegaStopsAtOne`、`omegaCompletionFree`：ω 的成员同样如此；
  - `everyStageInOmega`：ω 收齐了每一个有限阶段 `# n`。
- **(4) 结构集合论**（集合连同双射作为相同，即 `hSet`）：`structuralHidden`、`structuralHalts`。相同有结构但有上限，在第 3 层落定，追问停。
- **(5) HoTT：有限层类型的全体。**
  - `stagesUnivalent`、`stagesAllHeights`、`stagesExposed`：单价，所有高度都在，暴露；
  - `stagesNever`、`stagesNoKeeping`：追问永不停，任何一层的完成都保不住它；
  - `everyMemberFinite`、`memberInSomeStage`、`eachStageHalts`：每个成员都在某个有限层；全体就是各有限阶段之并；每个有限阶段都停；
  - `stagesMeta`：它是 (2) 元层定理的实例；
  - `stagesKernel1000`：内核实跑 1000 步仍无答案（`refl`）。
- **(6) 同一个 A，两种命运**（`sameATwoFates`）：同一个动作“把所有有限阶段一次收齐成一个现成的整体”：
  - 在 ZFC 里得到 ω，第 1 问就停，完成免费；
  - 在 HoTT 里得到有限层类型的全体，永不停，任何有限层的完成都保不住它；
  - 而 HoTT 一侧的每一个有限阶段都停。
- **整体**：`qual-C438` 把 (1)–(6) 写成一个类型，并由一个项居留。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-EXPOSURE-CRITERION-NEG-001` | `WrongWholeHalts.agda` | HoTT 里有限层类型的全体，像 ω 一样第 1 问就停（`runFor 0 … ≡ just 1`，`refl`） | 被拒：内核实跑得 `nothing`，`nothing != just 1`。(5) 证明它永不停 |
| `MP-CG001-EXPOSURE-CRITERION-NEG-002` | `WrongOmegaSilent.agda` | ZFC 里 ω 的成员像 HoTT 的全体一样，第 1 问答不出来（`≡ nothing`），拿 `omegaStopsAtOne` 去证 | 被拒：`just 1 != nothing`。(3) 证明 ω 第 1 问就停 |

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(6)。
- **〔大部分是已证结果的重组〕**：(1)(2) 由 C-77（`noLevelToNever`、`neverToNoLevel`、`haltsToLevel`、`levelToHalts`）、C-430（`noFiniteLevel`、`boundedSettles`、`haltsWithBound`、`factStopsAtOne`）与 C-436（`keptIsFinite`、`finiteIsKept`、`completeIsEquiv`）组装而成。新的是：
  - 判据对任意类型写成等价式；
  - `stage` 与 `metaExposure`：对每个满足形态的收集，“每个有限阶段都停、整体永不停”；
  - `V`（ZFC）与 `AllStages`（HoTT）两个实例；
  - 两种命运的并列（`sameATwoFates`）。
- **〔对应关系，是读法，不是定理〕**：
  - “把一个理论写成一个类型：对象连同它自己的‘相同’”是读法。
  - `V` 是 ZF 在 HoTT 里的标准模型（HoTT Book §10.5）。在 `V` 里，路径与外延相等一致，这是 cubical 库的定理（`extensionality`）；把 `V` 当作“ZFC 的宇宙”是读法。
  - `hSet` 读作结构集合论（ETCS 一类）是读法。
  - “把所有有限阶段一次收齐”读作研究发起人的 A，是读法。ω 是“所有自然数一次收齐”，有限层类型的全体是“所有有限层一次收齐”；说二者是同一个动作，也是读法。
  - “极限理论只问终局”读作“相同是事实”，即截断到集合层、把过程商掉：与 C-436 合起来，在第 2 层宣布完成（只留终局）免费，当且仅当对象本来就是集合。
- **〔不是本包承接的〕**：
  - 别的理论（有向或单纯类型论、两层类型论、构造性分析等）是否满足这个形态：方案 `dev-docs/元层特征方案-20261021.md` 列了候选与预测，本包没有证。
  - 判据只覆盖“高度”这一条轴：相同有几层。另外两条轴本包不承接：
    - “深度”：一层的“是不是同一个”要无穷步才答得完，例如构造性分析里两个实数是否相等（C-418 把它接到 LPO）；
    - “大小”：哪些整体可以一次收齐，例如罗素悖论（C-437 (4) 是它在一阶里的影子）。
  - 不证 ZFC-1 ⟹ B（与 C-430 相同）。

## 禁止外推

- 判据说的是“写成类型的呈现”。一个理论的呈现是否忠实，要逐个论证。
- `V` 是 ZF 的模型，不是一阶 ZFC 本身；一阶一侧见 C-437。`V` 里没有假定选择公理。
- 不推出 ZFC ⊢ ⊥。
- 两条核心事实是 HoTT 标准事实：“截断单位映射是等价当且仅当类型在该层”与“收缩保 h-层”（C-436 已注明）。`V` 是集合，来自它定义里的截断构造子 `setIsSet`。本包不主张它们原创。
- 只在 macOS 捕获与重放。
