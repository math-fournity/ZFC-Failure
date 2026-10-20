# 证据 Z07（正式版）：教科书抽样补足——两本 Calculus 的芝诺词族扫描与正向控制（ZQ2 缺口 2）

> **身份**：DOCUMENTED_SOURCE（两本开放教科书）+ 〔我们的分析〕。
> **本文回答什么**：Z02 §6 缺口 2 说"教科书抽样未完成，只抓了 OpenStax 两页，**两页不构成抽样**"。
> 本文把教科书层从 2 页扩到两本完整教材，用**正向控制**判定每条扫描口径是否有效，
> 并把两本分别归因：一本有效、一本**因前置扫描件尚未进入正文而不能用**。
> **抓取日期**：2026-10-20。**本会话**：Claude b8a57752，CFC 分析推进方案第 30 轮（路线 R3）。

## 0. 本证据能支持什么、不能支持什么

- **能**：给出 **Thomas' Calculus（第 12 版，1179 页）全册**在有效文本管线上的芝诺词族命中表
  与正向控制计数；给出一个**可分别归因的对照**，说明另一本为何不能作为证据。
- **不能**：证明"教科书故意不提芝诺"（反面解释仍是篇幅取舍，本文未排除）；
  不能把一本推广为"全部门类教科书都不提"（样本 = 1 本有效）；
  不能据此签发"无人更早说过"这类负结论（证书 verdict = PARTIAL 仍然有效）。
- **不能**：说 Stewart 那本证实了教科书不提芝诺——它的有效覆盖**尚未进入教科书正文**，见 §3。

## 1. 来源与凭据

| 编号 | 书 | Internet Archive id | 页数 | 大小 | sha256 |
|---|---|---|---|---|---|
| **T1** | Thomas' Calculus (12th Edition) | `thomas-calculus-12th-edition_202601` | 1179 | 370,659,577 B | `5d9c9d8e5c083630d7841ca0a26995a6595768ce7ffadac0c804ba7ae1e45ffa` |
| S1 | Stewart, *Calculus*（archive.org 扫描件） | `calculus11unse` | 664 | 46,521,466 B | `46d2531aeff056ec0b1f2c2fe0aa60a31808398a845f7204b4f33e20fc63a6f1` |

两本均为 archive.org 上 `access-restricted-item` 为空的公开条目，非借阅制。
T1 的 pdftotext 全册文本 sha256 `a034b7741a2ac05c9248d54a1e3861823a21e75213b746e2442c6b1dbdbc3694`。

## 2. T1 全册词族扫描（第三管线，口径证据见 §4）

T1 全册 pdftotext：**1180 个分页中仅 3 个近空页**，2,917,755 字符，管线覆盖良好。

| 词（词边界匹配） | T1 全册命中 |
|---|---|
| `Zeno` / `zeno` | **0 / 0** |
| `Achilles` / `achilles` | **0 / 0** |
| `tortoise` | **0** |
| `paradox` / `Paradox` | **0 / 0** |
| `Dichotomy` / `dichotomy` | **0 / 0** |
| `Stade` | **0** |

### 正向控制（同一文本，同一口径）

| 控制词 | 命中 |
|---|---|
| `limit` | 489 |
| `derivative` | 640 |
| `function` | 2030 |
| `integral` | 826 |
| `infinite` | 56 |
| `infinity` | 25 |
| `infinitesimal` | 1 |

**判读**：控制词全部正常且量级符合一部微积分教材；芝诺词族（含两个大小写形态）全零。
**这不是"页面没抓到"的结果。**

### 2.1 双口径：为什么词边界与子串都要查

只查词边界会漏掉变格形态（Zenon、Paradoxien、Achilleus）。因此同一批词再加一条**子串口径**
（`text.count(word)`，不做任何边界判定）。**T1 在子串口径下芝诺词族同样全零**
（`Zeno`/`Achilles`/`tortoise`/`Dichotomy`/`Stade`/`paradox` 均为 0），
而控制词子串计数更高（`function` 3033、`limit` 965、`derivative` 1214）。
**T1 的零命中不依赖口径选择**，这使它比单词边界结论更硬。

（一个真实的方法学分歧，已核：同一份文本，`grep -oiw function` 给 48，
严格 ASCII 边界给 2。原因是 S1 里的拉丁文变格 `functionis`/`functionem`
在 grep 的 locale 下被 `-w` 计入。凡跨机器/跨 locale 报告计数，必须写明口径并用脚本复算，
不能照抄命令行输出。）

### 假阳性鉴别实例

`arrow` 在 T1 前 60 页命中 6 次，逐处看上下文**全部**是 "arrow diagram"（函数图示，见
Thomas §1.1 函数定义与 §1.3 复合函数图示）。凡以 `arrow` 作芝诺指标必须逐处看上下文——
这是本文记录的一个具体假阳性形态。

## 3. S1 为何不能作为证据（可分别归因）

S1 是同一台机器、同一天、同一 pdftotext 版本下扫描的。三条事实：

1. **pdftotext 全册正向控制失败**：`limit` = 0、`derivative` = 0、`function` = 48，
   而 665 个分页中 58 个近空页。一部 664 页微积分教材不可能 `limit` 与 `derivative` 都是 0。
