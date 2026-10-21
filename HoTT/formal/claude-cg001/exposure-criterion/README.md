# exposure-criterion：元层判据，一个理论什么时候暴露 A（CG001-C-438）

> 研究发起人 2026-10-21 新方向“元层特征”的第一步。本机会话 91beaf35（012-Opus），Opus 5.5，2026-10-21；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`；方案见 `dev-docs/元层特征方案-20261021.md`。

## 这个包做了什么

把一个理论写成一个类型：对象连同它自己的“是不是同一个”。证明三件事等价：逐层追问永不停；在任何有限层宣布完成都换掉对象；这个类型在任何有限层都不落定。满足 C-430 形态（单价，所有高度一次交出）的任一收集，每个有限阶段都停，整体永不停；相同是事实的收集第 1 问就停。

两个实例放在同一个框架里：

- ZFC 的累积层级 `V` 与 ω 的成员第 1 问就停，完成免费；
- HoTT 里有限层类型的全体永不停，而它的每个成员、每个有限阶段都有限且停。

同一个“把所有有限阶段一次收齐”，在 ZFC 里免费，在 HoTT 里永远问不完。

## 文件

| 文件 | 内容 |
|---|---|
| `ExposureCriterion.agda` | 判据 (1)、形态与元层定理 (2)、ZFC (3)、结构集合论 (4)、HoTT 的全体 (5)、两种命运 (6)、`qual-C438` |
| `WrongWholeHalts.agda` | 负控制：HoTT 的全体像 ω 一样第 1 问就停 |
| `WrongOmegaSilent.agda` | 负控制：ω 的成员第 1 问答不出来 |
| `capture_runs.sh` | 捕获三个运行的命令（`bash capture_runs.sh main|neg1|neg2`，在仓库根目录跑） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-EXPOSURE-CRITERION-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-EXPOSURE-CRITERION-NEG-01`、`-NEG-02`。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-EXPOSURE-CRITERION-01` | `MP-CG001-EXPOSURE-CRITERION-001` | 接受 | 0（88 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-EXPOSURE-CRITERION-NEG-01` | `MP-CG001-EXPOSURE-CRITERION-NEG-001` | 拒绝 | 42：`nothing != just 1` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-EXPOSURE-CRITERION-NEG-02` | `MP-CG001-EXPOSURE-CRITERION-NEG-002` | 拒绝 | 42：`just 1 != nothing` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与八个被导入的包源文件，此后它们不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §66 与共享矩阵末节。
