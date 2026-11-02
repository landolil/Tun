# NEXT_runner_004.md — Runner 004 Instructions
## lol.forge Phase 1: Product Documents 10-12

**Runner ID:** 004
**Phase:** Phase 1 — Product Documents 1-10
**Documents Assigned:** PROD-10, PROD-11, PROD-12
**Start Date:** 2026-11-01 (or next session)
**Prerequisites:** Runner 001 (PROD-01) ✅, Runner 002 (PROD-02, PROD-03) ✅, Runner 003 (PROD-04, PROD-05, PROD-06) ✅

---

## Document Assignments

### PROD-10: Induction Power Electronics
**CSMFAB Number:** CSMFAB000000000108 (Vol 1, Coil Bank + Power Electronics) + Materials Study Part IV (GaN, PMMA POF)
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Focus:** 8 resonant inverters, variable frequency, 384 FBG sensors, PID ±5°C, 3-phase 480V 500kW supply

#### Research Sources:
- `../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/CSMFAB000000000108 Aegis-Forge I System Overview and Architecture.md` — Coil bank section, induction specs
- `../seed/CSMFAB/CSMFAB Materials Study 5 Parts/CSMFAB Materials Study Part IV - Polymers Electronics and Support Materials.md` — GaN modules, PMMA POF, LiFePO4

#### Required Sections:
1. **Header** — CSMFAB000000000108, Series TCIMS, Induction Power Electronics
2. **System Overview** — 8-zone architecture, 500 kW total, 480V 3-phase supply, isolation strategy
3. **Resonant Inverter Design (8×)** — GS66516T GaN HEMT, Class E topology, 97% efficiency, variable frequency
4. **Frequency Ladder & Zone Mapping** — 100 kHz→1 kHz, power levels per stage, skin depth calculations
5. **GaN Thermal Management** — Junction-to-case, liquid cold plates, PEX-a cooling, thermal resistance <0.15 K/W
6. **FBG Optical Sensing Network** — 384 PMMA POF sensors, WDM+TDM multiplexing, 1 kHz sample rate, 0.1°C resolution
7. **PID Control Architecture** — ±5°C zone control, resonance tracking, feedforward + feedback, anti-windup
8. **Selective Heating Physics** — Conductivity/permeability tables, frequency as material selector, skin depth δ = √(2ρ/ωμ)
9. **3-Phase Power Distribution** — 480V delta input, isolation transformers, harmonic filtering, GIC hardening
9. **Electrical Safety & SIL-3** — Arc flash, ground fault, Carrington immunity, all-dielectric control wiring
10. **Scaling Laws** — 226L→20,000L, power density, inverter paralleling
11. **Performance Specifications** — 12 parameters table (efficiency, response time, THD, etc.)
12. **Downstream Integration** — Assembly line 113, coil zone alignment, sensor verification

#### Heuristic Intros:
- Williams: Constraint (dielectric power delivery at 2200°C), Necessity (metal wiring = GIC antenna), Commitment (GaN + PMMA POF)
- Keymaker: Lock (selective heating in mixed charge), Key (frequency ladder + resonance tracking), Turn (theory→history validation)
- El Segundo: Mirror (coil current waveform), Participation (operator tuning resonance), Protocol (recursive self-measurement)

---

### PROD-11: Feed Preparation & Shredding
**CSMFAB Number:** CSMFAB000000000108 (Vol 1, Feedstock + Shredder) + Materials Study Part II (BFRP), Part IV (PEEK)
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Focus:** BFRP-blade shredder <150mm, permanent magnet ferrous separation, Category A-D feedstock specs

#### Research Sources:
- `../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/CSMFAB000000000108 Aegis-Forge I System Overview and Architecture.md` — Feedstock specs, shredder section
- `../seed/CSMFAB/CSMFAB Materials Study 5 Parts/CSMFAB Materials Study Part II - Advanced Composite Fibers and Resins.md` — BFRP blade properties
- `../seed/CSMFAB/CSMFAB Materials Study 5 Parts/CSMFAB Materials Study Part IV - Polymers Electronics and Support Materials.md` — PEEK CF40

