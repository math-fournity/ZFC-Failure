# MinerU PDF→Markdown 自动化配置（2026-10-17 建立）

本文档记录 MinerU CLI 的四客户端共享配置、API Key 对接、大 PDF 自动分片转换的完整设置。任何接手 AI 从这里可以找到：工具在哪、怎么调用、Key 怎么配、大文件怎么切、各平台怎么接入。

## 1. 为什么存在

研究过程中需要把大量学术 PDF（Enderton 1977、Kunen 1980、Gödel 1931 等）转成 Markdown 供 AI 阅读。MinerU App 的桌面 GUI 可以做到，但 AI 客户端需要命令行接口。MinerU CLI (`mineru`) 是与 App 同引擎、同云端端点的命令行工具，但开箱即用有几个坑（server 依赖、token 混淆、200 页上限、字符截断），本文档记录的是 2026-10-17 诊断并解决这些问题后的稳定配置。

## 2. 架构总览

```
~/.agents/skills/mineru/          ← 真源 skill（四家共用）
├── SKILL.md                      ← 统一 skill 定义（11.7 KB）
├── scripts/
│   ├── parse_large.py            ← 大 PDF 自动分片脚本（5.6 KB）
│   └── keepalive.sh              ← server 保活脚本
├── references/
│   ├── official-manual.md        ← 官方手册（37.5 KB）
│   └── output-schema.md          ← App 输出目录契约

~/.claude/skills/mineru    → symlink → ../../.agents/skills/mineru
~/.codex/skills/mineru     → symlink → ../../.agents/skills/mineru
~/.zcode/skills/mineru     → symlink → ../../.agents/skills/mineru
~/.codeartsdoer/evolve/skill_evolution_workspace/generated-skills/mineru/
                           → 真实目录 + 文件级 symlink（CodeArts 不支持目录 symlink）
```

**设计原则**：真源只有一份（`~/.agents/skills/mineru/`），四家客户端通过 symlink 或文件级 symlink 共享。修改时只改真源，所有客户端自动生效。不要 fork 出 per-client 变体。

## 3. 环境与路径

| 项目 | 值 |
|---|---|
| `mineru` 可执行文件 | `/Volumes/D/toolchain-cache/mineru-venv/bin/mineru` |
| `mineru-kit` 可执行文件 | `/Volumes/D/toolchain-cache/mineru-venv/bin/mineru-kit` |
| 版本 | MinerU 4.0.8, Python 3.11.15, Apple Silicon |
| Server | `python -m mineru.doclib.app` daemon, UDS `~/.mineru/doclib.sock` |
| MinerU Home | `~/.mineru`（`models/`, `doclib.db`, `config.yaml`） |
| 云端端点 | `https://mineru.net/api` |
| Desktop App | `/Applications/MinerU.app`（Electron，同云端端点） |
| App 输出目录 | `/Users/aurolafly/MinerU` |

**重要**：`mineru` 不在 PATH 上。每次使用前先设别名：
```bash
M=/Volumes/D/toolchain-cache/mineru-venv/bin/mineru
```

**外部卷警告**：CLI 在 `/Volumes/D` 上。如果 `/Volumes/D` 未挂载，CLI 不可用（App 仍可用，它自包含）。此时告知用户，不要尝试替代安装。

## 4. API Key 配置

官方 API Key 已于 2026-10-17 配置，存储在 `~/.mineru/doclib.db`（SQLite，`config` 表，行 `parse_server.remote.api_key`），文件权限 600。

- Key 将账户提升为 `access_level: registered`
- **不放宽 200 页/文件上限**——`--pages 1-250` 在 registered 下仍报 `page_limit_exceeded`
- 因此 `parse_large.py` 分片对大书是**强制的**，有无 Key 都一样
- 重新设置：`mineru config set parse_server.remote.api_key '<KEY>'`（值内联传入，不要 echo 或落盘到文档）

**授权边界**（用户 2026-10-17）：普通非敏感文档默认走 `--remote` 云端解析，与 App 行为一致，无需逐文件确认。对敏感文档（法律/医疗/财务/个人/机密）先问用户。

## 5. Server 保活机制

**硬前提**：所有 `mineru` 命令（包括 `--remote`）都依赖本地 doclib server（`~/.mineru/doclib.sock`）。Server 没跑，所有命令统一报 `{"error":{"code":"server_not_running"}}`。

已安装 launchd 保活：
- plist: `~/Library/LaunchAgents/ai.mineru.doclib.keepalive.plist`
- 脚本: `~/.agents/skills/mineru/scripts/keepalive.sh`
- 行为: 登录时自动启动，每 60 秒检查一次，server 挂了自动拉起
- 日志: `~/.mineru/logs/keepalive.out.log` / `keepalive.err.log`

手动操作：
```bash
launchctl list | grep mineru              # 检查状态
launchctl kickstart -k gui/$(id -u)/ai.mineru.doclib.keepalive  # 重启保活
"$M" server status --json                 # 检查 server
"$M" server start                         # 手动启动 server
```

**不要随意 stop/restart server**——App 和 CLI 共存，`server stop` 会中断进行中的 CLI 任务。

## 6. 大 PDF 自动分片转换

### 6.1 为什么需要分片

云端服务对单文件有 200 页上限。`--pages A-B` 只上传该页范围，绕过此限制。`parse_large.py` 自动按 chunk 分片请求、拼接 Markdown，无需物理切割 PDF。

### 6.2 使用方法

```bash
S=~/.agents/skills/mineru/scripts
python3 "$S/parse_large.py" "big-book.pdf" -o ~/MinerU/big-book --chunk 150 --wait 600
# → ~/MinerU/big-book/big-book.md（全部页面合并，页码标记连续）
```

