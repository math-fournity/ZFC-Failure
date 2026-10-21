# naming-conservative：给“已经完成的东西”起名，在一阶集合论里一分钱不花（CG001-C-437）

> 研究发起人 2026-10-19 目标的第 2 问，ZFC 一侧（HoTT 一侧是 `../completion-cost/`，C-436）。本机会话 91beaf35（012-Opus），Opus 5.5，2026-10-21；独立 worktree `claude/012-opus-w8`。精确命题、读法与禁止外推见 `CLAIM.md`。

## 这个包做了什么

在 Foundation 的 𝗭𝗙𝗖 里，只要 T 证明“有东西满足 φ”，给它起一个新名字 ⋆、加上“⋆ 满足 φ”，旧语言里就一句定理也不会多出来（保守扩张）。T 再证明“至多一个”，每个模型就恰有一种方式解释这个名字，去掉名字模型原样还在。ω 是实例：它的存在来自无穷公理。

两个前提都是必要的：给“x ≠ x”起名会证出 ⊥；给“x = x”起名仍保守，但名字在每个模型里都不止一个意思。

## 文件（按编译次序）

| 文件 | 内容 |
|---|---|
| `GodelQ/Naming/NamingConservative.lean` | 扩张语言、命名理论、模型扩张；(1) 保守、(2) 唯一扩张；(3) ω；(4)(5) 两个前提各自承重 |
| `GodelQ/Naming/QualificationNaming.lean` | 命题对照 `qual_C437` |
| `GodelQ/Negative/WrongNamingWithoutExistence.lean` | 负控制：拿 ω 的存在去顶替“x ≠ x”的存在 |
| `GodelQ/Negative/WrongNamingWithoutUniqueness.lean` | 负控制：拿 ω 的唯一去顶替“x = x”的唯一 |

没有复制别的包的模块；只依赖 Foundation 的 `SetTheory.Z.Z`、`SetTheory.ZF.Model`、`SetTheory.Universe`。

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-NAMING-CONSERVATIVE-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-NAMING-CONSERVATIVE-NEG-01`、`-NEG-02`。开发期编译用 `.claude/goals/CG-007-formalization-completion/tools/devbuild.py`（不进收据）。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-NAMING-CONSERVATIVE-01` | `MP-CG001-NAMING-CONSERVATIVE-001` | 接受 | 0（13.8 秒，stderr 0 B；19 条公理报告都在 `propext`、`Classical.choice`、`Quot.sound` 之内） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-NAMING-CONSERVATIVE-NEG-01` | `MP-CG001-NAMING-CONSERVATIVE-NEG-001` | 拒绝 | 1：`WrongNamingWithoutExistence.lean:20:35` 类型不合 | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-NAMING-CONSERVATIVE-NEG-02` | `MP-CG001-NAMING-CONSERVATIVE-NEG-002` | 拒绝 | 1：`WrongNamingWithoutUniqueness.lean:21:52` 类型不合 | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §65 与共享矩阵末节。`CLAIM.md`、两份固定记录（`LEAN_TOOLCHAIN.json`、`MATHLIB_CLOSURE.json`）与源文件进入了收据的源清单哈希，此后不得改动；更正写进 `REVISIONS.md`。
