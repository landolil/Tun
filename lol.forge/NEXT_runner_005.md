# NEXT_runner_005.md — Runner 005 Instructions
## lol.forge Phase 1 — Product Documents 13-15

---

## MISSION

Complete **PROD-13, PROD-14, PROD-15** — Feedstock Specifications, Stage 0-1 Acoustic & Drying, Stage 2 Polymer Flow & Separation.

**Target**: 3 Product Documents × (900+ lines body + 200 lines combined heuristic intro) = ~3,300 lines total.

**Deadline**: End of session.

---

## CONTEXT FROM PREVIOUS RUNNERS

| Runner | Documents | Status | Key Deliverables |
|--------|-----------|--------|------------------|
| 001 | PROD-01 | ✅ | System architecture, 8-stage cascade, 24-component BOM |
| 002 | PROD-02, 03 | ✅ | Thermal cascade, 8-zone induction coil design |
| 003 | PROD-04, 05, 06 | ✅ | Drum, acoustic liberation, BFRP vessel |
| 004a | PROD-07, 08, 09 | ✅ | Gas capture, slug cooling, port valves |
| 004b | PROD-10, 11 | ✅ | Power electronics, feed prep & shredding |
| **004c** | **PROD-12** | ✅ | **All-Aegis Material BOM Deep-Dive** |
| **005** | **PROD-13, 14, 15** | **🎯 ACTIVE** | **Feedstock specs, Stage 0-2** |

---

## SOURCE MATERIALS TO READ

### Primary (Required)
```
Research/
├── CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/
│   ├── Vol 1 - System Architecture (CSMFAB000000000108) — Feedstock specs, Category A-D
│   ├── Vol 2 - Process Engineering (CSMFAB000000000109) — Stage 0, 1, 2 details
│   ├── Vol 3 - Power Electronics (CSMFAB000000000110)
│   ├── Vol 4 - Mechanical Systems (CSMFAB000000000111)
│   └── Vol 5 - Gas/Output (CSMFAB000000000112)
├── CSMFAB Materials Study 5 Parts/
│   ├── Part I - Ultra-High Temperature Ceramics (UHTCs) — ZrB₂-SiC, HfB₂-SiC
│   ├── Part II - MAX Phases & Layered Ceramics — Ti₃AlC₂, Cr₂AlC, Mo₂AlC
│   ├── Part III - Specialty Functional Materials — YInMn Blue, MR fluids, piezoelectrics
│   ├── Part IV - Polymer-Ceramic Composites — BFRP, PEEK CF40, PEX-a
│   ├── Part V - Critical Minerals & Recovery — REE, In, Zr, B, Ti cycles
│   └── Part VI - CBPC, Geopolymer & Structural Ceramics — Cold-sintered binders
└── CSMFAB-P001 through P008/
    ├── P001 - Drum Ceramic Composite
    ├── P002 - Liner Ceramic System
    ├── P003 - Aerogel Insulation
    ├── P004 - Induction Coil System
    ├── P005 - Acoustic Transducer Array
    ├── P006 - Pressure Vessel
    ├── P007 - Port Valve System
    └── P008 - Control & Sensing
```

### Reference from PROD-12 (BOM Master)
- **Feedstock Categories A-D**: Defined in PROD-01 Section 5, expanded in PROD-12 Sec 7
- **All-Aegis Materials**: 24-component master table (PROD-12 Sec 2)
- **In-House Synthesis**: 12 routes (PROD-12 Sec 8)
- **Supply Chain**: Tier 1/2/3 domestic/allied/commodity (PROD-12 Sec 9)

---

## DOCUMENT SPECIFICATIONS

### PROD-13: Feedstock Specifications (Categories A-D, Pre-Processing)
**Target**: 900+ lines body + 200 lines combined intro

**Required Sections (13 minimum):**
1. **Header & Scope** — CSMFAB document number, classification, applicability
2. **Category A: Pre-Sorted Industrial Streams** — E-scrap, auto shredder residue, catalyst scrap, alloy scrap
3. **Category B: Municipal & Commercial Waste** — MRF output, C&D debris, bulky waste, tire rubber
4. **Category C: Mineral & Metallurgical Residues** — Slag, tailings, red mud, spent refractories
5. **Category D: Phoenix Protocol Returns** — Retired Aegis products, EOL components, circular feedstock
6. **Pre-Processing Requirements per Category** — Sizing, drying, ferrous removal, contamination limits
7. **Analytical Characterization Protocols** — XRF, XRD, ICP-MS, particle size, moisture, LOI
8. **Acceptance Criteria & Rejection Thresholds** — Compositional, physical, radiological
9. **Sampling & Lot Release Procedures** — ISO 3082, representative sampling, composite lots
10. **Storage & Handling** — Bunker design, moisture control, segregation, FIFO
11. **Mass Balance & Yield Targets** — Expected recovery per element per category
12. **Economic Valuation Model** — $/ton input, $/kg recovered element, processing cost
13. **Cross-Reference Matrix** — Links to PROD-01, PROD-02, PROD-11, PROD-14, PROD-22

