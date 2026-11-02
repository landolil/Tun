# NEXT_runner_011.md — lol.forge Runner 011 Instructions
## Phase 2 Completion → Phase 3 Start: PROD-26, PROD-27, PROD-28

**Project**: lol.forge — Carrington Storm Motors Forge
**Runner**: 011
**Phase**: Phase 2 → Phase 3 Transition (Documents 26-28)
**Date**: 2026-11-02

---

## Runner 011 Mission

Complete the final three documents of Phase 2 (Structural & Safety) and begin Phase 3 (Economics & Compliance) by delivering:

1. **PROD-26**: Electrical Safety & GIC Immunity
2. **PROD-27**: Manufacturing Process Plan
3. **PROD-28**: Quality Assurance & Testing

Each document: **900+ lines body + 200 lines combined heuristic intro** (Williams + Keymaker + El Segundo + Combined)
All documents: **Chunked, verified, compressed, committed, pushed**

---

## PROD-26: Electrical Safety & GIC Immunity

### Source Materials
- **Primary**: PROD-23 (Control System Architecture — GIC immunity, all-dielectric comms, TSN, SIS)
- **Primary**: PROD-10 (Induction Power Electronics — GaN inverters, 480V supply, isolation)
- **Primary**: PROD-03 (Inductive Heating Zone Design — coil bank, frequencies, power levels)
- **Primary**: PROD-07 (Gas Capture — plasma torch, electrical classification)
- **Standards**: IEEE 1656 (GIC), IEC 61000-2-9 (GIC), IEC 62305 (Lightning), IEC 61508 (SIL), MIL-STD-1857 (EMP/HEMP), NFPA 70E (Arc Flash)

### Document Structure (13 Sections + 4 Appendices)

| Section | Title | Key Content | Target Lines |
|---------|-------|-------------|--------------|
| 1 | Electrical Safety Architecture | IT system (floating secondary), NGR 5A, no grounded neutral, all-dielectric boundaries | 80 |
| 2 | Dielectric Design | All paths ρ>10⁶ Ω·m: PMMA POF, ceramic bushings, capacitive coupling, transformer isolation | 80 |
| 3 | Carrington GIC Hardening | 5000 nT/s → 100 A/km; ride-through mode (5ms cap sustain → 10ms contactor open → LiFePO₄ backup) | 100 |
| 4 | HEMP E1/E2/E3 Protection | E1 (ns pulse): Faraday cage + POF; E2 (lightning-like): surge arresters; E3 (GIC-like): NGR + ride-through | 80 |
| 5 | Lightning Protection | NFPA 780 / IEC 62305; air terminals, down conductors, grounding (UFER + ring), surge protection | 70 |
| 6 | EMC / EMI Control | Conducted/radiated emissions < CISPR 11 Class A; susceptibility > 10 V/m; POF immunity | 60 |
| 7 | Arc Flash & Electrical Safety | NFPA 70E; incident energy < 1.2 cal/cm² at 18"; PPE Cat 0; labels, boundaries, LOTO | 70 |
| 8 | SIL-3 Electrical SIS | 24 SIFs on dedicated FPGA; 2oo3 voting; <50ms response; PFD_avg < 10⁻³; proof test CT-04 | 80 |
| 9 | Grounding & Bonding | Single-point ground at substation; equipotential mesh; isolated instrument ground; static dissipation | 60 |
| 10 | Power Quality | 480V 3-phase supply; THD < 5%; voltage sag ride-through; harmonic filters; UPS for controls | 60 |
| 11 | Insulation Coordination | IEC 60664; pollution degree 3; overvoltage Cat III; clearance/creepage tables; partial discharge | 60 |
| 12 | Cyber-Physical Electrical | Air-gapped OT + data diode; IEC 62443 SL-3; ML anomaly (FOLLOW-29); secure boot | 60 |
| 13 | Cross-Reference Matrix | Upstream: PROD-03,07,10,23,25 | Downstream: PROD-27,28,29,30,32,36,39 | 40 |

