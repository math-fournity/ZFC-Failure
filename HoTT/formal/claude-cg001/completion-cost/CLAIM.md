# 宣布完成的代价：对象不变的完成，当且仅当对象本来就在有限层封顶（C-436）

> HUMAN_EDITED；2026-10-21；Claude Code 桌面会话 91beaf35（012-Opus）；独立 worktree `claude/012-opus-w8`。
>
> **起因**：研究发起人 2026-10-19 设的目标，第 2 问【原话】：
>
> > “我们之前已经证明过他们的思维到底错在哪，这次要更进一步，深刻洞见问题究竟出在哪里，并彻底揭示出来”
>
> 这一轮的新视角是研究发起人 2026-10-17 提出的 H【原话】：
>
> > “我们假设它叫H，H可能应该被叫做：数学家认为，引入H不会发生问题。但是H在HoTT中却表现出了问题。”
>
> `docs/H深化-同一动作在极限与HoTT中的两处表现-20261017.md` 把 H 刻画为“宣布完成，而不支付该完成对应的构造”，并给出三句分析，当时都是〔我们的分析〕，没有形式推导：
>
> - §2：平坦的相等让完成零代价，分层的同一性让完成必须付层次；
> - §3：“（对象不变）∧（宣布完成）在 HoTT 中不可满足”；
> - 第 1 问一手层综合 §2 (a)(b)：同一件事的两面。
>
> 本包把这三句写成定理。
>
> - proof id：主包 `MP-CG001-COMPLETION-COST-001`（`CompletionCost.agda`）；负控制 `-NEG-001`、`-NEG-002`。
> - claim：`CG001-C-436`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --guardedness`，不假定任何东西。
> - 依赖（全部导入，不重抄）：
>   - `../a-univalence-b/AUnivalenceB.agda`（C-430）；
>   - `../questioning-delay/QuestioningDelay.agda`（C-77、C-79）；
>   - `../pedometer-semantics/PedometerSemantics.agda`（C-55、C-59）；
>   - `../universe-questioning/`（C-75，经 C-430）；
>   - `../truncation-questioning/TruncationQuestioning.agda`（C-83，取 `TU`）与它导入的 `../product-questioning/`。
> - 标签：`FORMAL_COMPLETION_KEEPS_THE_OBJECT_IFF_IT_WAS_FINITE_LEVEL`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §64（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**“宣布一件事已经完成，同时原物还能原样取回”，当且仅当这件事本来就在有限层封顶。**

- 在相同只有“是”或“不是”的地方，宣布完成不花一分钱，所以看不出毛病。
- 在相同有无穷多层、且所有层都已一次交出的地方，结局只有两种：
  - 保住原物，追问就永远停不下来；
  - 宣布完成，原物就被换掉了。

## 用到的词（都在 `CompletionCost.agda` 里定义或导入）

- **在 n 层完成**：一个映射 `f : A → B`，其中 B 在 h-层 n（在第 n 层就封顶、已经完结的答案）。
- **保住对象** `Decodes f`：有解码 `g : B → A`，对每个 a 都有 `g (f a) ≡ a`。
- **规范的完成** `complete n = ∣_∣ₕ : A → ∥ A ∥ n`，即 n 层截断。
- **收集、单价、所有高度一次交出（A）、相同是事实、高度有上限、追问程序**：照 C-430 的定义导入，不改。

## 命题全文：C-436（`CompletionCost.agda`）

- **(1) 对象不变的完成 ⟺ 对象在该层。** 对任意类型 A 与 n：
  - `keptIsFinite`：若 A 有一个在 n 层、保住对象的完成，则 A 在 h-层 n（收缩保 h-层）；
  - `finiteIsKept`：若 A 在 h-层 n，恒等映射就是这样的完成。
- **(2) 规范的完成：免费 ⟺ 平坦。** 对任意 A 与 n：
  - `freeIsFlat`：`isEquiv (complete n {A}) ≃ isOfHLevel n A`，两个命题等价；
  - `completeDecodesLevel`、`levelCompleteDecodes`：`complete n` 有解码 ⟺ A 在 h-层 n。
- **(3) 两个成因都在：二者只能择一。** 对任意单价且所有高度一次交出的收集 C（C-430 的两个成因，模块 `BothCauses`）：
  - `twoFates` 的第一半（即 C-430 (1)）：对任意判定器，`question (Code C) judge ≡ never`，保住对象就永不完结；
  - `noKeepingCompletion`：对一切 n、一切在 h-层 n 的 B、一切 `f : Code C → B`，f 都没有解码，宣布完成就留不住对象；
  - `completionChangesCodes`：对一切 n，`complete n` 都不是等价。
- **(4) 码层平坦：完成免费，第 1 问就停。**
  - `flatCompletionFree`：编码的相同是事实（编码成集合），则第 2 层的完成是等价；C-430 (3) 给出第 1 问就停。
  - `numberedCompletionFree`：编号收集（C-430 (5c)）的成员与宇宙那一行完全相同、所有高度都在，但编码是 ℕ，第 2 层的完成免费。
  - `gatheringCompletionFree`：1+n 层落定者的汇集（C-430 (5b)）在 2+n 层免费完成，并且停机（`gatheringHalts`）。
- **(5) 宇宙。**
  - `universeNever`：永不停（经 C-430 重得 C-78）；
  - `universeNoKeeping`、`universeCompletionChanges`：任何有限层的完成都留不住宇宙；
  - `noDecodingAgain`：C-83 (d) 的 `noDecoding`（集合截断后的宇宙解码不回去）作为 (3) 在第 2 层、B = `∥ Type ∥₂` 的特例重新得出。
- **(6) 内核实跑。**
  - `flatRoundTrip`：ℕ 上把 3 在第 2 层完成再解码，得 3（`refl`）；
  - `swapActs`：Bool 的对调把 true 送到 false（`refl`），这就是完成要丢掉的“以什么方式相同”。
- **整体**：`qual-C436` 把 (1)–(6) 写成一个类型，并由一个项居留。

## 负控制

| proof id | 文件 | 断言 | 预期 |
|---|---|---|---|
| `MP-CG001-COMPLETION-COST-NEG-001` | `WrongFlatLoses.agda` | 平坦的编码在完成后丢了对象：ℕ 上 3 在第 2 层完成再解码得 4（`refl`） | 被拒：内核实跑解码得 3，`3 != 4` |
| `MP-CG001-COMPLETION-COST-NEG-002` | `WrongFlatChanges.agda` | 拿恒等等价冒充单价性，把 (3) 用到编号收集上，得出“ℕ 的完成在每一层都换对象” | 被拒（类型检查）：恒等是 `a ≡ b` 到它自己的等价，不是单价性要的“编码路径到成员等价”的映射 `codeToEquiv`。(4) 证明了 ℕ 的完成在第 2 层免费 |

## 收据

- 主运行：`HoTT/verification/runs/20261021-CG001-COMPLETION-COST-01`，`KERNEL_ACCEPTED_WITH_SCOPE`，退出 0，86 秒，stderr 0 B。
- 负控制：`20261021-CG001-COMPLETION-COST-NEG-01`、`-NEG-02`，均 `KERNEL_REJECTED`（退出 42，`UnequalTerms`），与预期一致。
- 精确重放：`verify_cg001_run.py --rerun`，三个运行都是 `EXACT_EXIT_STDOUT_STDERR_MATCH`；主运行 `PASS_WITH_SCOPE`，负控制 `NEGATIVE_CONTROL_REJECTED_AS_EXPECTED`。输出存 `.claude/goals/CG-001-targeted-overview/verification/` 同名文件。

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(6)。
- **〔对应关系，是读法，不是定理〕**：
  - H 深化 §2 表格“操作性质”“底层相等结构”“命运”三行：
    - “平坦→命名即足、代价为零”对应 (2) 的免费方向与 (4)；
    - “分层→完成必须支付层次”与“H 二择一：保持对象→永不完成；宣布完成→对象已换”对应 (3)。
  - H 深化 §3 的“（对象不变）∧（宣布完成）不可满足”：对“落到有限层的对象、靠解码保住对象”这一类完成，(3) 证明了它，**而且不只对截断**。§3 原来的补注说那个“没有第三条路”只关于截断这条具体的路；(3) 把它推广到任意落到有限层对象的映射。
  - 第 1 问一手层综合 §2 (a)(b)：(a) 对应 (2)(4)，(b) 对应 (3)(5)。
- **〔标准读法，不是本包的定理〕**：ZFC 是外延的集合论，“两个集合相同”只有“是”或“不是”，没有“以什么方式”。在 HoTT 的语言里，这就是“相同是事实”（集合）。所以在 ZFC 的世界里，(4) 那一侧的情形处处成立：宣布完成是免费的，H 在那里看不出代价。
- **〔不是本包承接的〕**：
  - 研究发起人第二轮深化的“极限只关注终局、HoTT 要求回答过程中的内容”（H 深化 §4.1）。它的机器对应物仍是 C-112 (d)：永不停 ⟹ 跑者到达无条件；反向需要单调。
  - “理论只对终局断言负检测义务”这一分离（C-439 侦察的 L2），本包没有做。

## 禁止外推

- 只管“落到在有限层封顶的对象上、靠解码保住对象”这一种完成；不对一切可设想的“完成”下断言。
- 不证 ZFC 的相等平坦，也不证数学家当年假定了 H：前者是标准读法，后者是史学问题（第 1 问的考古线）。
- 不形式化极限一侧“给极限起名是保守（定义性）扩张”。那是另一个候选（H 深化 §6 (a)、C-437 侦察），本包在类型论里给的是它的对应物 (2)(4)。
- “截断单位映射是等价当且仅当类型在该层”“收缩保 h-层”是 HoTT 标准事实（HoTT Book 第 7 章），不主张原创。增量是把它们放到 C-430 与 H 的分析上，以及 (3) 对任意完成映射的推广。
- 只在 macOS 捕获与重放。
