# NEXT_runner_006.md
## lol.forge Runner 006 — Phase 2: Stages 3-5 (PROD-16, 17, 18)

**Created**: 2026-11-01 | **Session**: Runner 006
**Target Documents**: PROD-16, PROD-17, PROD-18
**Estimated Effort**: ~18 hours (6 hrs/doc)
**Dependencies**: PROD-02, PROD-12, PROD-15 complete

---

## OBJECTIVE

Complete Phase 2 Product Documents 16-18 — the pyrolysis, low-temp metals, and aluminum stages of the thermal cascade. Each document: 900+ lines body + 200+ lines combined heuristic intro (3 × 67 lines), chunked/verified/compressed, committed and pushed.

---

## SOURCE MATERIALS REQUIRED

### Primary Sources (Already Ingested)
| Source | Location | Relevant Sections |
|--------|----------|-------------------|
| **CSMFAB0108 Vol 2** | `Research/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator Vol 2.md` | Stage 3 (Pyrolysis 450-700°C), Stage 4 (Low-Temp Metals 420-900°C), Stage 5 (Al Window 660-720°C) |
| **CSMFAB Materials Study Part I** | `Research/CSMFAB Materials Study 5 Parts /CSMFAB Materials Study Part I - High-Temperature Ceramics and Refractories.md` | ZrB₂-SiC, SiC, ZrO₂, aerogels |
| **CSMFAB Materials Study Part II** | `Research/CSMFAB Materials Study 5 Parts /CSMFAB Materials Study Part II - Magnetic and Electrical Materials.md` | NdFeB, GaN, magnetic separators |
| **CSMFAB Materials Study Part III** | `Research/CSMFAB Materials Study 5 Parts /CSMFAB Materials Study Part III - Piezoelectric and Acoustic Materials.md` | KNbO₃-BaTiO₃, transducers |
| **CSMFAB Materials Study Part IV** | `Research/CSMFAB Materials Study 5 Parts /CSMFAB Materials Study Part IV - Polymers Electronics and Support Materials.md` | PEEK, polymers (for char context) |
| **CSMFAB Materials Study Part V** | `Research/CSMFAB Materials Study 5 Parts /CSMFAB Materials Study Part V - Critical Minerals and Rare Earths.md` | Indium, REEs, zircon, monazite |
| **CSMFAB Materials Study Part VI** | `Research/CSMFAB Materials Study 5 Parts /CSMFAB Materials Study Part VI - Phoenix Protocol and Circular Economy.md` | Char activation, circular loops |
| **PROD-02** | `docs/PROD-02_Thermal_Cascade_Process_Engineering.md` | Stage parameters, gas management, dwell times |
| **PROD-12** | `docs/PROD-12_All_Aegis_Material_BOM_Deep_Dive.md` | BFRP, SiC, ZrO₂, PEEK CF40, Ti₃AlC₂, KNbO₃ specs |
| **PROD-15** | `docs/PROD-15_Stage_2_Polymer_Flow_and_Separation.md` | Char/filler output from Stage 2, HCl salts, oligomer recycle |

---

## DOCUMENT SPECIFICATIONS

### PROD-16: Stage 3: Pyrolysis & Char
**Target**: 900+ lines + 200 combined intro
**Sections (13+)**:
1. **Stage Parameters** — 450-700°C, 45 min, N₂/CO₂, 150 RPM
2. **Thermoset Decomposition Kinetics** — Epoxy, phenolic, polyester, polyurethane, rubber; Arrhenius parameters
3. **Char Formation & Morphology** — Fixed carbon, volatile matter, ash, BET surface area, pore structure
4. **Gas Evolution Profile** — CO, CO₂, CH₄, H₂, H₂O, light hydrocarbons; mass spec timing
5. **Char Activation Protocol (In-Situ)** — Steam/CO₂ activation at 800-900°C, surface area >800 m²/g
6. **Inorganic Transformation** — Filler minerals (CaCO₃→CaO, talc, glass fibers), slag formation
7. **REE Partitioning** — Nd/Sm/Co from Stage 2 heavy fraction → Stage 7; Ce/La from zircon → Stage 8
8. **Output Streams** — Activated char (Stage 4 flux, Stage 1 adsorption), pyrolysis gas (PROD-07), slag (Stage 7)
9. **Throughput & Quality** — Char yield 15-25%, fixed carbon >80%, iodine number >800 mg/g
10. **Energy Balance** — Endothermic pyrolysis vs exothermic char oxidation, net kWh/ton
11. **Safety & Emissions** — Tar cracking, PAH limits, dust explosion prevention (N₂ inerting)
12. **Control System** — Temperature ramp profile, gas composition feedback, char quality hold points
13. **Cross-Reference Matrix** — Links to PROD-02, 07, 12, 15, 17, FOLLOW-18

**Key Specs from Vol 2**:
- Temperature: 450-700°C (ramp 5°C/min through 450-550°C)
- Duration: 45 minutes
- Drum speed: 150 RPM (same as Stage 2)
- Atmosphere: N₂ + CO₂ (from Stage 2 gas capture)
- Induction: 100 kHz, 80 kW peak
- Char yield: 20-30% of thermoset feed

