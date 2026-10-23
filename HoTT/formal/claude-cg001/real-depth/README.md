# real-depth：实数的“等于 0”就是“处处为 0”（CG001-C-447）

> 目标包 CG-011 完成门 G7：深度轴落到实数。本机会话 a15f4b3b（Opus 5.5），2026-10-21，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`。

## 这个包做了什么

C-441 在数字流上证明：“是不是同一个”在深度上问不完，一次答完要 WLPO。这里经一条桥搬到 Mathlib 的实数上：

| | 数字流 s | 它表示的实数 `val s = ∑ s(n)·2^-(n+1)` |
|---|---|---|
| 是 0 吗 | 每一位都是 0 | `val s = 0`（桥接引理：二者等价） |
| 有限阶段 | 前 n 位都是 0 | 部分和是 0，`val s` 却可以不是 0；没有一个有限阶段够用 |
| 一次答完 | WLPO 的流形式 | 判定每个 `val s` 是不是 0（二者等价） |
| 边界 | 0.1000… 与 0.0111… 是两个流 | 同一个实数 1/2：一般的相等不是数字流相等 |

## 文件

| 文件 | 内容 |
|---|---|
| `GodelQ/Real/RealDepth.lean` | 定义与 (1)–(4) |
| `GodelQ/Real/QualificationRealDepth.lean` | 命题对照 `qual_C447` 与公理报告 |
| `GodelQ/Negative/WrongFirstDigit.lean` | 负控制：第 0 位是 0，实数就是 0 |
| `GodelQ/Negative/WrongStreamEquality.lean` | 负控制：实数相等就是数字流相等 |
| `LEAN_TOOLCHAIN.json`、`MATHLIB_CLOSURE.json` | 固定记录（CG-007 的 `make_pins.py --package` 生成） |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-REAL-DEPTH-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-REAL-DEPTH-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §74 要先在。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-REAL-DEPTH-01` | `MP-CG001-REAL-DEPTH-001` | 接受 | 0（12 秒，stderr 0 B；公理报告只有三条标准公理） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-REAL-DEPTH-NEG-01` | `MP-CG001-REAL-DEPTH-NEG-001` | 拒绝 | 1：`s k = false` 推不出 `s (k + 1) = false` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-REAL-DEPTH-NEG-02` | `MP-CG001-REAL-DEPTH-NEG-002` | 拒绝 | 1：两个和相等推不出逐位相等 | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单哈希了源文件、`CLAIM.md`、两份固定记录与驱动、抓取、固定记录生成三个工具，此后不得改动；更正写进 `REVISIONS.md`。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §74 与共享矩阵末节。
