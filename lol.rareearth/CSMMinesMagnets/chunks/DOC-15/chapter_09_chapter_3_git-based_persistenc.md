## Chapter 3: Git-Based Persistence Architecture — GitHub as Canonical State Store

### 3.1 The Git Persistence Principle

GitHub is the **single source of truth** for the CSMMinesMagnets pipeline. The workspace is ephemeral; Git is eternal.

> **Williams Voice**: *The Lock is ephemeral workspace. The Key is GitHub persistence. The Turn is: All state in Git, always.*

---

### 3.2 Repository Architecture

#### 3.2.1 Branch Strategy

```
main
  └── kilo/digital-dolphin-50m  (active development branch)
        ├── runner-001-complete (tag)
        ├── runner-002-complete (tag)
        ...
        ├── runner-011-complete (tag)  ← CURRENT
        └── HEAD (latest commit)
```

**Rules**:
- All work on `kilo/digital-dolphin-50m`
- Tags at each runner completion: `runner-XXX-complete`
- No direct commits to `main` — only via PR from runner branch
- `main` updated only at phase gates (every ~10 docs)

#### 3.2.2 Directory Structure (Canonical)

```
lol.rareearth/CSMMinesMagnets/
├── AGENTS.md                          # Conventions (immutable once set)
├── HEARTBEAT_MAGNETS.md               # Heartbeat config
├── RESUME_SESSION_MAGNETS.md          # Session context (updated per session)
├── NEXT_runner_XXX.md                 # Next runner instructions (per runner)
├── TODO.md                            # Active task list (updated per subtask)
├── Master_Todo.md                     # Full hierarchy (updated per doc)
├── FinishedWork/
│   ├── DOC-XX_*.md.gz                 # Compressed canonical docs
│   ├── intros/
│   │   └── DOC-XX_*_intro_*.md        # 6 heuristic intros per doc
│   └── audit_ledger.jsonl             # Conflation audit ledger (append-only)
├── chunks/
│   └── DOC-XX/
│       ├── MANIFEST.json              # SHA256 per chunk
│       └── chapter_XX_*.md            # Plaintext chapters
├── scripts/
│   ├── generate_heuristic_intros.sh   # Intro generator
│   ├── heartbeat_monitor.py           # 120s heartbeat
│   ├── task_timer.py                  # 30s task guard
│   ├── session_resume.py              # Resume automation
│   └── conflation_audit.py            # Conflation regression
├── __Python_Tools/
│   └── write_large_file.py            # Chunking/compression
└── Logs/
    ├── heartbeat.log                  # Heartbeat history
    ├── heartbeat_status.json          # Current heartbeat state
    └── task_timer.log                 # Subtask timing
```

---

### 3.3 Persistence Invariants

#### 3.3.1 Invariant 1: All State in Git

```
∀ state ∈ PipelineState : state ∈ Git
```

**Verification**: `git status --porcelain` returns empty (or only staged) at all phase gates.

#### 3.3.2 Invariant 2: Canonical Format is Knowledge Format

```
∀ doc ∈ Documents : format(doc) ∈ {Markdown, JSON, YAML, CSV}
```

No binary blobs, no proprietary formats, no tool-specific serialization.

#### 3.3.3 Invariant 3: Append-Only Ledgers

```
audit_ledger.jsonl, heartbeat.log, task_timer.log
```
Are append-only. History is immutable.

#### 3.3.4 Invariant 4: Version-Pinned Tooling

```
scripts/requirements.txt, __Python_Tools/write_large_file.py
```
Are committed to repo. No external dependency on specific tool versions.

---

### 3.4 Git Operations Protocol

#### 3.4.1 Commit Cadence

```bash