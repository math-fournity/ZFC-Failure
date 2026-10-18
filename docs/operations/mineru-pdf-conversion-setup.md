# HoTT repo：MinerU 项目本地补充

> **身份**：项目本地补充（`PROJECT_LOCAL_SUPPLEMENT`），不是本机 MinerU 配置的权威 owner。
> 2026-10-18 起，本机权威收敛到 home README 体系：
>
> - 索引：`~/README.md` 0066
> - owner 文档：`~/Documents/readme-local/1066-mineru/mineru-pdf-conversion-setup.md`
> - skill 行为：`~/.agents/skills/mineru/SKILL.md`（独立 repo `~/.agents`）
>
> 本文件只保留 **HoTT repo 自己的 MinerU 产物清单、验证命令和项目内约定**，不复制通用配置正文。

## 1. 项目内约定

- 本 repo 的任何 PDF/扫描件/Word/PPT 等文档读取或转 Markdown，一律走 `mineru` skill。
- **大 PDF（>200 页）必须用 `~/.agents/skills/mineru/scripts/parse_large.py` 按页范围分片请求，禁止物理拆分 PDF 文件。**
- 直接调 CLI 时 `--limit` 默认约 28872 字符会静默截断，必须显式传大值（`parse_large.py` 已内置 `1e8`）。
- `sources/` 快照只读；解析产物写入各自的 `mineru_md/` 或项目约定的证据目录，不覆盖原始来源。
- 运行收据与来源哈希按本 repo 的证据纪律保存；解析成功不等于数学结论或来源覆盖完成。

## 2. 项目内已有 MinerU 产物

| 位置 | 内容 | 验证命令 |
|---|---|---|
| `audit/literature/PDF-to-Markdown-20260914/` | 16 个经典文献 PDF + Markdown | 见该目录 README.md |
| `audit/literature/LIT-CLASSICS-001/mineru/` | 首批 12 个 MinerU 内容组导入 | `python3 -B scripts/audit/import_lit_classics_mineru.py --verify-only` |
| `audit/literature/LIT-CLASSICS-001/mineru-supplement/` | 补充 3 个内容组 | `python3 -B scripts/audit/import_lit_classics_mineru_supplement.py --verify-only` |
| `audit/literature/LIT-CLASSICS-001/mineru-rosser-primary/` | Rosser 1936 原文 | `python3 -B scripts/audit/import_lit_classics_rosser_primary.py --verify-only` |
| `docs/罗素解决考古/搜索原始响应-20261017/mineru_md/` | 9 份罗素考古 PDF 的 MinerU Markdown | `python3 -B scripts/check_mineru_md.py` |
| `docs/罗素解决考古/搜索原始响应-20261017/wholebook/` | enderton1977（289 页）与 kunen1980（325 页）的**整册** MinerU Markdown（页范围分片、未拆源文件）；旧 `_split/` + `mineru_md/*_part0*.md` 分卷路径标为历史产物 | `wholebook/整册重跑比对-20261018.md` 第 2/3 节 + 5 份 `*.run.json` receipt |
| `docs/罗素解决考古/搜索原始响应-20261017/q2-solved-溯源/mineru_md/` | kanamori-cantor-cohen / linsky / arxiv 三份的第二管线 Markdown | `q2-solved-溯源/mineru_md/双管线比对-20261018.md` |
| `docs/芝诺解决考古/搜索原始响应-20261017/zeno-溯源/candidates/mineru_md/` | 柯西 1821 S2 定向页（Introduction + 印刷页 123 定义句页） | `candidates/sha256.txt` + `来源/Z01-柯西1821-原文措辞核验-ZQ1-20261018.md` §3 |
| `scripts/check_mineru_md.py` | MinerU 输出完整性自检脚本 | — |
| `scripts/audit/import_lit_classics_mineru*.py` | MinerU 导入脚本 | — |


## 3. 与项目治理的关系

- 本文件是 `docs/operations/README.md` 登记的项目本地入口。
- 本机通用配置变更只改 owner 文档，不在本文件复制一份。
- 若项目需要新的通用 MinerU 约定，先判断它是否属于本机通用事实；属于则更新 owner，属于项目特有则留在本文件。
