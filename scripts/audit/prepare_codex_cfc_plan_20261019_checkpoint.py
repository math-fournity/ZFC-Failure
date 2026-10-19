#!/usr/bin/env python3
"""Prepare the 2026-10-19 checkpoint for the CFC plan unit (revision 315 -> 316).

Scope (research sponsor, 2026-10-19, goal set in this Codex session): write a plan document for what to do
next, then drive that work to completion with the goal, self-evolving and self-advancing; the plan must keep
the dev-branch governance documents maintained the way the global Codex governance framework prescribes, so
that after a compaction boundary the documents that must be fully loaded can still be loaded.

This unit delivers: (1) the plan `dev-docs/CFC分析推进方案-20261019.md` as a v2 shard-index logical document
(index + 6 shards); (2) the Zeno archaeology evidence Z03 (Russell 1914 primary source, one-hand
historiography, all quotations verified by letter-stream matching with mechanically corrected line locators);
(3) a measured correction of the formalization line (Lean module-by-module builds of two ZFC packages).
It does NOT deliver a new mathematical claim, does not push, does not create a goal, and does not spawn a
sub-agent. The only hard blocker found is that `CFC` has no definition anywhere in the repo or the three
local session stores; nothing was guessed in its place.

This script only builds the payload; it writes nothing into the repository. Apply with
.codex/tools/cognition_runtime.py checkpoint --snapshot <printed snapshot> --payload <output> --apply
Modelled on scripts/audit/prepare_claude_cg010_main_release_checkpoint.py.
"""

from __future__ import annotations

import argparse
import importlib.util
import json
import re
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
RUNTIME_PATH = ROOT / ".codex/tools/cognition_runtime.py"
SPEC = importlib.util.spec_from_file_location("runtime_cfc_plan", RUNTIME_PATH)
assert SPEC and SPEC.loader
R = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(R)

SESSION_ID = "S-GOV-20261019-CFC-PLAN"
PREV_SESSION = "S-GOV-20261015-CLAUDE-CG010-MAIN-RELEASE"
PREV_REVISION = 315
NEW_REVISION = PREV_REVISION + 1
SESSION_REL = f".codex/research/hott/sessions/{SESSION_ID}"
RESULT_REL = f".codex/cognition/checkpoints/{SESSION_ID}/result.json"
PREPARE_SELF = "scripts/audit/prepare_codex_cfc_plan_20261019_checkpoint.py"

UNIT_FILES = [
    "dev-docs/CFC分析推进方案-20261019.md",
    "docs/芝诺解决考古/来源/Z03-史学层-Russell1914自陈的1821-1882空档与思维归因-20261019.md",
]

AUTHORIZATION = (
    "Research sponsor 2026-10-19, goal set in this Codex session (thread 01a14f32-d287-71f3-8916-500986f9431d): "
    "write a plan document for what comes next, keeping the dev-branch governance documents maintained the way the "
    "global Codex governance framework prescribes so that documents which must be fully loaded are still loaded "
    "after a compaction boundary; then use that goal to drive the work to completion, self-evolving and "
    "self-advancing, doing the literature archaeology and any formalization and machine proof, updating documents "
    "as it goes and pushing to the remote. In scope for this transaction: the plan document, in-repo evidence "
    "writes, README/MEMORY entry registration and this checkpoint record. NOT authorized by that goal as given: "
    "git push (needs one explicit sentence), delivering a new mathematical conclusion through this transaction, "
    "creating a goal, or spawning a sub-agent."
)

