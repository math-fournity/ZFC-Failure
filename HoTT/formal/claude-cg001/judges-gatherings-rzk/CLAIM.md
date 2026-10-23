# C-78 与 C-79 剩下的部分，在 Rzk 里补齐：判定器唯一、另一个问题、汇集恰在第 1+n 问停（C-457）

> HUMAN_EDITED；2026-10-23；Claude Code 桌面会话 a15f4b3b（接手会话 91beaf35）；独立 worktree `claude/012-opus-w8`；CG-011 完成门 G10 的 Rzk 一半，C-456 的续作，研究发起人的目标“所有的后续`GN`，全部完成并推送”之下。
>
> **起因**：C-456（`../two-causes-rzk/`）重跑了 C-77 的程序与 C-430 的两个成因，在它的 `CLAIM.md` 里照实写了三项没做：C-78 (b)（判定器唯一）、C-78 (d)（另一个问题的程序）、C-79 (b) 一般的 n 的下界（只重得命题第 1 问、集合第 2 问）。本包补齐这三项。
>
> **包信息**：
> - proof id：主包 `MP-CG001-JUDGES-GATHERINGS-RZK-001`（`JudgesAndGatheringsRzk.rzk`）；负控制 `-NEG-001`（`WrongGatheringStopsEarly.rzk`）、`-NEG-002`（`WrongWhetherSettledYes.rzk`）。
> - claim：`CG001-C-457`。
> - 工具链：Rzk 0.11.3，与 C-456 同一份钉住记录（`HoTT/formal/claude-cg001/directed-native/RZK_TOOLCHAIN.json`）。源码首行 `#lang rzk-1`；没有声明的公理，没有假设，没有洞。
> - 依赖：每次运行都先检查 `../two-causes-rzk/TwoCausesUnderUnivalence.rzk`（C-456），再检查本包文件；本包用到它的定义（`Univalence`、`run`、`Judge`、`local-global`、`gathering`、`exact-halt`、`silent-up-to` 等），不重抄。
> - 标签：`FORMAL_QUESTIONING_REST_IN_RZK_UNDER_UNIVALENCE`。
> - 索引：`.claude/goals/CG-001-targeted-overview/证据索引.md` §84（GOAL_LOCAL_INDEX_ONLY）。

## 一句话

**在 Rzk 里、以单价性为前提，C-78 与 C-79 剩下的三项也被内核接受：判定器的类型是命题，宇宙的每个判定器都等于那个“否”全由 C-456 第 (1) 条给出的判定器；问“有没有一层落定”的另一个程序燃料 0 就答，在宇宙上无论怎么判定都答“否”；对每个 n，1+n 层落定者的汇集恰在第 1+n 问停。最后一条的下界要一族有上限的见证 `W : BoundedHeights`（Agda 里是 EM 空间 K(ℤ, m+1)，Rzk 0.11.3 声明不出来），作为参数进来；去掉上限，它就是 C-456 的 A 的见证。**

## 命题全文：C-457

- **C-78 (b)**：`dec-is-prop`（命题的可判定性是命题）；`judge-is-prop univ C`：对任意类型 C，`Judge C` 是命题；`every-judge-is-judge-via-B`：宇宙的任一判定器等于 `judge-via-B`。
- **C-78 (d)**：`whether-settled C d`：问“C 有没有在某一层落定”的程序，任何燃料都直接答；`universe-whether-answers-no`：对任何判定 `d : Dec (HasLevel U)`，燃料 0 答“否”；内核实跑 `universe-whether-kernel-run`（`refl`）。
- **C-79 (b) 对一切 n**：
  - `BoundedHeights`：对每个 m，一个 h-层 m+3 的类型，它的 (m+1) 层回路有一条不平凡的截面；`every-height-of-bounded`：忘掉上限就得 C-456 的 `EveryHeight`。
  - `hlevel-loops-pred`：在第 k+1 层的有点类型，k 层回路可缩。
  - `gathering-not-at-own-level`：(m+3) 层落定者的汇集不在第 m+3 层（对汇集用 C-456 的 `local-global`，取成员 `W m`）。
  - `gathering-stops-exactly`：对任意判定器，燃料 m+2 交出 m+3，更小的燃料都没有答案；连同 C-456 的 `props-stop-at-one`（n = 0）与 `sets-stop-at-two`（n = 1），对一切 n 恰在第 1+n 问停。
  - 判定器存在：`split-le`（比较两个自然数）、`judge-gathering`；内核实跑 `gathering-kernel-run`：1 层类型的汇集燃料 2 交出 3（`refl`）。
- **整体**：类型 `Rest`（以 `univ` 与 `W` 为前提）由 `rest` 居留。

## 负控制

两个都在同一次运行里接在 C-456 主文件与本包文件之后检查。

| proof id | 文件 | 被否定的说法 | 预期 |
|---|---|---|---|
| `MP-CG001-JUDGES-GATHERINGS-RZK-NEG-001` | `WrongGatheringStopsEarly.rzk` | 1 层类型的汇集像集合的汇集那样第 2 问停，燃料 1 交出 2 | 被拒：内核算出 nothing（第 2 问答“否”） |
| `MP-CG001-JUDGES-GATHERINGS-RZK-NEG-002` | `WrongWhetherSettledYes.rzk` | 问宇宙“有没有一层落定”答“是” | 被拒：内核算出 `just false` |

## 没做的（照实）

- **有上限的见证本身**：Rzk 0.11.3 不支持路径之间的路径构造子，EM 空间声明不出来；以 `W` 为前提。
- **单价性本身**：同 C-456，以 `univ` 为前提。

## 它在论证里的位置（身份分层）

- **〔机器已证，在单价性公设下〕**：上面的全部；两个负控制被拒。至此 C-77、C-78、C-79 与 C-430 在 Rzk 里都已重跑（C-456 加本包）。
- **〔前提的分账〕**：`dec-is-prop`、`judge-is-prop` 只用 `univ`（函数外延性）；`gathering-not-at-own-level` 与 `gathering-stops-exactly` 用 `univ` 与 `W`；`split-le`、`hlevel-loops-pred`、`not-below`、`hlevel-up` 两样都不用。
- **〔第二个内核确认的是什么〕**：同 C-456：Rzk 有 `U : U`，确认的是推导在第二个、独立实现的内核里逐步检查通过，不是第二个基础的相容性。
- **〔不是本包承接的〕**：不推出 ZFC ⊢ ⊥，也不推出 ZFC-1 ⟹ B。

## 禁止外推

- 身份是“在单价性公设下”，C-79 (b) 一般的 n 还要有上限的见证。
- 不说 Rzk 的基础相容。
- 只在 macOS 捕获与重放；Rzk 的运行不在 main 的重放工具的覆盖范围内，本包不进 main。
