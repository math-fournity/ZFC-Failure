# univalent-categories-exact：单价范畴的全体恰在第 3 问停（CG001-C-451）

> C-449 的续作（CG-011 完成门 G10 的后续）。C-449 证了“最迟第 3 问停”，没证恰在第 3 问；本包补上。本机会话 a15f4b3b（Opus 5.5），2026-10-22，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`。

## 这个包做了什么

| 被收齐的整体 | 相同 | 落在哪层 | 逐层追问 | 价格 |
|---|---|---|---|---|
| 集合的全体、群的全体（C-438、C-444） | 双射、群同构 | 第 3 层 | 恰在第 2 问停 | 3 层，付得清 |
| **单价范畴的全体（C-449 + 本包）** | 范畴等价，等价之间还有自然同构 | 第 4 层，**不在第 3 层** | **恰在第 3 问停** | 4 层，付得清 |
| 宇宙（C-430） | 等价，层层往上 | 没有有限层 | 永不停 | 付不清 |

**一句人话**：范畴的全体比集合的全体多一层结构，停点就往后挪一问；只要结构有上限，追问就停，A 看不见。

**怎么证的“不在第 3 层”**：拿圆来做见证。
- 圆的路径范畴（对象是圆上的点，态射是圆上的路径）是一个单价范畴，所以它在这个全体里。
- 宇宙里“圆到自身的认同”不构成集合：恒等上有“每点绕一圈”这条自同伦，它不是“不动”（绕数 1 不是 0）。
- 这些认同可以搬成“圆的路径范畴到自身的认同”，再取回来，不丢东西（收缩）。所以全体要是群胚，前者就该是集合，矛盾。

读作“圆的路径范畴的恒等函子有一个非平凡的自然自同构”；形式上走的是收缩，没写出自然自同构本身。

## 文件

| 文件 | 内容 |
|---|---|
| `UnivalentCategoriesExact.agda` | (1)–(4) 与 `qual-C451` |
| `WrongTotalityGroupoid.agda` | 负控制：每个成员的对象是群胚，所以全体是群胚 |
| `WrongSecondQuestion.agda` | 负控制：第 4 层的上界够让追问在第 2 问停 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261022-CG001-UNIVALENT-CATEGORIES-EXACT-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261022-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §78 要先在。

## 运行（2026-10-22）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261022-CG001-UNIVALENT-CATEGORIES-EXACT-01` | `MP-CG001-UNIVALENT-CATEGORIES-EXACT-001` | 接受 | 0（101 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261022-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-01` | `MP-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-001` | 拒绝 | 42：`UnequalTerms`（`C ≡ D` 对不上 `C .fst .ob`） | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261022-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-02` | `MP-CG001-UNIVALENT-CATEGORIES-EXACT-NEG-002` | 拒绝 | 42：`UnequalTerms`（上界是第 4 层，不是第 3 层） | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与九个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §78 与共享矩阵末节。

写构造时的三处 Agda 细节：where 子句里不要用与导入的构造子同名的名字（`base` 撞了圆的 `base`）；`¬` 的优先级低于 `×`，积里的否定要加括号；`lift x` 的宇宙层级推不出来时显式写 `lift {j = ℓ-suc ℓ-zero} x`。
