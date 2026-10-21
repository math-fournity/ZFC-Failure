# two-fates-2ltt：同一个理论里的两种命运（CG001-C-442）

> 方案 `dev-docs/元层特征方案-20261021.md` §6 的归因检验。本机会话 91beaf35（012-Opus），Opus 5.5，2026-10-21；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`。

## 这个包做了什么

两层类型论（Agda 的 `--two-level`）里同时有两种“相同”：外层的严格相等，是事实；内层的路径，即 HoTT 本身，有结构。同一个动作“把东西一次收齐成现成的整体”在两层有两种命运：

- **外层**：每个类型、外层宇宙、外层自然数，相同都是事实；把同样的 EM 阶段按外层自然数收齐，编码的相同也是事实。
- **内层**：宇宙的追问永不停；把同样的 EM 阶段收齐成单价的汇集，追问也永不停。

外层可以给内层的阶段编号，反过来不行。

所以代价只出现在有结构的那一层。“代价来自理论本身”或“代价来自呈现方式”这两个竞争归因，因此大大削弱。

## 文件

| 文件 | 内容 |
|---|---|
| `TwoFatesOneTheory.agda` | (1)–(3) 与 `qual-C442 : TwoFates` |
| `WrongInnerFlat.agda` | 负控制：拿外层的 UIP 证内层路径相等 |
| `WrongInnerToOuter.agda` | 负控制：把内层自然数递归收回外层 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-TWO-FATES-2LTT-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-TWO-FATES-2LTT-NEG-01`、`-NEG-02`。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-TWO-FATES-2LTT-01` | `MP-CG001-TWO-FATES-2LTT-001` | 接受 | 0（90 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-TWO-FATES-2LTT-NEG-01` | `MP-CG001-TWO-FATES-2LTT-NEG-001` | 拒绝 | 42：`(A ≡ B) !=< _ ≡ˢ _` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-TWO-FATES-2LTT-NEG-02` | `MP-CG001-TWO-FATES-2LTT-NEG-002` | 拒绝 | 42：`SortOfSplitVarError` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与九个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §69 与共享矩阵末节。
