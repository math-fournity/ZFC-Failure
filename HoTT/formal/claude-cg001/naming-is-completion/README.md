# naming-is-completion：命名与截断是同一个完成算子（CG001-C-443）

> 目标包 CG-011 完成门 G3：H 深化 §6 (c) 的统一陈述。本机会话 91beaf35（012-Opus），Opus 5.5，2026-10-21；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`。

## 这个包做了什么

起名就是在第 0 层宣布完成。给满足 φ 的东西起名而不丢东西，当且仅当它唯一存在（见证类型可缩）；截断是同一个算子在更高的层。于是“起名要付多少”就是见证类型落定的层：

| 对象 | 见证类型落定的层 | 起名的代价 |
|---|---|---|
| ZFC（累积层级 `V`）里“没有成员的集合” | 0（可缩） | 免费 |
| HoTT 里“空类型” | 0（可缩） | 免费 |
| HoTT 里“二元集合” | 3（连通的 1-型；对调不是 refl） | 第 0、1、2 层的完成都保不住 |
| 宇宙 | 没有有限层 | 任何有限层都保不住 |

## 文件

| 文件 | 内容 |
|---|---|
| `NamingIsCompletion.agda` | (1)–(5) 与 `qual-C443` |
| `WrongTwoUnique.agda` | 负控制：二元集合的见证类型可缩 |
| `WrongSwapTrivial.agda` | 负控制：对调就是 refl |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-NAMING-IS-COMPLETION-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-NAMING-IS-COMPLETION-NEG-01`、`-NEG-02`。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-NAMING-IS-COMPLETION-01` | `MP-CG001-NAMING-IS-COMPLETION-001` | 接受 | 0（88 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-NAMING-IS-COMPLETION-NEG-01` | `MP-CG001-NAMING-IS-COMPLETION-NEG-001` | 拒绝 | 42：`refl` 到不了任意一个 | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-NAMING-IS-COMPLETION-NEG-02` | `MP-CG001-NAMING-IS-COMPLETION-NEG-002` | 拒绝 | 42：对调不是 `refl` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与八个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §70 与共享矩阵末节。
