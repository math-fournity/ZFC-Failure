# SEP 芝诺 Achilles 段最小形式核验（MATHLIB_CONTROL）

> **身份**：`CURRENT_PROJECT_FORMAL_PACKAGE / MATHLIB_REAL_ANALYSIS_CONTROL /
> NOT_A_FORMALIZATION_OF_BARE_ZFC / NOT_A_PHYSICAL_MOTION_CLAIM`。

## 文件

- `EndPointNotMember.lean`——四条定理 + `#print axioms`（零 sorry）。
- `CLAIM.md`——命题、边界与禁止外推。
- `capture_endpoint_run.py`——`formal-proof-run/v1` 收据抓取器（拒绝覆盖已存在 run）。

## 复现

```bash
export LEAN_PATH="$(cat audit/astra-real-geometry-20260919/environment-qualification/LEAN_PATH.txt)"
/Users/aurolafly/.elan/toolchains/leanprover--lean4---v4.34.0/bin/lean \
  HoTT/formal/zeno-sep-endpoint-not-member/EndPointNotMember.lean
# 退出码 0；stdout 只有四条 "#print axioms"，均为
# [propext, Classical.choice, Quot.sound]
```

正式收据：

```bash
python3 -B HoTT/formal/zeno-sep-endpoint-not-member/capture_endpoint_run.py
# 写 HoTT/verification/runs/20261020-MP-ZENO-SEP-ENDPOINT-NOT-MEMBER-001-01/
```

## 这个包回答的一个工程问题

`docs/芝诺解决考古/来源/Z06-*.md` 记录了 SEP 条目 Achilles 段的两句原文：

- L923「1m does not occur in the sequence 0.9m, 0.99m, 0.999m, …」
- L927「the final point … must be added to it」

这个包把这两句的**最小可机器判定的核**固定为 Lean 命题：
终点不是有限阶段的值，但它是值域的确切上确界。
"must be added" 因此不是一个自由选择，而是被序列自身强制确定的那一个点。

## 明确不做

- 不判定 SEP 或 Standard Solution 对错（见 `CLAIM.md` 禁止外推清单）。
- 不涉及物理运动、HoTT 原生命题、bare ZFC 一致性。
- 不占新命题编号（与 C-361 等价/标准事实），若要立项需研究发起人裁定。