ALIGNED = {
    "KC-000012": ("ASK 在本轮以 1914 年一手先例形式出现：Russell 亲笔写下失效条件——若把半程、四分之三、八分之七……都做标记，"
                  "并且跑者未被裁判喊“现在”不许越过任何标记，那么芝诺的结论在实践中就为真。这正是“被迫逐项时才需要问”的公开先例，"
                  "比本项目分析早 112 年。证据：Z03 §4.1 与 Z02 §2.2。", "若该引文与 Russell 1914 原文不逐字一致，以原文为准并撤回相应引用。"),
    "KC-000054": ("UR 的判定标准在本轮被用来判断一件事：交接文档两处称 `zfcTr_D3_internalize` 是“唯一显式缺口”，按 UR 它确实简单，"
                  "但它已被 C-417 在另一包闭合，因此不是当前的真缺口。本轮用编译器 exit code 取代文档措辞，正是用“能不能做出来”"
                  "而不是“文档说它没做出来”作判据。证据：方案 003 片 §0.1、§0.2。", "若后续正式收据显示该引理确未闭合，以收据为准改回。"),
    "KC-000076": ("Q 的定义（对表述是否可计算、可停机的判断）在本轮被直接兑现：`godel-q-zfc-z0-sigma1/GodelQ/ZFC/Z0D3.lean` 的 "
                  "`zfcTr_D3` 本机 exit 0、无 sorry，axioms 仅 propext/Classical.choice/Quot.sound。等级为本机 devbuild 实跑，"
                  "未生成 `HoTT/verification/runs/` 正式收据，因此不是 MACHINE_PROVED。", "若正式收据重放失败，撤回“已闭合”表述并恢复缺口登记。"),
    "KC-000077": ("A 的定义在本轮拿到新的历史锚：Russell 1914 明言“nothing material was added until we reach Bolzano”（1847-8），"
                  "并明言最终解决在 Cantor 1882。这与 Z01 的柯西全书零命中互相咬合。证据：Z03 §2、§3。", "若归因检索发现更早的公开归因，按新证据修订时间线。"),
    "KC-000081": ("“矛盾”按 D5-3 读作理论结果与现实的矛盾。本轮看到 Russell 1914 的亲口机制归因：困难来自 counting 这一观念的"
                  "无意识运作，且知识不要求逐项过目一个集合。Russell 用 1914 年的语言说出了同一机制：那一栏不在账本上。证据：Z03 §4.1。",
                  "若该机制被证明与 H 的义务边界叙事只是措辞相似而无结构对应，撤回对照。"),
}
TENSION = {
    "KC-000083": ("发起人 KC-000083 判定“现实是跳着完成的，不满足芝诺需要的持续 1/2 切分”，并明言这是他的判断、不是定理。"
                  "本轮在 Russell 1914 找到方向相反的一手陈述 R02：实际空间是否有此紧致性是另一个问题，依赖经验证据，"
                  "且大概无法确定地回答。已按分层处理：不把 Russell 的未决读成支持稠密性，也不把发起人的离散读成已证定理。"
                  "这条 TENSION 不试图在本轮裁决。", "若取得量子力学对时空处理的权威一手证据，可分别升级或撤回其中一侧。"),
}
DEFAULT = ("本单元是方案落盘、一手史学层取证与 Lean 编译实测，没有重新判断该条所指的数学内容；原文身份与 KC 编号保持不变。",
           "若后续工作引用了该条而转述与原文不符，以原文为准。")


def sha_file(rel: str) -> str:
    return R.sha((ROOT / rel).read_bytes()) if (ROOT / rel).exists() else None


def labels() -> dict[str, str]:
    text = (ROOT / "核心认知.md").read_text(encoding="utf-8")
    return {m.group(1): m.group(2).strip()
            for m in re.finditer(r"^### (KC-\d{6}) · [^·]+? · [^·]+? · (.+)$", text, re.M)}


