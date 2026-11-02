# NEXT_runner_002.md — lol.forge Runner 002 Instructions
## Phase 1: Foundation Architecture — PROD-04, PROD-05, PROD-06

**Generated:** 2026-11-02 10:45:00 UTC
**Runner:** 002
**Phase:** Phase 1 — Product Documents 1-10
**Estimated Duration:** 1-2 sessions

---

## Assigned Documents

### PROD-04: ZrB₂-SiC Drum Engineering
**Source:** Aegis-Forge Vol 1 (drum specs, liner zones, port valves) + Materials Study Part I
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Priority:** Critical — Physical heart of the machine

### PROD-05: Acoustic Mineral Liberation Subsystem
**Source:** Aegis-Forge Vol 3 (CSMFAB000000000110) + Materials Study Part III
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Priority:** Critical — Stage 0 prerequisite for cascade efficiency

### PROD-06: BFRP Pressure Vessel Design
**Source:** Aegis-Forge Vol 1 (outer vessel, aerogel, glaze) + Materials Study Parts III, IV
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Priority:** Critical — Safety boundary, Carrington shield

---

## Detailed Work Plan

### Subtask 2.1: Research & Extraction (PROD-04) — 30 min
- [ ] Read Aegis-Forge Vol 1 drum section completely
- [ ] Read Materials Study Part I (ZrB₂-SiC, Ti₃AlC₂, ZrO₂, Si₃N₄)
- [ ] Extract: drum dimensions, flash sintering params, 3 liner zones, 8 port valves, Ti₃AlC₂ actuators, FBG embedding
- [ ] Note key equations: centrifugal stress, thermal shock, Barlow, CTE matching

### Subtask 2.2: Write PROD-04 Body — 60-90 min
- [ ] Document header: CSMFAB numbering, series, classification
- [ ] Section 1: Drum Overview — 600mm×800mm, 35mm wall, 226L volume
- [ ] Section 2: ZrB₂-SiC Composite Material Science (flash sintering, microstructure)
- [ ] Section 3: Three Liner Zones (Si₃N₄, ZrB₂-SiC, 3Y-TZP) — CTE matching
- [ ] Section 4: Eight Port Valve System (Ti₃AlC₂ thermal actuators, ZrO₂ pistons)
- [ ] Section 5: Ceramic Bearings & Drive (Si₃N₄ rollers, KNbO₃-BaTiO₃ motor)
- [ ] Section 6: FBG Sensor Embedding (48 sensors, 3 zones × 2 depths × 8 circumferential)
- [ ] Section 7: Structural Analysis (FEA: centrifugal, pressure, thermal gradient, thermal shock)
- [ ] Section 8: Manufacturing Process (FAST cycle, powder prep, die design, machining)
- [ ] Section 9: Quality Assurance (density, roundness, FBG survival, hydrotest)
- [ ] Section 10: Maintenance & Sustainment (10,000 cycle life, wear parts)
- [ ] Section 11: Cross-References (PROD-01, 02, 03, 09, 10, 27, FOLLOW-01, 04)
- [ ] Target: ≥900 lines dense technical content

### Subtask 2.3: Generate PROD-04 Heuristic Intros — 20 min
- [ ] Williams intro: Constraint (rotating ceramic pressure boundary), Necessity (material survival gap), Commitment (zero metals, flash sintering only)
- [ ] Keymaker intro: Lock (600mm drum fabrication), Key (flash sintering cycle), Turn (theory↔history)
- [ ] El Segundo intro: Mirror (FBG strain field), Participation (operator witnesses valve actuation), Protocol (ramp→hold→verify→log)
- [ ] Combined intro: Concatenate all three (~200 lines)
- [ ] Save to intros/PROD-04_ZrB2-SiC_Drum_Engineering_intro_*.md and intros/PROD-04_ZrB2-SiC_Drum_Engineering_COMBINED_INTRO.md

