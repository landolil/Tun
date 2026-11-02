# Dry run (Phase 1-4 only)
python3 session_resume.py dry-run --project-dir lol.rareearth/CSMMinesMagnets
```

---

### 1.9 State Versioning and Baseline

#### 1.9.1 Version Control Protocol

| State Version | Date | Trigger | Components |
|---------------|------|---------|------------|
| **v1.0** | 2026-10-22 | Initial pipeline init | DOC-01..03, Runner 001 |
| v1.1 | 2026-10-24 | Runner 002 start | DOC-04, Runner 002 |
| v1.2 | 2026-10-28 | Runner 004 start | DOC-07, Runner 004 |
| v1.3 | 2026-11-01 | Runner 006 start | DOC-09, Runner 006 |
| v1.4 | 2026-11-01 | Runner 008 start | DOC-11, Runner 008 |
| v1.5 | 2026-11-01 | Runner 009 start | DOC-12, Runner 009 |
| v1.6 | 2026-11-02 | Runner 010 start | DOC-13, Runner 010 |
| **v1.7** | **2026-11-02** | **Runner 011 complete** | **DOC-14, Runner 011 (this baseline)** |
| v1.8 | TBD | Runner 012 complete | DOC-15, Runner 012 |

**Invariant**: Each resume produces a **state hash**:
```
STATE_HASH = SHA256(concat([
    git_head_sha,
    audit_ledger_hash,
    corpus_version,
    heartbeat_timestamp,
    task_timer_state
]))
```
Stored in `RESUME_SESSION_MAGNETS.md`. Any state change without resume = protocol breach.

---

### 1.10 Integration with DOC-14 (Conflation Audit)

DOC-14 provides the **regression guard** for every resume:

| DOC-14 Mechanism | DOC-15 Resume Integration |
|------------------|---------------------------|
| `conflation_audit.py regress` | Runs in Phase 4 for any new/modified docs |
| Audit ledger (`audit_ledger.jsonl`) | Hash verified in Phase 3; updated in Phase 4 |
| 7 conflation types | Detection signatures applied to new docs |
| 6-step resolution protocol | Applied to any new conflation found |
| SHIELD horizon filter | 5-horizon check on any new resolution |
| Meta-audit protocol | Validates `conflation_audit.py` itself on resume |

**Integration Rule**: No resume completes Phase 5 without **clean audit regression** (0 CRITICAL, 0 HIGH).

---

### 1.11 Resume Execution Timeline per Failure Mode

| Failure Mode | Phase 1 (Acquire) | Phase 2 (Read) | Phase 3 (Verify) | Phase 4 (Reconcile) | Phase 5 (Resume) | Total RTO |
|--------------|-------------------|----------------|------------------|---------------------|------------------|-----------|
| **Workspace Loss** | 30s (clone) | 10s (read 4 files) | 60s (verify chunks) | 120s (audit regress) | 10s (start monitors) | **~4 min** |
| **Runner Transition** | 0s (already in dir) | 10s | 60s | 120s | 10s | **~3 min** |
| **Heartbeat Gap** | 0s | 0s (auto-commit) | 30s | 0s (no new docs) | 10s | **~1 min** |
| **Network Partition** | Retry with backoff | N/A | Local verify | Queue for later | Local continue | **≤30 min** |
| **Tool Drift** | 0s | 0s | 60s (version check) | 0s | 10s (pip install) | **~2 min** |
| **Civilizational Gap** | 30s | 10s (knowledge format) | 300s (format parse) | 120s | 10s | **~8 min** |

---

### 1.12 Cross-Reference to AGENTS.md and Prior Handoff Patterns

| AGENTS.md Section | DOC-15 Implementation |
|-------------------|----------------------|
| Heartbeat Requirements (167-175) | Phase 5 starts heartbeat monitor; HEARTBEAT_MAGNETS.md read in Phase 2 |
| Session Resume Protocol (192-198) | This document IS the canonical protocol |
| Runner Workflow (88-98) | Phase 5 continues runner workflow from TODO.md |
| Key Commands (115-135) | All commands available in `session_resume.py` CLI |
| Conventions (137-144) | Naming, chunking, intros all followed |

**Prior Handoff Evolution** (11 documented resumes):

| Runner | Handoff Innovation | Incorporated Into Protocol |
|--------|-------------------|---------------------------|
| 001 | Initial `startup.sh` | Phase 1 acquire + Phase 5 monitors |
| 002 | `NEXT_runner_002.md` | Phase 2 read + Phase 5 update |
| 003 | `RESUME_SESSION` context | Phase 2 read (4 files) |
| 004 | Heartbeat PID tracking | Phase 3 verify + Phase 5 start |
| 005 | Task timer integration | Phase 3 verify + Phase 5 start |
| 006 | Chunk verification | Phase 3 verify-all |
| 007 | Intro verification | Phase 3 intro completeness |
| 008 | Audit ledger hash | Phase 3 verify + Phase 4 reconcile |
| 009 | Benchmark timing | RTO≤5min gate |
| 010 | Conflation audit regression | Phase 4 mandatory |
| 011 | Meta-audit self-check | Phase 3 tool validation |

---

### 1.13 Chapter 1 Summary

The Session Resume Framework is a **deterministic, auditable, horizon-consistent continuity protocol**:

- **Origin**: Ephemeral workspace + mandatory runner succession (Williams Lock)
- **Method**: 5-Phase Protocol (Acquire→Read→Verify→Reconcile→Resume) with binary verification
- **Scope**: 11 component categories, full pipeline state reconstruction
- **Targets**: RTO≤5min, RPO=last commit, 100% context reconstruction, 0 conflation regression
- **Automation**: `session_resume.py` with CLI, benchmark, verify, dry-run modes
- **Integration**: DOC-14 conflation audit regression mandatory in Phase 4
- **Heuristics**: All 5 lenses applied sequentially per resume execution
- **History**: 11 prior resumes validated; protocol evolved from their innovations

This chapter establishes the resume framework. Chapters 2–8 provide **deep specifications** for each protocol component. Chapter 9 provides the **master traceability matrix** for the resume framework itself.

---

*End of Chapter 1. Next: Chapter 2 — SHIELD Continuity Triad: Calm, Resilience, Continuity as Protocol.*
---