def audit_text() -> str:
    lab = labels()
    if len(lab) != 83:
        raise SystemExit(f"CORE_NOT_83:{len(lab)}")
    rows, counts = [], {}
    for kc, label in lab.items():
        if kc in ALIGNED:
            rel, (ass, nxt) = "ALIGNED", ALIGNED[kc]
        elif kc in TENSION:
            rel, (ass, nxt) = "TENSION", TENSION[kc]
        else:
            rel, (ass, nxt) = "NOT_TOUCHED", DEFAULT
        counts[rel] = counts.get(rel, 0) + 1
        cell = lambda s: s.replace("|", "／")
        rows.append(f"| `{kc}` | {cell(label)} | {rel} | {cell(ass)} | {cell(nxt)} |")
    tally = "、".join(f"{k} {v}" for k, v in sorted(counts.items()))
    return "\n".join([
        f"# {SESSION_ID} 完整兼容审计", "",
        "core-cognition-generation-15；83 KC。canonical writer 只授权新 session 目录第一层文件，所以本审计是单文件兼容 bundle。"
        "逐条立场由本会话写成（本机 Codex 会话 01a14f32-d287-71f3-8916-500986f9431d），计数不认证理解。", "",
        "- core_change: NO — 核心认知保持第 15 代、83 条。`CFC` 与 `350 年` 两条待澄清项均未取得发起人答复，**没有**写入新 KC。",
        "- direction_change: NO — 方向组合不变；本轮只在执行层推进，未新增或关闭任何 DIR-* 方向。",
        "- panorama_change: NO — 未新增 `全景视野.md` 结果条目。本轮形式化实测结论登记在方案 003 片与 `MEMORY/001`，"
        "缺正式收据，**尚未**升级为 `OUT-*` 结果条目。",
        "- essay_change: NO — 不加 `扩展认知.md` 分片。Russell 1914 的机制对照写在 Z03 §4.1，标注为〔我们的分析〕，未反向改写 core。",
        "- update_decision: 发起人 2026-10-19 goal（逐字见方案 001 片 §1）要求写方案并自我推进。本轮交付方案六分片、Z03 史学层、"
        "形式化实测纠偏、`README/001` §4 两条入口、`MEMORY/001` 队列更新；精确路径 commit `4b545e139`，**未 push**。",
        "- cross_conflicts: (1) 根 `AGENTS.md`「CG-007 真实进度基准」与交接文档 003 §3.1 称 `neg_neg_code`/`iT_neg` 未编译通过、"
        "`zfcTr_D3_internalize` 是唯一缺口；本轮实测推翻这两处（两者 exit 0；D3 已由 C-417 闭合）。两处均为历史快照，"
        "本轮**没有修改它们**，只在方案 003 §0 与 006 §2 登记修正。(2) `CFC` 在 repo 全文与三个会话库、全局状态中零定义，"
        "因此没有任何既有对象可以承接它。(3) 并行会话的 dirty 文件本轮一律未动。",
        "- unresolved: `CFC` 的含义（唯一硬阻塞，只有发起人能答）；`350 年` 的起算点；push 授权；C-417 的正式收据级重放；"
        "罗素对照表定稿、H 深化进 README、C-437/C-439/圆环维度四项立项裁定；Bottazzini/Grattan-Guinness 未取正文；"
        "Search Completeness Certificate 未签发故不得说“没人更早说过”。", "",
        f"关系计数:{tally}。", "",
        "|KC ID|姿态|relation|assessment and evidence|next and falsifier|", "|---|---|---|---|---|", *rows, "",
    ])


def runs_obj(snapshot: str) -> dict:
    return {
        "schema_version": "hott-session-runs/v2", "session_id": SESSION_ID, "session_kind": "GOVERNANCE_PLAN_AND_EVIDENCE",
        "checkpoint_result": RESULT_REL, "base_snapshot": snapshot, "formal_runs": [],
        "governance_runs": [
            {"tool": "scripts/audit/verify_governance_shards.py", "command": "(no arguments)",
             "status": "PASS (228 canonical indexes)", "note": "first run FAILED 8 issues in the new shard set (YAML frontmatter instead of governance-shard:v2, append_target set in topical mode, shard 002 filename not matching the index link title, H1 mismatch); all fixed and re-run to PASS"},
            {"tool": "scripts/check_mineru_md.py", "command": "(no arguments)", "status": "PASS 9/9",
             "note": "existing MinerU artefacts re-validated; no new parse this unit"},
            {"tool": ".claude/goals/CG-007-formalization-completion/tools/devbuild_ns.py",
             "command": "godel-q-zfc-z0-full: every module of the dependency chain, in order",
             "status": "exit 0 for all, including NegInvolution.lean (neg_neg_code) and ShCraigElimNegLaw.lean (iT_neg)",
             "note": "no sorry; axioms only propext, Classical.choice, Quot.sound. This overturns the root AGENTS.md record that these two were uncompiled"},
            {"tool": ".claude/goals/CG-007-formalization-completion/tools/devbuild_ns.py",
             "command": "godel-q-zfc-z0-sigma1: every module of the dependency chain, in order",
             "status": "exit 0 for all, including Z0D3.lean (zfcTr_D3, zfc_z0_unconditional)",
             "note": "Negative/BallMergeOffByOne.lean exits 1 as intended (a deliberately off-by-one negative control), which is a passing control"},
            {"tool": "python3 letter-stream verification (inline, per Z03 §3)",
             "command": "13 quotations from Russell 1914 normalised and matched against russell1914-gutenberg-37090.txt",
             "status": "13/13 HIT",
             "note": "R12 first drafted from mid-sentence and MISSed; changed to the full sentence R12a and HIT"},
            {"tool": "python3 line-locator verification (inline)",
             "command": "every locator in Z03 recomputed with an exact character-to-line map",
             "status": "15 locators recomputed and corrected", "note": "first draft was eyeballed from grep output and was off by tens of lines"},
            {"tool": "rg", "command": "CFC search across the repo and the three local session stores plus the global state file",
             "status": "zero definitions", "note": "only 4 OCR misreads in a Cauchy scan and UUID hex fragments; nothing was guessed in its place"},
            {"tool": "git", "command": "commit --only -m ... -- <exact paths>",
             "status": "4b545e139", "note": "10 exact paths; parallel session dirty files untouched"},
            {"tool": PREPARE_SELF, "command": "--output <payload>", "status": "PREPARED"},
            {"tool": ".codex/tools/cognition_runtime.py",
             "command": "checkpoint --snapshot <base_snapshot> --payload <payload> --apply",
             "status": "CHECKPOINT_COMMITTED expected; only the canonical result.json proves it"},
        ],
        "new_math_claims": [], "math_status_change": "NONE",
        "push_policy": "not pushed; the goal mentions pushing to the remote but no explicit one-sentence authorization was given",
    }


