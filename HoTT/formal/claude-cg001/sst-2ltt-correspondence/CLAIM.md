# 两层里两版半单纯类型的对应：按层的一版交到严格的一版（C-452）

> HUMAN_EDITED；2026-10-22；Claude Code 桌面会话 a15f4b3b（接手会话 91beaf35）；独立 worktree `claude/012-opus-w8`；C-450 的两条续作（CG-011 完成门 G8 的后续），研究发起人的目标“所有的后续`GN`，全部完成并推送”之下。
>
> **起因**：C-450 的 `CLAIM.md`（AI 写的）“仍没做到的”里有两条：
> - “**两版之间的关系**：本包的 `SST n`（类型族的一版）与 C-448 的 `SSTˢ`（严格预层的一版）之间的对应没有建。”
> - “**全空间的取面**：只给了壳上的取面；单纯形全空间上的面映射可由它得到，本包没写出。”
>
> **包信息**：
> - proof id：主包 `MP-CG001-SST-2LTT-CORRESPONDENCE-001`（`SemisimplicialCorrespondence.agda`）；负控制 `-NEG-001`（`WrongCoskeletonFiller.agda`）、`-NEG-002`（`WrongNaiveInverse.agda`）。
> - claim：`CG001-C-452`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --two-level --guardedness`，什么都不假定。
> - 依赖（导入，不重抄）：`../sst-2ltt-fibrant/`（C-450）、`../strict-semisimplicial/`（C-448）、`../two-fates-2ltt/`（C-442）及其导入的包。
> - 标签：`FORMAL_SST_2LTT_LEVELWISE_TO_STRICT`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §79（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**每个按层的半单纯类型都给出一个严格的半单纯类型：k 个顶点的单纯形取作 k 顶点单纯形上的前 n 层数据，取面就是 C-450 的 `res`，两条相干就是 `resId`、`resComp`。k ≤ n 时这就是它自己的单纯形（全空间），所以“全空间上的取面”C-450 其实已经有了，只是没有点明；k > n 时是只由边界决定的单纯形（余骨架）。反方向没做。**

## 用到的词

- **按层的一版** `SST n`、**壳** `Sh n Y k`、**取面** `res`（C-450）。
- **严格的一版** `SSTˢ`（C-448）：外层编号 k 给出内层类型 `X k`（k 个顶点的单纯形），沿嵌入作用 `act`，两条相干 `actId`、`actComp` 是外层严格相等。
- **余骨架**：高于 n 维的单纯形只由边界决定（一个边界壳恰好对应一个单纯形）。

## 命题全文：C-452

- **(1) 对应的一个方向**：`toStrict : (n : ℕˢ) → SST n → SSTˢ`，`X (toStrict n Y) = Sh n Y`，`act = res n Y`，`actId = resId n Y`，`actComp = resComp n Y`。
- **(2) 全空间与全空间上的取面**（两层的例子 `pointsAndEdges P E`，点 P、点对上的边族 E；都是 `reflᵉ`）：
  - `edgesTotal`：第 2 层的全空间就是两个端点加一条连接它们的边；
  - `edgeToEnd`：从一条边沿 ε₀ 取面，得到它的第 1 个端点。
- **(3) 余骨架**：`coskeletonTriangles`，同一个例子在第 3 层的“三角形”就是三角形的壳（三个点三条边），没有另外的填充。
- **整体**：`qual-C452` 是一个外层记录，把 (1)–(3) 放在一起，由一个项居留。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-SST-2LTT-CORRESPONDENCE-NEG-001` | `WrongCoskeletonFiller.agda` | 余骨架的三角形除了边界还另带一个填充，用 `reflᵉ` 证 | 被拒：三角形只由边界决定 |
| `MP-CG001-SST-2LTT-CORRESPONDENCE-NEG-002` | `WrongNaiveInverse.agda` | 反方向是现成的：把严格的一版逐层照抄成按层的一版（不管边界），交回去按定义就回到原处 | 被拒：交回之后第 1 层是“点连同空的高层数据”，不按定义等于原来的点 |

## 对 C-450 的更正（照实）

C-450 的 `CLAIM.md` 把“全空间的取面”记为没写出。这一条写得过于保守：k ≤ n 时，`Sh n Y k` 含有 k 顶点单纯形的每一个面上的数据，连同顶面本身（恒等嵌入），所以它就是 k 个顶点的单纯形的全空间；`res` 就是全空间上的取面，`resId`、`resComp` 就是它的严格函子律。本包 (2) 给了内核实跑。C-450 的 `CLAIM.md` 已哈希，不改；更正写进 `../sst-2ltt-fibrant/REVISIONS.md`。

## 没做的（照实）

- **反方向**：从严格的一版得到按层的一版，要经纤维：第 m+1 层取“边界恰为给定壳”的那些单纯形。还要证两个来回都是等价（需要在内层用纤维与函数外延）。本包没做；NEG-002 只说明“逐层照抄”不是按定义的逆。
- 所以“两版是同一件事”只是一半：按层的一版进得了严格的一版（作为余骨架），严格的一版是不是都来自按层的一版，本包不断言。

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(3)；两个负控制被拒。
- **〔标准事实，不主张原创〕**：类型族（Reedy 纤维）呈现的半单纯类型给出严格的预层；n 维截断的数据在高维取余骨架。
- **〔读法〕**：C-448 说外层的“所有层一次交出”免费，C-450 说每一层都在内层付得起；本包把两者接上：内层付清的每一个有限阶段，原样放进外层的严格结构里，什么都不丢。
- **〔不是本包承接的〕**：反方向与等价；不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。

## 禁止外推

- 只给一个方向的对应，不说两版等价。
- 全空间与余骨架的实例只在两层的例子上内核实跑。
- 只在 macOS 捕获与重放。
