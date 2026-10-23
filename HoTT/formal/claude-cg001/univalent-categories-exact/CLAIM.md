# 单价范畴的全体恰在第 3 问停（C-451）

> HUMAN_EDITED；2026-10-22；Claude Code 桌面会话 a15f4b3b（接手会话 91beaf35）；独立 worktree `claude/012-opus-w8`；C-449 的续作（CG-011 完成门 G10 的后续），研究发起人的目标“所有的后续`GN`，全部完成并推送”之下。
>
> **起因**：
> - 元层特征方案 §7 第 2 条（AI 写的方案原文）：“预测第 3 问停。这验证判据的“有上限则藏”一面在集合以外也对。”
> - C-449 的 `CLAIM.md`（AI 写的）写明没做到的：“恰在第 3 问停，要证单价范畴的全体不是群胚（要有一个单价范畴，它的某个自等价有非平凡的自然自同构）。这一步没做。”
> - 研究发起人 2026-10-21 在本会话设的目标：“所有的后续`GN`，全部完成并推送”。
>
> **包信息**：
> - proof id：主包 `MP-CG001-UNIVALENT-CATEGORIES-EXACT-001`（`UnivalentCategoriesExact.agda`）；负控制 `-NEG-001`（`WrongTotalityGroupoid.agda`）、`-NEG-002`（`WrongSecondQuestion.agda`）。
> - claim：`CG001-C-451`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --guardedness`，什么都不假定。
> - 依赖（导入，不重抄）：`../univalent-categories/`（C-449 的 `UnivCat`、`univCatBounded`）及其导入的包（C-77 的追问程序等）。
> - 标签：`FORMAL_UNIVALENT_CATEGORIES_EXACT_THIRD`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §78（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**单价范畴的全体不是群胚。圆的路径范畴是它的成员；宇宙里圆到自身的认同，是这个成员到自身的认同的一个收缩；而前者不构成集合（“每点绕一圈”与“不动”是恒等上两条不同的自同伦）。所以 C-449 的逐层追问程序对任何判定器都恰在第 3 问停：走一步还没有答案，走两步答出第 3 问（第 4 层）。方案“第 3 问停”的预测，从“最迟”变成“恰好”。**

## 用到的词（都在 `UnivalentCategoriesExact.agda` 里定义或导入）

- **单价范畴的全体** `UnivCat`（C-449）：对象在 `Type₁`、态射在 `Type₀` 的范畴，连同它的单价性。
- **路径范畴** `PathCat X`（本包）：群胚 X 的点（升到 `Type₁`）作对象，X 里的路径作态射，复合是路径拼接；每条路径都是同构（逆是反向路径）。`D X` 是它连同单价性，`circleMember = D S¹G` 是圆的那一个。
- **判定器** `Judge`、**逐层追问程序** `question`、**按步数运行** `runFor`（C-77）：第 k 问问的是“在不在第 k+1 层”，第一个答“在”的那一问就停，答出 k。

## 命题全文：C-451

- **(1) 路径范畴是单价范畴**：`isUnivalentPathCat X : isUnivalent (PathCat X)`，对任何群胚 X；所以 `circleMember : UnivCat`。
- **(2) 宇宙里圆到自身的认同不构成集合**：`notSetPathsS¹ : ¬ isSet (S¹ ≡ S¹)`。经单价性化成 `S¹ ≃ S¹`；若它是集合，恒等等价上的自同伦 `rotLoop`（每点绕一圈）就得等于 `refl`，绕数 1 = 0，矛盾。
- **(3) 单价范畴的全体不是群胚**：`retractUC : fromUC (toUC q) ≡ q`，`(S¹ ≡ S¹)` 是 `(circleMember ≡ circleMember)` 的收缩（把宇宙里的认同搬成路径范畴之间的认同，再从对象类型取回）。所以 `notGroupoid : ¬ isGroupoid UnivCat`，`notSet : ¬ isSet UnivCat`。
- **(4) 恰在第 3 问停**：`exactlyThird`，对任何判定器，`runFor 1 (question UnivCat judge) ≡ nothing` 且 `runFor 2 (question UnivCat judge) ≡ just 3`。
- **整体**：`qual-C451` 把 (1)–(4) 与 C-449 的上界（第 4 层）放在一起，由一个项居留。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-001` | `WrongTotalityGroupoid.agda` | 每个单价范畴的对象都构成群胚，所以全体也是群胚 | 被拒：一个成员的对象之间的相同，与成员和成员之间的相同差一层（`C ≡ D` 对不上 `C .fst .ob`） |
| `MP-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-002` | `WrongSecondQuestion.agda` | 第 4 层的上界够让追问在第 2 问停 | 被拒：第 2 问停要第 3 层，上界给的是第 4 层 |

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(4)；两个负控制被拒。
- **〔标准事实，不主张原创〕**：单价范畴的全体是 2-群胚而不是群胚（范畴之间的认同是等价，等价之间还有自然同构）；群胚的路径范畴是单价的；圆上的 `rotLoop` 不是 `refl`。增量是把它接到 C-77 的追问程序上，得到恰好的停点。
- **〔对应关系，是读法，不是定理〕**：
  - **结构多一层，停点挪一问**：集合的全体与群的全体第 2 问停，价格 3 层（C-438、C-444）；单价范畴的全体恰在第 3 问停，价格 4 层（本包与 C-449）；宇宙永不停（C-430）。相同有结构而有上限，追问就停，A 看不见；这是 C-438 判据“有上限则藏”的一面在集合以外第一个恰好的实例。
  - **承重的那件事**：读作“圆的路径范畴的恒等函子有一个非平凡的自然自同构（每点绕一圈）”。形式上走的是收缩，没有写出自然自同构本身。
- **〔不是本包承接的〕**：别的宇宙层级上的单价范畴全体（同理，没证）；不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。

## 禁止外推

- 只证对象在 `Type₁`、态射在 `Type₀` 的那个全体（C-449 的 `UnivCat`）。
- “自然自同构”是读法，形式上没写出。
- 只在 macOS 捕获与重放。
