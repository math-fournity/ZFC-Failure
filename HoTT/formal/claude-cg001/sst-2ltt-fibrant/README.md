# sst-2ltt-fibrant：两层里的可纤半单纯类型（CG001-C-450）

> CG-011 完成门 G8 的后续：C-448 写明阻塞的那一半，对每个外层 n 把前 n 层的半单纯类型全体做成内层类型。本机会话 a15f4b3b（Opus 5.5），2026-10-21，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题、读法、仍没做到的与禁止外推见 `CLAIM.md`。

## 这个包做了什么

| | 本包（C-450） | C-448 |
|---|---|---|
| 一层是什么 | 建在边界壳上的类型族；`SST n` 本身是**内层类型**（`Type₁`），对每个外层 n | 外层编号给出内层类型 `X n`；`SSTˢ` 是外层类型 |
| 取面与相干 | 壳上的取面；单位律与复合律是外层严格相等，对一切 n 证出；具体的面上相干的证明就是 refl | 面作用；相干是外层严格相等 |
| 内核实跑 | 边的壳是两个点，两个面取出它们；三角形的壳是三个点加三条边，端点对上 | 取面删分量；三条单纯恒等式 |
| 全部层 | 塔是外层记录；直接写成内层类型被拒；给一座从内层自然数到外层自然数的桥，塔就是内层类型 | —— |

**一句人话**：每一层都是 HoTT 那一侧的类型，付得起，在具体的面上一分不付；全部层合成一座塔，只在外层（相同只是事实的一层）存在。要它成为内层的一个对象，得把内层的自然数逐个当作外层的、已经完成的自然数来用（桥），而这一步按内层递归写不出（C-442 的 NEG-002）。

**怎么绕开 C-448 的阻塞**：不建一般的“可纤”谓词与 Reedy 极限机制，而是把匹配对象（壳）直接写成内层类型：有限个面上的积用外层递归展开成内层的元组（`ΠTh`）。思路是 Herbelin（2015）加外层 UIP；“对外层的 n 构造前 n 层”是 Annenkov–Capriotti–Kraus–Sattler 两层类型论论文摘要里举的应用。不主张原创。

**写构造时踩到的两处 Agda 细节**（记下来，免得下次重踩）：
- `mutual` 块先查完全部签名再查定义，所以一个签名若要靠前面定义的化简（`snd X` 要求 `SST (sucˢ n)` 化成 Σ），就得改用前向声明，把签名排在它依赖的定义之后。
- 终止检查连类型里的调用也算，where 子句按以外层模式变量为参数的函数查。复合律面上那一步的类型若直接写 `res (sucˢ n)`，就像参数在变大，查不过；按 `res` 的定义展开成 `lamTh h₁`、`lamTh h₂`（两者按定义相等）就过了。

## 文件

| 文件 | 内容 |
|---|---|
| `SemisimplicialTwoLevel.agda` | (1)–(7) 与 `qual-C450` |
| `WrongTowerInner.agda` | 负控制：全部层的塔直接是内层类型 |
| `WrongEdgeEnd.agda` | 负控制：ε₀ 取出的是边的第 0 个点 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-SST-2LTT-FIBRANT-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-SST-2LTT-FIBRANT-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §77 要先在。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-SST-2LTT-FIBRANT-01` | `MP-CG001-SST-2LTT-FIBRANT-001` | 接受 | 0（89 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-SST-2LTT-FIBRANT-NEG-01` | `MP-CG001-SST-2LTT-FIBRANT-NEG-001` | 拒绝 | 42：`UnequalSorts`（`SSet₁ != Type`） | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-SST-2LTT-FIBRANT-NEG-02` | `MP-CG001-SST-2LTT-FIBRANT-NEG-002` | 拒绝 | 42：`MismatchedProjectionsError` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与十一个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §77 与共享矩阵末节。
