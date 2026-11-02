## Project Overview
# CSMMinesMagnets

**Category:** CSMWip | **State:** Part of Another Project | **Files:** 122

**Parent Project:** CSMWip

### Summary

Mining and magnetics research (chunks subproject)

---
## Architecture & Design — Williams Heuristic
### System Boundaries

The **CSMMinesMagnets** project operates within the **CSMWip** domain, 
functioning as a **Part of Another Project** with 122 files. 
It belongs to the CSMWip ecosystem.

### Core Principles

1. **Modularity** — Components are independently deployable and testable
2. **Traceability** — Every artifact links to its source requirement
3. **Resilience** — Graceful degradation under partial failure
4. **Observability** — Comprehensive logging, metrics, and audit trails

### Component Diagram

```
CSMMinesMagnets
├── Python Scripts/Automation
├── FinishedWork/
├── Logs/
├── chunks/
├── intros/
├── scripts/
├── Documentation (Markdown)
├── Build System
└── Configuration
```

## Implementation — Keymaker Protocol
### Technology Stack

| Layer | Technology | Version | Purpose |
|-------|------------|---------|---------|
| Language | Python | 3.8+ | Scripting/Automation |
| Docs | Markdown | Latest | Documentation |
| Version Control | Git | — | Source control |
| Documentation | write_large_file.py | — | Chapter-based authoring |

### Key Files & Directories

```
CSMMinesMagnets/
├── FinishedWork/
├── Logs/
├── chunks/
├── intros/
├── scripts/
├── README.md              # This file
├── AGENTS.md              # Project conventions
├── TODO.md                # Task hierarchy
├── memory/                # Daily session logs
├── README_chunks/         # Chapter chunks (auto-generated)
└── FinishedWork/          # Completed documents
```

### Configuration

Key project files:

- `AGENTS.md` — Project-specific conventions and commands
- `TODO.md` — Hierarchical task breakdown (milestones → tasks → subtasks)
- `memory/` — *To be created*: Session logging directory
- `NEXT_runner_XXX.md` — Next session instructions

## Operations — El Segundo Protocol
### Session Lifecycle

1. **Startup** — Read `AGENTS.md` → `TODO.md` → `memory/latest.md` → `NEXT_runner_XXX.md`
2. **Execution** — Process subtasks sequentially with 30s timeout guard
3. **Heartbeat** — Progress output every 2 minutes (120s interval)
4. **Checkpoint** — Update `TODO.md` and log to `memory/` after each subtask
5. **Handoff** — Create `NEXT_runner_XXX+1.md` and update `RESUME_SESSION.md`

### Quality Gates

- All reassembled documents must pass manifest verification
- Cross-reference validation across related documents
- Python tests pass (pytest/unittest)
- Type checking passes (mypy/pyright if configured)
- Mathematical consistency checks for synthesis documents
- Material property consistency for engineering specs

## Three-Pronged Heuristic Integration
This project employs the **Williams/Keymaker/El Segundo** triad:

### Williams Heuristic — Architectural Clarity

- **Purpose**: Define what the system *is* and *why* it exists
- **Method**: Boundary analysis, component mapping, dependency graphs
- **Output**: `AGENTS.md` conventions, `ARCHITECTURE.md` diagrams
- **Applied Here**: Clear project categorization (CSMWip), 
explicit parent-child relationship (CSMWip)

### Keymaker Protocol — Implementation Precision

- **Purpose**: Define *how* the system is built and validated
- **Method**: Reproducible builds, chapter-based authoring, manifest verification
- **Output**: `build.sh`, `write_large_file.py` pipelines, `MANIFEST.json`
- **Applied Here**: Chunk-based documents, SHA256 verification

### El Segundo Protocol — Operational Excellence

- **Purpose**: Define *how* the system runs and evolves
- **Method**: Session resume, heartbeat monitoring, subtask granularity
- **Output**: `NEXT_runner_XXX.md`, `HEARTBEAT.md`, `memory/` logs
- **Applied Here**: 30s subtask limit, 2min heartbeat, auto-continue queue

### Integration Matrix

| Phase | Williams | Keymaker | El Segundo |
|-------|----------|----------|------------|
| Design | Boundaries | Tech Stack | Session Model |
| Build | Components | Chunk Pipeline | 30s Timeout |
| Test | Interfaces | Manifest Verify | Heartbeat |
| Deploy | Contracts | Reproducible | Handoff |
| Evolve | Versioning | Migration | Resume |

## Roadmap & Future Work
### Immediate (Next 1-2 Sessions)

- [ ] Set up `memory/` directory for session logging
- [ ] Complete README generation and validation

### Short Term (Next 5 Sessions)

- [ ] Implement heartbeat monitoring for this project
- [ ] Create `NEXT_runner_001.md` with first batch assignments

### Long Term (Ongoing)

- [ ] Integrate with parent project (CSMWip) workflows
- [ ] Contribute to cross-project synthesis documents
- [ ] Maintain document currency with quarterly reviews
- [ ] Archive completed phases to `FinishedWork/` with compression

## Appendix — Quick Reference
### Key Commands

```bash
# Session startup
source ../../__Python_Tools/write_large_file.py  # Load utilities

# Document operations
python3 ../../__Python_Tools/write_large_file.py split <input> <chunks_dir>
python3 ../../__Python_Tools/write_large_file.py concat <chunks_dir> <output>
python3 ../../__Python_Tools/write_large_file.py manifest <chunks_dir>
python3 ../../__Python_Tools/write_large_file.py verify <chunks_dir>
python3 ../../__Python_Tools/write_large_file.py compress <file>


# Git workflow
git add -A && git commit -m '<type>: <description>' && git push
```

### File Locations

- **Project Root**: `CSMWip/CSMMinesMagnets`
- **Chunks**: `CSMWip/CSMMinesMagnets/README_chunks/`
- **Manifest**: `CSMWip/CSMMinesMagnets/README_chunks/MANIFEST.json`
- **Memory Logs**: `CSMWip/CSMMinesMagnets/memory/`
- **Runner Files**: `CSMWip/CSMMinesMagnets/NEXT_runner_*.md`

### Project Statistics

- **Total Files**: 122
- **File Types**: .md: 147, .py: 11, .json: 11, .gz: 10, .sh: 2, : 1, .log: 1
- **Languages**: Markdown: 147, Python: 11, JSON: 11, Shell: 2
- **Key Directories**: 5

### Related Projects

- **Parent**: CSMWip (`CSMWip`)
- **Category Peers**: Other projects in CSMWip
- **File Count**: 122 files

---

*README generated for CSMMinesMagnets — Part of Another Project*
*Category: CSMWip | Files: 122 | Parent: CSMWip*
*Generated using write_large_file.py IncrementalDocumentWriter*
