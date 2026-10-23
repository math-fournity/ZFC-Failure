# sst-2ltt-reverse：严格的一版经纤维回到按层的一版（CG001-C-453）

> C-452 没做的反方向（CG-011 完成门 G8 的后续）。本机会话 a15f4b3b（Opus 5.5），2026-10-22，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题与没做的见 `CLAIM.md`。

## 这个包做了什么

| | 本包 |
|---|---|
| 经纤维的按层一版 | 每个严格的半单纯类型 S（C-448），对每个外层 n 给出 `Lv n : SST n`（C-450）：第 m+1 层取“边界恰为给定壳”的那些单纯形 |
| 严格的自然性 | 单纯形到它的边界的映射与取面严格可换（外层相等），对一切 n。纤维的路径都来自外层相等，外层 UIP 把相干收住 |
| 原样取回 | 交回严格的一版（C-452），第 n+1 层就是 S 的第 n+1 层（内层等价），对一切 n；用在 `toStrict Y` 上就是另一个来回 |

**一句人话**：C-452 说内层逐层付清的东西放得进外层；本包说外层的严格结构每一层都能在内层逐层付清，再交回去，每一层都回到原处。两边在每一个有限阶段上一致；C-450 说的“合成一座塔要一座桥”，是唯一剩下的差别。

**没做的**：类型族这一层的认同（要内层单价性）；第 0 层（增广）不取回；低于顶层的各层没写成一般命题。

## 文件

| 文件 | 内容 |
|---|---|
| `SemisimplicialReverse.agda` | (1)–(3) 与 `qual-C453` |
| `WrongNaturalityDefinitional.agda` | 负控制：第 2 层的自然性按定义成立 |
| `WrongAugmentationBack.agda` | 负控制：来回一趟连增广也取回 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261022-CG001-SST-2LTT-REVERSE-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261022-CG001-SST-2LTT-REVERSE-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §80 要先在。

## 运行（2026-10-22）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261022-CG001-SST-2LTT-REVERSE-01` | `MP-CG001-SST-2LTT-REVERSE-001` | 接受 | 0（92 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261022-CG001-SST-2LTT-REVERSE-NEG-01` | `MP-CG001-SST-2LTT-REVERSE-NEG-001` | 拒绝 | 42：`UnequalTerms` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261022-CG001-SST-2LTT-REVERSE-NEG-02` | `MP-CG001-SST-2LTT-REVERSE-NEG-002` | 拒绝 | 42：`UnequalTerms` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与十三个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §80 与共享矩阵末节。

一处 Agda 细节：`lamTh` 的隐式参数（面的个数与类型族）在目标类型里推不出来（`ΠTh` 不是单射），要显式写 `{m = …} {k = …} {P = …}`。
