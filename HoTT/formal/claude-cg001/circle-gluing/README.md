# circle-gluing：粘回两端是一个宣布的构造（CG001-C-445）

> 目标包 CG-011 完成门 G5：H 深化 §1 修正记录里的圆环悖论缺口。本机会话 a15f4b3b（Opus 5.5），2026-10-21，应研究发起人要求接手会话 91beaf35（015-Opus）；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`。

## 这个包做了什么

研究发起人的圆环悖论：圆上拿走一点得 M，两端展开成线段 N；从 N 复原到 M，两端无论逼近到什么程度都回不去。C-424 在经典拓扑里证了逼近那一面。本包做 HoTT 这一面：

| | 线段 N | 粘回两端得到的圆 |
|---|---|---|
| 两端 | 本来就由 N 自己的路 `seg` 相同 | 再加一条宣布的认同 `declared` |
| 回路 | 全是 `refl` | 有一个洞：`declared` 与 `seg` 之差，绕数 1 |
| 谁造得出这个洞 | N 里的任何东西都造不出 | 只来自那条宣布的认同；改用 `seg` 去粘，洞就没了 |
| 完成的代价（C-436 的尺子） | 0：第 0 层就保得住 | 3：第 0、1、2 层都保不住，第 3 层保得住 |

## 文件

| 文件 | 内容 |
|---|---|
| `CircleGluing.agda` | (1)–(6) 与 `qual-C445` |
| `WrongDeclaredIsOwn.agda` | 负控制：宣布的认同就是 N 自己的路 |
| `WrongLoopFromSegment.agda` | 负控制：N 的回路能造出这个洞 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-CIRCLE-GLUING-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-CIRCLE-GLUING-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §72 要先在。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-CIRCLE-GLUING-01` | `MP-CG001-CIRCLE-GLUING-001` | 接受 | 0（86 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-CIRCLE-GLUING-NEG-01` | `MP-CG001-CIRCLE-GLUING-NEG-001` | 拒绝 | 42：`declared i != pt (seg i)` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-CIRCLE-GLUING-NEG-02` | `MP-CG001-CIRCLE-GLUING-NEG-002` | 拒绝 | 42：`pt end₀ != hcomp …`（`cong pt refl` 是 `refl`，洞是复合） | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与八个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §72 与共享矩阵末节。CLAIM 与各文档的引文：`python3 -B scripts/audit/check_cg011_quotes.py`。
