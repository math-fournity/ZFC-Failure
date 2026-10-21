# per-layer-accounting：逐层记账不等于暴露（CG001-C-444）

> 目标包 CG-011 完成门 G4：H 深化 §7 的对抗检验。本机会话 91beaf35（012-Opus），Opus 5.5，2026-10-21；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`；抓取后发现的引文更正见 `REVISIONS.md`。

## 这个包做了什么

同一个内核、同一个逐层追问程序，只换被一次收齐的那个整体：

| 整体 | 它自己的相同 | 逐层追问 | 宣布完成的价格 |
|---|---|---|---|
| 集合的全体（`hSet`） | 有结构（Bool 的对调） | 内核实跑，第 2 问答完；任何判定器都如此 | 3 层：第 2 层留不住，第 3 层留得住 |
| 群的全体 | 有结构（ℤ 的取负，经 `GroupPath`） | 内核实跑，第 2 问答完；任何判定器都如此 | 3 层：同上 |
| 宇宙 | 有结构，所有高度一次交出 | 同一个程序跑 1000 步无答案；任何判定器都永不停 | 付不清：任何有限层都留不住 |

深度轴同样：
- 两个流前 n 位一样不一样，每个 n 都可判定（内核实跑 1000 个阶段）；
- 相同 ⟺ 每个阶段都一样，可是没有一个有限阶段够用；
- 拿流和自己比，找差别的搜索任何有限步都没有答案。

所以逐层记账不是暴露的充分条件：H 深化 §7 第二段收紧为 C-438 的判据。

## 文件

| 文件 | 内容 |
|---|---|
| `PerLayerAccounting.agda` | (1)–(4) 与 `qual-C444` |
| `WrongSetsSilent.agda` | 负控制：集合的全体走了 1 步仍无答案 |
| `WrongStageSuffices.agda` | 负控制：前 1 位一样就够确认相同 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |
| `REVISIONS.md` | `CLAIM.md` 两处引文的更正（`CLAIM.md` 已哈希，不改） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-PER-LAYER-ACCOUNTING-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-PER-LAYER-ACCOUNTING-NEG-01`、`-NEG-02`。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-PER-LAYER-ACCOUNTING-01` | `MP-CG001-PER-LAYER-ACCOUNTING-001` | 接受 | 0（88 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-PER-LAYER-ACCOUNTING-NEG-01` | `MP-CG001-PER-LAYER-ACCOUNTING-NEG-001` | 拒绝 | 42：内核算出 `just 2`，不是 `nothing` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-PER-LAYER-ACCOUNTING-NEG-02` | `MP-CG001-PER-LAYER-ACCOUNTING-NEG-002` | 拒绝 | 42：第 1 个阶段到不了任意一位（`k != zero`） | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

- 源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与十个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。
- 捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。
- 校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §71 与共享矩阵末节。