**Appendices**:
- A: Quick-Reference Card (single page: key setpoints, thresholds, response times)
- B: GIC/EMP Test Plan (Helmholtz coil, surge generator, GIC simulator)
- C: SIL-3 SIF Register (all 24 SIFs with trip setpoints, voting, proof test interval)
- D: Insulation Coordination Tables (clearance/creepage by voltage, material, pollution degree)

### Key Technical Specs to Include

| Parameter | Value | Source |
|-----------|-------|--------|
| System voltage | 480V 3-phase + 24V DC control | PROD-10 |
| GaN inverter isolation | Transformer + capacitive (no opto) | PROD-10 |
| FBG interrogator isolation | POF (PMMA, 1 Gbps) | PROD-23 |
| GIC threshold | 5000 nT/s (Carrington) | PROD-23 |
| Ride-through energy | 100 Wh LiFePO₄ (indefinite control power) | PROD-23 |
| NGR | 5 A (limits ground fault to 5 A) | PROD-23 |
| Arc flash boundary | 18" (1.2 cal/cm², PPE Cat 0) | NFPA 70E |
| SIS response | <50 ms (FPGA, dedicated POF) | PROD-23 |
| EMP hardening | MIL-STD-1857 / IEC 61000-2-9 | Standards |
| Lightning protection | NFPA 780 / IEC 62305 LPL III | Standards |

---

## PROD-27: Manufacturing Process Plan

### Source Materials
- **PROD-04**: ZrB₂-SiC Drum (flash sinter 1800°C, liner press-fit 0.03mm)
- **PROD-06**: BFRP Vessel (filament winding ±18°/90°, 18mm wall, aerogel gap)
- **PROD-08**: Carousel Molds (ZrO₂ 3Y-TZP, 3mm wall, firing schedule)
- **PROD-09**: Port Valves (Ti₃AlC₂/ZrO₂ brazed, PEEK CF40 springs)
- **PROD-10**: Power Electronics (GaN inverter modules, microchannel cold plates)
- **PROD-12**: All-Aegis Material BOM (24 components, zero-metal proof)
- **PROD-24**: Thermal Modeling (validates process temperatures)
- **PROD-25**: Structural (FEA-validated dimensions, bolt torques, inspection points)
- **PROD-26**: Electrical Safety (GIC immunity, dielectric verification)
- **Standards**: ASME BPVC Sec VIII/X, IEEE 693, ISO 9001, AS9100, ASTM D4169

### Document Structure (13 Sections + 4 Appendices)

