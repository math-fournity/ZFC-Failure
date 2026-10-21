# SEP 芝诺 Achilles 段「终点不在序列内、但必须是序列的上确界」的最小可机器核验形式

> **身份**：`CURRENT_PROJECT_FORMAL_PACKAGE / MATHLIB_REAL_ANALYSIS_CONTROL /
> NOT_A_FORMALIZATION_OF_THE_STANDARD_SOLUTION / NOT_A_PHYSICAL_MOTION_CLAIM`。

## 这个包说什么、不说什么

**说**：对二分/Achilles 的归一化有限阶段序列 `s n = 1 - (1/2)^n`，
以下两件事在 Lean core + pinned Mathlib 中同时成立：

1. `endpoint_not_in_sequence : 1 ∉ Set.range s` —— 终点 `1` **不是**任何有限阶段的值；
2. `sup_range_eq_one : sSup (Set.range s) = 1` —— 终点 `1` **正是**该序列值域的确切上确界。

合取形式 `endpoint_not_member_but_is_sup` 把这两句并成一条。

**不说**（禁止外推，逐条列明）：

- 不证明 SEP（Huggett, *Zeno's Paradoxes*）或任何文献作者"错了"。
  本包只是把该条目 Achilles 段自己写下的两句话（L923、L927）转成可机器核验的形式，
  它**不是**对 Standard Solution 的驳斥，也不声称该解决方案在数学上不成立。
- 不证明物理运动不能完成、不能到达、或"芝诺悖论不可解"。
- 不形式化 Standard Solution 的整个连续运动模型（那可以用闭区间端点，
  见 `HoTT/formal/zfc-actual-q-policy/ZenoLimitControl.lean` 的正控制）。
- 不给出芝诺与 HoTT 的同一 Q 映射，不涉及任何 HoTT 原生命题。
- 不声称这是本 repo 的新数学内容：`1 ∉ range s` 与 `sSup (range s) = 1`
  关于几何级数是标准实分析事实，本包的工作量在于**把它固定为可复算收据并
  显式挂到 SEP 文本 locator 上**，不在于原创性。

## 命题与方法

- 方法：Lean 4.34.0 + pinned Mathlib（`Mathlib.Analysis.SpecificLimits.Normed`）。
- 收据：`HoTT/verification/runs/20261020-MP-ZENO-SEP-ENDPOINT-NOT-MEMBER-001-01/`
  （`RUN.json` / `stdout.txt` / `stderr.txt` / `environment.txt` / `source-manifest.json`）。
- 公理：四条定理的 `#print axioms` 仅为 `[propext, Classical.choice, Quot.sound]`，
  无 `sorryAx`；这与同机其它 Mathlib 类控制包一致（classical/Mathlib 依赖如实保留，
  **不**描述为无公理证明）。
- 复现：`LEAN_PATH` 用 `audit/astra-real-geometry-20260919/environment-qualification/LEAN_PATH.txt`，
  Lean 二进制 /Users/aurolafly/.elan/toolchains/leanprover--lean4---v4.34.0/bin/lean。

## 与既有资产的边界

- `HoTT/formal/zfc-actual-q-policy/ZenoLimitControl.lean`（C-361）已经证明
  `¬ LimitPromotesStrictSequentialDone`，即"极限为真"不蕴含"有限阶段到达"。
  本包的 (1) `endpoint_not_in_sequence` 是同一事实的另一种措辞（用值域成员而非 ∃ 到达），
  **不是新定理**；(2) `sup_range_eq_one` 是新增的一条（把上确界固定下来）。
- 本包**不占新命题编号**，因为 (1) 与 C-361 等价、(2) 是标准实分析事实。
  若研究发起人裁定立项，编号应从实测矩阵最大值之后起，并走完整 F-011 五步门禁。
- 文本侧证据：`docs/芝诺解决考古/来源/Z06-SEP芝诺条目通读-终点不在序列内与必须被添加-20261020.md`
  （19 句逐字引文，字母流回源 19/19 HIT）。
