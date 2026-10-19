<!-- governance-shard:v2
logical_id: C439-RECON
shard_id: 003
index: ../C439读法分离侦察.md
-->

# C430 Collection 源码形状（闭合上一轮未闭合项）

## 1. 取到的形状（逐字，行号可核）

`HoTT/formal/claude-cg001/a-univalence-b/AUnivalenceB.agda`（共 325 行）：

~~~text
record Collection (ℓc ℓe : Level) : Type (ℓ-max (ℓ-suc ℓc) (ℓ-suc ℓe)) where
  field
    Code : Type ℓc
    El   : Code → Type ℓe                     -- :85-89
~~~

即 **`Collection` 是"码 + 元素"的 bundle**，不是"完成算子"的载体。
其上的三个性质（都在 `Collection ℓc ℓe → Type` 层）：

| 名字 | 定义要点 | 行 |
|---|---|---|
| `Univalent C` | `(a b : Code C) → isEquiv (codeToEquiv C {a} {b})` | :96 |
| `SamenessIsFact C` | `isSet (Code C)` | :100 |
| `AllHeights C` | 对每个 n 存在一个码 a 与一个自等价 s，且 `¬ (s ≡ trivialLoops …)` | :107-110 |
| `HeightsBoundedBy k C` | `(a : Code C) → isOfHLevel k (El C a)` | :113 |

C-430 的两条主定理形状（`:141`、`:154`）：
`noFiniteLevel : AllHeights C → (m : ℕ) → ¬ isOfHLevel m (Code C)`。
`neverWithBoth : AllHeights C → (judge : Judge (Code C)) → question (Code C) judge ≡ never`。
以及去掉单价性/去掉无界高度的两个控制（`:173`、`:180`、`:185`）。

## 2. 对 L2/L3 判断的修正（本轮实质发现）

**上一轮的判断需要修正一句话。** 侦察 002 曾说：

> "若要形式化 (c)，可行起点是 C-430 的 `Collection` 抽象——把'完成操作'（命名/截断）
> 加为收集上的算子并陈述不变量"（转述自 `H深化` §8.1）

**读了源码后**：`Collection` 确实提供了正确的**承载结构**（码层与元素层分离，
所以"改码不动元素"与"改元素不动码"可分别陈述），
但**它里面没有任何"完成"动作**——没有命名算子、没有截断算子、没有 `κ`。
`AllHeights`/`HeightsBoundedBy` 是**性质谓词**，不是操作。

**所以 `H深化` §8.1 的"把完成操作加为收集上的算子"是新建工作，不是"在 C-430 已有抽象上加工"**：
C-430 给的是**容器**，不是算子。这个区别有实际后果——

1. 若按 §8.1 的原措辞去"加工"，会以为主体已存在，实际要从零设计 `κ` 的签名；
2. `κ : (C : Collection ℓc ℓe) → ???` 的返回类型**本身就是待设计的核心问题**：
   命名（保守）要求 `κ C` 与原 `C` 在已有对象上等价，截断（非保守）要求 `κ C` 换对象。
   一个签名要同时容纳这两种命运，正是 L3 的难点所在。

## 3. 对"读法分离"的反向印证（本轮的第二个收获）

`Collection` 的**码/元素分层**与 C-112 的 **`Arrives`/`Never` 分层**在结构上是同一种手法：
都把一个原本混在一起的东西拆成两层，然后发现**某一层的性质不能免费带回另一层**。

- C-430：单价性 + `AllHeights` ⟹ 码层无有限 h-level（`noFiniteLevel`）；
  去掉任一条则停（`:180`/`:185` 两个负控制）。
- C-112：`Arrives` ⟹ `Never` 无条件；反向需 `Monotone` 且不可去（`monotoneNeeded`）。

**这不是说两个命题相同**（一个是码层高度，一个是过程落定），
而是说 repo 里已经**两次独立**遇到"分层后单向不可回取"这一模式。
这一点对 `H深化` 的统一对象 H 是**正面支持**：H 的两个实例不是牵强类比，
而是同一结构手法在两种土壤上的两次实例。**但它仍是分析层观察，不是定理。**

## 4. 未闭合

1. `κ` 的签名**没有设计**（本轮只确认它尚不存在）。设计它需要立项授权。
2. L2 最小模型仍未写 20 行探针试 elaborator。
3. §3 的"同一手法两次实例"只是观察，未物化为任何命题或 checklist。