---

### PROD-17: Stage 4: Low-Temp Metals (Pb/Sn/Zn/In)
**Target**: 900+ lines + 200 combined intro
**Sections (13+)**:
1. **Stage Parameters** — 420-900°C, 30 min, 200 RPM (G=22.3)
2. **Indium-First Separation Strategy** — In melting point 156.6°C, early condensation
3. **Metal Melting & Density Stratification** — Pb (11.34), Sn (7.31), Zn (7.14), In (7.31) g/cm³ molten
4. **Centrifuge Bowl Zones** — Inner: In/Sn; Middle: Zn; Outer: Pb
5. **Oxidation Control** — Na₂CO₃ flux, N₂/H₂ reducing atmosphere
6. **Solder Alloy Formation** — Pb/Sn eutectic (63/37), In-Sn (52/48), Bi-Sn
7. **Precious Metal Carrier** — Au/Ag/Pd partition into In/Sn melt (Stage 6 recovery)
8. **Output Streams** — Solder ingots, In bullion, Zn dust, Pb bullion, dross to Stage 7
9. **Throughput & Quality** — In >99.9%, Sn >99.5%, Pb >99.9%, Zn >99%
10. **Energy Balance** — Induction + resistive, latent heats, kWh/ton metal
11. **Safety & Emissions** — Pb fume capture (HEPA + carbon), In toxicity controls
12. **Control System** — Zone temperature, metal level sensors (POF), flux injection
13. **Cross-Reference Matrix** — Links to PROD-02, 04, 07, 09, 12, 16, 19, FOLLOW-14

**Key Specs from Vol 2**:
- Indium: 156.6°C MP, 2072°C BP — highest value, first to condense
- Tin: 232°C MP, 2602°C BP — solder alloy with Pb
- Zinc: 420°C MP, 907°C BP — volatile, condenses on cooling
- Lead: 327°C MP, 1749°C BP — heavy, outer annulus
- RPM: 200 RPM (G=22.3 at r=250mm) for better metal separation

---

### PROD-18: Stage 5: Aluminum Window
**Target**: 900+ lines + 200 combined intro
**Sections (13+)**:
1. **Stage Parameters** — 660-720°C, 30 min, 200 RPM
2. **Aluminum Melting & Separation** — 660°C MP, 2.38 g/cm³ molten
3. **Mg Removal Strategy** — Mg (650°C MP) co-melts; selective oxidation via NaCl/KCl flux
4. **Al Alloy Fractionation** — Wrought (6xxx, 5xxx) vs Cast (A356, 319) by Si/Fe content
5. **Dross Management** — Al₂O₃/AlN dross → salt flux recovery (Al >90% recovery)
6. **Impurity Partitioning** — Si, Fe, Cu, Zn, Mn to dross; Al purity >99.7%
7. **Output Streams** — Primary Al ingots (remelt), secondary Al (casting), dross salt slag
8. **Throughput & Quality** — Al recovery >95%, H₂ <0.1 mL/100g, grain size <500 µm
9. **Energy Balance** — Latent heat 397 kJ/kg + sensible, regenerative burners
10. **Safety & Emissions** — HCl from PVC residue, Al fines explosion prevention (N₂)
11. **Control System** — Bath temperature ±2°C, metal level, flux injection, dross rake timing
12. **Cross-Reference Matrix** — Links to PROD-02, 04, 07, 12, 17, 20, FOLLOW-20

**Key Specs from Vol 2**:
- Temperature window: 660-720°C (narrow — avoid Mg vaporization at 720°C+)
- Duration: 30 minutes
- Drum speed: 200 RPM
- Flux: NaCl/KCl (50/50) + Na₃AlF₆ (cryolite) for Mg removal
- Target: >99.7% Al, <0.1% Mg, <0.15% Si, <0.2% Fe

---

## WORKFLOW PER DOCUMENT (13 Subtasks Each)

For **each** of PROD-16, 17, 18:

| # | Subtask | Target |
|---|---------|--------|
| 1 | Research Phase: Read Vol 2 Stage X + Materials Study + upstream PRODs | 45 min |
| 2 | Write Sections 1-4 (Core Physics/Design) | 90 min |
| 3 | Write Sections 5-7 (Process Control/Outputs) | 90 min |
| 4 | Write Sections 8-10 (Throughput/Quality/Energy) | 60 min |
| 5 | Write Sections 11-13 (Safety/Control/Cross-Ref) | 60 min |
| 6 | Generate Williams Heuristic Intro (~67 lines) | 20 min |
| 7 | Generate Keymaker Heuristic Intro (~67 lines) | 20 min |
| 8 | Generate El Segundo Heuristic Intro (~67 lines) | 20 min |
| 9 | Generate Combined Intro (~200 lines) | 30 min |
| 10 | Chunk: `node scripts/split_chunks.js split` | 5 min |
| 11 | Manifest: `node scripts/split_chunks.js manifest` | 2 min |
| 12 | Verify: `node scripts/split_chunks.js verify` | 2 min |
| 13 | Compress: `node scripts/split_chunks.js compress` | 2 min |
| 14 | Git Commit & Push | 5 min |
| 15 | Update TODO.md, Master_Todo.md, Memory Log | 10 min |

