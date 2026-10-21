在本仓库执行 Claude goal CG-011（H 深化后续全部完成：研究发起人 10-21 认可 H 深化内容后，把 §6–§8、元层特征方案 §7 与第 1 问综合 §5 的后续工作全部做完）。开工和每次压缩或恢复后：先调用 goal-x Skill（resume CG-011），按 `.claude/goals/CG-011-h-deepening-followups/GOAL.md` 用 Read 重读闭包文件，写出恢复说明，再从 STATE 的“下一步”继续。每完成一个自然单元运行 `python3 ~/.claude/skills/goal-x/goalx.py checkpoint CG-011 --next "…"`。只按 GOAL.md 的完成门判断完成，局部任务完成不算。

完成条件：对话中出现 CG-011 的完成门审计表，每一门都有证据位置且判 PASS，随后出现 `goal-x close CG-011 status=COMPLETE` 的输出；或者出现阻塞报告并已执行 `close --status BLOCKED` 或 `--status PAUSED`。