| Section | Title | Key Content | Target Lines |
|---------|-------|-------------|--------------|
| 1 | Build Sequence Overview | 14 major assemblies, 18-month critical path, 3 parallel streams (Drum, Vessel, Electronics) | 70 |
| 2 | Drum Manufacturing | ZrB₂-SiC flash sinter (1800°C, 300V/cm, 5min), OD grind (0.05mm), liner press-fit (0.03mm, 450kN), port sleeve install (bonded), FBG embed (128 sensors), UT baseline | 100 |
| 3 | Vessel Manufacturing | BFRP/Elium® filament winding (±18°/90°)₄ on mandrel, aerogel infusion (50mm, λ=0.010), YInMn Blue glaze cure (SRI=115), flange bond (PEEK CF40, 12× ZrO₂ lugs), hydrotest 15bar, UT baseline | 100 |
| 4 | Port Valve Assembly | Ti₃AlC₂ actuator braze (Ag-CuO-TiO₂, 50μm), ZrO₂ piston hone (0.05mm clearance), PEEK CF40 wave spring install, leak test (10⁻⁶ mbar·L/s), thermal actuation cal (3.6mm @ 680°C ΔT) | 80 |
| 5 | Coil Bank Manufacturing | 8× zone windings (Cu tube + Al₂O₃ insulation + PEX-a), vacuum impregnation, BFRP housing layup, microchannel cold plate bond (In foil), FBG embed (384 sensors), resonance test | 80 |
| 6 | Power Electronics Assembly | GaN inverter modules (GS66516T, 650V/30A), gate driver boards (transformer isolated), capacitor banks (film, 500V), TSN switch (PMMA POF), FBG interrogator, EMC filter, SIL-3 FPGA | 80 |
| 7 | Frame & Carousel | BFRP box beam pultrusion ([±30°/90°]₃), isolator install (elastomeric, 2.5 MN/m), carousel rotor (BFRP, 8× ZrO₂ molds), bearing install (Si₃N₄/ZrO₂, N₂ film) | 70 |
| 8 | System Integration | Drum → vessel (aerogel gap 68mm), flange bolt ceremony (12× M24 ZrO₂, 160 N·m, dual-verify), port valve install (actuator pocket 5mm ZrO₂ felt), coil bank alignment, TSN ring closure, FBG splices | 100 |
| 9 | Factory Acceptance Test (FAT) | CT-01: Drum rotordynamics (critical speed 1890 RPM) | CT-02: Vessel hydrotest (15bar) | CT-03: Flange leak (10⁻⁶) | CT-04: SIS proof test | CT-05: Coil resonance (50-100kHz) | CT-06: FBG calibration | CT-07: GIC ride-through | CT-08: Thermal cycle (Stages 0-8) | CT-09: Seismic shake (IEEE 693 High) | CT-10: Integrated hot run | 120 |
| 10 | Shipping & Site Prep | BFRP shipping frames (elastomeric isolation), ASTM D4169 truck vibe (1g RMS), 30g shock, component weights (drum 178kg, vessel 215kg, frame 480kg, coils 640kg, power 320kg), site foundation (tiltmeter 0.1μrad) | 70 |
| 11 | Tooling & Fixtures | Drum sinter fixture (graphite, 1800°C), liner press fixture (hydraulic 500kN), winding mandrel (900mm ID, collapsible), flange torque wrench (ceramic paste), braze furnace (H₂, 950°C), cold plate leak test | 70 |
| 12 | Supplier Qualification | ZrB₂-SiC (flash sinter capability), BFRP/Elium® (filament winding ±18°), Ti₃AlC₂ (MAX phase, Ag-CuO-TiO₂ braze), 3Y-TZP (flash sinter 1800°C), GaN (GS66516T), PMMA POF (980μm), Si₃N₄ bearings | 60 |
| 13 | Cross-Reference Matrix | Upstream: PROD-04,06,08,09,10,12,24,25,26 | Downstream: PROD-28,29,30,39 | 40 |

**Appendices**:
- A: Build Schedule (Gantt, 18 months, critical path, float)
- B: Tooling Drawings Index (all fixtures, gauges, test equipment)
- C: Supplier Audit Checklist (technical, quality, financial, ESG)
- D: FAT/SAT Test Procedures (CT-01 through CT-10 detailed)

### Key Manufacturing Specs

| Process | Parameter | Target | Verification |
|---------|-----------|--------|--------------|
| Drum flash sinter | 1800°C, 300 V/cm, 5 min | 97% TD, 0.5μm grain | V/I trace, density, SEM |
| Liner B press-fit | 0.03 mm interference | Force 450 kN ±10% | Force-displacement curve |
| Vessel winding | ±18°/90° layup | Fiber angle ±2° | Laser angle gauge |
| Flange bolts | 12× M24 ZrO₂ | 160 N·m ±5 N·m | Dual torque verify |
| Port actuator braze | Ag-CuO-TiO₂, 50μm | No voids >50μm | 10× mag + deflection test |
| Coil resonance | Zone 8: 1 kHz, 500 kW | ZVS at 100% load | V/I phase < 5° |
| FBG calibration | 25/500/1000/1500/2000°C | Drift <0.5%/1000hrs | Pre/post thermal cycle |

---

## PROD-28: Quality Assurance & Testing

### Source Materials
- **PROD-25**: NDT Program (Methods, coverage, acceptance criteria, in-service monitoring)
- **PROD-24**: V&V Plan (Thermal FEA/CFD validation, UQ, ROM, mesh convergence)
- **PROD-23**: SIS Architecture (24 SIFs, SIL-3, proof test CT-04)
- **PROD-04/06/09**: Component acceptance criteria (Drum, Vessel, Port Valves)
- **PROD-27**: FAT/SAT (CT-01 through CT-10)
- **Standards**: IEEE 693, ASME BPVC Sec VIII/X, ISO 9001, AS9100, ASTM E2700, ASTM E1419, ASTM E1695

