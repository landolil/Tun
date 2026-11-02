# NEXT_runner_010.md — Runner 010 Instructions
## lol.forge Phase 2 — Structural & Safety Documents (PROD-25, PROD-26, PROD-27)

**Project**: lol.forge — Carrington Storm Motors Forge
**Runner**: 010
**Phase**: Phase 2 — Product Documents 25-27 (Structural & Safety)
**Previous Runner**: 009 (PROD-24 complete)
**Target Documents**: PROD-25 (Structural Analysis & FEA), PROD-26 (Electrical Safety & GIC Immunity), PROD-27 (Manufacturing Process Plan)
**Session Start**: Run `./scripts/resume_runner.sh 010`

---

## Quick Start Commands

```bash
cd /workspace/app/Tun/lol.forge

# 1. Full resume (reads all context)
./scripts/resume_runner.sh 010

# 2. Quick status check
./scripts/resume_runner.sh --status

# 3. View this file
cat NEXT_runner_010.md

# 4. Git status
git status
```

---

## Document Batch: PROD-25, PROD-26, PROD-27

### PROD-25: Structural Analysis & FEA
**Target**: 900+ lines body + 200 lines combined intro
**Source Documents**:
- PROD-04 (ZrB₂-SiC Drum Engineering) — drum geometry, liner zones, ports, flash sintering
- PROD-06 (BFRP Pressure Vessel Design) — vessel geometry, filament winding, hydrotest
- PROD-09 (Material Exit Port Valve System) — Ti₃AlC₂ actuators, ceramic pistons
- PROD-12 (All-Aegis Material BOM) — material structural properties
- PROD-24 (Thermal Modeling) — thermal loads for structural FEA
- CSMFAB Materials Study Parts I, II, IV — ZrB₂-SiC, BFRP, Ti₃AlC₂ mechanical properties
- IEEE 693 (Seismic), ASME BPVC (Pressure Vessel), FOLLOW-25 (Seismic Qualification)

**Key Content Required** (13 sections + 4 appendices):
1. **Structural Design Basis**: Load cases (pressure, thermal, rotation, seismic, GIC, transport), safety factors, acceptance criteria
2. **Drum Structural FEA**: 600mm ID × 800mm L, 35mm wall, 35 MPa hoop stress (pressure), 400 MPa thermal stress (radial gradient), von Mises < 300 MPa (ZrB₂-SiC MOR 500 MPa), port reinforcement, thermal shock (ΔT/Δt = 100°C/s), Weibull reliability
3. **Vessel Structural FEA**: 900mm ID × 1200mm L, 18mm BFRP/Elium®, 10 bar design, 15 bar hydrotest, Barlow + filament winding optimization, Tsai-Wu failure criterion
4. **Frame & Support Structure**: BFRP spaceframe, drum/vessel supports, thermal expansion compensation, vibration isolation, seismic (IEEE 693 High)
5. **Port Valve Structural**: Ti₃AlC₂ actuator (MAX phase, 300 MPa at 800°C), ZrO₂ piston, PEEK CF40 spring, thermal cycling fatigue
6. **Coil Housing & Cold Plate**: BFRP coil former, microchannel cold plate (AlSiC), pressure containment, thermal distortion
7. **Carousel & Slug Mold**: 8-position ZrO₂ molds, centrifugal loading, thermal shock (2200°C → 25°C quench)
8. **Seismic Qualification (IEEE 693)**: Required Response Spectra (RRS), TRS qualification, shake table test plan, PGA = 1.0g, ZPA = 1.5g
9. **Fatigue & Damage Tolerance**: Thermal fatigue (500 cycles), pressure fatigue (5000 cycles), vibration fatigue (continuous), crack growth (Paris law), inspection intervals
10. **Non-Destructive Testing (NDT)**: UT (drum wall thickness), AE (crack detection), IR (delamination), FBG (strain monitoring), visual
11. **Transport & Handling**: Lifting points, CG, vibration (ASTM D4169), shock (MIL-STD-810), shipping frame
12. **Safety Factors Summary Table**: All components, all load cases, margins
13. **Cross-Reference Matrix**: Upstream (PROD-04, 06, 09, 12, 24) → Downstream (PROD-27 manufacturing, PROD-28 QA, PROD-29 deployment, PROD-30 maintenance, FOLLOW-04/05/07/25)

