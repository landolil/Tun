# RESUME_SESSION_MAGNETS.md — CSMMinesMagnets Session Resume Context
## Complete Context for Picking Up Any Session State

**Project**: CSMMinesMagnets — Chilean Magnetic Minerals Brokerage Intelligence
**Last Session**: 2026-11-02 (Runner 017g — DOC-32 Complete)
**Current Phase**: Phase 5 — Community-Specific Intelligence (10 documents)
**Next Runner**: 017h (DOC-33: Tocopilla/Mejillones Industrial Corridor)

---

## Quick Start Commands

```bash
cd /workspace/app/lol.rareearth/CSMMinesMagnets

# 1. Full resume (reads all context)
./scripts/resume_runner.sh 017h

# 2. Quick status check
./scripts/resume_runner.sh --status

# 3. View next runner instructions
./scripts/resume_runner.sh --next

# 4. Git status
git status
```

---

## Project State Summary

### Completed (Phase 5 - 7 of 10):
- [x] DOC-26: Atacameño Territory (3,600+ lines) — tag `runner-017a-complete`
- [x] DOC-27: Diaguita Valleys (5,500+ lines) — tag `runner-017b-complete`
- [x] DOC-28: Mapuche-Pehuenche (5,800+ lines) — tag `runner-017c-complete`
- [x] DOC-29: Mapuche-Sur (Lafkenche/Wenteche/Pewenche/Nagche) (2,480+ lines) — tag `runner-017d-complete`
- [x] DOC-30: Kawéskar/Yagán Austral Fjords (2,240+ lines) — tag `runner-017e-complete`
- [x] DOC-31: Calama Mining Community (4,800+ lines) — tag `runner-017f-complete`
- [x] DOC-32: Antofagasta Port City (4,800+ lines) — tag `runner-017g-complete`

**Phase 5 Progress**: 7/10 community documents complete
**Total Phase 5 Lines**: ~29,200+ lines across 7 docs
**Cumulative Project Lines**: ~65,000+ lines (Phase 1-5)

### In Progress:
- [ ] DOC-33: Tocopilla/Mejillones Industrial Corridor (next)
- [ ] DOC-34: San Pedro de Atacama Tourism Gateway
- [ ] DOC-35: María Elena Lithium Community

### Next Immediate Actions (Runner 017h)

#### DOC-33: Tocopilla/Mejillones Industrial Corridor
- **Source**: DOC-08 (Infrastructure), DOC-16 (Norte Grande), DOC-32 (Antofagasta), HIF Mejillones EIA
- **Target**: 900+ lines body + 5 heuristic intros (El Segundo PRIMARY)
- **Key Content**: 
  - Tocopilla: 25K pop, thermoelectric legacy, copper cathode port, iodine, water crisis
  - Mejillones: 12K pop, industrial bay (LNG, coal, HIF H₂/NH₃, desal), brine impact, Chango territory
  - Industrial symbiosis: Waste heat, CO₂ capture, brine valorization, circular economy
  - Aegis-Forge link: NH₃ terminal, REE shipping, desal supply, green H₂ thermal
  - Governance: Two municipalities, GORE, Puerto, Chango CPA, unions, artisanal fishers

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
| `NEXT_runner_017h.md` | Next session instructions |
| `HEARTBEAT_MAGNETS.md` | 2-min heartbeat config |
| `memory/YYYY-MM-DD.md` | Daily session logs |
| `FinishedWork/DOC-XX_*.md.gz` | Compressed product documents |
| `chunks/DOC-XX/` | Chapter chunks per document |
| `FinishedWork/intros/DOC-XX_*_intro_*.md` | Heuristic intro variants |

---

## Git Configuration

```bash
# Current branch: kilo/digital-dolphin-50m
# Remote: origin (https://github.com/landolil/Tun.git)
# Recent tags: runner-017a-complete through runner-017g-complete

# Standard commit for next doc
git add -A
git commit -m "lol.forge: DOC-33 Tocopilla/Mejillones Industrial Corridor — 900+ lines + intros"
git push
git tag runner-017h-complete
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

*Last Updated: 2026-11-02 | Runner 017g Complete | Next: Runner 017h (DOC-33)*
