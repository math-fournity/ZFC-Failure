# 误抓登记（2026-10-21）

> 这一条按 DOC_FLUSH_PROTOCOL §2.4 登记：**不入库、不删除、不作证据**。
> 目的是让下一个会话知道这个文件为什么躺在这里、为什么它没有进 Git。

## russell1914-gutenberg-7369.html

- **大小**：325,186 B（319 KB HTML / 279,733 剥标签字符）。
- **内容**：Project Gutenberg **#7369 = John Masefield, *Jim Davis***（小说，2005-01 release）。
  `Bolzano` 0 次、`1882` 0 次、`futile and negligible` 0 次、`antinomies` 0 次。
- **为什么是误抓**：罗素 1914 讲稿的正确 Gutenberg 编号是 **#37090**
  （已入库 `russell1914-gutenberg-37090.txt`，447,752 B，Z03/Z04/Z05 全部引文都以它为据）。
  #7369 与该文献无关。
- **结论**：**无证据价值，不入库。** 若日后要做 Russell 文献的双源核验，
  请另找同一讲稿的第二个独立 snapshot（例如 archive.org 扫描件），不要用这一个。

## 同时入库的 7 个文件（同一批底账，2026-10-21 提交）

五个被证据引用的原始产物 + 两个 MinerU JSON 旁挂件：

| 文件 | 大小 | sha256 前16 | 引用它的证据 |
|---|---|---|---|
| `candidates/TO0E037871_TO0324_PNI-1898_000000.txt` | 794,635 | `7ebedf61039147ff` | Z01、00-立项方案、sha256.txt |
| `candidates/bub_gb_OlxT3B6EjykC.txt` | 1,829,040 | `c50b4ea91b08d2e7` | Z01、00-立项方案、sha256.txt |
| `candidates/coursdanalysedel00cauc.txt` | 1,207,525 | `ad6559cec55c234b` | 会话转录、Z01、00-立项方案、sha256.txt |
| `candidates/mineru_md/S2_p009-p018-introduction.md.json` | 9,906 | — | `.md` 的原始 API 响应旁挂件（`parse.status=done`, range 9-18） |
| `candidates/mineru_md/S2_p145-p147.md.json` | 4,745 | — | `.md` 的原始 API 响应旁挂件（`parse.status=done`, range 145-147） |

三个 `.txt` 的 sha256 与 `candidates/sha256.txt` 登记**逐字相符**。
两个 `.json` 的 `content.content` 与已提交（`818df75bd`）同名 `.md` **字符数完全相等**
（8,465 / 3,472），且 `.md` 的 sha256 与该登记相符——即 json 是原始响应、md 是导出物，同源确认。
