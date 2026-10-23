# sst-2ltt-identification：两版在类型族这一层回到原物（CG001-C-454）

> C-453 没做的一条（CG-011 完成门 G8 的后续）。本机会话 a15f4b3b（Opus 5.5），2026-10-23，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题与没做的见 `CLAIM.md`。

## 这个包做了什么

| | 本包 |
|---|---|
| 单价性的用法 | 一族类型沿一条路径相等，只要逐点等价（`famPathP`） |
| n = 1 | 只有点的半单纯类型交到严格的一版（C-452）再经纤维取回（C-453），得到的就是它自己：`SST 1` 里的内层路径 |
| n = 2 | 点与“点对上的边族”同样回到原物。边界映射按定义是“投到壳，再逐点换成纤维里的元素”；壳沿第 1 层的路径搬运，逐点算成 `uaβ` |
| 两个负控制 | 认同不按定义成立；严格的一版那一侧不按外层相等取回 |

**一句人话**：C-453 说两边在每个有限阶段逐层等价；本包在 n ≤ 2 把“等价”升成“相同”，即 `SST n` 里同一个元素。再往上要付的是相干：从 n = 3 起，搬运壳要一条与取面相容的同伦，外层 UIP 管不到它。

**没做的**：一般的 n；严格的一版那一侧的外层认同（内层单价性给不出外层相等）。

## 文件

| 文件 | 内容 |
|---|---|
| `SemisimplicialIdentification.agda` | (1)–(4) 与 `qual-C454` |
| `WrongIdentificationDefinitional.agda` | 负控制：n = 1 的认同按定义成立 |
| `WrongStrictOuter.agda` | 负控制：严格一侧的来回按外层相等就是原物 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261023-CG001-SST-2LTT-IDENTIFICATION-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261023-CG001-SST-2LTT-IDENTIFICATION-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §81 要先在。

## 运行（2026-10-23）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261023-CG001-SST-2LTT-IDENTIFICATION-01` | `MP-CG001-SST-2LTT-IDENTIFICATION-001` | 接受 | 0（93 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261023-CG001-SST-2LTT-IDENTIFICATION-NEG-01` | `MP-CG001-SST-2LTT-IDENTIFICATION-NEG-001` | 拒绝 | 42：`UnequalTerms` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261023-CG001-SST-2LTT-IDENTIFICATION-NEG-02` | `MP-CG001-SST-2LTT-IDENTIFICATION-NEG-002` | 拒绝 | 42：`UnequalTerms` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与十四个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §81 与共享矩阵末节。

两处做法，供往上推时参考：
- 证 n = 2 之前先写了一个 n = 1 的探针（6 秒），确认 `transport` 沿 `ua` 拼成的路径在壳上逐点算成 `uaβ`，`bd` 与“投影后逐点替换”按定义相等，再写 n = 2。
- 一族类型沿路径相等用 J 归到 refl 再 `ua`（`famPathP`），比直接拼 `toPathP` 短。
