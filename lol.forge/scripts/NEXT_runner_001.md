# NEXT_runner_001.md — lol.forge Runner 001 Instructions
## Phase 1: Foundation Architecture — PROD-01, PROD-02, PROD-03

**Generated:** 2026-10-28 21:00:00 UTC
**Runner:** 001
**Phase:** Phase 1 — Product Documents 1-10
**Estimated Duration:** 1-2 sessions

---

## Assigned Documents

### PROD-01: System Overview & Architecture
**Source:** Aegis-Forge Vol 1 (CSMFAB000000000108) — 295 lines
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Priority:** Critical — Foundation for all subsequent documents

### PROD-02: Thermal Cascade Process Engineering
**Source:** Aegis-Forge Vol 2 (CSMFAB000000000109) — 391 lines
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Priority:** Critical — Core process definition

### PROD-03: Inductive Heating Zone Design
**Source:** Aegis-Forge Vol 1 (coil bank section) + Materials Study
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Priority:** High — Enables thermal cascade

---

## Detailed Work Plan

### Subtask 1.1: Research & Extraction (PROD-01) — 30 min
- [ ] Read Aegis-Forge Vol 1 completely (CSMFAB000000000108)
- [ ] Extract: component diagram, 8-stage table, material BOM (24 rows), drum specs, coil bank, pressure vessel, port system
- [ ] Read Outfit Fabricator heuristic intros (Williams/Keymaker/El Segundo templates)
- [ ] Note key equations: centrifugal force, induction power, thermal ramp

### Subtask 1.2: Write PROD-01 Body — 60-90 min
- [ ] Document header: CSMFAB numbering, series, classification
- [ ] Section 1: Purpose & Design Mandate (zeroth-stage machine, 3 feedstock categories)
- [ ] Section 2: Operating Principle — Thermophysical Cascade Separation
  - Foundational physics (melting points, centrifugal separation)
  - Eight thermal processing stages table (expanded from source)
  - Selective induction heating physics (conductivity, permeability, equations)
- [ ] Section 3: Machine Architecture — Full System Description
  - Primary components diagram (ASCII)
  - Drum assembly (ZrB₂-SiC, 3 liner zones, port valve system)
  - Induction coil bank (8 zones, frequencies, power, cooling)
- [ ] Section 4: Outer Pressure Vessel & Safety System
  - BFRP/Elium® vessel, Barlow validation, YInMn Blue glaze, aerogel
  - PEEK CF40 flanges, dynamic rotary seals
- [ ] Section 5: All-Aegis Material Bill of Construction (complete 24-row table)
- [ ] Section 6: Feedstock Specifications (Categories A-D, pre-processing)
- [ ] Target: ≥900 lines of dense technical content

### Subtask 1.3: Generate PROD-01 Heuristic Intros — 20 min
- [ ] Williams intro: Constraint (Geometric-Material Unity for Forge), Necessity (elemental extraction gap), Commitment (dielectric citadel)
- [ ] Keymaker intro: Lock (material separation fidelity), Key (thermal cascade as primitive), Turn (theory↔practice)
- [ ] El Segundo intro: Mirror (forge observing its own separation), Participation (operator witnessing slugs), Protocol (measure→heat→separate→verify)
- [ ] Combined intro: Concatenate all three (~200 lines)
- [ ] Save to intros/PROD-01_System_Overview_intro_*.md and intros/PROD-01_System_Overview_COMBINED_INTRO.md

### Subtask 1.4: Verify & Chunk PROD-01 — 15 min
- [ ] Count lines: `wc -l docs/PROD-01_System_Overview.md`
- [ ] Split: `python3 ../../__Python_Tools/write_large_file.py split docs/PROD-01_System_Overview.md chunks/PROD-01 chapter .md`
- [ ] Manifest: `python3 ../../__Python_Tools/write_large_file.py manifest chunks/PROD-01`
- [ ] Verify: `python3 ../../__Python_Tools/write_large_file.py verify chunks/PROD-01`
- [ ] Compress: `python3 ../../__Python_Tools/write_large_file.py compress docs/PROD-01_System_Overview.md`

