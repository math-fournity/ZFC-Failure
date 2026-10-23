# sameness-never-confirmed：深度轴，已完成的无穷对象“是不是同一个”也问不完（CG001-C-441）

> 方案 `dev-docs/元层特征方案-20261021.md` §5 的“深度”轴。本机会话 91beaf35（012-Opus），Opus 5.5，2026-10-21；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`。

## 这个包做了什么

两个已经完成的无穷流是不是同一个，就是逐位找差别的搜索会不会停：

- 不同，有限步就能确认；
- 相同，跑多少步都确认不了。任何有限阶段看到的东西，同一个与不同一个都给得出。

把这些追问一次答完（流的相等可判定）等价于 WLPO，排中律给出它，所以在 ZFC 里“是不是同一个”总有现成的答案。HoTT 宇宙的逐层追问（高度轴）与这里的逐位找差别（深度轴），跑的是同一个程序 `askQ`（C-112），都永不停。

## 文件

| 文件 | 内容 |
|---|---|
| `SamenessNeverConfirmed.agda` | (1)–(5) 与 `qual-C441` |
| `WrongConfirmAtStage.agda` | 负控制：和自己比，第 3 步就确认了相同 |
| `WrongFlipSame.agda` | 负控制：第 3 位翻转后与原流相同 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-SAMENESS-NEVER-CONFIRMED-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-SAMENESS-NEVER-CONFIRMED-NEG-01`、`-NEG-02`。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-SAMENESS-NEVER-CONFIRMED-01` | `MP-CG001-SAMENESS-NEVER-CONFIRMED-001` | 接受 | 0（86 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-SAMENESS-NEVER-CONFIRMED-NEG-01` | `MP-CG001-SAMENESS-NEVER-CONFIRMED-NEG-001` | 拒绝 | 42：`nothing != just 0` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-SAMENESS-NEVER-CONFIRMED-NEG-02` | `MP-CG001-SAMENESS-NEVER-CONFIRMED-NEG-002` | 拒绝 | 42：翻转后的流在第 3 位不同 | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与八个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §68 与共享矩阵末节。
