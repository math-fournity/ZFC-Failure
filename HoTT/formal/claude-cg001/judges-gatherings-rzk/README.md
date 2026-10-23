# judges-gatherings-rzk：C-78 与 C-79 剩下的部分，在 Rzk 里补齐（CG001-C-457）

> CG-011 完成门 G10 的 Rzk 一半，C-456（`../two-causes-rzk/`）的续作：补它照实写明没做的三项。本机会话 a15f4b3b（Opus 5.5），2026-10-23，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题与没做的见 `CLAIM.md`。

## 这个包做了什么

| | 本包 |
|---|---|
| C-78 (b) | 命题的可判定性是命题，所以判定器的类型是命题；宇宙的任一判定器等于 `judge-via-B` |
| C-78 (d) | 问“有没有一层落定”的程序直接答；在宇宙上无论怎么判定都答“否”；内核实跑 |
| C-79 (b) | 对一切 n，1+n 层落定者的汇集恰在第 1+n 问停（n = 0、1 来自 C-456）；下界用 C-456 的局部—整体与一族有上限的见证 `W`；判定器存在，内核实跑 1 层类型的汇集：燃料 2 交出 3 |
| 两个负控制 | 1 层类型的汇集第 2 问就停；宇宙“有一层落定” |

**一句人话**：C-456 留下的三个小口子补上了。最实质的一条是汇集的下界：要证“(m+3) 层落定者的汇集不在第 m+3 层”，得有一个 m+3 层的类型，它的高阶回路有不平凡的截面。Agda 用 EM 空间；Rzk 写不出 EM 空间，所以这族见证作为参数进来。它去掉上限就是 C-456 里宇宙要的那族见证，一个参数两处用。

## 文件

| 文件 | 内容 |
|---|---|
| `JudgesAndGatheringsRzk.rzk` | 全部定义与定理，253 行；末尾 `Rest`/`rest` 把命题合成一个类型 |
| `WrongGatheringStopsEarly.rzk` | 负控制：1 层类型的汇集燃料 1 交出 2 |
| `WrongWhetherSettledYes.rzk` | 负控制：宇宙“有一层落定” |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261023-CG001-JUDGES-GATHERINGS-RZK-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261023-CG001-JUDGES-GATHERINGS-RZK-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §84 要先在。每个运行都先检查 C-456 的主文件：

```bash
/Volumes/D/HoTT-toolchain-cache/rzk-v0.11.3-macos-arm64/rzk typecheck HoTT/formal/claude-cg001/two-causes-rzk/TwoCausesUnderUnivalence.rzk HoTT/formal/claude-cg001/judges-gatherings-rzk/JudgesAndGatheringsRzk.rzk
```

## 运行（2026-10-23）

见证据索引 §84 与 `.claude/goals/CG-001-targeted-overview/verification/` 下与运行同名的校验输出。源清单另哈希本包与 C-456 的 `CLAIM.md`，此后不得改动；更正写进 `REVISIONS.md`。

几处做法，供以后参考：

- **判定器的阈值要按问题本身算**：第 k 问问的是第 k+1 层，(m+3) 层落定者的汇集在第 m+4 层落定、不在第 m+3 层，所以“否”一直答到第 m+2 问，第 m+3 问才“是”。第一稿按 m+1 分界，算错了一位，写的时候就发现了，没有进内核。
- **下界不必另造高阶见证**：对汇集本身用局部—整体（它是单价的收集），把“不在第 m+3 层”化成“成员的 (m+1) 层回路的截面空间可缩”，再用见证的不平凡截面否定它。
