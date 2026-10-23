# sst-2ltt-identification-all：对一切 n，两版在类型族这一层回到原物（CG001-C-455）

> C-454 没做的一般的 n（CG-011 完成门 G8 的后续）。本机会话 a15f4b3b（Opus 5.5），2026-10-23，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题与没做的见 `CLAIM.md`。

## 这个包做了什么

| | 本包 |
|---|---|
| 定理 | 对一切外层 N 与 `Y : SST N`：按层的一版交到严格的一版（C-452）再经纤维取回（C-453），就是 Y 本身，`SST N` 里的内层路径；沿它，边界映射就是壳上的恒等 |
| 怎么证 | 对 n 归纳，逐层建一条比较：路径、从边界映射到目标壳映射的比较路径，以及比较路径在区间每一点上与取面严格可换（外层相等） |
| 第 n+1 层 | 类型族路径是一个 Glue：时刻 i 取比较映射的纤维，终点粘上目标族；每个面的路由它自己的单纯形给出，面与面之间只用外层相等连起来；新的自然性由外层 UIP 收住 |
| 两个负控制 | 终点不粘目标族；认同写成外层相等 |

**一句人话**：C-453 说两边每个有限阶段逐层等价，C-454 在 n ≤ 2 把等价升成相同，本包对一切 n 升成相同。C-454 以为从 n = 3 起要一条外层管不到的同伦，其实不用：把自然性逐点写成外层相等，相干的价格就由外层的严格相等一次付清。外层与内层的差别只剩 C-450 的那座桥。

**更正**：C-454 的障碍分析不成立，三层更正写在 `../sst-2ltt-identification/REVISIONS.md`。

**没做的**：严格的一版那一侧（要外层相等，单价性给不出）；全部层的塔（要桥）。

## 文件

| 文件 | 内容 |
|---|---|
| `SemisimplicialIdentificationAll.agda` | 比较记录、逐层构造、定理与 `qual-C455` |
| `WrongFibreEnd.agda` | 负控制：类型族路径只取纤维，终点不粘目标族 |
| `WrongOuterIdentification.agda` | 负控制：认同是外层相等 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261023-CG001-SST-2LTT-IDENTIFICATION-ALL-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261023-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §82 要先在。

## 运行（2026-10-23）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261023-CG001-SST-2LTT-IDENTIFICATION-ALL-01` | `MP-CG001-SST-2LTT-IDENTIFICATION-ALL-001` | 接受 | 0（94 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261023-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-01` | `MP-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-001` | 拒绝 | 42：`UnequalTerms` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261023-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-02` | `MP-CG001-SST-2LTT-IDENTIFICATION-ALL-NEG-002` | 拒绝 | 42：`UnequalTerms` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与十四个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §82 与共享矩阵末节。

几处做法，供以后参考：

- **先探针后全文**：先用两个小探针确认两件事，再写全文：区间每一点上的外层相等（`(i : I) → a i ≡ᵉ b i`）能写，沿它逐点搬运一条 `PathP` 仍是 `PathP`；用 Glue 定义“时刻 i 的纤维、终点粘上目标族”，两端按定义正确。全文第一次就只剩隐式参数推不出（`appTh` 的族要显式写，`ΠTh` 不是单射）。
- **不要在类型族一层拼路径**：拼接（`∙`、`▷`）只放在每个面自己的那条路里，函数只依赖那一个单纯形；面与面之间只用外层相等。这样自然性就只要 `apᵉ` 与外层 UIP。
- 名字 `comp` 与 cubical 的原语冲突，改用 `faceAt`。
