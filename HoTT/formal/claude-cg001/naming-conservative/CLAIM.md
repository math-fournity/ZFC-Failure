# 给“已经完成的东西”起名：在一阶集合论里一分钱不花（C-437）

> HUMAN_EDITED；2026-10-21；Claude Code 桌面会话 91beaf35（012-Opus）；独立 worktree `claude/012-opus-w8`。
>
> **起因**：研究发起人 2026-10-21 在本会话中说【原话】：“下一步做完，全做完”（会话转录，2026-10-21T07:17:54Z）。这个“下一步”是 C-436 报告末尾点名的：在一阶集合论里证明“给极限起名是保守扩张”（H 深化 §6 (a) 的候选 C-437）。
>
> 背景是两句原话。
>
> - 研究发起人 2026-10-17 提出的 H【原话】：
>   > “我们假设它叫H，H可能应该被叫做：数学家认为，引入H不会发生问题。但是H在HoTT中却表现出了问题。”
> - 研究发起人 2026-10-19 设的目标，第 2 问【原话】：
>   > “我们之前已经证明过他们的思维到底错在哪，这次要更进一步，深刻洞见问题究竟出在哪里，并彻底揭示出来”
>
> 研究发起人对 A 的定义（KC-000077）【原话】：“A就是一个无限的步骤才能到达，从而存在的结果，当作已经存在的结果，参与运算。”
>
> C-436（`../completion-cost/`，Cubical Agda）证明了 HoTT 一侧：同一性有结构、所有高度一次交出时，宣布完成要么永远问不完，要么换掉对象。它在类型论里给了平坦一侧的对应物（相同只是事实时，完成免费），但没有碰 ZFC 本身。本包证明 ZFC 一侧，对象就是 Foundation 里的 𝗭𝗙𝗖。
>
> - proof id：主包 `MP-CG001-NAMING-CONSERVATIVE-001`（`GodelQ/Naming/NamingConservative.lean`、`GodelQ/Naming/QualificationNaming.lean`）；负控制 `-NEG-001`、`-NEG-002`。
> - claim：`CG001-C-437`。
> - 工具链：Lean 4（v4.34.0）内核，加 Mathlib（`5ed29652`）与 FormalizedFormalLogic/Foundation（`1fb01b72`）；`-DautoImplicit=false`。经典逻辑，内核公理只有 `propext`、`Classical.choice`、`Quot.sound`。𝗭𝗙𝗖 是 Foundation 中 ℒₛₑₜ 上的一阶理论，证明系统 LK；完备性（`Theory.Proof.complete`、`SetTheory.complete`）与可靠性（`Theory.Proof.sound`）用 Foundation 已证的。不涉及 HoTT 路径。
> - 标签：`FORMAL_NAMING_A_COMPLETED_OBJECT_IS_CONSERVATIVE_AND_RIGID`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §65（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**在 ZFC 里，只要先有一条公理说“它存在”，给它起名、拿名字去运算，旧语言里就一句定理也不会多出来；名字在每个模型里只有一个意思，去掉名字，模型原样还在。**

- 代价全押在“存在”那一条上；起名这一步，从 ZFC 内部看不出任何痕迹。
- 这与 C-436 的 HoTT 一侧正好相反：那里宣布完成，要么永远问不完，要么换掉对象。

## 用到的词（都在 `NamingConservative.lean` 里定义）

- **扩张语言** `withName`（ℒₛₑₜ⋆）：ℒₛₑₜ 加一个新常元 ⋆（名字）；`ι` 把 ℒₛₑₜ 嵌进去（Foundation 的 `Language.Hom.add₁`）。
- **命名公理** `nameAxiom φ`：“⋆ 满足 φ”，φ 是一元的 ℒₛₑₜ 公式。
- **命名之后的理论** `named T φ`：ℒₛₑₜ⋆ 的等词公理，加 T 的全部公理（原样搬入），加命名公理。
- **至多一个** `atMostOne φ`：“满足 φ 的至多一个”。
- **模型**：M 上给定 ∈（Foundation 的 `SetStructure`），等号解释为 M 自己的相等。`expand a` 是 M 加上“⋆ 指 a”得到的 ℒₛₑₜ⋆ 结构。
- **三个公式**：`isω` 是 Foundation 里 ω 的定义公式；`neverDef` 是“x ≠ x”（谁都不满足）；`anyDef` 是“x = x”（谁都满足）。

## 命题全文：C-437

- **(1) 起名是保守扩张**（`naming_conservative`）。对任意含等词公理的集合论 T、任意一元公式 φ：若 T ⊢ ∃x φ(x)，则对每个 ℒₛₑₜ 句子 σ，
  `named T φ ⊢ ι(σ)` 当且仅当 `T ⊢ σ`。
- **(2) 名字只有一个意思。**
  - `naming_unique_expansion`：若 T 还证明 `atMostOne φ`，则 T 的每个模型 M 恰有一个 a，使 `expand a` 是 `named T φ` 的模型。
  - `unitStr_eq`：解释 ⋆ 的任何方式都只是挑一个元素（只含 ⋆ 的语言上的结构都是某个 `nameStr a`）。所以“恰有一个 a”就是“恰有一种解释”。
  - `expand_keeps_object`：去掉名字，得到的就是 M 原来的结构（按定义成立，`rfl`）。
  - 引理 `expand_models_named`：`expand a` 是 `named T φ` 的模型，当且仅当 M 是 T 的模型且 a 满足 φ。