### Subtask 2.4: Verify & Chunk PROD-04 — 15 min
- [ ] Count lines: `wc -l docs/PROD-04_ZrB2-SiC_Drum_Engineering.md`
- [ ] Split: `python3 Research/__Python_Tools/write_large_file.py split docs/PROD-04_ZrB2-SiC_Drum_Engineering.md chunks/PROD-04 chapter .md`
- [ ] Manifest: `python3 Research/__Python_Tools/write_large_file.py manifest chunks/PROD-04`
- [ ] Verify: `python3 Research/__Python_Tools/write_large_file.py verify chunks/PROD-04`
- [ ] Compress: `python3 Research/__Python_Tools/write_large_file.py compress docs/PROD-04_ZrB2-SiC_Drum_Engineering.md`

### Subtask 2.5-2.8: Repeat for PROD-05 (Acoustic Liberation)
- [ ] Research Vol 3 (CSMFAB000000000110) — LF/US transducers, cavitation, liberation index
- [ ] Write 900+ lines: AMLS architecture, KNbO₃-BaTiO₃ bimorphs/Langevin probes, LF sweep 20→500Hz, US 40kHz cavitation, AMC mode, liberation physics equations, adaptive resonance tracking, AMC magnetic pre-sorting, transducer fabrication (epoxy-free, all-ceramic), 10k-hour life validation
- [ ] Generate 3 heuristic intros + combined
- [ ] Verify, chunk, manifest, compress

### Subtask 2.9-2.12: Repeat for PROD-06 (BFRP Vessel)
- [ ] Research Vol 1 vessel section + Materials Study Parts III, IV
- [ ] Write 900+ lines: 900mm ID × 1200mm, [±18°/90°]₄ filament winding, Barlow validation (σ_hoop=12.5MPa), 50mm polyimide-silica aerogel (λ=0.010), YInMn Blue glaze (SRI=115), PEEK CF40 flanges, ZrO₂/PEEK dynamic seals, hydrotest 15 bar N₂, IEEE 693 seismic
- [ ] Generate 3 heuristic intros + combined
- [ ] Verify, chunk, manifest, compress

---

## Commands Reference

```bash
# Write document (use Python for streaming large content)
python3 << 'PYEOF'
from pathlib import Path
content = """# PROD-04: ZrB2-SiC Drum Engineering
## CSMFAB000000000108 — Aegis-Forge I Drum Assembly
[...900+ lines...]
"""
Path("docs/PROD-04_ZrB2-SiC_Drum_Engineering.md").write_text(content)
PYEOF

# Generate heuristic intros
python3 scripts/generate_intros.py --doc PROD-04 --type prod

# Verify line counts
wc -l docs/PROD-04_ZrB2-SiC_Drum_Engineering.md
wc -l intros/PROD-04_ZrB2-SiC_Drum_Engineering_COMBINED_INTRO.md

# Chunk and verify
python3 Research/__Python_Tools/write_large_file.py split docs/PROD-04_ZrB2-SiC_Drum_Engineering.md chunks/PROD-04 chapter .md
python3 Research/__Python_Tools/write_large_file.py manifest chunks/PROD-04
python3 Research/__Python_Tools/write_large_file.py verify chunks/PROD-04

# Git commit
git add -A
git commit -m "lol.forge: PROD-04 ZrB2-SiC Drum Engineering — 900+ lines + 200 line combined intro"
git push
```

---

## Success Criteria for Runner 002

- [ ] 3 Product documents complete (PROD-04, PROD-05, PROD-06)
- [ ] Each ≥900 lines body content
- [ ] Each has 3 individual heuristic intros (~67 lines each)
- [ ] Each has 1 combined intro (~200 lines)
- [ ] All chunked, manifested, verified, compressed
- [ ] Master_Todo.md updated with 3 completions
- [ ] TODO.md updated
- [ ] memory/2026-11-02.md appended with session log
- [ ] NEXT_runner_003.md created
- [ ] Git committed and pushed (3+ commits)

---

## Next Runner Preview (Runner 003)

**Documents:** PROD-07 (Gas Capture), PROD-08 (Slug Cooling), PROD-09 (Port Valves)
**Source:** Aegis-Forge Vol 4 (gas), Vol 5 (assembly line), Vol 1 (port valves)
**Focus:** Gas processing, output handling, valve actuation

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
- Print progress each subtask: `[HEARTBEAT] Runner 002 | PROD-04 | writing | 340 lines | 1 commits | OK`

---

*Execute sequentially. Complete each subtask before next. Log everything.*
*Runner 002 — Drum & Vessel Engineering — Begin.*