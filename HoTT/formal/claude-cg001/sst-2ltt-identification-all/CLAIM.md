# 两层里两版半单纯类型的对应：对一切 n 在类型族这一层回到原物（C-455）

> HUMAN_EDITED；2026-10-23；Claude Code 桌面会话 a15f4b3b（接手会话 91beaf35）；独立 worktree `claude/012-opus-w8`；C-454 没做的一般的 n（CG-011 完成门 G8 的后续），研究发起人的目标“所有的后续`GN`，全部完成并推送”之下。
>
> **起因**：C-454 的 `CLAIM.md`（AI 写的）把一般的 n 写成没做，并给了一句障碍分析：“壳是内层类型，不一定是集合，所以外层 UIP 管不到它；往上一层又要它自己的相干。”目标的检查方把一般的 n 列为未完成。
>
> **包信息**：
> - proof id：主包 `MP-CG001-SST-2LTT-IDENTIFICATION-ALL-001`（`SemisimplicialIdentificationAll.agda`）；负控制 `-NEG-001`（`WrongFibreEnd.agda`）、`-NEG-002`（`WrongOuterIdentification.agda`）。
> - claim：`CG001-C-455`。
> - 工具链：Agda 2.8.0 + cubical 0.9，本机 macOS 记录 `HoTT/formal/dedekind-omega-missile/TOOLCHAIN.json`；`--safe --cubical --two-level --guardedness`，什么都不假定（单价性、Glue 在 Cubical Agda 里是原语与定理）。
> - 依赖（导入，不重抄）：`../sst-2ltt-reverse/`（C-453 的 `Reverse` 与 `ΠThId`、`isContrΠThNone` 等）、`../sst-2ltt-correspondence/`（C-452 的 `toStrict`）、`../sst-2ltt-fibrant/`（C-450）、`../strict-semisimplicial/`（C-448）、`../two-fates-2ltt/`（C-442）及其导入的包。
> - 标签：`FORMAL_SST_2LTT_TYPE_FAMILY_IDENTIFICATION_ALL_N`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §82（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**对一切外层 N 与一切 Y : SST N，按层的半单纯类型交到严格的一版、再经纤维取回，得到的就是 Y 本身：`SST N` 里的一条内层路径；沿它，来回一趟的边界映射就是壳上的恒等。C-454 说从 n = 3 起要一条外层 UIP 管不到的同伦，这句不成立：把比较路径的自然性写成区间每一点上的外层相等，相干就仍由外层 UIP 收住。**

## 用到的词

- **按层的一版** `SST n`、**壳** `Sh`、**取面** `res`（C-450）；**交回** `toStrict`（C-452）；**经纤维取回** `Reverse.Lv`、**边界映射** `Reverse.bd`（C-453）。
- **比较**：一条从经纤维的一版到目标的内层路径，连同一条从边界映射到目标壳映射的路径（`PathP`）。
- **区间每一点上的外层相等**：`(i : I) → a i ≡ᵉ b i`。两层类型论允许这样写；它不是外层相等之间的函数外延性，只是对每一点各给一条外层相等。
- **Glue**：Cubical Agda 的粘合类型；`ua` 就是用它定义的。

## 命题全文：C-455

在模块 `General S` 里，对任何严格的半单纯类型 `S`（C-448）：

- **(1) 比较**：记录 `Cmp n Z ρ`，其中 `Z : SST n`，`ρ : X S k → Sh n Z k`。字段：
  - `path : Lv n ≡ Z`；
  - `P : PathP (λ i → X S k → Sh n (path i) k) (bd n) ρ`；
  - `nat T x i : res n (path i) T (P i x) ≡ᵉ P i (act S T x)`，对区间的每一点 i。
