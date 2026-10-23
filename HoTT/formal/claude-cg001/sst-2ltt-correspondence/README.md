# sst-2ltt-correspondence：按层的一版交到严格的一版（CG001-C-452）

> C-450 的两条续作（CG-011 完成门 G8 的后续）。本机会话 a15f4b3b（Opus 5.5），2026-10-22，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题、更正与没做的见 `CLAIM.md`。

## 这个包做了什么

| | 本包 |
|---|---|
| 两版之间的对应 | 一个方向：每个按层的半单纯类型（C-450，内层）给出一个严格的半单纯类型（C-448，外层）。k 个顶点的单纯形取作 k 顶点单纯形上的前 n 层数据，取面就是 `res`，相干就是 `resId`、`resComp` |
| 全空间 | k ≤ n 时，前 n 层数据就是 k 个顶点的单纯形连同它所有的面：两层的例子里，第 2 层的全空间是边连同两端，从一条边取面得到它的端点 |
| 余骨架 | k > n 时，单纯形只由边界决定：同一个例子在第 3 层的“三角形”就是三角形的壳 |

**一句人话**：内层一层一层付清的东西（C-450），原样放进外层那个“所有层一次交出”的严格结构（C-448）里，什么都不丢。反过来，从严格的一版回到按层的一版，要经纤维再证等价，本包没做。

**顺带的更正**：C-450 把“全空间上的取面”记为没写出，其实已在：k ≤ n 时的 `Sh n Y k` 就是全空间，`res` 就是全空间上的取面。更正写在 `../sst-2ltt-fibrant/REVISIONS.md`。

## 文件

| 文件 | 内容 |
|---|---|
| `SemisimplicialCorrespondence.agda` | (1)–(3) 与 `qual-C452` |
| `WrongCoskeletonFiller.agda` | 负控制：余骨架的三角形另带一个填充 |
| `WrongNaiveInverse.agda` | 负控制：逐层照抄的反方向按定义就是逆 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261022-CG001-SST-2LTT-CORRESPONDENCE-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261022-CG001-SST-2LTT-CORRESPONDENCE-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §79 要先在。

## 运行（2026-10-22）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261022-CG001-SST-2LTT-CORRESPONDENCE-01` | `MP-CG001-SST-2LTT-CORRESPONDENCE-001` | 接受 | 0（90 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261022-CG001-SST-2LTT-CORRESPONDENCE-NEG-01` | `MP-CG001-SST-2LTT-CORRESPONDENCE-NEG-001` | 拒绝 | 42：`UnequalTerms` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261022-CG001-SST-2LTT-CORRESPONDENCE-NEG-02` | `MP-CG001-SST-2LTT-CORRESPONDENCE-NEG-002` | 拒绝 | 42：`UnequalTerms` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与十二个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §79 与共享矩阵末节。

一处 Agda 细节：总记录里若有一个抽象字段 `strict`，其余字段类型里的 `X (strict …)` 不会化简，具体的元组就对不上；实例字段直接写 `toStrict`。