**Key Data to Extract from Sources:**
- Vol 1 feedstock tables (Category A-D composition, tonnage, economics)
- Vol 2 Stage 0 pre-processing (acoustic liberation, sizing, drying)
- Materials Study Part V (critical mineral recovery from each category)
- CSMFAB-P005 (acoustic transducer pre-processing)

---

### PROD-14: Stage 0-1: Acoustic & Drying (Liberation Physics, IR Drying)
**Target**: 900+ lines body + 200 lines combined intro

**Required Sections (13 minimum):**
1. **Header & Scope** — Stage 0 (Acoustic) + Stage 1 (Drying), 25-150°C
2. **Stage 0: Acoustic Mineral Liberation** — LF 20-200Hz + US 40kHz, KNbO₃-BaTiO₃ transducers
3. **Liberation Physics** — Stress wave propagation, grain boundary fracture, interfacial debonding
4. **Acoustic Chamber Design** — BFRP housing, waveguide geometry, standing wave control
5. **Transducer Array** — 64-element phased array, beam steering, power density (W/cm²)
6. **Liberation Index Metric** — % target mineral liberated vs. locked, size distribution shift
7. **Stage 1: Infrared Drying** — 25-150°C, rotary drum, IR emitter array, moisture target <1%
8. **IR Emitter Specifications** — Wavelength (3-5µm), power density, zoning, reflectors
9. **Moisture Measurement** — FBG humidity sensors, NIR inline, mass loss verification
10. **Throughput & Residence Time** — 226L batch, 30 min acoustic + 60 min drying = 90 min
11. **Energy Balance** — kWh/ton, acoustic efficiency, IR efficiency, heat recovery
12. **Wear & Maintenance** — Transducer life, IR emitter replacement, chamber cleaning
13. **Cross-Reference Matrix** — Links to PROD-05, PROD-11, PROD-12, PROD-15, FOLLOW-03, FOLLOW-17

**Key Data to Extract:**
- Vol 2 Stage 0 (acoustic liberation physics, transducer specs)
- Vol 2 Stage 1 (drying kinetics, IR emitter specs)
- PROD-05 (acoustic subsystem, KNbO₃-BaTiO₃ specs)
- PROD-11 (acoustic pre-chamber integration)
- Materials Study Part III (piezoelectric materials)

---

### PROD-15: Stage 2: Polymer Flow & Separation (Melt Centrifuge, PVC Management)
**Target**: 900+ lines body + 200 lines combined intro

**Required Sections (13 minimum):**
1. **Header & Scope** — Stage 2, 200-350°C, polymer melt flow & density separation
2. **Polymer Melt Rheology** — Viscosity vs. temperature (Carreau-Yasuda), shear thinning, degradation
3. **Melt Centrifuge Design** — BFRP bowl, 3000 RPM, radial density stratification
4. **Density Separation Physics** — Stokes' law modified for non-Newtonian, hindered settling
5. **PVC Management Strategy** — HCl capture at 250-300°C, NaHCO₃ injection, carbon bed
6. **Polymer Fraction Collection** — PP/PE (0.9-0.95), PS (1.04-1.09), PET (1.33-1.38), PVC (1.38-1.42)
7. **Melt Filtration** — Ceramic candle filters (SiC), 50µm, back-pulse cleaning
8. **Devolatilization** — Vacuum vent, residual monomer removal, oligomer capture
9. **Output Streams** — Polymer pellets, char/filler concentrate, HCl scrubber salts
10. **Throughput & Quality** — kg/hr, purity specs, color, IV retention
11. **Energy Balance** — kWh/ton polymer, melt heating, centrifuge power, vacuum
12. **Safety & Emissions** — HCl monitoring, VOC capture, dust explosion prevention
13. **Cross-Reference Matrix** — Links to PROD-02, PROD-11, PROD-12, PROD-16, FOLLOW-17, FOLLOW-18

**Key Data to Extract:**
- Vol 2 Stage 2 (polymer melt centrifuge, PVC management)
- Materials Study Part IV (polymer-ceramic composites, BFRP at temp)
- Materials Study Part V (polymer fraction economics)
- PROD-11 (shredder output feed to Stage 2)