2. **MinerU 第一管线（成功解析的 1–150 页）说明原因**：输出 255,757 字符、314 个 page 标记，
   芝诺词族零命中，但 `limit`/`derivative`/`function` **也是 0**。
   逐页看内容：p13 起是 1829 年拉丁文学位论文（*De duplici differentialium notione…*），
   中有德文数学期刊（`Häufungswert`、`lim p_n`）、意大利文积分论文（*Estensione del metodo
   d'integraz. di Monge e Ampère*）、各种献词页与图书馆页码。
   **即这个 archive.org 条目的前 150 页是与教科书无关的历史扫描件，教科书正文尚未开始。**
3. **可控对照**：T1 在同一环境下 `limit` 489 / `derivative` 640，覆盖 1180 页仅 3 个近空页。
   两者差异只能归给**源文件本身**（S1 的扫描件文本层质量差、且前部塞满无关文献），
   不能归给工具、环境或本会话的操作。

**结论**：S1 的"芝诺零命中"既非教科书现象、也非 Zeno 相关证据，**不得引用**。
本文不改动 Z02 的 OpenStax 两页证据，也不把它并入。

### 3.1 S1 的四个子串命中是什么噪声

子串口径下 S1 有 4 个芝诺词族命中：`zeno` 1、`Stade` 1、`paradox` 2、`Paradox` 1。
逐处看：`zeno` 与 `Stade` 落在拉丁/德文词汇内部；`paradox`/`Paradox` 来自
`ce que l'on regarde alors comme un paradoxe` 与 `comme tous les paradoxes analytiques`
（历史前言里的法文成语，谈的是"分析学里的悖论"，不是芝诺），另有一处德文脚注
`die Paradoxien des Unendlichen`。**它们都不是芝诺悖论的叙述**，
且分布在教科书正文之前的历史扫描件里。词边界口径下这 4 处全部归零。

## 4. MinerU 管线的实际结果与两个障碍（如实登记）

按本 repo 纪律，零命中结论须由第一管线 MinerU 出。本次结果：

- **S1**：664 页 / 4 片，**1 片成功**（页码 1–150，256,929 字符，sha256
  `46d2531…` 短 id 与源文件一致）、**3 片失败**（`quality_tier_unavailable`：
  远程服务端无可用引擎）。成功那一片已用于 §3 的诊断。
- **T1**：370,659,577 B **超过远程文件大小上限**，`mineru parse` 直接返回
  `file_too_large`（与页数无关，是物理障碍）。整册 MinerU 不可得。

**纪律执行**：不物理拆分源文件、不重试整册（失败账本已在
`docs/芝诺解决考古/搜索原始响应-20261017/zeno-溯源/candidates/mineru_md/_failed-run-ledger-20261018.tsv`）。
因此 **T1 的第一管线判定仍是一个显式缺口**：本文的 T1 零命中目前只有第三管线支撑，
证据强度按 §0 记，不得升格为"MinerU 已核"。

**若要闭合这个缺口**：需一条不受 370 MB 上限约束的通道（例如本地 `mineru-openai-server`，
或只含目标页的子集 PDF——后者等价于按页范围定向请求，源文件不动）。

## 5. 复现

~~~bash
curl -sL -o thomas12.pdf "https://archive.org/download/thomas-calculus-12th-edition_202601/Thomas_%20Calculus%20%2812th%20Edition%29.pdf"
sha256sum thomas12.pdf   # 5d9c9d8e5c083630…

pdftotext thomas12.pdf thomas_full.txt
python3 -B docs/芝诺解决考古/来源/_verify/verify_z07_textbooks.py --texts-dir <dir>
# → 30 个计数在词边界与子串两个口径下全部复现；exit 0
~~~

校验器只依赖两份 pdftotext 产物（sha256 已钉在 Z07 §1），不需要两个源 PDF。
它会同时打印两个口径，并断言"T1 两种口径下芝诺词族全零、S1 `derivative` 子串为 0"这两条
承载结论的结构性事实。

## 6. 与既有证据的关系

- 本文是 Z02 §6 缺口 2 的**第一次补足**（2 页 → 1 本有效全册 + 1 本诊断样本）；
  Z02 的 OpenStax 两页零命中仍然有效，仍是教科书层最早的一块证据。
- 本文不改 Z03 的时间线，不改搜索完整性证书的 PARTIAL verdict，不占命题编号。
- 与 R3 验收判据逐条对应：每本一个 Z 编号文件、零命中须有正向控制（§2、§3）、
  双管线逐字一致（T1 侧为显式缺口，照实写在 §4）。
- **与 C-423 的关系**：C-423 已在 ZFC 内机器证明经典芝诺"极限意义到达 ∧ 任何有限步都到不了"
  两面（`zeno-zfc-classical`）。本文是同一事实的**教科书层一手侧写**：控制词 `limit` 489 次、
  芝诺词族 0 次，说明教材只教"极限"这一侧、入口不讲悖论那一侧。两者是来源层与机器层的对应，
  **不是形式蕴含**。

## 7. 一句话结论

**Thomas' Calculus（第 12 版，1179 页）全册芝诺词族（含大小写两形态与 Achilles / tortoise /
Dichotomy / Stade）零命中，而同口径控制词 limit 489、derivative 640、function 2030 正常——
教科书只讲极限、入口不讲悖论，与 Z01 柯西零命中是同一现象的两侧。
另一本 Stewart 因扫描件前 150 页全是无关历史文献、`derivative` = 0（正向控制失败）不能作为证据。
T1 的第一管线（MinerU）因 370 MB 超远程上限尚未闭合，照实记为显式缺口。**
