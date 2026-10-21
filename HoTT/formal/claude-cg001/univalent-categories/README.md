# univalent-categories：单价范畴的全体会停（CG001-C-449）

> 目标包 CG-011 完成门 G10 的“单价 1-范畴”一半。本机会话 a15f4b3b（Opus 5.5），2026-10-21，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`；G10 的整体结论（含 Rzk 一半不做的理由）见 `.claude/goals/CG-011-h-deepening-followups/G10-结论.md`。

## 这个包做了什么

| 整体 | 它自己的相同 | 落在第几层 | 逐层追问 | 宣布完成的价格 |
|---|---|---|---|---|
| 集合的全体、群的全体（C-438、C-444） | 双射、群同构 | 第 3 层 | 第 2 问停 | 3 层，付得清 |
| **单价范畴的全体（本包）** | 范畴等价 | 第 4 层 | 最迟第 3 问停 | 至多 4 层，付得清 |
| 宇宙（C-430） | 路径（单价，所有高度） | 没有有限层 | 永不停 | 付不清 |

“第 4 层”是 cubical 库的定理 `is2GroupoidUnivalentCategory`（范畴的结构同一原理）；“最迟第 3 问停、答案是对的”来自 C-77 的追问程序。恰在第 3 问停没有证（要证它不是群胚）。

## 文件

| 文件 | 内容 |
|---|---|
| `UnivalentCategoriesStop.agda` | 成员与 (1)–(4)、`qual-C449` |
| `WrongUnivCatNever.agda` | 负控制：拿宇宙的“永不停”套到单价范畴上 |
| `WrongUnivCatUnpayable.agda` | 负控制：拿宇宙的“任何有限层都保不住”套到单价范畴上 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-UNIVALENT-CATEGORIES-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-UNIVALENT-CATEGORIES-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §76 要先在。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-UNIVALENT-CATEGORIES-01` | `MP-CG001-UNIVALENT-CATEGORIES-001` | 接受 | 0（97 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-UNIVALENT-CATEGORIES-NEG-01` | `MP-CG001-UNIVALENT-CATEGORIES-NEG-001` | 拒绝 | 42：`UnequalLevel` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-UNIVALENT-CATEGORIES-NEG-02` | `MP-CG001-UNIVALENT-CATEGORIES-NEG-002` | 拒绝 | 42：`UnequalLevel` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与八个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §76 与共享矩阵末节。
