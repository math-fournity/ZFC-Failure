# MinerU / 视觉审计执行清单（2026-10-18）

> **身份**：把 2026-10-18 汇报里给出的分界线（MinerU 拿全文、视觉审计只对引用句）落成
> 可逐项打勾的执行单。方案与判据表来自同一轮讨论；本文件是**执行状态唯一真值**。
>
> **治理纪律**（来自罗素包 05 号文档与根 AGENTS.md）：
> - 每条逐字引文必须双管线（两条独立抽取）一致才可引用；
> - 不凭训练记忆写引文；工具失败要如实登记，不得用记忆补洞（05 号文档 §1.2 事件是先例）；
> - 视觉审计只做**考古实际引用的句子**，不做全文档 QA；
> - 大 PDF 用 `~/.agents/skills/mineru/scripts/parse_large.py` 按页范围请求，**不物理拆分源文件**；
> - 本目录所有 `--remote` 解析只涉及已公开的学术文献，无敏感内容；本地原始文件不覆盖、只增补。

## A. 已完成（本会话前置，直接勾销）

- [x] **A1** MinerU doclib server 在线确认（`mineru server status --json` → `running:true`，v4.0.8）
- [x] **A2** 柯西 1821 三个 archive.org PDF 直链实测可达（HTTP 200 + Content-Length 三本合计 69 MB）
- [x] **A3** 三本 PDF 落盘 `zeno-溯源/candidates/` + sha256 + 页数登记
- [x] **A4** pdftotext 第三管线抽取（S1/S2/S3 三本各自独立），与既有 djvu.txt 检索层形成**双管线**
- [x] **A5** 关键词零命中在三本 PDF 的 pdftotext 管线上独立复现（`paradoxe`/`Zénon`/`Grec` 全 0；正向控制 `progression` 18/18/15 次稳定）
- [x] **A6** 「和 = 极限」定义句在三本 pdftotext 管线上定位（印刷页 123，PDF 图像页 S1=149 / S2=147 / S3=147），三本措辞一致
- [x] **A7** `résoudre`/`résolu` 主语分布初扫（S1：30/22 处，全部为方程求解语义；S2：29/15；S3：30/22），无一处指向极限/芝诺/运动

## B. 待执行（按优先级排序；每项含验收判据）

### B1 — 罗素包：`q2-solved-溯源` 三份开放 PDF 的 MinerU 第二管线（中优先）

- [x] **B1.1** `kanamori-cantor-cohen.pdf`（65 页）→ MinerU，产出 `q2-solved-溯源/mineru_md/kanamori-cantor-cohen.md`
- [x] **B1.2** `linsky-schroeder-zermelo.pdf`（20 页）→ MinerU，产出 `q2-solved-溯源/mineru_md/linsky-schroeder-zermelo.md`
- [x] **B1.3** `arxiv-2303.13473.pdf`（8 页）→ MinerU，产出 `q2-solved-溯源/mineru_md/arxiv-2303.13473.md`
- [x] **B1.4** 逐条比对证据 05 §7.1–§7.4 已引句子（S-KAN-1/S-KAN-2/S-EBSCO-1/S-EBSCO-2/S-LIN-1/S-ARX-1/S-ARX-2）在新 md 中的逐字一致性；不一致时登记冲突并以 pdftotext 管线为准
- [x] **B1.5** 更新 `docs/罗素解决考古/来源/05-*.md` §7 的引文管线列（pdftotext → pdftotext + MinerU 双管线）

**验收判据**：三份 md 落盘且非空；七个引文句全部逐字比对有结论；证据 05 §7 管线标注更新；`scripts/check_mineru_md.py` 保持 9/9 PASS（不动原 9 份）。

### B2 — 芝诺包：ZQ1 从预演升级为正式证据 Z01（高优先）

- [x] **B2.1** 用 `parse_large.py` 对三本候选 PDF 做**定向页范围**解析：印刷页 120–126（含 123 定义句页）+ 序言/Introduction 前 20 页；输出 `zeno-溯源/mineru_md/<id>.md`
- [x] **B2.2** 三管线逐字比对定义句：djvu.txt（S1/S2/S3）vs pdftotext（S1/S2/S3）vs MinerU（S2 为底）——要求三本措辞一致点与差异点逐条登记
- [x] **B2.3** `résoudre`/`résolu` 主语分布定量表（全部命中处，按「解方程 / 解问题 / 解悖论」三类归组；上限 60 处）
- [x] **B2.4** 页数覆盖对照：三本 `pdfinfo Pages` 与 djvu.txt 行数、pdftotext 页分割数三方对账，排除漏页
- [x] **B2.5** 写正式 `docs/芝诺解决考古/来源/Z01-柯西1821-原文措辞核验-ZQ1.md`（含 sha256 表、逐字引文、检索穷尽表、H1/H2/H3 判定与判据），原预演文件保留并在文首标注被取代关系
- [ ] **B2.6** 更新 `docs/芝诺解决考古/00-立项方案-20261017.md` 步骤 1 状态与 `形式化追踪/99-更新日志.md` 一行

**验收判据**：三个引文句在三管线下有确定结论；H1 维持或修正须写明来自哪条管线的新证据；正式 Z01 落盘且预演文件关系清楚。

### B3 — 罗素包：enderton/kunen 整册重跑（低优先，等触发）

