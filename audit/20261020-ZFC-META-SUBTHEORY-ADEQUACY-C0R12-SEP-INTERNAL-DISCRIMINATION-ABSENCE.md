# C0R12：建制化百科自陈「数学内部无判别力」——SEP 双引文（F-A / F-B 判别力边界）

> **身份：** `PRIMARY_SOURCE_SCREEN / INSTITUTIONAL_DISCRIMINATION_ABSENCE_SOURCE / NOT_A_BARE_ZFC_VERDICT`。
> **任务卡：** 本卡不是新 successor reselection；它补的是 F-A 与 F-B 一直缺的一层——
> **建制化来源亲手写下"两套数学同等成功、判别力不在数学内"**。
> **文本凭据：** [`docs/芝诺解决考古/来源/Z06-SEP芝诺条目通读-终点不在序列内与必须被添加-20261020.md`](../docs/芝诺解决考古/来源/Z06-SEP芝诺条目通读-终点不在序列内与必须被添加-20261020.md)
> （19 句逐字引文字母流回源 19/19 HIT；12 个关键跨在**两个独立 snapshot** 上双源命中；
> 可重跑校验器 `docs/芝诺解决考古/来源/_verify/verify_z06_quotes.py`，exit 0）。

## 1. 这个来源补的是什么

[C0R9](../audit/20261005-ZFC-META-SUBTHEORY-ADEQUACY-C0R9-HYBRID-NONSTANDARD-COMPARATIVE-CONTROL.md)
已经从 Benveniste et al. 2012 拿到"更富框架能显形时间/次序义务"的正控制，
并要求后续候选必须支付 **subtraction**：哪些义务在缺 extension 语义时被省掉、未被观察、或被静默绕过。
本卡给出 subtraction 的**建制化版本**——不是来自一篇工程论文，而是来自
SEP *Zeno's Paradoxes*（Huggett）自己写下的两段话：

| locator | 逐字原文（照 Z06 表，字母流已回源） |
|---|---|
| **L1452** | `there is no need for non-standard analysis to solve the paradoxes: either system is equally successful` |
| **L1459** | `But they cannot both be true of space and time: either space has infinitesimal parts or it doesn't.` |

配套的一句在 L1449：`they are no more an argument against non-standard analysis than against the standard mathematics we have assumed here`。

以及本节真正的地基句（Z06 §4.1）：

| locator | 逐字原文 |
|---|---|
| **L1374** | `It would not answer Zeno's paradoxes if the mathematical framework we invoked was not a good description of actual space, time, and motion!` |
| **L1382** | `But surely they do: nothing guarantees a priori that space has the structure of the continuum, or even that parts of space add up according to Cauchy's definition.` |

## 2. 字段卡

| field | source payment | evidence status |
|---|---|---|
| `M_std` / `M_nsa` | standard reals vs non-standard（含 infinitesimal 线段） | `SOURCE_STATED_MODEL_ASSUMPTION` |
| `S` | Zeno 的二分/Achilles runner task | `SOURCE_TASK_SUPPORTED` |
| `Q` | "悖论是否被解决" | `SOURCE_QUESTION_POSITED` |
| `FormalDone_std` | 标准数学解答 | `SOURCE_DECLARED_SUFFICIENT_FOR_MATH_LAYER` |
| `FormalDone_nsa` | 非标准分析同样给出解答 | `SOURCE_DECLARED_EQUALLY_SUCCESSFUL` |
| **`Discrimination`** | **两套都成功 ⟹ "是否解决"这一问在数学内部无判别力；二择未决，只能由 physical question 支付** | **`SOURCE_SELF_DECLARED_ABSENCE_OF_INTERNAL_DISCRIMINATION`** |
| `Bridge` | 需另行支付 mathematics → actual space/time/motion 的 applicability | `REQUIREMENT_ESTABLISHED_BY_C0R3_AND_THIS_CARD` |
| `Adequacy` | 未把该判别力缺失归为 bare ZFC 的对象语言缺陷 | `NOT_A_BARE_ZFC_VERDICT` |

## 3. 与本 repo 既有机器证据的关系（不是同一层，不互相冒充）

- **C-112 (d)**（`HoTT/formal/claude-cg001/same-q-univalent/SameQ.agda`）给出判别力的
  **精确落点**：`arrivesOfNever : Never q → Arrives q` 无条件，
  `neverOfArrives` 需 `Monotone q` 且 `monotoneNeeded` 证不可去。
  〔我们的分析〕：这正是"问终局"与"问过程"的代价不对称——终局问法可一次性作答，
  过程问法要逐层付费。SEP L1452 的"两套演算都成功"问的是终局；
  一旦改问过程，同一事实的两种代价立刻分开。
- **关系性质**：SEP 双引文与 C-112 (d) 是**来源层与机器层的对应**，
  不是形式蕴含。SEP 没有 HoTT、没有 `Monotone`、没有 `Arrives`/`Never`；
  本卡不得写成"SEP 证明了 C-112"或"C-112 证实了 SEP"。
- **与 C0R3 的分工**：C0R3 已引用 SEP 的"纯数学不足"但**未附逐字 locator**；
  Z06（本卡的文本凭据）补上的就是 locator 与双源核验，未新增命题。

## 4. 它没有支付的

1. 没有证明"实际时空有/无 infinitesimal 部分"——SEP 明说二择未决（L1459）。
2. 没有证明 bare ZFC 因此有缺陷，也没有证明它无缺陷。
3. 没有给出 H0 与芝诺的 SameQ。
4. 没有把"判别力缺失"升格为本 repo 的数学命题；它是**来源自陈**，
   与本 repo 的 C-112 (d) 机器证据是两层证据。

## 5. 判词

```text
INSTITUTIONAL_DISCRIMINATION_ABSENCE_SELF_DECLARED
EITHER_SYSTEM_EQUALLY_SUCCESSFUL_AND_BRANCH_UNRESOLVED
DISCRIMINATION_LOCATED_IN_QUESTION_FORM_NOT_IN_CALCULUS_ANALYSIS_LAYER
BARE_ZFC_CORE_RESPONSIBILITY_STILL_UNPAID
```

## 6. successor

不改变当前 `C0-SUCCESSOR-RESELECTION-011` 的主线。本卡只为 F-A/F-B 补一层
**来源侧判别力边界**，使后续候选在提问时不能只问"M 能否编码时间变量"，
而必须问"所问是终局还是过程"。若后续要 machine-prove 该边界，独立命题仍须从
实测矩阵最大值之后起编号并走 F-011 五步门禁；本卡不占编号。