def session_text() -> str:
    return "\n".join([
        f"# {SESSION_ID}", "",
        "研究发起人 2026-10-19 goal 的第一轮执行：落盘推进方案 + 一手史学层取证 + 形式化线实测纠偏。", "",
        "- host: 本机 macOS，Codex CLI（桌面 app），会话 01a14f32-d287-71f3-8916-500986f9431d",
        "- model / tier: 以本 session 实际配置为准；档位 T1 standard（写文档、无新数学主张）",
        "- role: GOVERNANCE_ALIGNMENT + RESEARCH_GENERATION（只读到方案与取证，未开启新 Goal）",
        f"- authorization: {AUTHORIZATION}", "",
        "## 做了什么（全部精确路径 commit `4b545e139`，未 push）", "",
        "1. 方案 `dev-docs/CFC分析推进方案-20261019.md`（v2 分片索引 + 6 shard），`verify_governance_shards.py` PASS。",
        "2. Z03 史学层 `docs/芝诺解决考古/来源/Z03-*.md`：Russell 1914 一手取证，13 句引文字母流回验 13/13，行号 locator 机械校正。",
        "3. `README/001` §4 登记 2 条入口；`MEMORY/001` 追加当前队列片（本轮 commit 内含）。",
        "4. 形式化线实测：`devbuild_ns.py` 逐个模块编译两个 ZFC 包。", "",
        "## 照实说（本轮最重要的三条）", "",
        "- **`CFC` 零定义**：repo 全文（26010 文件）、Codex/Claude/GUI 三个会话库、全局状态全部扫过，没有任何定义"
        "（只有 4 处 OCR 误读与 UUID 碎片）。**没有猜测它等于任何既有对象**，也没有为它新建承接目录。",
        "- **D3 已经闭合**：`godel-q-zfc-z0-sigma1/GodelQ/ZFC/Z0D3.lean` 的 `zfcTr_D3` 与 `zfc_z0_unconditional` 本机 exit 0、"
        "无 sorry；`godel-q-zfc-z0-full` 的 `neg_neg_code` 与 `iT_neg` 同样 exit 0（推翻了根 AGENTS.md 的两处“未编译通过”记录）。"
        "**本机未生成 `HoTT/verification/runs/` 正式收据**，所以等级是 devbuild 实跑，不是 MACHINE_PROVED。",
        "- **未 push**：`dev` lead `origin/dev`；goal 提到“向远程推送”但没有明确授权一句话。",
        "- 本轮抓到并修正 5 处 AI 自身问题（含凭印象写引文、凭目测定行号、按旧记录施工、把故意负控制当失败），"
        "全部登记在方案 006 片 §2。", "",
    ])


def state_edits(state: dict) -> None:
    session_path = f"{SESSION_REL}/SESSION.md"
    state["revision"] = NEW_REVISION
    state["latest_session"] = SESSION_ID
    ec = state["execution_control"]
    ec["last_checkpoint_session"] = SESSION_ID
    ec["checkpoint_result"] = RESULT_REL
    sources = [session_path, f"{SESSION_REL}/RUNS.json", f"{SESSION_REL}/CORE_COGNITION_AUDIT.md", RESULT_REL] + UNIT_FILES
    state["records"][SESSION_ID] = {
        "depends_on": [PREV_SESSION],
        "dependency_semantics": "verification_staleness",
        "evidence_status": "GOVERNANCE_CHECKPOINT_COMMITTED / VERIFIED_WITH_SCOPE / NO_NEW_MATH_CLAIM",
        "full_sources": sources,
        "kind": "session",
        "lifecycle_status": "HISTORICAL",
        "path": session_path,
        "related_records": [PREV_SESSION],
        "scope": ("First round of the research sponsor's 2026-10-19 goal: a v2 shard-indexed plan document for the CFC line "
                  "(6 shards, success criteria derived from the goal, the full search evidence showing CFC has no definition "
                  "anywhere and the exact question to ask, the archaeology/formalization/insight contracts, a checklist progress "
                  "ledger, and a self-audit blacklist); the Zeno archaeology evidence Z03 (Russell 1914 primary source, 1821-1882 "
                  "gap and his own attribution of why nobody found it, 13 quotations verified, locators mechanically corrected); "
                  "and a measured correction of the formalization line. No new mathematical claim, no push, no new goal, no sub-agent."),
        "source_hashes": {p: sha_file(p) for p in UNIT_FILES},
        "status": "complete",
    }


