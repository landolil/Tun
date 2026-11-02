# RESUME_SESSION_MAGNETS.md — CSMMinesMagnets Session Resume Context
## Complete Context for Picking Up Any Session State

**Project**: CSMMinesMagnets — Chilean Magnetic Minerals Brokerage Intelligence
**Last Session**: 2026-11-02 (Runner 017i — DOC-34 Complete)
**Current Phase**: Phase 5 — Community-Specific Intelligence (10 documents)
**Next Runner**: 017j (DOC-35: María Elena Lithium Community)

---

## Quick Start Commands

```bash
cd /workspace/app/lol.rareearth/CSMMinesMagnets

# 1. Full resume (reads all context)
./scripts/resume_runner.sh 017j

# 2. Quick status check
./scripts/resume_runner.sh --status

# 3. View next runner instructions
./scripts/resume_runner.sh --next

# 4. Git status
git status
```

---

## Project State Summary

### Completed (Phase 5 - 9 of 10):
- [x] DOC-26: Atacameño Territory (3,600+ lines) — tag `runner-017a-complete`
- [x] DOC-27: Diaguita Valleys (5,500+ lines) — tag `runner-017b-complete`
- [x] DOC-28: Mapuche-Pehuenche (5,800+ lines) — tag `runner-017c-complete`
- [x] DOC-29: Mapuche-Sur (2,480+ lines) — tag `runner-017d-complete`
- [x] DOC-30: Kawéskar/Yagán Austral Fjords (2,240+ lines) — tag `runner-017e-complete`
- [x] DOC-31: Calama Mining Community (4,800+ lines) — tag `runner-017f-complete`
- [x] DOC-32: Antofagasta Port City (4,800+ lines) — tag `runner-017g-complete`
- [x] DOC-33: Tocopilla/Mejillones Industrial Corridor (1,940 lines) — tag `runner-017h-complete`
- [x] DOC-34: San Pedro de Atacama Tourism Gateway (2,302 lines) — tag `runner-017i-complete`

**Phase 5 Progress**: 9/10 community documents complete
**Total Phase 5 Lines**: ~33,442+ lines across 9 docs
**Cumulative Project Lines**: ~69,000+ lines (Phase 1-5)

### In Progress:
- [ ] DOC-35: María Elena Lithium Community (Final Phase 5 document)

### Next Immediate Actions (Runner 017j)

#### DOC-35: María Elena Lithium Community
- **Source**: DOC-26 (Atacameño), CSMFAB Materials Study (lithium), SQM operations, company town dynamics
- **Target**: 900+ lines body + 5 heuristic intros (El Segundo PRIMARY)
- **Key Content**: 
  - María Elena: 7,000 pop, company town (SQM), nitrate heritage → lithium present
  - Economy: Lithium monopoly (SQM), nitrate legacy, zero diversification
  - Governance: Municipalidad weak, SQM dominant, Atacameño communities peripheral
  - Water: Salar de Atacama brine (SQM), fog harvesting potential, zero freshwater
  - Energy: Solar potential, grid connection, green lithium certification
  - Social: Company housing, union (Sindicato SQM), health (arsenic), education
  - Climate: Hyperarid, SLR not applicable, seismic low, dust storms
  - Zero tourism overlap (vs DOC-34), zero industrial corridor overlap (vs DOC-33), distinct from Calama mining city (DOC-31)

---

## Heuristic Composition Phase 5 (All Docs)
- **El Segundo PRIMARY**: Mirror/Participation/Protocol
- **Williams Primary**: Constraint/Necessity/Commitment
- **Baker Street Primary**: Observation/Deduction/Synthesis
- **Keymaker Secondary**: Lock/Key/Turn
- **SHIELD Secondary**: Surface/Hardening/Redundancy

---

## Key File Locations

| File | Purpose |
|------|---------|
| `AGENTS.md` | Project conventions, quality gates, commands |
| `Master_Todo.md` | Complete 35-document task hierarchy |
| `TODO.md` | Active task list (current runner) |
| `NEXT_runner_017j.md` | Next session instructions |
| `HEARTBEAT_MAGNETS.md` | 2-min heartbeat config |
| `memory/YYYY-MM-DD.md` | Daily session logs |
| `FinishedWork/DOC-XX_*.md.gz` | Compressed product documents |
| `chunks/DOC-XX/` | Chapter chunks per document |
| `intros/DOC-XX_*_intro_*.md` | Heuristic intro variants |

---

## Git Configuration

```bash
# Current branch: kilo/digital-dolphin-50m
# Remote: origin (https://github.com/landolil/Tun.git)
# Recent tags: runner-017a-complete through runner-017i-complete

# Standard commit for next doc
git add -A
git commit -m "lol.rareearth: DOC-35 María Elena Lithium Community — 900+ lines + intros"
git push
git tag runner-017j-complete
git push --tags
```

---

## Automation Scripts

| Script | Purpose |
|--------|---------|
| `scripts/generate_heuristic_intros.sh` | Generate 5 heuristic intros + Combined |
| `scripts/conflation_audit.py` | Zero-conflation verification (mandatory) |
| `__Python_Tools/write_large_file.py` | Chunking, verification, compression, manifest |
| `scripts/resume_runner.sh` | Session resumption |
| `scripts/heartbeat_monitor.py` | 2-min background heartbeat |

---

*Last Updated: 2026-11-02 | Runner 017i Complete | Next: Runner 017j (DOC-35)*
