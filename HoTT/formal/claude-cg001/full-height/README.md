# full-height：没有一个有限层够用（CG001-C-446）

> 目标包 CG-011 完成门 G6：元层特征方案 §7 第 5 条，同调代数的全高度版本。本机会话 a15f4b3b（Opus 5.5），2026-10-21，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`。

## 这个包做了什么

C-440 只做了第 1 层：只记“方块交换了”，锥就定不下来。这里做所有层。对象是 Eilenberg–MacLane 空间 K(ℤ, n)：

| 在第几层宣布完成 | K(ℤ, n) 看起来像什么 |
|---|---|
| 第 0 层到第 n+1 层 | 与单点一模一样（分不开） |
| 第 n+2 层 | 与单点不同（分开了），而且第 n+2 层的完成保得住它 |

所以 K(ℤ, n) 的价格恰是 n+2，价格没有上界。不论选哪一层 m，K(ℤ, m) 都在这一层与单点分不开：没有一个有限层够用。每个对象都在某个有限层被分开，没有一个层分开所有对象。要一次分开所有对象，就得把所有层一次交出（A）。

史学假说（数学家在同调代数里看见过这个代价并修补）没有核：Verdier、Bondal–Kapranov、Lurie 的原文不在仓库，下载要研究发起人同意。见 `CLAIM.md`。

**2026-10-21 同日更新**：只读公开网页核了能取得的部分（`CLAIM.md` 已哈希，不改）：Lurie 一文已核，代价与补救两句有一手说法；Bondal–Kapranov 只核了英译本摘要，所写动机与假说有出入；Verdier 未取得。记录见 `.claude/goals/CG-011-h-deepening-followups/G6-史学考古.md`。

## 文件

| 文件 | 内容 |
|---|---|
| `FullHeight.agda` | (1)–(4) 与 `qual-C446` |
| `WrongPointOneLevelUp.agda` | 负控制：K 1 到第 3 层还与单点一模一样 |
| `WrongKIsPoint.agda` | 负控制：K 1 本身就是单点 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-FULL-HEIGHT-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-FULL-HEIGHT-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §73 要先在。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-FULL-HEIGHT-01` | `MP-CG001-FULL-HEIGHT-001` | 接受 | 0（86 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-FULL-HEIGHT-NEG-01` | `MP-CG001-FULL-HEIGHT-NEG-001` | 拒绝 | 42：`1 != 2`（第 3 层不是第 2 层） | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-FULL-HEIGHT-NEG-02` | `MP-CG001-FULL-HEIGHT-NEG-002` | 拒绝 | 42：`embase != y`（`refl` 到不了任意一点） | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与八个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §73 与共享矩阵末节。
