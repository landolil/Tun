# NEXT_runner_008.md — lol.forge Runner 008 Instructions
## PROD-22, PROD-23, PROD-24: Integration & Control (Phoenix Protocol, Control System, Thermal Modeling)

**Generated**: 2026-11-02T17:00:00Z
**Previous Runner**: 007 (PROD-19, 20, 21 complete — Phase 2 Stages 3-8 done)
**Phase**: Phase 2 — Integration & Control (Documents 22-24 of 40)

---

## Document Batch Overview

| Document | Title | Target Lines | Source Material |
|----------|-------|--------------|-----------------|
| PROD-22 | Phoenix Protocol Integration (EOL Returns, Closed Loop) | 900+ body + 200 intro | Aegis-Forge Vol 5, PROD-13 feedstock, PROD-21 UHTC loop |
| PROD-23 | Control System Architecture (Distributed, Safety Interlocks) | 900+ body + 200 intro | PROD-10 power electronics, PROD-03 inductive zones, all Stage control sections |
| PROD-24 | Thermal Modeling & Simulation (FEA, CFD, Thermophysical Validation) | 900+ body + 200 intro | PROD-02 cascade, PROD-03 induction, PROD-04 drum, PROD-25 structural |

---

## PROD-22: Phoenix Protocol Integration — EOL Returns & Closed Loop

### Research Sources
- `../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/Vol 5: Assembly Line Integration.md` — Phoenix Protocol section
- `lol.forge/docs/PROD-13_Feedstock_Specifications.md` — Category D (EOL returns) feedstock specs
- `lol.forge/docs/PROD-21_Stage_8_Mineral_Residue_Zircon.md` — UHTC loop closure (ZrB₂, Ti₃AlC₂)
- `lol.forge/docs/PROD-08_Slug_Cooling_Output_Catalog.md` — Product output catalog for returned products
- `lol.forge/docs/PROD-12_All_Aegis_Material_BOM.md` — Zero-metal construction, in-house synthesis
- `lol.forge/docs/PROD-31_Economic_Analysis.md` (future) — Revenue from EOL processing
- FOLLOW-32 Ceramic Composite Development — Drum material from returns

### Required Sections (13 minimum)
1. **Phoenix Protocol Overview** — Mission: 100% EOL product return, zero-waste loop, critical mineral sovereignty
2. **Return Logistics Network** — Collection hubs, preprocessing depots, transport spec (DUNNAGE-FREE, BFRP crates)
3. **EOL Product Categorization** — Gen-I Forge products, competitor products, legacy waste streams
4. **Preprocessing at Depot** — Discharge, disassembly, hazard removal (batteries, capacitors, refrigerants)
5. **Re-entry Point Mapping** — Stage-by-stage re-entry based on material state (Category A-D from PROD-13)
6. **Material Accounting & Mass Balance** — Track every element from return to re-shipment
7. **Drum Material Circularity** — Returned ZrB₂-SiC drums → crush → ZrO₂ recovery → FOLLOW-32 → new drum
8. **EMI Shielding Circularity** — Returned Ti₃AlC₂ → crush → MAX Phase precursor → FOLLOW-32 → new shield
9. **Product Refurbishment Paths** — 3Y-TZP → re-sinter, REE oxides → FOLLOW-15, Cu anodes → direct reuse
10. **Data & Digital Twin Integration** — Product passport, composition history, process parameters
11. **Economic Model** — Reverse logistics cost, avoided primary production, carbon credits
12. **Safety & Compliance** — Hazardous material handling, transport regulations, facility permitting
13. **Cross-Reference Matrix** — PROD-02, 04, 08, 11, 12, 13, 21, FOLLOW-14, 15, 19, 20, 32, 33, 34, 35, 40