**Appendices**:
- A: Quick-Reference Card (stress limits, safety factors, NDT schedule)
- B: FEA Model Summary (mesh, BCs, solver settings, run times)
- C: Seismic Qualification Test Procedure
- D: Fatigue Life Calculations (all components)

---

### PROD-26: Electrical Safety & GIC Immunity
**Target**: 900+ lines body + 200 lines combined intro
**Source Documents**:
- PROD-10 (Induction Power Electronics) — GaN inverters, 480V 3-phase, isolation, DC bus
- PROD-23 (Control System Architecture) — all-dielectric network, floating secondary, NGR, air-gap
- PROD-03 (Inductive Heating Zone Design) — 8-zone coil bank, EMC
- PROD-07 (Gas Capture) — plasma torch HV
- IEEE 1656 (GIC), IEC 61000-2-9 (HEMP), IEC 62305 (Lightning), IEC 61508 (SIL)
- MIL-STD-1857 (Surface Charging), IEEE C62.41 (Surge)

**Key Content Required** (13 sections + 4 appendices):
1. **Electrical Safety Architecture**: TN-S vs IT, floating secondary rationale, 5 A NGR, fault current paths, touch voltage <50 V
2. **Dielectric Design**: All-dielectric field layer (PMMA POF), BFRP cable trays, YInMn conductive glaze (σ=10⁴ S/m) as Faraday cage, creepage/clearance per IEC 60664
3. **Carrington GIC Hardening**: dB/dt = 5000 nT/s, 100 A/km induced, Δ-Y isolation transformers, DC blocking, ride-through mode (PROD-23 Sec 7), Helmholtz test validation (100 A/m)
4. **HEMP E1/E2/E3 Protection**: E1 50 kV/m (GDT + MOV), E2 lightning-like (surge arresters), E3 quasi-DC (same as GIC), test per IEC 61000-2-9
5. **Lightning Protection**: IEC 62305, air terminals, down conductors (BFRP), grounding (5 Ω), surge protection zones
6. **EMC Emissions/Immunity**: CISPR 11 Class A, conducted/radiated, GaN switching (100 kHz) harmonics, mitigation (filtering, shielding, layout)
7. **Arc Flash & PPE**: NFPA 70E, incident energy calculation, PPE categories, boundaries, maintenance procedures
8. **SIL-3 Electrical SIS**: 24 SIFs electrical design, 2oo3 voting, common-cause failure (β<2%), proof test, PFD_avg <10⁻³
9. **Grounding & Bonding**: Single-point ground (external), isolated internal, 1 MΩ bleed resistors (static), equipotential bonding
10. **Power Quality**: THD <5%, voltage unbalance <2%, frequency ±0.5 Hz, UPS for controls (LiFePO₄ 100 Wh), ride-through
11. **Insulation Coordination**: BIL ratings, withstand voltages, partial discharge <10 pC, thermal aging (Arrhenius)
12. **Cyber-Physical Electrical**: Air-gap enforcement, data diode hardware, OT network isolation, supply chain (counterfeit GaN detection)
13. **Cross-Reference Matrix**: Upstream (PROD-03, 07, 10, 23) → Downstream (PROD-23 SIS, PROD-27 manufacturing, PROD-28 QA, PROD-29 commissioning, PROD-32 compliance, PROD-36 cyber, FOLLOW-10/27)

**Appendices**:
- A: Quick-Reference Card (protection devices, settings, test procedures)
- B: GIC/HEMP Test Report Template (CT-07)
- C: Single-Line Diagram (480V → DC bus → 8 inverters)
- D: Insulation Coordination Table (all equipment)

---

### PROD-27: Manufacturing Process Plan
**Target**: 900+ lines body + 200 lines combined intro
**Source Documents**:
- PROD-04 (ZrB₂-SiC Drum) — flash sintering, machining, QC
- PROD-06 (BFRP Vessel) — filament winding, cure, hydrotest
- PROD-08 (Slug Cooling) — ZrO₂ mold casting, carousel
- PROD-09 (Port Valves) — Ti₃AlC₂ actuators, ZrO₂ pistons
- PROD-10 (Power Electronics) — GaN inverter assembly, FBG integration
- PROD-12 (Material BOM) — in-house synthesis, supply chain
- PROD-24 (Thermal Modeling) — V&V test requirements
- PROD-25 (Structural) — NDT requirements
- PROD-26 (Electrical) — safety test requirements

