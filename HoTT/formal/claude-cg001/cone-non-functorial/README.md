# cone-non-functorial：锥不函子化，就是宣布完成的代价（CG001-C-440）

> 研究发起人 2026-10-21“在其他理论里也找出来”的第一个主流数学实例。本机会话 91beaf35（012-Opus），Opus 5.5，2026-10-21；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`；方案见 `dev-docs/元层特征方案-20261021.md`。

## 这个包做了什么

同一个交换方块可以有两种交换方式：处处不动，或者在一处绕一圈。它们在锥（余纤维）上诱导的映射，绕数一个是 0、一个是 1，是两个不同的映射。

所以只记“方块交换了”这一个事实，锥上的映射就定不下来。这就是三角范畴里锥不函子化的最小内核形式，也正是 C-436 说的：在第 1 层宣布完成，会丢掉对象。

## 文件

| 文件 | 内容 |
|---|---|
| `ConeNonFunctorial.agda` | 方块、锥、诱导映射、绕数不变量；(1)–(4) 与 `qual-C440`；只导入 cubical 库 |
| `WrongConeUnique.agda` | 负控制：两种方式诱导同一个映射（`refl`） |
| `WrongWindingZero.agda` | 负控制：绕一圈的方式诱导的映射也不绕（`refl`） |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-CONE-NON-FUNCTORIAL-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-CONE-NON-FUNCTORIAL-NEG-01`、`-NEG-02`。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-CONE-NON-FUNCTORIAL-01` | `MP-CG001-CONE-NON-FUNCTORIAL-001` | 接受 | 0（34 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-CONE-NON-FUNCTORIAL-NEG-01` | `MP-CG001-CONE-NON-FUNCTORIAL-NEG-001` | 拒绝 | 42：`base != H₁ b i` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-CONE-NON-FUNCTORIAL-NEG-02` | `MP-CG001-CONE-NON-FUNCTORIAL-NEG-002` | 拒绝 | 42：`1 != 0` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外另哈希 `CLAIM.md`，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §67 与共享矩阵末节。
