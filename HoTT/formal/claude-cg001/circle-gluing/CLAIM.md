# 粘回两端是一个宣布的构造（C-445）

> HUMAN_EDITED；2026-10-21；Claude Code 桌面会话 a15f4b3b，接手会话 91beaf35（015-Opus，原 012-Opus 的分叉）；独立 worktree `claude/012-opus-w8`；目标包 CG-011，完成门 G5。
>
> **起因**：
> - 研究发起人 2026-10-21 认可 H 深化内容，并要求继续推进后续工作直至全部完成（原话见 CG-011 `GOAL.md`）。
> - H 深化 §1 修正记录写着：“遗留的诚实缺口：本文 §2–§7 的分析未覆盖原文 ① 的圆环悖论维度”。
> - 原文 ① 是研究发起人 2026-10-17 的话：“同一个东西，在用于解决圆环悖论和芝诺悖论的时候是合理的，在被HoTT中发现的时候，就是不合理的”。
> - 会话 91beaf35 在开始 G5 时中断。研究发起人当日让本会话接手：“首先把未跟踪的内容提交了，然后你接手015的工作，继续完成后面应该完成的事情。”
>
> **包信息**：
> - proof id：主包 `MP-CG001-CIRCLE-GLUING-001`（`CircleGluing.agda`）；负控制 `-NEG-001`（`WrongDeclaredIsOwn.agda`）、`-NEG-002`（`WrongLoopFromSegment.agda`）。
> - claim：`CG001-C-445`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --guardedness`，什么都不假定。
> - 依赖（导入，不重抄）：`../completion-cost/`（C-436），以及它导入的 `../a-univalence-b/`、`../questioning-delay/`、`../pedometer-semantics/`、`../universe-questioning/`、`../truncation-questioning/`、`../product-questioning/`。
> - 标签：`FORMAL_GLUING_THE_ENDS_IS_DECLARED`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §72（GOAL_LOCAL_INDEX_ONLY）。

## 研究发起人的圆环悖论（原文三，2026-09-01）

全文见 `HoTT/sources/user-originals/Z铁律-抽象-圆环-时间维度-用户原始论述-20260901.md` 原文三，C-424 的 `CLAIM.md` §0 也逐字引了。本包用到的几句：

- “一个圆，其上取一点拿走，假设现在的形态是M。然后将两端展开成线段，假设现在的形态是N。”
- “从M到N似乎没有什么障碍，那么从N复原到M我们可以做到吗？”
- “无论N的两端逼近到什么接近的程度，都无法再还原到M的状态。可是，可是，我们当初确实得到了M啊！”

相关原话：

- KC-000055：“圆环悖论和我们这个repo中对其的进一步的讨论、分析，复活了芝诺悖论的幽灵”；
- KC-000056：“圆环悖论被用来复活芝诺悖论的幽灵，让极限理论对芝诺悖论的所谓解决，变成了掩盖。”；
- KC-000065：“圆环悖论本质上，谈M和N相互靠近这个过程的时候，就携带了对时间维度的考察”。

## 一句话

**在 HoTT 里，拉开的线段 N 可缩：它的两端本来就由 N 自己的路相同，N 里没有任何非平凡回路。把两端粘回去，是再宣布一条认同。圆的那个洞，就是“宣布的认同”与“N 自己的认同”之差，N 里的任何东西都造不出它。宣布这一步不免费：N 在第 0 层就保得住，粘出的圆要到第 3 层才保得住。**

C-424 证的是另一面：在经典拓扑里逐步合回，任何有限阶段都合不上，只有极限那一刻是 M。两面合起来，就是原文 ① 说的同一个东西的两处表现。

## 用到的词（都在 `CircleGluing.agda` 里定义或导入）

- **线段** `N`：cubical 库的区间，两个端点 `end₀`、`end₁`，一条路 `seg : end₀ ≡ end₁`。`seg` 是 N 自己就有的认同。
- **粘出的圆** `Glued`：N 的每个点 `pt x`，再加一条宣布的认同 `declared : pt end₀ ≡ pt end₁`。它是一个构造子：N 不提供它，是加上去的。
- **N 自己的认同**送进 `Glued`：`own = cong pt seg`。
- **洞** `gluedLoop = declared ∙ sym own`：沿宣布的认同过去，再沿 N 自己的认同回来。
- **用 N 自己的路去粘** `collapse : Glued → N`：把 `declared` 送到 `seg`。
- **在第 n 层保住对象的完成** `KeepingCompletionAt n W`（C-436）：一个落到 h-层 n 的类型上、又能解码回来的映射。C-443 证明它存在 ⟺ W 在第 n 层落定。h-层的编号：0 可缩，1 命题，2 集合，3 群胚（1-型）。

## 命题全文：C-445

- **(1) 线段 N**：
  - `segmentContr`：N 可缩；
  - `endsAlreadySame`：两端本来就相同（`seg`）；
  - `segmentLoopsTrivial`：N 里的每个回路都是 `refl`；
  - `mapsKillLoops`：从 N 出发的任何映射，都把 N 的每个回路送到 `refl`。
- **(2) 粘回两端得到的就是圆**：
  - `gluedIsCircle : Glued ≃ S¹`（同构 `toS¹`、`fromS¹`：宣布的认同映到 `loop`，`loop` 映回洞）；
  - `gluedIsCirclePath : Glued ≡ S¹`（单价性）。
- **(3) 宣布的认同不是 N 自己的认同**：
  - `declaredIsNotOwn : ¬ (declared ≡ own)`；
  - `gluedLoopNontrivial`：洞不是 `refl`；
  - `imageOfGluedLoop`：洞映到 S¹ 上就是 `loop`；
  - `gluedLoopWinding`：内核实跑，洞的绕数是 1（`refl`）。
- **(4) N 造不出这个洞**：
  - `noLoopFromSegment`：没有 N 的回路 p 使 `cong pt p ≡ gluedLoop`；
  - `collapseRetracts`：`collapse (pt x) ≡ x`（`refl`）；
  - `ownClosingKillsLoop`：用 N 自己的路去粘，洞就没了（`cong collapse gluedLoop ≡ refl`）。
- **(5) 代价**：
  - `segmentFree`：N 在第 0 层完成而保得住；
  - `gluedNotContr`、`gluedNotProp`、`gluedNotSet`、`gluedGroupoid`：粘出的圆不可缩、不是命题、不是集合，是群胚；
  - `circleCost`：第 0、1、2 层的完成都保不住它，第 3 层保得住。
- **(6) 拿走一点，什么都不剩**：`puncturedGluedEmpty : ¬ (Σ[ y ∈ Glued ] ¬ (pt end₀ ≡ y))`（经同构由 S¹ 的连通性得到）。
- **整体**：`qual-C445` 把 (1)–(6) 写成一个类型，并由一个项居留。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-CIRCLE-GLUING-NEG-001` | `WrongDeclaredIsOwn.agda` | 宣布的认同就是 N 自己的路：`declared ≡ own`，用 `refl` 证 | 被拒：内核不把 `declared i` 化成 `pt (seg i)`。(3) 的 `declaredIsNotOwn` 证明二者不同 |
| `MP-CG001-CIRCLE-GLUING-NEG-002` | `WrongLoopFromSegment.agda` | N 的回路就能造出这个洞：取 N 的 `refl`，用 `refl` 证它映成 `gluedLoop` | 被拒：`cong pt refl` 是 `refl`，洞是一个复合。(4) 的 `noLoopFromSegment` 证明任何 N 的回路都不行 |