**Key Content Required** (13 sections + 4 appendices):
1. **Build Sequence Overview**: 14 major assemblies, dependency graph, critical path, 18-month schedule
2. **Drum Manufacturing**: Flash sintering (5 min at 1800°C/50 MPa/300 V/cm), diamond grinding, liner attachment, FBG embedding, port sleeve installation, balancing
3. **Vessel Manufacturing**: Filament winding [±18°/90°]₄, Elium® cure cycle, aerogel gap installation, YInMn glaze application, flange bonding, hydrotest
4. **Coil Bank Manufacturing**: Copper tube winding, alumina sleeve, PEX-a cooling circuit, BFRP housing, alignment, HiPot test
5. **Power Electronics Assembly**: GaN inverter modules (8×), isolation transformers, DC bus, NGR, FBG interrogators, TSN switches, PTP grandmaster
6. **Control System Integration**: RTU/PLC/SIS hardware, PMMA POF cabling (480+ sensors, 96+ actuators), optical feedthroughs, Faraday cage (YInMn glaze)
7. **Carousel & Mold System**: 8-position ZrO₂ carousel, N₂ quench system, mass spec integration, Data Matrix stamping
8. **Gas & Fume Systems**: PROD-07 scrubbers, plasma torch, condensers, MFC rack, ZrO₂ probes
9. **Assembly Integration**: Drum insertion, vessel closure, flange alignment (laser tracker), gas connections, optical feedthroughs, E-stop loop
10. **Factory Acceptance Test (FAT)**: CT-01 through CT-10 (from PROD-24), performance benchmarks, safety validation
11. **Shipping & Site Prep**: Transport frames, vibration/shock monitoring, site foundation, utility connections, crane plan
12. **Site Acceptance Test (SAT)**: Re-run FAT subset, 10 production batches, operator training, handover
13. **Cross-Reference Matrix**: Upstream (all PROD-01 through PROD-26) → Downstream (PROD-28 QA, PROD-29 deployment, PROD-30 maintenance, PROD-39 T&E)

**Appendices**:
- A: Master Build Schedule (Gantt, 18 months, critical path highlighted)
- B: Tooling & Fixtures List (flash sintering die, winding mandrel, diamond grinder, alignment fixtures)
- C: Supplier Qualification Matrix (in-house vs. commercial, dual-source where critical)
- D: FAT/SAT Checklist (100+ test points, pass/fail criteria, sign-off)

---

## Heuristic Intro Requirements (Per Document)

For each PROD document, generate **4 intro files** in `intros/`:

| File | Perspective | Target Lines |
|------|-------------|--------------|
| `PROD-XX_<title>_intro_williams.md` | Williams (Constraint/Necessity/Commitment) | ~67 |
| `PROD-XX_<title>_intro_keymaker.md` | Keymaker (Lock/Key/Turn) | ~67 |
| `PROD-XX_<title>_intro_el_segundo.md` | El Segundo (Mirror/Participation/Protocol) | ~67 |
| `PROD-XX_<title>_COMBINED_INTRO.md` | Three-way synthesis + risk matrix | ~200 |

**Quality Gates for Each Intro**:
1. References specific document content (equations, material specs, sensor types, tolerance values)
2. Uses exact three-part structure (Lock/Key/Turn or Mirror/Participation/Protocol)
3. Technically precise — no generic platitudes
4. Cross-links to other documents — shows system-level thinking
5. Meets line count targets

---

## Processing Workflow (Per Document)

### Phase 1: Research (30 min)
```bash
# Read source documents
cat docs/PROD-04_ZrB2SiC_Drum_Engineering.md
cat docs/PROD-06_BFRP_Pressure_Vessel_Design.md
cat docs/PROD-24_Thermal_Modeling_and_Simulation.md
# ... etc.
```

### Phase 2: Write Document (3-4 hours)
```bash
# Write to docs/PROD-XX_<title>.md
# Target: 900+ lines body
# Include: headers, tables, equations, diagrams (ASCII), cross-ref matrix
```