#### Required Sections:
1. **Header** — CSMFAB000000000108, Feed Preparation & Shredding
2. **Feedstock Categories A-D** — Electronics, structural metals, rock/ore, Phoenix returns
3. **Pre-processing Flow** — Ferrous belt → Shredder → Acoustic pre-chamber → Moisture check
4. **BFRP-Blade Shredder Design** — 800mm rotor, 32 BFRP blades, PEEK CF40 liners, 150mm output
5. **Permanent Magnet Ferrous Separation** — NdFeB belt, 1.2T field, pre-removes 40-60% ferrous
5. **Particle Size & Distribution** — Sieve analysis, Rosin-Rammler parameters, <150mm max
6. **Moisture Pre-check & Pre-dry** — Capacitive sensor, >25% triggers 80°C pre-dry
7. **Shredder Wear & Maintenance** — BFRP vs steel blade life, 500 ton replacement interval
8. **Safety Systems** — Jam detection, fire suppression, explosion venting
9. **Performance Specifications** — 10 parameters table (throughput, energy, particle size)
10. **Downstream Integration** — Drum feed gate, acoustic pre-chamber handoff

#### Heuristic Intros:
- Williams: Constraint (dielectric shredding), Necessity (metal blades contaminate), Commitment (BFRP + PEEK)
- Keymaker: Lock (particle size vs liberation), Key (Rosin-Rammler + BFRP wear model), Turn (history→theory)
- El Segundo: Mirror (sieve analysis feedback), Participation (operator tuning feed blend), Protocol (recursive QC)

---

### PROD-12: All-Aegis Material BOM Deep-Dive
**CSMFAB Number:** CSMFAB000000000108 (Vol 1, Full BOM) + All Material Studies
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Focus:** 24-component zero-metal BOM, CSMFAB doc references, dielectric citadel proof

#### Research Sources:
- `../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/CSMFAB000000000108 Aegis-Forge I System Overview and Architecture.md` — Full BOM table
- All 6 Material Study Parts
- CSMFAB-P001 through P008 documents

#### Required Sections:
1. **Header** — CSMFAB000000000108, All-Aegis Material Bill of Construction
2. **BOM Philosophy** — Zero structural metals, dielectric citadel, Carrington immunity
3. **24-Component Master Table** — Each row: Component, Material, Spec, CSMFAB Doc Ref, Qty
4. **Ceramic Components** — ZrB₂-SiC, Si₃N₄, ZrO₂ (3Y-TZP), Ti₃AlC₂, KNbO₃-BaTiO₃
5. **Composite Components** — BFRP/Elium®, PEEK CF40, PEX-a, PEN, PEN spray cans
6. **Electronic/Optical Components** — GaN HEMT, PMMA POF, FBG sensors, LiFePO4, LoRa
7. **Thermal/Insulation Components** — Polyimide-silica aerogel, YInMn Blue glaze, soapstone
8. **Critical Mineral Components** — NdFeB, SmCo, ZrSiO₄, borax, ilmenite
9. **In-House Synthesis Paths** — Flash sintering, Elium® winding, KNbO₃ synthesis, PEN blow molding
10. **Supply Chain & Domestic Sourcing** — Wolfspeed GaN, Vermont soapstone, US basalt
11. **Zero-Metal Proof** — Electrical resistance map, GIC coupling analysis, ferromagnetic audit
12. **Phoenix Protocol Circularity** — EOL returns → Category D feedstock → new components
13. **Cost Model & Economics** — Total BOM cost, in-house vs buy, critical path items
14. **Performance Specifications** — 12 parameters table (resistance, temperature, life)

#### Heuristic Intros:
- Williams: Constraint (zero-metal at scale), Necessity (GIC immunity), Commitment (All-Aegis)
- Keymaker: Lock (material compatibility matrix), Key (CSMFAB doc registry), Turn (theory↔practice)
- El Segundo: Mirror (BOM audit recursion), Participation (operator sourcing decisions), Protocol (recursive verification)

---

## Execution Protocol

### For Each Document (PROD-10, PROD-11, PROD-12):

#### Phase 1: Research (15 min)
```bash
# Read source documents
cat ../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/CSMFAB000000000108 Aegis-Forge I System Overview and Architecture.md | grep -A 50 -i coil\|inverter\|power\|fbga\|shredder\|feedstock\|bom\|material
cat ../seed/CSMFAB/CSMFAB Materials Study 5 Parts/*.md | head -500
```