### Key Technical Specifications to Include
- **Return Rate Target**: >95% of Carrington Storm Motors products by mass
- **Preprocessing Time**: <4 hr/product at depot (automated disassembly line)
- **Re-entry Throughput**: 500 kg/batch EOL mixed with 500 kg virgin feed (50/50 blend)
- **Material Recovery**: Zr >98%, REE >95%, Cu >99%, Al >97%, In >99.9%
- **Drum Life**: 500 batches → returned → crushed → 98% ZrO₂ recovery → new drum
- **Carbon Footprint**: -2.3 tCO₂e/ton EOL processed (sequestration credit from MgO carbonation)
- **Digital Twin**: UUID chain from mine → Forge → product → return → Forge (blockchain-anchored)

---

## PROD-23: Control System Architecture — Distributed Control & Safety Interlocks

### Research Sources
- `lol.forge/docs/PROD-10_Induction_Power_Electronics.md` — GaN inverters, FBG sensors, PID
- `lol.forge/docs/PROD-03_Inductive_Heating_Zone_Design.md` — 8-zone coil bank, 384 FBG sensors
- All Stage PROD documents (14-21) — Section 12/13 control system specs
- `../seed/CSMFAB/CSMFAB0108/Vol 3: Power Electronics & Control.md` — Distributed architecture
- PROD-26 Electrical Safety & GIC Immunity (future) — SIL-3, Carrington hardening
- IEC 61508, IEC 62443, ISA-84, IEEE 1588 (PTP), ISA-95 standards

### Required Sections (13 minimum)
1. **Control Architecture Overview** — Hierarchical: Cell (FPGA) → Zone (RTU) → Stage (PLC) → Plant (SCADA)
2. **Field Device Layer** — 384 FBG (WDM+TDM), 16 POF level, 8 pyrometers, 8 mass specs, 8 XRF, 16 ZrO₂ pO₂
3. **Zone Control Layer (RTU)** — 8 independent RTUs (one per inductive zone), 1 kHz PID, resonance tracking
4. **Stage Control Layer (PLC)** — 8 Stage PLCs, cascade control, interlock logic, recipe management
5. **Plant Supervisory Layer (SCADA)** — Historian, alarm mgmt, batch tracking, MES integration, digital twin
6. **Safety Instrumented System (SIS)** — SIL-3: 24 interlocks, 2oo3 voting, <50 ms response, proof test schedule
7. **Carrington GIC Immunity** — Optical isolation (FBG/POF), Faraday cage RTUs, surge hardening, EMP survival
8. **Network Architecture** — TSN (IEEE 802.1Qbv) for determinism, dual-homed, VLAN segregation, OPC-UA
9. **Time Synchronization** — PTP (IEEE 1588v2) <1 μs accuracy, grandmaster GPS + holdover OCXO
10. **Cyber-Physical Security** — Air-gapped OT, unidirectional data diodes, anomaly detection (FOLLOW-29), zero-trust
11. **Operator Interface (HMI)** — High-performance graphics, alarm rationalization, situation awareness, training sim
12. **Configuration Management** — Version control (Git), change control (MOC), backup/restore, disaster recovery
13. **Cross-Reference Matrix** — PROD-02, 03, 04, 05, 07, 09, 10, 14-21, 26, 36, 37, FOLLOW-02, 10, 11, 29

### Key Technical Specifications
- **Control Cycle**: 1 kHz (Zone RTU) → 100 Hz (Stage PLC) → 10 Hz (Plant SCADA)
- **Sensor Count**: 480+ field devices (FBG, POF, pyrometer, mass spec, XRF, pO₂, pressure, flow, vibration)
- **Actuator Count**: 96+ (inverter gates, MFCs, valves, carousel, flux injectors, quench nozzles)
- **Interlocks**: 24 SIL-3, 12 SIL-2, 36 SIL-1
- **Network**: TSN 1 Gbps dual-ring, <100 μs latency, 99.999% availability
- **GIC Survival**: 100 A/m geomagnetic field, 10 V/km induced, 100% functional during event
- **Cyber**: Air-gapped, no external IP, unidirectional diode to IT, ML anomaly detection

---

## PROD-24: Thermal Modeling & Simulation — FEA, CFD, Thermophysical Validation

