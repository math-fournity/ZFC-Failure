# 两层里两版半单纯类型的对应：严格的一版经纤维回到按层的一版（C-453）

> HUMAN_EDITED；2026-10-22；Claude Code 桌面会话 a15f4b3b（接手会话 91beaf35）；独立 worktree `claude/012-opus-w8`；C-452 没做的反方向（CG-011 完成门 G8 的后续），研究发起人的目标“所有的后续`GN`，全部完成并推送”之下。
>
> **起因**：C-452 的 `CLAIM.md`（AI 写的）“没做的”：“**反方向**：从严格的一版得到按层的一版，要经纤维：第 m+1 层取“边界恰为给定壳”的那些单纯形。”
>
> **包信息**：
> - proof id：主包 `MP-CG001-SST-2LTT-REVERSE-001`（`SemisimplicialReverse.agda`）；负控制 `-NEG-001`（`WrongNaturalityDefinitional.agda`）、`-NEG-002`（`WrongAugmentationBack.agda`）。
> - claim：`CG001-C-453`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --two-level --guardedness`，什么都不假定。
> - 依赖（导入，不重抄）：`../sst-2ltt-correspondence/`（C-452 的 `toStrict`）、`../sst-2ltt-fibrant/`（C-450）、`../strict-semisimplicial/`（C-448）、`../two-fates-2ltt/`（C-442）及其导入的包。
> - 标签：`FORMAL_SST_2LTT_STRICT_TO_LEVELWISE`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §80（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**每个严格的半单纯类型（C-448）经纤维给出按层的一版（C-450）：第 m+1 层取“边界恰为给定壳”的那些单纯形；单纯形到它的边界的映射与取面严格可换，对一切 n。再交回严格的一版，第 n+1 层就是原来的第 n+1 层（内层等价），对一切 n。两个方向都有了：内层逐层付清的东西放得进外层的严格结构（C-452），外层的严格结构每一层都能在内层逐层付清（本包）。**

## 用到的词

- **严格的一版** `SSTˢ`（C-448）：`X k`、`act`、`actId`、`actComp`。
- **按层的一版** `SST n`、**壳** `Sh`、**取面** `res`（C-450）；**交回** `toStrict`（C-452）。
- **纤维** `fiber f s`：f 的值等于 s 的那些点，连同一条路径。
- **边界映射** `bd n`：把一个 k 顶点单纯形送到它在前 n 层的全部面。

## 命题全文：C-453

- **(1) 经纤维的按层一版**：在模块 `Reverse S` 里，`Lv : (n : ℕˢ) → SST n`，`Lv (n+1) = (Lv n , fiber (bd n))`；`bd n : X S k → Sh n (Lv n) k`，`bd (n+1) x` 在每个面 T 上取 `(act S T x , pathOfᵉ (bdNat n T x))`。
- **(2) 严格的自然性**：`bdNat n T x : bd n (act S T x) ≡ᵉ res n (Lv n) T (bd n x)`，对一切 n。证明里纤维元素的路径都是 `pathOfᵉ`（来自外层相等），`substFiber` 与 `fiberExt` 把搬运与比较化成外层相等，外层 UIP 收住。
- **(3) 原样取回**：`fibresTotal n : Σ (Sh n (Lv n) (n+1)) (fiber (bd n)) ≃ X S (n+1)`；`roundTrip n : X (toStrict (n+1) (Lv (n+1))) (n+1) ≃ X S (n+1)`，对一切 n。用到：面上的积只有恒等一个面时就是那一个分量（`ΠThId`；没有嵌入时可缩，`isContrΠThNone`，靠“没有从 m+1 个点到 m 个点的嵌入”）。
- **另一个来回**：用在 `S = toStrict n Y` 上，`roundTrip` 说的就是“按层的一版交出去再取回来，单纯形这一层回到原处”。
- **整体**：`qual-C453` 是一个外层记录，把 (1)–(3) 放在一起，由一个项居留。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-SST-2LTT-REVERSE-NEG-001` | `WrongNaturalityDefinitional.agda` | 第 2 层的自然性按定义就成立，用 `reflᵉ` 证 | 被拒：两边纤维元素的第一分量只经 S 的复合相干才相同 |
| `MP-CG001-SST-2LTT-REVERSE-NEG-002` | `WrongAugmentationBack.agda` | 来回一趟连第 0 层（增广）也原样取回，用 `reflᵉ` 证 | 被拒：按层的一版没有增广，交回去第 0 层只剩空的数据 |

## 没做的（照实）

- **类型族这一层的认同**：两个来回在单纯形这一层都回到原处；在“类型族”这一层把 `Lv` 认同为原来的按层一版（作为 `SST n` 的元素相等），要用内层单价性把每层的等价变成路径，再沿它搬运壳。本包没做。
- **第 0 层（增广）**不取回（NEG-002）。
- **低于顶层的各层**：`roundTrip n` 说的是第 n+1 层在第 n+1 阶段取回；第 k 层（k ≤ n）在更晚的阶段也等价于原来的第 k 层，是同一个论证加上“面上的积在没有嵌入时可缩”，本包没写成一般命题。

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(3)；两个负控制被拒。
- **〔标准事实，不主张原创〕**：Reedy 纤维替换（每一层取匹配映射的纤维）；纤维的全空间就是原空间。增量是在两层类型论里让替换后的边界映射与取面**严格**可换（纤维的路径都来自外层相等，靠外层 UIP）。
- **〔对应关系，是读法，不是定理〕**：
  - **每个有限阶段两边一致**：外层那个“所有层一次交出”的严格结构，每一个有限阶段都能在内层逐层付清，付清的结果再交回去，每一层都回到原处。外层与内层的差别不在任何一个有限阶段上；C-450 说的“合成一座塔要一座桥”，是唯一剩下的差别。
- **〔不是本包承接的〕**：上面“没做的”三条；不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。

## 禁止外推

- 不说两版作为类型等价（类型族这一层的认同没做）。
- `roundTrip` 是内层等价，不是外层严格相等。
- 只在 macOS 捕获与重放。