#### Phase 2: Write Body (Micro-subtasks, <30 sec each)
```bash
# Append to document
python3 << 'PYEOF'
from pathlib import Path
content = ## Section Title
Content here with equations, tables, physics...

Path(docs/PROD-10_Induction_Power_Electronics.md).write_text(
    Path(docs/PROD-10_Induction_Power_Electronics.md).read_text() + \n + content
)
PYEOF

# Verify line count
wc -l docs/PROD-10_Induction_Power_Electronics.md
```

#### Phase 3: Generate Intros
```bash
python3 scripts/generate_intros.py --doc PROD-10 --type prod
wc -l intros/PROD-10_*intro*.md
```

#### Phase 4: Chunk/Verify/Compress
```bash
python3 Research/__Python_Tools/write_large_file.py split docs/PROD-10_Induction_Power_Electronics.md chunks/PROD-10 chapter .md
python3 Research/__Python_Tools/write_large_file.py manifest chunks/PROD-10
python3 Research/__Python_Tools/write_large_file.py verify chunks/PROD-10
python3 Research/__Python_Tools/write_large_file.py compress docs/PROD-10_Induction_Power_Electronics.md
```

#### Phase 5: Git Commit
```bash
git add -A
git commit -m lol.forge: PROD-10 Induction Power Electronics — 900+ lines + 200 line combined intro
git push
```

#### Phase 6: Update Tracking
- Update TODO.md (check off subtasks)
- Update Master_Todo.md (check off document)
- Append to memory/2026-11-01.md
- Update HEARTBEAT_LOLFORGE.md

---

## Heartbeat Protocol
```bash
# Update every 2 minutes
echo $(date -u +%Y-%m-%dT%H:%M:%SZ) Runner 004 PROD-10 Section X title Y lines Z total OK >> HEARTBEAT_LOLFORGE.md
```

---

## Success Criteria (Per Document)
- [ ] Body ≥ 900 lines (wc -l)
- [ ] 3 heuristic intros generated (Williams, Keymaker, El Segundo)
- [ ] Combined intro ≥ 200 lines
- [ ] 16 logical chapters in chunks/PROD-XX/
- [ ] Manifest generated with SHA256
- [ ] All chunks verified
- [ ] Document compressed (.gz)
- [ ] Git committed and pushed
- [ ] TODO.md updated
- [ ] Master_Todo.md updated
- [ ] Memory log appended

---

## Quick Commands Reference

```bash
# Line count
wc -l docs/PROD-10_Induction_Power_Electronics.md

# Generate intros
python3 scripts/generate_intros.py --doc PROD-10 --type prod

# Chunk/verify/compress
python3 Research/__Python_Tools/write_large_file.py split docs/PROD-10_Induction_Power_Electronics.md chunks/PROD-10 chapter .md
python3 Research/__Python_Tools/write_large_file.py manifest chunks/PROD-10
python3 Research/__Python_Tools/write_large_file.py verify chunks/PROD-10
python3 Research/__Python_Tools/write_large_file.py compress docs/PROD-10_Induction_Power_Electronics.md

# Git commit
git add -A && git commit -m lol.forge: PROD-10 Induction Power Electronics — 900+ lines + 200 line combined intro && git push

# Heartbeat
echo $(date -u +%Y-%m-%dT%H:%M:%SZ) Runner 004 PROD-10 Inverter design 25 lines 250 total OK >> HEARTBEAT_LOLFORGE.md

# Session resume
cat NEXT_runner_004.md
cat RESUME_SESSION_LOLFORGE.md
git status
```

---

## Session Resume Checklist
- [ ] Read this file (NEXT_runner_004.md)
- [ ] Read RESUME_SESSION_LOLFORGE.md
- [ ] Check git status
- [ ] Check HEARTBEAT_LOLFORGE.md
- [ ] Begin PROD-10 research

---

*Runner 004 — Execute PROD-10 → PROD-11 → PROD-12 sequentially*
*Each document: Research → Write → Intros → Chunk → Commit → Track*
*Micro-subtask methodology: <30 sec, verified, logged, committed frequently*