### Subtask 1.5-1.8: Repeat for PROD-02 (Thermal Cascade)
- [ ] Research Vol 2 (391 lines) — extract stage-by-stage engineering
- [ ] Write 900+ lines: cascade ramp protocol, Stage 0 acoustic, Stage 1 IR drying, Stage 2 polymer, Stage 3 pyrolysis, Stage 4 low-temp metals, Stage 5 Al, Stage 6 Cu, Stage 7 Fe, Stage 8 mineral
- [ ] Generate 3 heuristic intros + combined
- [ ] Verify, chunk, manifest, compress

### Subtask 1.9-1.12: Repeat for PROD-03 (Inductive Heating)
- [ ] Research Vol 1 coil bank + Materials Study for coil specs
- [ ] Write 900+ lines: 8-zone design, frequency table, power levels, GaN inverters, FBG sensors, PID control, copper tube construction, alumina insulation, water cooling
- [ ] Generate 3 heuristic intros + combined
- [ ] Verify, chunk, manifest, compress

---

## Commands Reference

```bash
# Write document (use Python for streaming large content)
python3 << 'PYEOF'
from pathlib import Path
content = # PROD-01: System Overview & Architecture
## CSMFAB000000000108 — Aegis-Forge I Planetary Centrifugal Inductive Material Separation
[...900+ lines...]

Path(docs/PROD-01_System_Overview.md).write_text(content)
PYEOF

# Generate heuristic intros
python3 scripts/generate_intros.py --doc PROD-01 --type prod

# Verify line counts
wc -l docs/PROD-01_System_Overview.md
wc -l intros/PROD-01_System_Overview_COMBINED_INTRO.md

# Chunk and verify
python3 ../../__Python_Tools/write_large_file.py split docs/PROD-01_System_Overview.md chunks/PROD-01 chapter .md
python3 ../../__Python_Tools/write_large_file.py manifest chunks/PROD-01
python3 ../../__Python_Tools/write_large_file.py verify chunks/PROD-01

# Git commit
git add -A
git commit -m lol.forge: PROD-01 System Overview — 900+ lines + 200 line combined intro
git push
```

---

## Success Criteria for Runner 001

- [ ] 3 Product documents complete (PROD-01, PROD-02, PROD-03)
- [ ] Each ≥900 lines body content
- [ ] Each has 3 individual heuristic intros (~67 lines each)
- [ ] Each has 1 combined intro (~200 lines)
- [ ] All chunked, manifested, verified, compressed
- [ ] Master_Todo.md updated with 3 completions
- [ ] TODO.md updated
- [ ] memory/2026-10-28.md appended with session log
- [ ] NEXT_runner_002.md created
- [ ] Git committed and pushed (3+ commits)

---

## Next Runner Preview (Runner 002)

**Documents:** PROD-04 (ZrB₂-SiC Drum), PROD-05 (Acoustic Liberation), PROD-06 (BFRP Vessel)
**Source:** Aegis-Forge Vol 1 (drum, ports, vessel), Vol 3 (acoustic)
**Focus:** Physical hardware engineering deep-dives

---

## Blockers & Risks

| Risk | Mitigation |
|------|------------|
| Source docs incomplete | Read all 5 Aegis-Forge volumes first |
| Line count short | Expand with equations, tables, derivations, cross-refs |
| Heuristic intros repetitive | Customize each to document's specific lock/key/mirror |
| Git push fails | Use `git pull --rebase` before push |

---

## Heartbeat Reminder

- Update HEARTBEAT_LOLFORGE.md every 2 minutes
- Subtask timeout: 30 seconds
- Print progress each subtask: `[HEARTBEAT] Runner 001 | PROD-01 | writing | 340 lines | 1 commits | OK`

---

*Execute sequentially. Complete each subtask before next. Log everything.*
*Runner 001 — Foundation Architecture — Begin.*