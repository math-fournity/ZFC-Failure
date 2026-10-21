# CG-010 的脚本（2026-10-21 从会话记录逐字恢复）

> 这些脚本当初只放在会话临时目录（`/private/tmp/…/scratchpad`），到 2026-10-21 已被系统清掉。全局 `~/.claude/CLAUDE.md` 第 9 条要求：得出结论的脚本必须落盘进仓库，不能只留在 `/tmp`。所以 2026-10-21 从本会话（91beaf35）的记录 `~/.claude/projects/-Volumes-D-HoTT-AI-HANDOFF-20260911/91beaf35-237d-4c5d-887c-cb72c58ccca2.jsonl` 里按工具调用的原文逐字取回，没有改写。
>
> 脚本里出现的 `$SP`、`sp` 是当时的临时目录，现在已不存在。要重跑，先把它换成一个新的空目录。

| 文件 | 当时做了什么 | 结论记在哪里 |
|---|---|---|
| `run_full_replay.py` | 在独立重建的 `main` 上，用发布出去的 `tools/replay.py` 全量重放 164 个运行（4 路并行）。工具链路径写在文件里，Lean 库目录从 `leanlib_args.txt` 读 | 164/164 PASS：研究 STATE 315 的 session `S-GOV-20261015-CLAUDE-CG010-MAIN-RELEASE/FULL-REPLAY.json`；`H5-发布自审-20261015.md` 第 7 节 |
| `leanlib_args.txt` | 上一个脚本读的 9 对 `--lean-lib <目录>`：Foundation `1fb01b72` 加 Mathlib `5ed29652` 的 8 个依赖包。原文件在临时目录，已丢；这里按当时 `grep` 打印的清单逐行重建 | 同上 |
| `make_snapshots.py` | 2026-10-15 夜，对 23 处有未提交内容的工作区，用临时索引加 `commit-tree` 写出快照提交。各工作区的 HEAD、索引、文件都不动；排除 `archive/objects.pack` 与 `外部资料/` 下的 zip | 22 个 `snapshot/20261015-*` 分支（已推送）；第 23 个（`AI对话录`）推送失败，见 `H5-补记-20261021.md` |
| `snapshot_testrun_rebuild.sh` | `HoTT-reaudit-testrun` 是稀疏检出，`make_snapshots.py` 第一次把被跳过的 43,748 个文件误记成删除（错误提交没推送）。这条命令只加它自己 `git status` 列出的 3 个文件，重做了快照 | `snapshot/20261015-reaudit-testrun` = `30974846` |
| `survey_dirty_worktrees.sh` | 10-15 夜盘点 45 处工作区与独立仓库的未提交内容（数量、大小、超大文件） | 快照范围；`工作台.md` 2026-10-15 夜的记录 |
| `scan_secrets_distinct.sh` | 对快照候选的 5,870 个文件扫疑似密钥，按命中字符串去重 | 唯一命中 `sk-fidelity-corrigendum-20260921` 是记录编号，误报（它早已在公开的 `dev` 上） |
| `opencode_lfs_equivalence.sh` | 比对 opencode 克隆的 18 个提交与 `dev` 历史开头 18 个提交：说明、时间、作者相同；树只差 `.gitattributes` 与 `archive/objects.pack`（原件对 LFS 指针） | `H5-补记-20261021.md` 第 1 节 |
| `lfs_object_on_github.sh` | 用 GitHub LFS batch 接口确认 `archive/objects.pack` 的对象（sha256 `3cdaeaf8…`，217,002,151 字节）在远端 | 同上 |
| `compare_dirty_with_snapshots.sh` | 2026-10-21 复检：各工作区现在的未提交文件，逐个与已有快照分支里的版本比对 | 同上第 4 节 |

带 `.sh` 的文件是当时的整条 Bash 命令，其中多数内嵌一段 Python。