- **(3) ω。**
  - `zfc_exists_omega`、`zfc_atMostOne_omega`：𝗭𝗙𝗖 证明满足 `isω` 的东西存在、至多一个。存在一半走 Foundation 的路线 `isInductive_exists`，用的是无穷公理。
  - `omega_naming_conservative`：给 ω 起名是保守的。
  - `omega_unique_expansion`、`omega_expansion_iff`：𝗭𝗙𝗖 的每个模型里恰有一种解释，就是 ω 本身。
  - `universe_omega_unique`：在 Lean 元层的集合宇宙（Foundation 的 `Universe`，𝗭𝗙𝗖 的一个模型）里同样恰有一种。
- **(4) 去掉“存在”。**
  - `named_never_proves_bot`：给“x ≠ x”起名，`named 𝗭𝗙𝗖 neverDef ⊢ ⊥`。
  - `zfc_unprovable_bot`：𝗭𝗙𝗖 ⊬ ⊥，来自 Foundation 的 `zfc_consistent`，即 Lean 元层的 `Universe` 模型。
  - `never_not_conservative`：于是对“x ≠ x”，起名不再保守。
- **(5) 去掉“唯一”。**
  - `any_naming_conservative`：给“x = x”起名仍是保守的，因为存在是有的。
  - `any_not_unique`：但 𝗭𝗙𝗖 的每个模型里，名字都不止一种解释：∅ 与 ω 都行，而 ∅ ≠ ω。
  - `universe_any_not_unique`：`Universe` 里也是这样。
- **整体**：`qual_C437`（`QualificationNaming.lean`）把 (1)–(5) 写成一个命题并给出证明。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-NAMING-CONSERVATIVE-NEG-001` | `GodelQ/Negative/WrongNamingWithoutExistence.lean` | 不先证存在，给“x ≠ x”起名也保守：拿 ω 的存在 `zfc_exists_omega` 去顶替 | 拒绝：`naming_conservative` 要 `𝗭𝗙𝗖 ⊢ ∃¹ neverDef`，给的是 `𝗭𝗙𝗖 ⊢ ∃¹ isω`，类型对不上。(4) 证明这个说法本来就不成立 |
| `MP-CG001-NAMING-CONSERVATIVE-NEG-002` | `GodelQ/Negative/WrongNamingWithoutUniqueness.lean` | 不证唯一，“x = x”的名字在每个模型里也只有一个意思：拿 ω 的唯一性 `zfc_atMostOne_omega` 去顶替 | 拒绝：要 `𝗭𝗙𝗖 ⊢ atMostOne anyDef`，给的是 `𝗭𝗙𝗖 ⊢ atMostOne isω`，类型对不上。(5) 证明这个说法在每个模型里都不成立 |

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(5)。
- **〔标准事实，不主张原创〕**：给一个可证存在（且唯一）的对象添一个常元，是保守的（定义性）扩张，这是一阶逻辑的教科书事实。增量在于：它在 Foundation 的真实 𝗭𝗙𝗖 上被机器核对，并接到 H 与 A 的分析上。
- **〔对应关系，是读法，不是定理〕**：
  - H 深化 §2 表格里的“平坦→命名即足、代价为零”，第 1 问一手层综合 §2 (a) 的“一条定义就够”：(1)(2) 把它们变成关于 ZFC 本身的定理。C-436 的 (2)(4) 给的是类型论里的对应物。
  - “起名就是宣布完成”是读法。H 深化把 H 刻画为“宣布完成，而不支付该完成对应的构造”。在一阶集合论里，“把结果当作已经存在的结果，参与运算”，形式上就是用一个项指它，让它进入公式。
  - (4) 的读法：代价全部押在存在前提上，用它是免费的。ω 的情形，存在前提来自无穷公理。把这条存在前提读成研究发起人 A 的一个实例，是读法。
  - 第 1 问（“他们为什么没发现”）的形式一半：(1) 说，从 ZFC 内部，没有一句旧语言的话分得出“起了名”与“没起名”；H 在 ZFC 里不留下 ZFC 自己看得见的痕迹。“数学家因此没发现”是史学判断（第 1 问的考古线），不是本包的定理。
- **〔不是本包承接的〕**：
  - 极限“只问终局”那一层：机器对应物仍是 C-112 (d)。
  - A 本身合不合理：本包只说在 ZFC 里代价押在它上面、用它不花钱，不评判这条存在前提。
  - ZFC 与 ZFC-1 的区分（“A 住在‘存在、解决、完成’的用法里”是 GLM 的读法，KC-000068 与认知对齐 §1.5）：本包的 (1) 只说明“用”这一步在 ZFC 内部是保守的。

## 禁止外推

- 不推出 ZFC ⊢ ⊥。(4) 证的是加了“⋆ ≠ ⋆”之后的理论证出 ⊥；𝗭𝗙𝗖 自己不证 ⊥，这一点依赖 Lean 元层的模型，不是 𝗭𝗙𝗖 内部的事实。
- 只管“添一个常元”这一种起名；添函数符号、添谓词的定义性扩张同理可做，本包没有做。
- “相等是平坦的”不是本包证明的，而是体现在模型的取法上：(2)(3)(5) 的模型用 M 自己的相等（`SetStructure`）；(1) 对一切结构成立。
- 数学内容是标准的；新的是在真实的 𝗭𝗙𝗖 上机器核对，并接到 H、A 上。
- 只在 macOS 捕获与重放。