**Total per document**: ~6 hours
**Total for Runner 006**: ~18 hours

---

## HEURISTIC INTRO GENERATION (Manual — Python Unavailable)

**Process** (as used for PROD-13, 14, 15):
1. Read completed document body
2. Write `intros/PROD-XX_<title>_Williams.md` (67 lines)
3. Write `intros/PROD-XX_<title>_Keymaker.md` (67 lines)
4. Write `intros/PROD-XX_<title>_El_Segundo.md` (67 lines)
5. Write `intros/PROD-XX_<title>_Combined.md` (200+ lines)

**Williams Lens**: First-principles physics, dimensional analysis, thermodynamic limits, "if physics works at limit, engineering is detail"
**Keymaker Lens**: Systems integration, interfaces, architectures, cross-cutting concerns, "interface is the system"
**El Segundo Lens**: Operational reliability, manufacturing reality, maintenance, "design for the tech who hasn't slept"
**Combined**: Three-way synthesis with risk matrix, decisions locked, follow-up workstreams

---

## CHUNKING & VERIFICATION COMMANDS

```bash
# For each document (replace XX):
cd /workspace/app/Tun/lol.forge

# Split
node scripts/split_chunks.js split docs/PROD-XX_<title>.md chunks/PROD-XX

# Manifest
node scripts/split_chunks.js manifest chunks/PROD-XX

# Verify
node scripts/split_chunks.js verify chunks/PROD-XX

# Compress
node scripts/split_chunks.js compress docs/PROD-XX_<title>.md docs/PROD-XX_<title>.compressed.md

# Line count check
wc -l docs/PROD-XX_<title>.md  # Must be ≥ 900
```

---

## GIT COMMIT CONVENTION

```bash
git add -A
git commit -m "lol.forge: PROD-XX <title> — <lines> lines + 4 heuristic intros (<combined> combined)"
git push
```

**Expected commits for Runner 006**:
1. `lol.forge: PROD-16 Stage 3 Pyrolysis & Char — 900+ lines + 200 intro`
2. `lol.forge: PROD-17 Stage 4 Low-Temp Metals — 900+ lines + 200 intro`
3. `lol.forge: PROD-18 Stage 5 Aluminum Window — 900+ lines + 200 intro`

---

## TRACKER UPDATES REQUIRED

After **each document**:
- `TODO.md`: Mark document complete with subtask breakdown
- `Master_Todo.md`: Check off PROD-XX, update progress table
- `memory/YYYY-MM-DD.md`: Append completion entry, git commit, achievements, heartbeat

After **all three documents**:
- `NEXT_runner_007.md`: Create for PROD-19, 20, 21 (Stages 6-8)

---

## HEARTBEAT REQUIREMENTS

- Update `HEARTBEAT_LOLFORGE.md` every ≤120 seconds
- Log format: `YYYY-MM-DDTHH:MM:SSZ Runner 006 <subtask> <status>`
- No blocking waits — queue next subtask immediately

---

## BLOCKER RESOLUTION PRECEDENTS

| Blocker | Resolution (from Runner 005) |
|---------|------------------------------|
| Python unavailable for `write_large_file.py` | Use Node.js `scripts/split_chunks.js` |
| Python unavailable for heuristic intros | Write intros manually to `intros/` directory |
| Git branch no upstream | `git push --set-upstream origin main` |
| Line count <900 | Expand technical tables, add appendices, deepen physics |

---

## QUICK REFERENCE: STAGE PARAMETERS SUMMARY

| Stage | Temp Range | Duration | RPM | G-Force | Key Physics |
|-------|------------|----------|-----|---------|-------------|
| **Stage 2** (PROD-15) | 150-450°C | 30 min | 150 | 12.6 | Polymer melt density stratification |
| **Stage 3** (PROD-16) | 450-700°C | 45 min | 150 | 12.6 | Thermoset pyrolysis, char activation |
| **Stage 4** (PROD-17) | 420-900°C | 30 min | 200 | 22.3 | Low-temp metal melting, In-first |
| **Stage 5** (PROD-18) | 660-720°C | 30 min | 200 | 22.3 | Al melting, Mg removal, dross mgmt |

---

## NEXT RUNNER HANDOFF (Runner 007)

After Runner 006 completes, create `NEXT_runner_007.md` for:
- **PROD-19**: Stage 6 Copper & Precious Metals (5 kHz, Au/Ag/Pd)
- **PROD-20**: Stage 7 Ferrous Cascade (2 kHz, RE magnet recovery)
- **PROD-21**: Stage 8 Mineral Residue & Zircon (1676°C dissociation)

---

*Runner 006 Ready. Source materials ingested. Process validated on PROD-13, 14, 15. Proceed with PROD-16 first.*