### Document Structure (13 Sections + 4 Appendices)

| Section | Title | Key Content | Target Lines |
|---------|-------|-------------|--------------|
| 1 | QA Program Overview | Quality policy, management responsibility, resource management, product realization, measurement/analysis/improvement (ISO 9001/AS9100 alignment) | 70 |
| 2 | Acceptance Criteria — Component | Drum (UT 0.5mm, CT 200μm, strain gauge 225MPa), Vessel (UT 1mm, AE active, hydrotest 15bar), Ports (ET 0.2mm, leak 10⁻⁶, actuation 3.6mm), Frame (UT 1mm, IR thermography), Bearings (vibration 0.5g, FBG temp) | 100 |
| 3 | Acceptance Criteria — Subassembly | Drum+liners (thermal cycle, pin shear), Vessel+ports (pressure+thermal, flange torque), Frame+isolators (seismic shake, modal), Coil bank (resonance, cold plate leak) | 80 |
| 4 | Acceptance Criteria — System (FAT/SAT) | CT-01 through CT-10 full procedures, pass/fail criteria, data packages, sign-off authority | 100 |
| 5 | NDT Program | Methods table (UT, CT, ET, AE, IR, visual), coverage (100% critical), frequency (annual/biennial/continuous), detection limits, standards, personnel qualification (ASNT Level II/III) | 100 |
| 6 | Process Validation | Welding/braze (PROD-09), filament winding (PROD-06), flash sinter (PROD-04), brazing (PROD-09), bonding (PROD-06), soldering (PROD-10) — all qualified per ASME Sec IX / AWS D17.1 | 80 |
| 7 | Supplier Quality Management | Approved vendor list, incoming inspection (dimensional, material cert, UT), supplier audits (annual), non-conforming material (MRB), corrective action (8D), PPAP for critical parts | 70 |
| 8 | Non-Conformance & CAPA | NCR classification (critical/major/minor), root cause (5 Whys, fishbone), corrective action (verification, effectiveness check), preventive action, trend analysis, closure criteria | 70 |
| 9 | Documentation & Traceability | Quality records (ISO 9001 4.2.4), material certs (3.1/3.2), inspection reports, test data, NCR/CAPA, design changes (ECO), QR code traceability (PROD-37), retention 10 years | 60 |
| 10 | Audit Schedule | Internal (quarterly, all processes), Supplier (annual, critical), Regulatory (biennial, ASME/OSHA), Customer (project-based), Surveillance (monthly, high-risk) | 50 |
| 11 | Continuous Improvement | KPIs (FTY, NCR rate, OTD, MTBF), Management Review (quarterly), Lessons Learned (post-project), Corrective Action Effectiveness (CAE), Innovation capture | 50 |
| 12 | Commissioning & SAT | Site acceptance test (SAT-01 through SAT-05), performance benchmarks (throughput, energy, recovery, emissions), operator training sign-off, documentation turnover, warranty commencement | 70 |
| 13 | Cross-Reference Matrix | Upstream: PROD-23,24,25,27 | Downstream: PROD-29,30,32,39 | 40 |

**Appendices**:
- A: Acceptance Criteria Master Table (all components, all methods, all thresholds)
- B: NDT Procedure Index (UT, CT, ET, AE, IR, visual — step-by-step)
- C: NCR/CAPA Form Templates (NCR, 5 Whys, fishbone, 8D, verification, closure)
- D: Audit Checklists (internal, supplier, regulatory, customer — ISO 19011)

### Key QA Specs

| Item | Requirement | Standard |
|------|-------------|----------|
| Drum UT detection | 0.5mm flat, 2mm Ø | ASTM E2700 |
| Drum CT resolution | 200 μm voxel | ASTM E1695 |
| Vessel hydrotest | 15 bar (1.5× design) | ASME BPVC |
| Flange bolt torque | 160 N·m ±5 N·m | Dual verify |
| SIS proof test | Quarterly partial, annual full | IEC 61508 |
| Seismic shake | IEEE 693 High, RRS×1.5 | IEEE 693 |
| FBG calibration drift | <0.5%/1000 hrs at 2200°C | PROD-24 |
| Bearing vibration alarm | >2× baseline RMS | ISO 13373 |
| Seal leak rate | <10⁻⁶ mbar·L/s (He) | ASTM E1003 |
| Mold dimensional | 0.1 mm tolerance | ISO 8062 |