### Research Sources
- `lol.forge/docs/PROD-02_Thermal_Cascade_Process_Engineering.md` — 8-stage temperature profile
- `lol.forge/docs/PROD-03_Inductive_Heating_Zone_Design.md` — EM-thermal coupling, coil parameters
- `lol.forge/docs/PROD-04_ZrB2_SiC_Drum_Engineering.md` — Drum geometry, material properties
- `lol.forge/docs/PROD-06_BFRP_Pressure_Vessel_Design.md` — Vessel, aerogel gap, YInMn glaze
- `../seed/CSMFAB/CSMFAB Materials Study 5 Parts/` — Thermophysical properties (ZrB₂-SiC, BFRP, aerogel, etc.)
- ANSYS, COMSOL, OpenFOAM validation data
- FOLLOW-23 Energy Balance & Exergy Analysis, FOLLOW-25 Seismic Qualification

### Required Sections (13 minimum)
1. **Modeling Framework Overview** — Multi-physics: EM (induction) → Thermal (conduction/convection/radiation) → Structural (stress/creep) → Fluid (gas flow, slag hydrodynamics)
2. **Thermophysical Property Database** — 50+ materials, T-dependent: k, Cp, ρ, ε, σ, μ, μᵣ, α, E, ν, σ_y, K_IC (validated to 2200°C)
3. **Inductive Heating FEA** — 3D EM-thermal (Joule heating), coil-drum coupling, skin effect, μᵣ(T) transition at 770°C
4. **Drum Thermal-Structural FEA** — 600×800×35mm ZrB₂-SiC, 35mm wall, 8 ports, 150 RPM, thermal gradient ΔT=400°C across wall
5. **Cascade CFD** — Gas flow (Ar/He/H₂/N₂), slag film hydrodynamics, centrifugal separation, species transport
6. **Stage-by-Stage Thermal Models** — 0: Acoustic/IR, 1: Drying, 2: Polymer melt, 3: Pyrolysis, 4: Low-T metals, 5: Al window, 6: Cu/PM, 7: Fe/REE, 8: Mineral/Zr
7. **Vessel & Insulation Model** — BFRP shell (18mm), 50mm aerogel (λ=0.010), YInMn glaze (SRI=115), radiative view factors
8. **Transient Thermal Cycling** — 90-min cycle, 2200°C peak, cool-down, thermal fatigue, creep-ratcheting
9. **Validation & Verification Plan** — Thermocouple/FBG correlation, IR thermography, melt pool imaging, slag sampling
10. **Uncertainty Quantification** — Monte Carlo on properties, boundary conditions, geometry; Sobol sensitivity
11. **Reduced-Order Models (ROM)** — POD-Galerkin, neural operators for real-time control (1 kHz Zone RTU)
12. **Scaling Laws** — 226 L → 2000 L → 20,000 L (FOLLOW-30), geometric similarity, frequency scaling
13. **Cross-Reference Matrix** — PROD-02, 03, 04, 06, 07, 14-21, 25, FOLLOW-01, 02, 05, 09, 10, 23, 25, 30

### Key Technical Specifications
- **FEA Mesh**: 2.5M elements (drum), 1.8M (vessel), 0.5M (coils), adaptive refinement at ports
- **Time Step**: 1 ms (EM), 10 ms (thermal), 100 ms (structural), 1 ms (CFD slag film)
- **Max Temperature**: 2200°C (Stage 8), ΔT/Δt = 3000°C/s (SiO₂ condenser quench)
- **Validation Targets**: T ±5°C (FBG), T ±10°C (pyrometer), stress ±15%, slag film h ±20%
- **Computational**: 512-core HPC, 48 hr full cascade transient, 5 min ROM inference
- **Key Outputs**: Temperature fields, stress/strain, slag film profile, separation efficiency, energy balance

---

## Heuristic Intro Requirements (Per Document)

### Williams Heuristic (~67 lines)
- **Constraint (The Lock)**: What irreducible principle forces this design?
- **Necessity (The Key)**: What empirical gap does this resolve? Why is the solution inevitable?
- **Commitment (The Turn)**: What non-negotiable commitments does this document make?

### Keymaker Heuristic (~67 lines)
- **The Empirical Lock**: What fabrication fidelity gap does this address?
- **The Mathematical Key**: What single computational primitive generates the solution?
- **The Turn (Both Directions)**: Theory→History validation AND History→Theory validation