- **(2) 逐层建起来**：`cmp n Z ρ ρNat ρEq : Cmp n Z ρ`，只要 ρ 与取面严格可换（`ρNat`，外层相等），并且在不超过 n 个顶点的单纯形上是等价（`ρEq`）。对 n 归纳。第 n+1 层：
  - 类型族路径 `q i s` 是一个 Glue：底是比较映射在时刻 i 的纤维 `fiber (P i) s`；时刻 0 按定义就是 `fiber (bd n)`，时刻 1 粘上目标的第 n+1 层族 `F`，用顶层纤维与 `F` 的等价 `fibEq`。
  - 每个 n+1 顶点单纯形 y 自己的一条路 `Ψ y`：纤维里的典范元素 `(y , refl)` 沿时刻走，终点落到 y 在 `F` 里的顶层数据。
  - 新的比较路径在每个面 U 上取 `Ψ (act S U x)`，沿逐点的自然性 `nat` 搬运，两端用外层相等修正（`fixEnds`）。
  - 新的自然性在区间每一点上证出：两边都是同一个 `Ψ` 沿外层相等搬运的结果，用 `substᵉ-∙` 与 `substᵉ-uip`（外层 UIP）收住。
- **(3) 定理**：`identification N Y : Reverse.Lv (toStrict N Y) N ≡ Y`，对一切外层 N 与 Y : SST N（取 ρ 为恒等，`ρNat` 是 `reflᵉ`，恒等是等价）。
- **(4) 边界映射**：`boundaryIsIdentity N Y : PathP (λ i → Sh N Y k → Sh N (identification N Y i) k) (Reverse.bd (toStrict N Y) N) (λ s → s)`。
- **整体**：`qual-C455` 是一个外层记录，把 (2)–(4) 放在一起，由一个项居留。C-454 的 n = 1、2 是 (3) 的特例。

## 负控制

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-001` | `WrongFibreEnd.agda` | 第 n+1 层的类型族路径就是“时刻 i 取比较映射的纤维”，终点不用粘上目标族 | 被拒：时刻 1 的纤维是 `fiber (P i1)`，不是 F |
| `MP-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-002` | `WrongOuterIdentification.agda` | 来回一趟回到原物是外层相等，用 `reflᵉ` 证（n = 1） | 被拒：经纤维的第 1 层是纤维类型，不是 P |

## 没做的（照实）

- **严格的一版那一侧**：要认同为原物就得是外层相等，内层单价性只给内层路径；本包不碰（见 C-454 的 NEG-002）。
- **全部层的塔**：本包对每个外层 N 证出认同；把所有 N 合成一座内层的塔，仍要 C-450 的那座桥（内层自然数到外层自然数），本包不碰。
- **两层类型论文献里两种写法的对应**：本包没有核原文，构造是本包自己写的；“比较映射在时刻 i 的纤维”这一手是 ua 定义方式的推广，不主张原创。

## 它在论证里的位置（身份分层）

- **〔机器已证〕**：上面的 (1)–(4)；两个负控制被拒。
- **〔更正〕**：C-454 对障碍的分析不成立。那条“与取面相容的同伦”不用另外去证：比较路径的自然性逐点写成外层相等，下一层的自然性就由外层 UIP 给出，不会一层层往上要相干。C-454 包内 `REVISIONS.md` 写明三层更正。
- **〔对应关系，是读法，不是定理〕**：
  - **每个有限阶段两边是同一个对象**：C-453 说逐层等价，C-454 在 n ≤ 2 升成相同，本包对一切 N 升成相同。外层与内层的差别只剩“合成一座塔要一座桥”（C-450）。按研究发起人对 A 的定义，A 正落在这一处，有限阶段一处都不占。
  - **价格付在哪里**：把等价升成相同，相干的价格由外层的严格相等一次付清；这正是两层类型论里“外层免费、内层付费”的那条分界（C-442）。
- **〔不是本包承接的〕**：上面“没做的”三条；不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。

## 禁止外推

- 认同是内层路径，不是外层相等；严格的一版那一侧没有认同。
- 对每个外层 N 成立；不说全部层合成的塔在内层可定义（要桥）。
- “A 正落在桥上”是读法，不是定理。
- 只在 macOS 捕获与重放。