参数：
| 参数 | 默认 | 说明 |
|---|---|---|
| `<pdf>` | — | PDF 文件路径（必填） |
| `-o/--output` | `/tmp/mineru-large/<basename>` | 输出目录 |
| `--chunk` | 150 | 每片页数 |
| `--wait` | 600 | 每片最大等待秒数 |
| `--tier` | None（server 默认 standard） | flash/basic/standard/advanced |
| `--local` | False | 用本地 flash 而非云端 |
| `--force` | False | 忽略解析缓存 |
| `--limit` | 100,000,000 | 每片字符上限（见下方坑） |

### 6.3 验证案例

289 页的 `enderton1977.pdf` 端到端验证：289/289 页完整解析，输出 642 KB Markdown，所有页码标记连续。

## 7. 已知坑与解决方案

| 坑 | 症状 | 解决 |
|---|---|---|
| **`--limit` 默认截断** | 默认只有 ~28872 字符（约 19 页），静默截断 | 显式 `--limit 100000000`；`parse_large.py` 已内置此修复 |
| **200 页/文件上限** | `--pages 1-250` 报 `page_limit_exceeded` | 用 `parse_large.py` 分片，chunk ≤ 150 |
| **`server_not_running`** | 所有命令报此错 | launchd 保活已安装；手动 `"$M" server start` |
| **`internal_error`** | 临时云端错误 | `parse_large.py` 自动重试 3 次；手动重试即可 |
| **`mineru-kit parse -p all`** | 报 `invalid page_range format`（bug） | 用 `mineru parse --pages all` 代替 |
| **`--wait 60` 默认太短** | 大块超时 | 显式 `--wait 600` |
| **三个 token 混淆** | App token / MCP JWT / API Key 互相不兼容 | 只用官方 API Key；App 的 `client_api_token` 被 API 拒绝；MCP JWT 已过期 |

## 8. 各客户端接入详情

### Claude Code
- 入口: `~/.claude/skills/mineru` → 目录 symlink → `../../.agents/skills/mineru`
- Skill 在会话启动时加载，`SKILL.md` 的 frontmatter `description` 决定触发匹配

### Codex
- 入口: `~/.codex/skills/mineru` → 目录 symlink → `../../.agents/skills/mineru`
- 同 Claude Code 的加载机制

### ZCode
- 入口: `~/.zcode/skills/mineru` → 目录 symlink → `../../.agents/skills/mineru`
- 同上

### CodeArts
- 入口: `~/.codeartsdoer/evolve/skill_evolution_workspace/generated-skills/mineru/`
- **不支持目录 symlink**，用真实目录 + 文件级 symlink：
  - `SKILL.md` → symlink → `/Users/aurolafly/.agents/skills/mineru/SKILL.md`
  - `scripts/` → symlink → `/Users/aurolafly/.agents/skills/mineru/scripts`
  - `references/` → symlink → `/Users/aurolafly/.agents/skills/mineru/references`
- Skill 列表在**会话启动时缓存**，新 skill 需重启会话才出现
- `.usage.json` 是注册表

## 9. 日常使用速查

```bash
# 0. 设别名
M=/Volumes/D/toolchain-cache/mineru-venv/bin/mineru

# 1. 确认 server 在跑
"$M" server status --json

# 2. 普通文档（≤200 页）
"$M" parse "paper.pdf" --remote --json

# 3. 大文档（>200 页）
python3 ~/.agents/skills/mineru/scripts/parse_large.py "big-book.pdf" -o ~/MinerU/big-book

# 4. 读取已解析文档的指定页
"$M" read "doc:ab12cd3/tier:standard/page:11" --limit 12000 --json

# 5. 导出完整 App 级产物（zip: markdown + images + JSON）
K=/Volumes/D/toolchain-cache/mineru-venv/bin/mineru-kit
"$K" parse "paper.pdf" -o /tmp/mineru-export --format zip --remote

# 6. 检查配额
"$M" usage --json
```

## 10. 项目内已有 MinerU 产物

| 位置 | 内容 | 验证命令 |
|---|---|---|
| `audit/literature/PDF-to-Markdown-20260914/` | 16 个经典文献 PDF + Markdown | 见该目录 README.md |
| `audit/literature/LIT-CLASSICS-001/mineru/` | 首批 12 个 MinerU 内容组导入 | `python3 -B scripts/audit/import_lit_classics_mineru.py --verify-only` |
| `audit/literature/LIT-CLASSICS-001/mineru-supplement/` | 补充 3 个内容组 | `python3 -B scripts/audit/import_lit_classics_mineru_supplement.py --verify-only` |
| `audit/literature/LIT-CLASSICS-001/mineru-rosser-primary/` | Rosser 1936 原文 | `python3 -B scripts/audit/import_lit_classics_rosser_primary.py --verify-only` |
| `docs/罗素解决考古/搜索原始响应-20261017/mineru_md/` | 9 份罗素考古 PDF 的 MinerU Markdown | `python3 -B scripts/check_mineru_md.py` |
| `scripts/check_mineru_md.py` | MinerU 输出完整性自检脚本 | — |
| `scripts/audit/import_lit_classics_mineru*.py` | MinerU 导入脚本 | — |

## 11. 安全注意事项

- `~/.mineru/doclib.db` 权限已收紧至 600（原 644，其他用户可读 key）
- API Key 明文出现在对话中，建议轮换
- 不要在文档、仓库、memory 中写入 Key 值
- `--remote` 会将文件上传到云端——敏感文档先确认