---

## WORKFLOW CHECKLIST (PER DOCUMENT)

For **each** of PROD-13, PROD-14, PROD-15:

### Phase 1: Research (30 min per doc)
- [ ] Read assigned source volumes/sections
- [ ] Extract key tables, equations, specifications
- [ ] Note cross-references to completed PRODs (01-12)
- [ ] Document material specs from PROD-12 BOM

### Phase 2: Write Document (2-3 hours per doc)
- [ ] Create document header with CSMFAB numbering
- [ ] Write all 13+ required sections
- [ ] Include tables, equations, architectural diagrams (ASCII/markdown)
- [ ] Target 900+ lines body (wc -l)
- [ ] Save to `docs/PROD-XX_<title>.md`

### Phase 3: Heuristic Intros (30 min per doc)
- [ ] Generate Williams intro (~67 lines) — architectural clarity
- [ ] Generate Keymaker intro (~67 lines) — implementation precision
- [ ] Generate El Segundo intro (~67 lines) — operational excellence
- [ ] Generate Combined intro (~200 lines) — synthesis
- [ ] Save to `intros/PROD-XX_<title>_williams.md`, `_keymaker.md`, `_elsegundo.md`, `_combined.md`

### Phase 4: Chunk & Verify (15 min per doc)
- [ ] `node scripts/split_chunks.js split docs/PROD-XX_<title>.md chunks/PROD-XX PROD-XX`
- [ ] `node scripts/split_chunks.js manifest chunks/PROD-XX`
- [ ] `node scripts/split_chunks.js verify chunks/PROD-XX`
- [ ] `node scripts/split_chunks.js compress docs/PROD-XX_<title>.md`

### Phase 5: Commit & Push (5 min per doc)
- [ ] `git add -A && git commit -m "lol.forge: PROD-XX <title> — 900+ lines + 4 heuristic intros" && git push`

### Phase 6: Update Trackers (5 min per doc)
- [ ] Update `TODO.md` with completed subtasks
- [ ] Update `Master_Todo.md` progress table
- [ ] Log to `memory/YYYY-MM-DD.md`

---

## 13-SUBTASK BREAKDOWN PER DOCUMENT

### PROD-13: Feedstock Specifications
| # | Subtask | Time | Verification |
|---|---------|------|--------------|
| 1 | Read Vol 1 feedstock tables + Part V | 30m | Notes captured |
| 2 | Write Sections 1-4 (Categories A-D) | 45m | 4 category tables complete |
| 3 | Write Sections 5-7 (Pre-processing, Analytics) | 45m | Protocols defined |
| 4 | Write Sections 8-10 (Acceptance, Sampling, Storage) | 30m | Criteria + procedures |
| 5 | Write Sections 11-13 (Mass Balance, Economics, X-ref) | 30m | Model + matrix |
| 6 | Williams intro | 15m | ~67 lines |
| 7 | Keymaker intro | 15m | ~67 lines |
| 8 | El Segundo intro | 15m | ~67 lines |
| 9 | Combined intro | 15m | ~200 lines |
| 10 | Chunk + manifest + verify | 10m | 18+ chunks OK |
| 11 | Compress | 2m | .gz created |
| 12 | Git commit + push | 5m | Pushed to origin |
| 13 | Update trackers | 5m | TODO + Master_Todo + memory |

### PROD-14: Stage 0-1 Acoustic & Drying
| # | Subtask | Time | Verification |
|---|---------|------|--------------|
| 1 | Read Vol 2 Stage 0-1 + PROD-05, Part III | 30m | Notes captured |
| 2 | Write Sections 1-4 (Acoustic physics, chamber) | 45m | Equations + geometry |
| 3 | Write Sections 5-7 (Transducers, Liberation Index) | 45m | Array specs + metric |
| 4 | Write Sections 8-10 (IR drying, emitters, moisture) | 45m | Specs + measurement |
| 5 | Write Sections 11-13 (Energy, Wear, X-ref) | 30m | Balance + matrix |
| 6 | Williams intro | 15m | ~67 lines |
| 7 | Keymaker intro | 15m | ~67 lines |
| 8 | El Segundo intro | 15m | ~67 lines |
| 9 | Combined intro | 15m | ~200 lines |
| 10 | Chunk + manifest + verify | 10m | 18+ chunks OK |
| 11 | Compress | 2m | .gz created |
| 12 | Git commit + push | 5m | Pushed to origin |
| 13 | Update trackers | 5m | TODO + Master_Todo + memory |

