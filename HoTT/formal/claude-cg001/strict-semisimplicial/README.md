# strict-semisimplicial：两层里的无穷相干（CG001-C-448）

> 目标包 CG-011 完成门 G8：两层类型论里，用外层自然数按层定义内层的半单纯结构。本机会话 a15f4b3b（Opus 5.5），2026-10-21，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题、读法、阻塞与禁止外推见 `CLAIM.md`。

## 这个包做了什么

| | 外层（严格相等，相同是事实） | 内层（路径，相同有结构） |
|---|---|---|
| 半单纯结构 | 外层编号按层给出内层类型，面映射与相干全是严格相等，所有层一次给出（`SSTˢ`） | 同样的相干要用路径陈述 |
| 实例 | 任何内层类型的顶点元组；取面就是删掉分量；单纯恒等式按定义成立 | —— |
| 相干的相干 | 都是事实：任何两条相干证明都相等 | 见证本身是数据：圆上从恒等到恒等，refl 与 rotLoop 是两个不同的同伦 |

**阻塞**：对每个外层 n，把“n 维截断的半单纯类型全体”做成一个内层（可纤）类型，要有限逆范畴上 Reedy 极限可纤这套机制。Agda 的 `--two-level` 没有现成的，本包没有建。所以 G8 记为严格的一版做成、可纤的一版阻塞。

## 文件

| 文件 | 内容 |
|---|---|
| `StrictSemisimplicial.agda` | (1)–(5) 与 `qual-C448` |
| `WrongInnerCoherenceFlat.agda` | 负控制：内层圆上的两个同伦相同 |
| `WrongFaceIdentity.agda` | 负控制：不成立的单纯恒等式 |
| `capture_runs.sh` | 捕获三个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2`） |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261021-CG001-STRICT-SEMISIMPLICIAL-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261021-CG001-STRICT-SEMISIMPLICIAL-NEG-01`、`-NEG-02`。核验器先查证据索引里的行，所以证据索引 §75 要先在。

## 运行（2026-10-21）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261021-CG001-STRICT-SEMISIMPLICIAL-01` | `MP-CG001-STRICT-SEMISIMPLICIAL-001` | 接受 | 0（88 秒，stderr 0 B） | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261021-CG001-STRICT-SEMISIMPLICIAL-NEG-01` | `MP-CG001-STRICT-SEMISIMPLICIAL-NEG-001` | 拒绝 | 42：`x != rotLoop x i` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261021-CG001-STRICT-SEMISIMPLICIAL-NEG-02` | `MP-CG001-STRICT-SEMISIMPLICIAL-NEG-002` | 拒绝 | 42：两个嵌入不同 | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外，另哈希 `CLAIM.md` 与十个被导入的包源文件，此后不得改动；更正写进 `REVISIONS.md`。捕获工具在收据里写的 `audit_session` 是它的固定默认值；真实会话写在 `audit_notes` 里。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §75 与共享矩阵末节。