## 与已有包的关系（防重复）

- **C-424**（`../circle-paradox/`，Lean + Mathlib 拓扑）：逐步合回这一面。本包是 HoTT 这一面，不碰拓扑，不碰逼近。
- **C-21/C-22**（`../circle-two-faces/`）：点集圆与合成圆是两个不同的对象；合成圆的 `loop` 非平凡、没有坐标、拿走一点什么都不剩。
  - 本包 (3) 的 `loopNontrivial` 与 (6) 是 C-22 的同一事实，经同构搬到 `Glued` 上，不是新结果。
  - 新的是：圆写成“N 再加一条宣布的认同”；宣布的认同 ≠ N 自己的；N 造不出洞；用 N 自己的路去粘洞就没了；代价从 0 变成 3。

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(6)。
- **〔标准事实，不主张原创〕**：区间可缩；区间两端相粘得到圆；圆的绕数、连通性、群胚性。增量是把它们排成“宣布的认同 vs N 自己的认同”和“代价从 0 到 3”这两张对照，接到 H 深化 §1 的缺口与 C-436、C-443 的代价。
- **〔对应关系，是读法，不是定理〕**：
  - **“粘回两端”就是 H 深化 §2 的“宣布完成”**：H 深化写的是“H ≡ 「宣布完成，而不支付该完成对应的构造」”。`declared` 正是这样一步：N 没有提供这条认同，它是加上去的。
  - **原文 ① 的两处表现**：
    - **极限一侧（C-424）**：复原靠逼近，任何有限阶段都合不上，只在极限那一刻是 M。经典拓扑里，圆是一个点集，相同只是“是或不是”。合上之后，对象的相同里没有任何东西记着它是怎么合上的，宣布完成免费。这是“合理”的那一面。
    - **HoTT 一侧（本包）**：复原不靠逼近。N 的两端本来就相同，没有距离要合拢。要回到圆，只能再宣布一条认同，而它造出了一个新东西，就是洞。对象从可缩变成群胚，不再是集合，代价是 3 层，看得见。这是“不合理”的那一面：宣布完成而对象不变，在这里做不到（C-436）。
  - **只是“价格看得见”，不是“付不清”**（C-444 的两个意思）：圆的代价是有限的 3 层，付得清。单独一个圆不会让追问永不停；永不停要的是一次收齐所有高度（A，C-438）。所以圆环悖论在 HoTT 里暴露的是 H 的价格，不是 A 的付不清。
  - **研究发起人说的 M**：在合成圆上，拿走一点什么都不剩（(6)）。研究发起人的 M 在点集圆里（C-424 的 M 是圆去掉 0），不在合成圆里；两种圆是不同的对象（C-21/C-22）。
- **〔不是本包承接的〕**：
  - 研究发起人的论题“抽象必然导致矛盾”（Z 铁律）：不由本包证明；
  - 点集圆在 HoTT 里的那一面：Astra 的 C-283–C-324，本包不重放；
  - “圆环悖论已被解决”：本包不主张；
  - 不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。

## 禁止外推

- `Glued` 是圆的一种呈现（区间再加一条路）。它与 cubical 库的 `S¹`（一点加一个回路）等价，见 (2)；“宣布”指的是构造子，不是任何时间过程。
- “代价 3 层”用的是 C-436 的 h-层编号（3 是群胚），与 C-443 的二元集合、C-444 的集合与群的全体是同一把尺子。
- “极限一侧免费”是标准读法：经典集合论与 Lean 的相等是命题。本包没有形式化这一面，它的机器对应是 C-424 与 C-437。
- 只在 macOS 捕获与重放。