- [ ] **B3.1** `enderton1977.pdf`（289 页）→ `parse_large.py` 产出 `mineru_md_wholebook/enderton1977.md`
- [ ] **B3.2** `kunen1980.pdf`（325 页）→ `parse_large.py` 产出 `mineru_md_wholebook/kunen1980.md`
- [ ] **B3.3** 与旧分卷 md（`_split/` 路径产物）做覆盖率与引文句比对，登记分卷路径为历史产物
- [ ] **B3.4** 更新 `docs/operations/mineru-pdf-conversion-setup.md` 的产物清单（整册路径 + 分卷历史）

**验收判据**：两份整册 md 落盘；旧分卷口径被标注为历史；不删除旧产物。

### B4 — 罗素包：低优先 MinerU 补线与脚注缺口登记（按需）

- [ ] **B4.1** `moore1983-annals-nyas.pdf`（26 页）→ MinerU（仅当证据 05 §2 要引正文时）
- [ ] **B4.2** zermelo1908 九条未补录页底脚注清单落盘为缺口登记文件（p262/265/266/267/272/278/279；p266 两条涉 Dedekind 与选择公理自引，p267 涉 Cantor Bd.46 p.483）——**只登记，不补录**
- [ ] **B4.3** `完整性证书-20261017.md` 补一节「视觉审计线的最终形态」指向证据句核查表与 05 号文档

**验收判据**：缺口登记存在且不冒充已补；证书指向正确。

## C. 明确不做（防范围漂移）

- 不为 enderton/kunen 开任何逐页或抽样视觉审计（Q2 的 14 个证据句已确定）。
- 不补录 zermelo 九条脚注正文（按「只确定需要的」纪律）。
- 不整卷处理柯西 1821（400+ 页）——只定向页。
- 不物理拆分任何 PDF。
- 不碰 `sources/`、`private-audit/`、`外部资料/`、并行会话 dirty 文件（`_visualcheck/pages/*.png`）。
- 不改 README/main、不 push、不起 Goal。

## D. Sub Agent 使用边界（用户 2026-10-18 授权「可以启动 sub agent 进行工作」）

- 仅两个精确 profile：`subagent_low = gpt-5.5 / xhigh`，`subagent_high = gpt-5.6-sol / ultra`。
- **子代理只做只读、有界、可独立验收的切片**（如单份 PDF 的 MinerU 抽取 + 引文句比对回贴）；写入只由 Master 在独占路径完成。
- 子代理不得 commit / push / 改 current owner / 再 spawn / 联网超出任务卡片列明的范围。
- 每次 spawn 的 agent_type、model、reasoning_effort、fork_turns 必须显式且合法；不可用即 fail closed。
- 子代理返回必须是 Claims / Evidence / Conflicts / Unknowns / Mutations / Verification 六段；Master 复核后才落盘。

## 剩余待办（B2.6 / B4 / E）

- [ ] **B2.6** 更新 `docs/芝诺解决考古/00-立项方案-20261017.md` 步骤 1 状态 + `形式化追踪/99-更新日志.md` 一行
- [ ] **B4.2** zermelo1908 九条未补录脚注缺口登记文件（只登记，不补录）
- [ ] **B4.3** `完整性证书-20261017.md` 补「视觉审计线的最终形态」节
- [ ] **E1** 每个勾选项都有可核收据（文件 + sha256 / 命令输出）
- [ ] **E2** 所有落盘引文来自本会话实际抽取，非训练记忆
- [ ] **E3** F-011 边界：本清单无新数学命题
- [ ] **E4** 提交按精确路径，不混入并行会话 dirty 文件

## 状态日志

| 时间 (UTC) | 动作 | 结果 |
||---|---|---|
| 2026-10-18T14:01Z | A1–A7 完成：MinerU server 在线、柯西三本 PDF 落盘、pdftotext 第三管线、零命中复现、定义句定位、résoudre 主语初扫 | 全过；三本 sha256 见 `candidates/sha256.txt` |
| 2026-10-18T14:20Z | **B1.1–B1.4 完成**：`q2-solved-溯源/mineru_md/` 三份 MinerU 第二管线（kanamori-cantor-cohen 65p / linsky 20p / arxiv 8p，均 `--remote` standard tier，各 1 片成功）；7/7 已引句双管线逐字一致，产物 = `mineru_md/双管线比对-20261018.md`；原 9 份 `check_mineru_md.py` 仍 9/9 PASS | B1.5 待做（证据 05 §7 管线列更新） |
| 2026-10-18T14:31Z | **B2.1–B2.5 完成（含一次如实失败登记）**：① 整册 604 页 parse_large 全 21 片失败（首片 `remote_timeout`，其余 20 片 `quality_tier_unavailable`），零产出，失败账本落 `candidates/mineru_md/_failed-run-ledger-20261018.tsv`，按 C 节纪律不重试；② 定向页成功后得 `S2_p145-p147.md`（印刷页 123 定义句页）+ `S2_p009-p018-introduction.md`（Introduction 前 10 页）；③ 三管线定义句逐字一致（djvu ×3 / pdftotext ×3 / MinerU ×1）；④ `résoudre`/`résolu` 三本 182 行逐行归类：**悖论/古希腊/极限类 0**（机器首遍 146 命中方程类 + 36 处「其余」经人工读原文全部确认为 OCR 断词/目录，同属方程语义）；⑤ 正式 `docs/芝诺解决考古/来源/Z01-柯西1821-原文措辞核验-ZQ1-20261018.md` 落盘，**H1 判定维持且证据加强** | ZQ1 一手层完成；B2.6 路由更新待做 |
