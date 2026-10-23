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

## 最终核验（2026-10-23）

逐项记录在 `MAIN-RELEASE-VERIFICATION.json`。

- **合并**：`claude/012-opus-w8`（`a8bdaab59`）合并进 `dev`，合并提交 `8a41e1f8b`。冲突只在只追加的总索引 003、005，两边都保留，`dev` 的在前。推送 `5ca3a26b2..8a41e1f8b`，快进，不强推。
- **生成**：从 `8a41e1f8b` 生成，`BUILT`，1697 个文件、215 个运行（接受 86）。与上一版 `main`（`ad654c8ab`）相比没有删除，新增 68 个路径（17 个包及其 51 份收据），改动 13 个文件（六种语言的 CLAIMS 与 README，以及清单）。
- **上一版可复现**：用 `dev` `5ca3a26b2` 自己的生成脚本重建，与 `origin/main` 逐字节相同（1334 个文件），所以上一版没有手改，不会丢东西。
- **独立重建**：从 `8a41e1f8b` 再生成一次，与提交后的 `main`（`9e21cd9ad`）逐字节相同（1697 个文件）。
- **重放的覆盖**：重放树与发布树有 14 个路径不同，就是上面 13 个文件加 C-446 包的 `README.md`。215 份运行的源清单里一个都没有出现，`tools/replay.py` 相同。
- **推送**：`main` `ad654c8ab..9e21cd9ad`，快进，不强推。
- **没动的**：主检出 `/Volumes/D/HoTT_AI_HANDOFF_20260911`（分支 `dev`，干净，停在 `5ca3a26b2`）没动，在那里运行 `git merge --ff-only origin/dev` 即可快进。临时 worktree `/Volumes/D/HoTT-worktrees/dev-merge-20261023`（分离在 `8a41e1f8b`）留着没删。

## 第二次发布（2026-10-23，release `main-20261023-h-deepening-c454`）

C-454 在上一次发布之后完成，`main` 少了 H 线的最后一个包。同一授权下补发。

- **输入**：`dev` `a640c4072`（发布清单加 C-454 的包与 3 个运行，CLAIMS 第 5 节加一行，四种译文的这一行由 Claude Opus 5.5 直接写）。
- **生成**：`BUILT`，1719 个文件、218 个运行（接受 87），单元 UR 84、A7 45、ZFC1 53、H 54。与上一版 `main`（`9e21cd9ad`）相比没有删除。新增 C-454 的包、它的 3 份收据与 `sst-2ltt-reverse/REVISIONS.md`；改动是六种语言的 CLAIMS 与 README、`sst-2ltt-reverse/README.md` 与清单。
- **重放**：新的 3 个运行用发布树里的 `tools/replay.py` 重放，3/3 PASS（`REPLAY-C454-20261023.json`）。其余 215 个运行与 10-22 全量重放过的逐字节相同。
- **独立重建**：从 `a640c4072` 再生成一次，与提交后的 `main` `5a8d02c0f` 逐字节相同（1719 个文件）。
- **推送**：`main` `9e21cd9ad..5a8d02c0f`，快进，不强推。

### 事故与恢复（照实）

- **经过**：第一次暂存时我手打了一个错的十位提交号，`git rev-parse` 失败，`&&` 链停在给输出目录变量赋值之前；分号后面的 `rsync -a $OUT/ <main-release>/` 照样执行。变量为空，它把根目录往 main-release worktree 里复制，直到 `/Volumes/D` 写满（剩 280 MiB）。
- **影响**：
  - rsync 只读源、不带 `--delete`，没有任何原文件被改或被删；main-release 的受跟踪文件没有变化，根目录下的链接都在。
  - 写满的那段时间里，同一卷上别的进程若要写盘会失败，本会话核不到。
- **恢复**：
  - 19 GB 的 `Applications` 副本移到内置盘，再送进废纸篓；废纸篓要研究发起人清倒才真正释放。
  - 同时复制出来的 5 个链接与 15 个空目录送进 `/Volumes/D` 的废纸篓，其中 `dev` 带着只读权限，先加写权限再移。
  - `/Volumes/D` 恢复到 23 GiB 可用；之后用 `set -euo pipefail` 与 `${VAR:?}` 守护的脚本重做，暂存树与生成结果逐字节相同，再提交。
- **教训**：复制、移动、删除命令里的路径变量一律写成 `"${VAR:?}"`；提交号用 `rev-parse --verify` 取，不手打；守护条件与危险命令之间不用分号。
