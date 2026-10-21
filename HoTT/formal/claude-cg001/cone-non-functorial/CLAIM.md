# 锥不函子化，就是宣布完成的代价（C-440）

> HUMAN_EDITED；2026-10-21；Claude Code 桌面会话 91beaf35（012-Opus）；独立 worktree `claude/012-opus-w8`。
>
> **起因**：研究发起人 2026-10-21 的新方向【原话】（会话转录，2026-10-21T07:17:54Z）：
>
> > “我的意思是，我们能不能在其他理论里也找出来？当我们把 HoTT 在这个问题上的特性，以合适的形式化方式在一个更高的元层层面表达出来之后，再去观察其他理论有没有类似的元层特征。如果有，它就可以用来暴露 ZFC-1（或者说 ZFC+A）的问题。”
>
> C-438 给了判据：相同有结构的地方，在有限层宣布完成就会丢东西。本包在主流数学里找它的一个著名症状。
>
> **症状**：三角范畴（导出范畴）里，一个交换方块诱导的“锥”上的映射存在，却不唯一，不能函子化。这是标准事实：三角范畴的公理（Verdier 的 TR3）只保证这个映射存在。原文核对留给考古线，本包不引原文。
>
> - proof id：主包 `MP-CG001-CONE-NON-FUNCTORIAL-001`（`ConeNonFunctorial.agda`）；负控制 `-NEG-001`（`WrongConeUnique.agda`）、`-NEG-002`（`WrongWindingZero.agda`）。
> - claim：`CG001-C-440`。编号跳过 C-439：C-439 已被“读法分离”候选占用，见 H 深化 §8.1 与 `dev-docs/C439读法分离侦察/`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --guardedness`，什么都不假定。只用 cubical 库（推出、圆周与绕数、命题截断），不导入别的包。
> - 标签：`FORMAL_CONE_DEPENDS_ON_THE_WAY_A_SQUARE_COMMUTES`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §67（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**锥上的映射取决于方块“以什么方式”交换。只记“方块交换了”这一个事实，锥就定不下来。**

- 交换方式的类型是集合而不是命题。记住方式（在第 2 层完成），锥是方式的函数。
- 只留“交换了”（在第 1 层宣布完成），就没有与构造一致的锥。
- 这正是 C-436：完成保住对象，当且仅当对象本来就在该层。

## 用到的词（都在 `ConeNonFunctorial.agda` 里定义）

- **方块**：A = Bool，B = S¹（圆周），f 取常值 `base`；左右两边都是恒等，下边也是 f。
- **交换的方式** `Commutes`：一族路径 `(b : Bool) → f b ≡ f b`。
- **两种方式**：
  - `H₀`：处处 `refl`；
  - `H₁`：在 true 处绕一圈 `loop`，在 false 处 `refl`。
- **锥** `Cof`：f 的余纤维，即推出 `Pushout (λ _ → tt) f`。
- **诱导的映射** `coneMap H`：锥点与 S¹ 不动，粘合路径 `push b` 换成 `push b ∙ cong inr (H b)`。
- **带点自映射** `PointedSelfMap`：锥点 `inl tt` 作基点。`coneMap• H = (coneMap H , refl)`。
- **不变量** `windingOf`：把锥的回路 `push true ∙ sym (push false)` 的像压到 S¹ 上，经基点路径折回 `base`，数绕数。

## 命题全文：C-440

- **(1) 记住方式，锥是方式的函数**：`coneMap• : Commutes → PointedSelfMap`。
- **(2) 两种方式，两个映射**（内核实跑）：
  - `winding₀`：`windingOf (coneMap• H₀) ≡ pos 0`，`refl`；
  - `winding₁`：`windingOf (coneMap• H₁) ≡ pos 1`，`refl`；
  - `coneMapsDiffer`：所以 `coneMap• H₀ ≢ coneMap• H₁`。
- **(3) 只记“交换了”，锥就定不下来**（`notFunctorial`）：不存在 `F : ∥ Commutes ∥₁ → PointedSelfMap`，对每个 H 都有 `F ∣ H ∣₁ ≡ coneMap• H`。
- **(4) 交换方式的层**：
  - `commutesNotProp`：`Commutes` 不是命题；
  - `commutesIsSet`：`Commutes` 是集合。
- **整体**：`qual-C440` 把 (1)–(4) 写成一个类型，并由一个项居留。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-CONE-NON-FUNCTORIAL-NEG-001` | `WrongConeUnique.agda` | 锥上的映射只取决于“交换了”，两种方式诱导同一个映射（`refl`） | 被拒：两个映射在 `push` 上不同（`base != H₁ b i`）。(2) 证明它们不相等 |
| `MP-CG001-CONE-NON-FUNCTORIAL-NEG-002` | `WrongWindingZero.agda` | 绕一圈的方式 H₁ 诱导的映射也不绕（绕数 0，`refl`） | 被拒：内核实算绕数是 1。(2) 由 `refl` 证明它是 1 |

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(4)。
- **〔标准事实，不主张原创〕**：锥不函子化是同伦论与同调代数的常识。本包给的是它最小的内核形式。
- **〔对应关系，是读法，不是定理〕**：
  - **三角范畴里的“交换”是命题**：映射取同伦类，方块交换就是同伦类相等。这正是把交换的方式截断到第 1 层，所以 (3) 就是 TR3 只给存在、不给唯一的内核形状。
  - **与 H 的关系**：研究发起人的 H 被刻画为“宣布完成，而不支付该完成对应的构造”（H 深化 §2）。这里，宣布完成就是只留“交换了”这个终局，不支付的构造就是交换的方式。代价以一个“本来应该很简单的事情做不到”的形式露出来：给交换方块取锥的映射，做不到唯一。
  - **与 A 的关系**：本包只到有限层，是 H，还不是 A。导出范畴要保住全部信息，需要所有更高的同伦一次交出（A∞ 结构、Massey 积与 Toda 括号那一层）。任何有限层的截断都会漏掉一些。那才是 A 在同调代数里的位置；本包没有证，留作下一步。
- **〔不是本包承接的〕**：
  - 三角范畴的一般定理（任意三角范畴里锥不唯一）。本包只给一个具体方块。
  - 数学史判断：数学家在同调代数里看见了这个代价，并用保留更高结构（dg 增强、稳定 ∞-范畴）去修补，而在基础层（ZFC 的平坦相等）没有看见。这是一个可检验的考古假说，见方案 `dev-docs/元层特征方案-20261021.md`，本包不承接。

## 禁止外推

- 只证一个具体例子：一个方块、两种交换方式。不推出一般三角范畴的定理。
- 用的是带点映射（锥点作基点），这是余纤维序列的通常设定。不带点的版本没有证。
- 不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。
- 只在 macOS 捕获与重放。