### El Segundo Heuristic (~67 lines)
- **Mirror (Self-Reflection)**: How does the fabricator observe their own fabrication?
- **Participation (Witness)**: How does the inside operator witness the phenomenon into existence?
- **Protocol (Recursive)**: What recursive sequence guarantees fidelity at each scale?

### Combined Intro (~200 lines)
Three-way synthesis with risk matrix and cross-stage dependencies.

---

## Execution Checklist (Per Document)

### Research Phase (30 min each)
- [ ] Read Aegis-Forge source volumes
- [ ] Read upstream PROD documents for interface data
- [ ] Read relevant FOLLOW documents
- [ ] Note key equations, parameters, validation targets

### Write Phase (3-4 hours each)
- [ ] Write 13+ sections per template above
- [ ] Include all equations in LaTeX format
- [ ] Include tables for parameters, properties, validation
- [ ] Include architectural diagrams as ASCII/mermaid
- [ ] Target 900+ lines body

### Intro Generation (45 min each)
- [ ] Generate Williams intro (~67 lines)
- [ ] Generate Keymaker intro (~67 lines)
- [ ] Generate El Segundo intro (~67 lines)
- [ ] Generate Combined intro (~200 lines)
- [ ] Save to `intros/PROD-XX_...`

### Verification (15 min each)
- [ ] `node scripts/split_chunks.js split docs/PROD-XX_... chunks/PROD-XX`
- [ ] `node scripts/split_chunks.js manifest chunks/PROD-XX`
- [ ] `node scripts/split_chunks.js verify chunks/PROD-XX`
- [ ] `node scripts/split_chunks.js compress docs/PROD-XX_... docs/PROD-XX_....compressed.md`

### Git & Trackers (10 min each)
- [ ] `git add -A && git commit -m "lol.forge: PROD-XX Title — NNN lines + 200 intro" && git push`
- [ ] Update TODO.md micro-subtasks
- [ ] Update Master_Todo.md
- [ ] Update memory/2026-11-02.md
- [ ] Update HEARTBEAT_LOLFORGE.md

---

## Timeline Estimate

| Document | Research | Write | Intros | Verify | Git | Total |
|----------|----------|-------|--------|--------|-----|-------|
| PROD-22 | 30 min | 4 hr | 45 min | 15 min | 10 min | ~5.7 hr |
| PROD-23 | 30 min | 4 hr | 45 min | 15 min | 10 min | ~5.7 hr |
| PROD-24 | 30 min | 4 hr | 45 min | 15 min | 10 min | ~5.7 hr |
| **Total** | **1.5 hr** | **12 hr** | **2.25 hr** | **45 min** | **30 min** | **~17 hr** |

---

## Quick Start Commands

```bash
cd /workspace/app/Tun/lol.forge

# 1. Resume session
./scripts/resume_runner.sh 008

# 2. Check status
./scripts/resume_runner.sh --status

# 3. Start PROD-22 research
# Read Aegis-Forge Vol 5 Phoenix Protocol
cat "../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/Vol 5: Assembly Line Integration.md" | grep -A 200 "Phoenix Protocol"

# 4. Write PROD-22 (use cat > or editor)
# 5. Generate intros
# 6. Chunk, verify, compress, commit, push
# 7. Repeat for PROD-23, PROD-24
```

---

## Git Identity
```
git config user.name "Kilo Agent"
git config user.email "kilo@carringtonstormmotors.com"
```

---

## Success Criteria for Runner 008
- [ ] PROD-22: 900+ lines body + 200 combined intro, committed and pushed
- [ ] PROD-23: 900+ lines body + 200 combined intro, committed and pushed
- [ ] PROD-24: 900+ lines body + 200 combined intro, committed and pushed
- [ ] All 3 chunked, verified, compressed
- [ ] Master_Todo.md updated: Phase 1 progress 24/40 (60%), Phase 2 progress 9/10 (90%), Overall 29/80 (36.25%)
- [ ] NEXT_runner_009.md created for PROD-25, 26, 27