### Phase 3: Generate Heuristic Intros (60 min)
```bash
# Write 4 intro files to intros/
# Williams: Constraint/Necessity/Commitment
# Keymaker: Lock/Key/Turn
# El Segundo: Mirror/Participation/Protocol
# Combined: Synthesis + risk matrix
```

### Phase 4: Prepend Combined Intro
```bash
cat intros/PROD-XX_<title>_COMBINED_INTRO.md docs/PROD-XX_<title>.md > tmp.md && mv tmp.md docs/PROD-XX_<title>.md
```

### Phase 5: Chunk, Verify, Compress
```bash
node scripts/split_chunks.js split docs/PROD-XX_<title>.md chunks/PROD-XX chapter .md
node scripts/split_chunks.js manifest chunks/PROD-XX
node scripts/split_chunks.js verify chunks/PROD-XX
node scripts/split_chunks.js compress docs/PROD-XX_<title>.md
```

### Phase 6: Git Commit & Push
```bash
git add -A
git -c user.name=Kilo Agent -c user.email=kilo@carringtonstormmotors.com commit -m lol.forge: PROD-XX <title> — <lines> lines + 200 intro, <N> chunks verified
git pull --rebase && git push
```

### Phase 7: Update Trackers
```bash
# Update TODO.md (micro-subtasks, heartbeat log)
# Update Master_Todo.md (checkboxes, progress table, last updated)
# Update memory/2026-11-02.md (session log)
# Update HEARTBEAT_LOLFORGE.md (heartbeat state, log)
# Update .heartbeat_state.json
```

---

## Heartbeat Protocol

**Interval**: ≤ 2 minutes (120 seconds)
**Subtask Timeout**: ≤ 30 seconds
**Auto-Continue**: Enabled — no blocking waits

```bash
# Start background monitor
python3 scripts/heartbeat_monitor.py --interval 120 &

# Manual heartbeat check
./scripts/resume_runner.sh --status
```

**Terminal Status Format**:
```
[HEARTBEAT] Runner 010 | PROD-25 | research | 45 lines | 0 commits | OK
```

---

## Git Configuration

```bash
# Identity (already configured)
git config user.name Kilo Agent
git config user.email kilo@carringtonstormmotors.com

# Remote
git remote -v
# origin  https://github.com/landolil/Tun.git (fetch)
# origin  https://github.com/landolil/Tun.git (push)

# Branch
git branch -M main
```

---

## Session Log Template (Append to memory/2026-11-02.md)

```
## Session Extension — Runner 010: PROD-25 Structural Analysis & FEA

**Date**: 2026-11-02 (continued)
**Runner**: 010
**Phase**: Phase 2 — Structural & Safety (Documents 25-27)

### PROD-25: Structural Analysis & FEA
- **Lines**: XXX body + 4 heuristic intros (~200 combined)
- **Sections**: 13 + 4 appendices
- **Key Specs**: [fill in after completion]
- **Chunks**: N chapters, manifest verified, compressed (XX KB)
- **Git**: Commit <hash>

---

## Heuristic Intros Generated (4 total for PROD-25)

| Document | Williams | Keymaker | El Segundo | Combined |
|----------|----------|----------|------------|----------|
| PROD-25 | ~67 lines | ~67 lines | ~67 lines | ~200 lines |

---

## Git Commits
<add to existing list>

---

## Trackers Updated
- **TODO.md**: PROD-25 marked complete
- **Master_Todo.md**: PROD-25 checked off; Phase 2 progress X/10
- **NEXT_runner_011.md**: Created for PROD-28, 29, 30

---

## Key Technical Achievements (PROD-25)
[fill in after completion]

---

## Blockers Encountered
[fill in if any]

---

## Next Actions (PROD-26, PROD-27)
[fill in after completion]

---

## Heartbeat Log (Extended)
<append to existing log>
```

---

## Emergency Recovery

If workspace is lost:
```bash
git clone https://github.com/landolil/Tun.git
cd Tun/lol.forge
./scripts/resume_runner.sh --status
cat RESUME_SESSION_LOLFORGE.md
cat NEXT_runner_010.md
```

---

*Next runner will be 011 for PROD-28, 29, 30 (QA, Deployment, Maintenance).*
*Last Updated: 2026-11-02 | Runner 009 complete: PROD-24*