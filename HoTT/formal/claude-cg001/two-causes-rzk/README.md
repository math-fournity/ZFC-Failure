# two-causes-rzk：C-77 的追问程序与 C-430 的两个成因，在 Rzk 里重跑（CG001-C-456）

> CG-011 完成门 G10 结论 §2.3 的“什么时候值得再做”：“用公设引入单价性，把 C-77 的程序与 C-430 的两个成因移到 Rzk 里重跑。结论的身份要写成‘在单价性公设下’。”本机会话 a15f4b3b（Opus 5.5），2026-10-23，接手会话 91beaf35；独立 worktree `claude/012-opus-w8`。精确命题与没做的见 `CLAIM.md`。

## 这个包做了什么

| | 本包 |
|---|---|
| 第二个内核 | Rzk 0.11.3（Riehl–Shulman 单纯类型论的实现），与 Cubical Agda 是两套独立的实现 |
| 单价性 | 不写成公理：每条用到它的定理带参数 `univ : Univalence`；函数外延性、“等价的纤维可缩”在文件里由它推出 |
| C-77 | 追问程序按燃料语义写（Rzk 没有余归纳类型），(a)–(e) 逐条重得，都不带 `univ` |
| C-430 | 对任意收集：(1) 单价且 A ⟹ 没有有限层、永不停；(2) 单价且高度有上限 ⟹ 停；(3) 相同是事实 ⟹ 第 1 问停（不带 `univ`）；(4) 倒过来读 |
| 见证 | 宇宙、1+n 层落定者的汇集（集合的汇集不是集合、恰第 2 问停）、编号收集、成对收集；三次内核实跑 |
| 四个负控制 | 相同是事实却不停；高度有上限却不停；拿恒等冒充单价性；宇宙第 1 问就答 |

**一句人话**：C-430 说“永不停”有两个成因，单价性与 A。在 Rzk 里这两个成因都只能从外面递进来：单价性不内建，作为参数进来；A 的见证（EM 空间）要路径之间的路径构造子，Rzk 0.11.3 不支持，也作为参数进来。递进来之后，同一套推导由第二个内核逐步接受；而“相同是事实就第 1 问停”这一条，内核看得见它根本不要单价性。

**没做的**：A 的见证本身；C-79 (b) 一般的 n 的下界；C-78 (b)(d)。（2026-10-23 更新：后两项由 C-457 补齐，见 `../judges-gatherings-rzk/` 与本包 `REVISIONS.md`。）Rzk 有 `U : U`，所以确认的是推导，不是第二个基础的相容性。不进 main（main 的重放工具只认 Agda 与 Lean）。

## 文件

| 文件 | 内容 |
|---|---|
| `TwoCausesUnderUnivalence.rzk` | 全部定义与定理，约 1900 行、222 条定义；末尾 `TwoCauses`/`two-causes` 与 `Witnesses`/`witnesses` 把命题合成两个类型 |
| `WrongFactNever.rzk` | 负控制：编码 ℕ（相同是事实），燃料 0 没有答案 |
| `WrongBoundedNever.rzk` | 负控制：集合的汇集，燃料 1 没有答案 |
| `WrongBWithoutUnivalence.rzk` | 负控制：拿路径类型的恒等等价冒充编号收集的单价性 |
| `WrongUniverseAnswersEarly.rzk` | 负控制：宇宙燃料 1 交出 1 |
| `capture_runs.sh` | 捕获五个运行的命令（在仓库根目录跑：`bash …/capture_runs.sh main|neg1|neg2|neg3|neg4`） |
| `probes/` | 三个探针（不是收据）：燃料 200 撞上规范化器的深度上限；二维球面的路径之间的路径构造子被拒；`U : U` 被接受。`bash probes/run_probes.sh` 重跑，结果在 `probes/probe-results.txt` |

## 复现

```bash
python3 -B .claude/goals/CG-001-targeted-overview/tools/verify_cg001_run.py --run-dir HoTT/verification/runs/20261023-CG001-TWO-CAUSES-RZK-01 --rerun
```

负控制加 `--expect-rejected`，运行目录为 `20261023-CG001-TWO-CAUSES-RZK-NEG-01` 至 `-NEG-04`。核验器先查证据索引里的行，所以证据索引 §83 要先在。只想看内核接受，也可以直接跑：

```bash
/Volumes/D/HoTT-toolchain-cache/rzk-v0.11.3-macos-arm64/rzk typecheck HoTT/formal/claude-cg001/two-causes-rzk/TwoCausesUnderUnivalence.rzk
```

## 运行（2026-10-23）

| run | proof | 预期 | 退出 | 结果 | 重放 |
|---|---|---|---|---|---|
| `20261023-CG001-TWO-CAUSES-RZK-01` | `MP-CG001-TWO-CAUSES-RZK-001` | 接受 | 0（1.7 秒），stdout `Everything is ok!` | KERNEL_ACCEPTED_WITH_SCOPE | PASS_WITH_SCOPE，EXACT_EXIT_STDOUT_STDERR_MATCH |
| `20261023-CG001-TWO-CAUSES-RZK-NEG-01` | `MP-CG001-TWO-CAUSES-RZK-NEG-001` | 拒绝 | 1：内核算出 `just 1` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261023-CG001-TWO-CAUSES-RZK-NEG-02` | `MP-CG001-TWO-CAUSES-RZK-NEG-002` | 拒绝 | 1：内核算出 `just 2` | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261023-CG001-TWO-CAUSES-RZK-NEG-03` | `MP-CG001-TWO-CAUSES-RZK-NEG-003` | 拒绝 | 1：要成员之间的等价，给的是路径类型自身 | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |
| `20261023-CG001-TWO-CAUSES-RZK-NEG-04` | `MP-CG001-TWO-CAUSES-RZK-NEG-004` | 拒绝 | 1：内核算出 nothing | KERNEL_REJECTED | NEGATIVE_CONTROL_REJECTED_AS_EXPECTED，精确重放 |

源清单除目标文件与工具链记录外另哈希 `CLAIM.md`，此后不得改动；更正写进 `REVISIONS.md`。输出里的路径都是相对路径，所以换一个检出位置也能精确重放。校验输出在 `.claude/goals/CG-001-targeted-overview/verification/` 下，与运行同名；索引在同一目标的 `证据索引.md` §83 与共享矩阵末节。

几处做法，供以后参考：

- **单价性作参数，不作公理**：捕获工具与核验器都拒绝 `#postulate`。把单价性写成每条定理的参数，结论的身份不变（“单价性 ⟹ …”），收据仍是无公理的，而且哪条定理不带这个参数，内核就已经证明它不用单价性。
- **用单价性绕开半伴随引理**：“等价的纤维可缩”通常要一段半伴随的路径代数；有了单价性，任何等价都是某条路径的搬运，对路径归纳就到了恒等映射，纤维是基点路径空间。函数外延性的 Voevodsky 论证也走这条路。
- **Rzk 的几个坑**：`×` 只给立方体用，类型的积要写 `Σ (_ : A) , B`；`x = y → …` 要加括号写成 `(x = y) → …`；一条定义的 `\ A B →` 开头会被算进“元前缀”，部分应用会出警告，写成 `\ A B → f univ A B` 就没有了；注释里不能出现 `uses (`（核验器把它当 Rzk 的 section 变量标记拒掉，例如“causes (”就会撞上）。
- **规范化器有深度上限**：这条程序燃料 150 能实跑，200 报 “maximum depth reached”（探针 `probes/FuelDepthLimit.rzk`）。所以宇宙的内核实跑用 150，不照搬 Agda 的 1000。