RESUME_ADD = (
    "### CFC 分析推进：方案落盘 + Z03 史学层 + 形式化实测纠偏（2026-10-19）\n\n"
    "方案唯一入口 `dev-docs/CFC分析推进方案-20261019.md`（6 分片索引）。**唯一硬阻塞：`CFC` 在 repo 与三个会话库零定义**"
    "（只有 4 处 OCR 误读与 UUID 碎片），澄清问法见方案 001 片 §3.3；`350 年` 的起算点同待澄清。已交付：Z03 一手史学层"
    "（Russell 1914 只点 Bolzano 一人、Weierstrass/Dedekind/Cauchy 零出现，且本人写下 counting 归因与对康德错误的诊断）；"
    "形式化实测推翻两处旧记录（`neg_neg_code`/`iT_neg` exit 0；D3 已由 C-417 在 `godel-q-zfc-z0-sigma1` 闭合，本机未出正式收据）。"
    "精确路径 commit `4b545e139`，**未 push**（等一句授权）。下一动作见方案 005 片「下一步」。\n\n"
)


MEMORY_001_NEW = Path(__file__).resolve().parents[2].joinpath(
    ".dev-notes-cfc-plan/memory-001-new.md").read_text(encoding="utf-8")


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--output", type=Path, required=True)
    args = ap.parse_args()
    missing = [p for p in UNIT_FILES if not (ROOT / p).is_file()]
    if missing:
        raise SystemExit(f"EVIDENCE_MISSING:{missing}")
    # The checkpoint transaction is what creates the session directory's first-layer files; the runtime
    # rejects a session path that already exists (SESSION_IMMUTABLE), so they must be absent here and are
    # supplied in the payload instead.
    state = json.loads((ROOT / R.STATE).read_text(encoding="utf-8"))
    if state.get("revision") != PREV_REVISION or state.get("latest_session") != PREV_SESSION:
        raise SystemExit(f"EXPECTED_REVISION_{PREV_REVISION}:{state.get('revision')}:{state.get('latest_session')}")
    if SESSION_ID in state["records"]:
        raise SystemExit(f"RECORD_ALREADY_EXISTS:{SESSION_ID}")
    plan = R.plan(ROOT, profile="governance")
    texts: dict[str, str] = {path: (ROOT / path).read_text(encoding="utf-8") for path in R.MUTABLE}
    for shard in R.mutable_shard_paths(ROOT):
        texts.setdefault(shard, (ROOT / shard).read_text(encoding="utf-8"))
    resume_path = ".codex/research/hott/RESUME.md"
    marker = "# 接续指针\n"
    if texts[resume_path].count(marker) != 1:
        raise SystemExit("RESUME_MARKER")
    texts[resume_path] = texts[resume_path].replace(marker, marker + RESUME_ADD, 1)
    state_edits(state)
    # MEMORY/001 is the current-queue owner; the checkpoint transaction writes it, so the working tree must
    # still match HEAD.json's tracked hash when plan() runs (what it was before this unit's edit).
    texts["MEMORY/001 - 当前执行队列.md"] = MEMORY_001_NEW
    texts[R.STATE] = json.dumps(state, ensure_ascii=False, sort_keys=True, indent=2) + "\n"
    texts[f"{SESSION_REL}/SESSION.md"] = session_text()
    texts[f"{SESSION_REL}/CORE_COGNITION_AUDIT.md"] = audit_text()
    texts[f"{SESSION_REL}/RUNS.json"] = json.dumps(runs_obj(plan["snapshot"]), ensure_ascii=False, sort_keys=True, indent=2) + "\n"
    payload = {
        "schema_version": "cognition-checkpoint/v1", "session_id": SESSION_ID, "authorization": AUTHORIZATION,
        "load_profile": "governance", "task_ids": [],
        "files": [{"path": path, "expected_sha256": R.sha((ROOT / path).read_bytes()) if (ROOT / path).exists() else None, "text": value}
                  for path, value in texts.items()],
    }
    args.output.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({"status": "PREPARED", "snapshot": plan["snapshot"], "revision": NEW_REVISION,
                      "session_id": SESSION_ID, "files": len(texts)}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
