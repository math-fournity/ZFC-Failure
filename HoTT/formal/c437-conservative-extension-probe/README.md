# C-437 落点侦察（PROBE）

> **身份**：`DEVELOPMENT_PROBE / NOT_A_CLAIM / NOT_A_RECEIPT`。
> 本目录**不得**被 `HoTT/CLAIM_EVIDENCE_MATRIX.md` 或
> `HoTT/verification/PROOF_VERSION_CLOSURE.json` 引用，不占命题编号。
> 它回答的唯一问题是：C-437「保守扩张」在 Lean 侧的**落点**在哪、工作量多大。

## 文件

- `ConservativeExtensionProbe.lean`——三件最小的事 + 侦察记录（含一次如实失败）。

## 复现

```bash
LEAN=/Users/aurolafly/.elan/toolchains/leanprover--lean4---v4.34.1/bin/lean
$LEAN ConservativeExtensionProbe.lean   # exit 0，无输出
```

## 侦察结论（2026-10-19，工程级，非命题）

1. **Lean core 足以承接实例级与定义展开级**：`cast p b = b` 为 `rfl`，
   完成型命名可判定为定义展开，两者均**零公理依赖**。
2. **Lean core 不足以承接"保守扩张"的一般定理**：那是一个**跨语义**全称陈述
   （`∀ L-句 φ, M ⊧ φ ↔ M' ⊧ φ`），需要一个 core 不提供的语义对象。
   必须固定 `(M', L, 解释)` 并在**模型论层**陈述。
3. 一次如实失败留在源码注释里：连"级数和"这个最裸的 toy 都需要稠密目标类型
   （bare core 无 `Rat`）。

## 若研究发起人裁定立项

新建正式包（用 Foundation 的 Lean 侧 `𝗭𝗙𝗖`），陈述
`∀ L-句 φ, M ⊧ φ ↔ M' ⊧ φ`；编号从实测的 `CLAIM_EVIDENCE_MATRIX.md` 最大值之后起。
**未裁定前本目录保持探针身份。**