### PROD-15: Stage 2 Polymer Flow & Separation
| # | Subtask | Time | Verification |
|---|---------|------|--------------|
| 1 | Read Vol 2 Stage 2 + Part IV, Part V | 30m | Notes captured |
| 2 | Write Sections 1-4 (Rheology, Centrifuge, Physics) | 45m | Equations + design |
| 3 | Write Sections 5-7 (PVC, Fractions, Filtration) | 45m | Capture + specs |
| 4 | Write Sections 8-10 (Devolatilization, Outputs, Throughput) | 45m | Quality specs |
| 5 | Write Sections 11-13 (Energy, Safety, X-ref) | 30m | Balance + matrix |
| 6 | Williams intro | 15m | ~67 lines |
| 7 | Keymaker intro | 15m | ~67 lines |
| 8 | El Segundo intro | 15m | ~67 lines |
| 9 | Combined intro | 15m | ~200 lines |
| 10 | Chunk + manifest + verify | 10m | 18+ chunks OK |
| 11 | Compress | 2m | .gz created |
| 12 | Git commit + push | 5m | Pushed to origin |
| 13 | Update trackers | 5m | TODO + Master_Todo + memory |

---

## TOTAL ESTIMATED TIME

| Activity | Time |
|----------|------|
| Research (3 docs × 30 min) | 1.5 hr |
| Writing (3 docs × 3 hr) | 9 hr |
| Heuristic Intros (3 docs × 1 hr) | 3 hr |
| Chunk/Verify/Compress (3 docs × 15 min) | 45 min |
| Git + Trackers (3 docs × 10 min) | 30 min |
| **Total** | **~14.5 hours** |

---

## SUCCESS CRITERIA

- [ ] 3 Product Documents created in `docs/`
- [ ] Each document ≥ 900 lines body
- [ ] 12 Heuristic Intros created in `intros/` (3 per doc + 1 combined)
- [ ] Each document chunked into 18+ logical chapters
- [ ] Each manifest verified (SHA256 checksums match)
- [ ] Each document compressed (.gz)
- [ ] 3 Git commits pushed to origin
- [ ] TODO.md, Master_Todo.md, memory log updated
- [ ] NEXT_runner_006.md created for PROD-16, 17, 18

---

## KEY CONSTRAINTS (NON-NEGOTIABLE)

1. **All-Dielectric Architecture**: Zero structural metals in hot zone (BFRP, ceramics, PMMA POF, PEX-a, GaN) — enforced by PROD-12 BOM
2. **Carrington Immunity**: Every design must survive 100 V/km geoelectric field — no conductive path to earth
3. **In-House Synthesis Priority**: Use PROD-12 Sec 8 routes for basalt fiber, Elium®, ZrB₂, Si₃N₄, 3Y-TZP, Ti₃AlC₂, KNbO₃, aerogel, glaze, PMMA POF
4. **Phoenix Protocol Circularity**: Design for recovery — reference PROD-12 Sec 11 loops
5. **Domestic Supply Chain**: Tier 1 materials from PROD-12 Sec 9 contracted sources
6. **Heuristic Framework**: Every document must have all 4 intros (Williams, Keymaker, El Segundo, Combined)
7. **Chapter Chunking**: Logical header-based chunks, not arbitrary line splits
8. **Cross-Reference Integrity**: Sec 13/14/15 cross-ref matrices must link to actual PROD/FOLLOW doc numbers

---

## ESCALATION

If blocked on:
- **Source material missing**: Check `Research/` directory, then `../seed/CSMFAB/` and `../seed/CSMWip/`
- **Technical ambiguity**: Reference PROD-12 BOM for material specs, PROD-02 for process parameters
- **Line count short**: Add depth — more equations, more tables, more failure modes, more economics
- **Git issues**: `git status`, `git stash`, re-apply, force push if needed (with `--force-with-lease`)

---

## NEXT RUNNER (006) PREVIEW

After PROD-13, 14, 15 complete → Runner 006 handles:
- **PROD-16**: Stage 3: Pyrolysis & Char (Thermoset decomposition, char uses)
- **PROD-17**: Stage 4: Low-Temp Metals (Pb/Sn/Zn/In, Indium-first strategy)
- **PROD-18**: Stage 5: Aluminum Window (660-720°C clean separation)

---

*Runner 005: You have the BOM (PROD-12). You have the architecture (PROD-01). You have the process (PROD-02). You have the power (PROD-10). You have the feed (PROD-11). Now write the feedstock and first three stages. The machine is waiting.*

**Go build.**