---

## Execution Workflow (Per Document)

```
FOR each document (PROD-26, PROD-27, PROD-28):
  1. RESEARCH (30 min)
     - Read all source documents listed above
     - Extract key tables, equations, parameters
     - Note cross-references to upstream/downstream docs
  
  2. WRITE BODY (3-4 hours)
     - Write all 13 sections + 4 appendices
     - Include tables, equations, specifications
     - Target: 900+ lines dense technical content
     - Use exact CSMFAB document number format
  
  3. GENERATE HEURISTIC INTROS (45 min)
     - Williams: Constraint/Necessity/Commitment (~67 lines each)
     - Keymaker: Lock/Key/Turn (~67 lines each)
     - El Segundo: Mirror/Participation/Protocol (~67 lines each)
     - Combined: 200 lines synthesis
     - Save to intros/PROD-XX_<title>_intro_*.md and _COMBINED_INTRO.md
  
  4. PREPEND COMBINED INTRO
     - cat intros/PROD-XX_COMBINED_INTRO.md docs/PROD-XX_*.md > temp && mv temp docs/PROD-XX_*.md
  
  5. CHUNK & VERIFY
     - node scripts/split_chunks.js split docs/PROD-XX_*.md chunks/PROD-XX chapter .md
     - node scripts/split_chunks.js manifest chunks/PROD-XX
     - node scripts/split_chunks.js verify chunks/PROD-XX
     - gzip -k docs/PROD-XX_*.md
  
  6. COMMIT & PUSH
     - git add -A
     - git -c user.name="Kilo Agent" -c user.email="kilo@carringtonstormmotors.com" commit -m "lol.forge: PROD-XX <title> — NNN lines + 4 intros"
     - git pull --rebase && git push
  
  7. UPDATE TRACKERS
     - TODO.md: Mark all micro-subtasks complete
     - Master_Todo.md: Check off document, update progress tables
     - memory/2026-11-02.md: Append session log entry
     - HEARTBEAT_LOLFORGE.md: Update state + log
     - .heartbeat_state.json: Update state
     - RESUME_SESSION_LOLFORGE.md: Update last session + next actions
```

---

## Quality Gates (Must Pass Before Commit)

- [ ] Body ≥ 900 lines (wc -l)
- [ ] Combined intro ~200 lines (3 × ~67 + transitions)
- [ ] All 3 individual intros present in intros/
- [ ] Combined intro present in intros/
- [ ] Chunking produces ≥ 15 chapters
- [ ] Manifest verification: ALL files OK
- [ ] Compression creates .gz file
- [ ] Git commit message follows convention
- [ ] Push succeeds (pull --rebase first if needed)
- [ ] Trackers updated (TODO, Master_Todo, Memory, Heartbeat, Resume, .heartbeat_state)

---

## Next Runner After 011

**Runner 012 (NEXT_runner_012.md): Phase 3 Start — PROD-31, PROD-32, PROD-33**
- PROD-31: Economic Analysis & Viability
- PROD-32: Regulatory & Compliance
- PROD-33: Supply Chain & Logistics

---

## Emergency Contacts

- **Git Issues**: `git pull --rebase && git push` → if conflict: `git stash && git pull --rebase && git stash pop`
- **Chunk Verify Fail**: Re-split from original .md, re-manifest, re-verify
- **Intro Generation**: Manual write to intros/ if Python unavailable
- **Disk Space**: `df -h` → clean chunks/*/old manifests if needed

---

*Runner 011 starts immediately upon session resume.*
*Phase 2 completion: PROD-25 done. PROD-26, 27, 28 next.*
*Phase 3 start: PROD-31, 32, 33 after Phase 2 complete.*
*Overall target: 30/80 documents after Runner 011.*