/-!
# C-437 落点侦察（PROBE / NOT_A_CLAIM / NOT_A_RECEIPT）

**身份**：开发探针。它**不是**命题、**不是**收据、**不占编号**，也不得被任何
`CLAIM_EVIDENCE_MATRIX.md` 行或 `PROOF_VERSION_CLOSURE.json` 条目引用。

## 要侦察什么

`docs/H深化-同一动作在极限与HoTT中的两处表现-20261017.md` §8.1 的修订结论 2 说：
(a) 仍是真实缺口——C-72/C-65/C-61 是 UIP 内核中恒成立的**实例级**证据（`rfl` 级），
不是「经典 ZFC 语义中完成型命名是保守扩张」的**一般定理**。

本探针只回答一个工程问题：**Lean core（无 imports、无公理）能不能把这件事
状态化到值得进一步工作的程度？** 因此这里只做三件最小的事，每件都能编译或明确失败：

1. **实例级重现**：`castIsId` 一类事实在 core 里确实是 `rfl`（H 深化 §8.1 已引 C-72，
   这里用最裸的形式确认 core 层无需额外假设）。
2. **定义展开的落点**：一个"完成型命名"到底是定义展开，还是需要新公理？
   用 `Classical.choice` 之外零公理的 core 检验：定义展开应当 `rfl` 可判定。
3. **明确的不可状态化处**：把"保守扩张"写成一条**跨语义**的全称陈述，看它是否
   在 Lean core 内需要一个 core 无法提供的语义对象。若需要，侦察结论即为
   "Lean core 不够，必须模型论层"。

## 为什么用 Lean core 而不是 Mathlib/Foundation

侦察目标是"最小依赖下可状态化"，不是证明。core 无 imports，因此任何
` sorry`/公理依赖都会被立刻看见。
-/

-- 1. 实例级：UIP 内核里 cast 是 rfl（与 C-72 同形，最裸形式）
theorem probe_castIsId (p : Bool = Bool) (b : Bool) : cast p b = b := rfl

-- 2. "命名"作为定义展开：一个 completion-style 命名只是 abbreviate，
--    因此它的展开必须与左侧定义可逐一判定（这里用一个有限类型的 toy 观察）
-- 注意：第一版探针在这里用了 ℚ，bare core 里没有 ℚ（它来自 Mathlib）。
-- 这个失败本身就是侦察结果：**连"级数和"这个 toy 都需要先有一个稠密目标类型**，
-- 而 Lean core 只给 Nat/ℤ 与自定义结构。改用 Bool 上的函数做同形观察。
def probeCompletionName (s : Nat -> Bool) : Bool := s 0  -- toy：命名 = 取定一个函数值
example : probeCompletionName (fun _ => false) = false := rfl  -- 定义展开可判定

-- 3. 侦察结论写在类型签名里：保守扩张若要对"所有语义"说，需要一个 core 没有的对象。
--    下面这一条故意写成 Prop 层的**占位**，不加 sorry，只用 `True` 表示
--    "本探针不断言任何跨语义命题"。
--    若未来要证真命题，必须先在模型论层固定 M/M' ≺ M' 与语言 L。
theorem probe_noCrossSemanticClaim : True := trivial

/-!
## 侦察记录（2026-10-19 已执行，结果如下）

| 项 | 结果 |
|---|---|
| `probe_castIsId`（`lean` 直接跑本文件） | **exit 0**，`rfl` |
| 定义展开 example | **exit 0**，`rfl` |
| `probe_noCrossSemanticClaim` | **exit 0**，`trivial` |
| `#print axioms probe_castIsId` | **does not depend on any axioms** |
| `#print axioms probe_noCrossSemanticClaim` | **does not depend on any axioms** |

### 一次如实失败（已修，留档）

第一版 toy 写成 `Nat -> Rat`。bare `lean` 下**没有 `Rat`**（它来自 Mathlib），
且该版文件含非 ASCII 记号导致 `OfNat Nat 0` 合成失败。
**这个失败本身是有信息的侦察结果**：连"级数的和"这个最裸的 toy 都需要一个
**稠密目标类型**，而 Lean core 只给 Nat/Bool 与自定义结构——即"极限侧完成 = 命名"
的最低玩具模型在 core 层就要先建一个稠密对象。改用 `Nat -> Bool` 并做 ASCII 规范化后 exit 0。

**结论（侦察级，非命题）**：Lean core 足以承接**实例级**与**定义展开级**的观察；
要把"完成型命名在经典 ZFC 语义中是保守扩张"做成一般定理，core 不够——
必须固定 (M', L, 解释) 并在模型论层陈述"凡不被新符号提及的 L 句子，真值不变"。
这正是 H 深化 §8.1 修订结论 2 所说的"后者是模型论标准结果"的工程含义。

**下一步若要立项**（需要研究发起人裁定后才占编号）：
在 `HoTT/formal/` 下新建包，用 Foundation（Lean 侧 `𝗭𝗙𝗖`）陈述
`∀ L-sentence φ, M ⊧ φ ↔ M' ⊧ φ`，其中 M' 是加了完成型符号的扩张。
这是标准模型论内容，工作量小到中；但**是否值得做**取决于发起人是否认为
"命名零代价"需要一条定理而不只是分析。
-/

-- 本文件禁止出现 sorry/admit/native_decide/axiom/unsafe/opaque 等标记（探针亦然）
