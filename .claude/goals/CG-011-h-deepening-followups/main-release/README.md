# main 发布核验（release `main-20261022-h-deepening`）

> Claude Code 会话 a15f4b3b，2026-10-22 起。授权：研究发起人 2026-10-22“我授权了，你全部做完。”，覆盖合并 `dev`、发布 `main`、把 10-21/22 的证明包收进发布清单。
> 发布清单：`scripts/release/main-release-spec.json`，58 个包、215 个运行，四个单元 UR、A7、ZFC1、H（H 是 CG001-C-436..C-453，C-439 保留未用）。

## 全量重放（2026-10-22）

- 文件：`FULL-REPLAY-20261022.json`（逐运行结果），`full-replay-20261022.log`（控制台输出与计时）。
- 对象：试生成树，从试提交 `676c892d` 生成，它的树与 `claude/012-opus-w8` 上的 `54d0f5c45` 相同。报告里的 `root` 是当时 scratchpad 里的路径，那个目录不保留。
- 命令：`bash scripts/release/replay_main_local.sh <树> <报告>`。它调用发布树里的 `tools/replay.py --jobs 4`，本机工具链路径写在脚本里。
- 结果：215/215 PASS（Agda 151、带库的 Lean 47、Lean 17）。每个运行的结局类别与规范化输出都与收据一致。墙钟 49 分 18 秒，各运行耗时相加 3.27 小时；README 的“逐个跑完约需三小时”按这个写。

## 为什么这次重放覆盖最终发布

最终的 `main` 从合并后的 `dev` 生成。与重放过的试生成树相比，下面这些会不同：

- CLAIMS（C-446 行的日期注、来源提交戳）；
- 各 README（来源提交戳、重放时长一句）；
- C-446 包的 `README.md`；
- `RELEASE-MANIFEST.json`。

这些都不是任何运行的输入：运行的源清单不含它们，`tools/replay.py` 也不读它们。证明源文件与运行收据一个都不变，比较结果写在下一节。

## 最终核验

（发布后补：合并提交、`main` 提交、独立重建与推送树的逐字节比较、与重放树的差别清单。）
