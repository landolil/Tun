# AGENTS.md — lol.forge Project
## Carrington Storm Motors Forge — Elemental Extraction Device

**Type**: Engineering specification project — large markdown documents, materials science, thermal/acoustic/inductive process engineering
**Output**: 40 Product Documents (900 lines + 200 line heuristic intros) + 40 Follow-up Documents (300 lines + 3 heuristic intros)
**Workflow**: Runner-based sequential processing with chapter-based authoring

## Project Structure
```
lol.forge/
├── AGENTS.md                    # This file - project conventions
├── Master_Todo.md               # Comprehensive task hierarchy
├── resume_runner.sh             # Session resumption script
├── memory/                      # Daily session logs (YYYY-MM-DD.md)
├── TODO.md                      # Active task list (milestones → tasks → subtasks)
├── NEXT_runner_001.md           # Next runner instructions
├── RESUME_SESSION_LOLFORGE.md   # Session resume context
├── HEARTBEAT_LOLFORGE.md        # 2-minute heartbeat config
├── scripts/                     # Project-specific automation scripts
├── docs/                        # Product documents (40 × 1100 lines)
├── heuristics/                  # Heuristic intros (Williams/Keymaker/El Segundo)
├── intros/                      # Combined heuristic intros per document
├── chunks/                      # Logical chapter chunks for large docs
├── FinishedWork/                # Completed verified documents
├── Framework/                   # Core framework documents
├── Research/                    # Research inputs from CSMFAB/CSMWip
├── Logs/                        # Processing logs
└── Pieces/                      # Legacy fragmentation (avoid - use chunks/)
```

## Three-Pronged Heuristic Framework (Williams/Keymaker/El Segundo)

### Williams Heuristic — Architectural Clarity (Constraint, Necessity, Commitment)
- **Constraint (The Lock)**: What irreducible principle forces this design?
- **Necessity (The Key)**: What empirical gap does this resolve? Why is the solution inevitable?
- **Commitment (The Turn)**: What non-negotiable commitments does this document make?

### Keymaker Heuristic — Implementation Precision (Lock, Key, Turn)
- **The Empirical Lock**: What fabrication fidelity gap does this address?
- **The Mathematical Key**: What single computational primitive generates the solution?
- **The Turn (Both Directions)**: Theory→History validation AND History→Theory validation

### El Segundo Heuristic — Operational Excellence (Mirror, Participation, Protocol)
- **Mirror (Self-Reflection)**: How does the fabricator observe their own fabrication?
- **Participation (Witness)**: How does the inside operator witness the phenomenon into existence?
- **Protocol (Recursive)**: What recursive sequence guarantees fidelity at each scale?

## Document Specifications

### Product Documents (40 total) — `docs/PROD-XX_<title>.md`
- **Body**: 900 lines minimum of dense technical content
- **Heuristic Intro**: 200 lines (combined Williams + Keymaker + El Segundo = ~67 lines each)
- **Total per document**: ~1100 lines
- **Format**: Markdown with equations, tables, architectural diagrams

### Follow-up Documents (40 total) — `docs/FOLLOW-XX_<title>.md`
- **Body**: 300 lines minimum
- **Heuristic Intros**: 3 separate intros (Williams, Keymaker, El Segundo) at ~100 lines each
- **Total per document**: ~600 lines (300 body + 300 intros)

## Document Catalog — 40 Product Documents

| ID | Title | Focus Area |
|----|-------|------------|
| PROD-01 | System Overview & Architecture | Complete machine architecture |
| PROD-02 | Thermal Cascade Process Engineering | 8-stage temperature profile |
| PROD-03 | Inductive Heating Zone Design | 8-zone coil bank, frequencies, power |
| PROD-04 | ZrB₂-SiC Drum Engineering | Ceramic drum, liner zones, ports |
| PROD-05 | Acoustic Mineral Liberation Subsystem | LF/ultrasonic pre-processor |
| PROD-06 | BFRP Pressure Vessel Design | Filament-wound outer shell |
| PROD-07 | Gas Capture & Fume Solidification | CO₂, SO₂, HCl, plasma treatment |
| PROD-08 | Slug Cooling & Output Catalog | ZrO₂ molds, quench, mass spec |
| PROD-09 | Material Exit Port Valve System | Ti₃AlC₂ actuators, ceramic pistons |
| PROD-10 | Induction Power Electronics | GaN inverters, FBG sensors, PID |
| PROD-11 | Feed Preparation & Shredding | BFRP blades, ferrous pre-separation |
| PROD-12 | All-Aegis Material BOM | Zero-metal construction bill |
| PROD-13 | Feedstock Specifications | Categories A-D, pre-processing |
| PROD-14 | Stage 0-1: Acoustic & Drying | Liberation physics, IR drying |
| PROD-15 | Stage 2: Polymer Flow & Separation | Melt centrifuge, PVC management |
| PROD-16 | Stage 3: Pyrolysis & Char | Thermoset decomposition, char uses |
| PROD-17 | Stage 4: Low-Temp Metals (Pb/Sn/Zn/In) | Indium-first strategy |
| PROD-18 | Stage 5: Aluminum Window | 660-720°C clean separation |
| PROD-19 | Stage 6: Copper & Precious Metals | 5kHz, Au/Ag/Pd recovery |
| PROD-20 | Stage 7: Ferrous Cascade | 2kHz, RE magnet recovery |
| PROD-21 | Stage 8: Mineral Residue & Zircon | 1676°C dissociation, RE oxides |
| PROD-22 | Phoenix Protocol Integration | EOL product returns, closed loop |
| PROD-23 | Control System Architecture | Distributed control, safety interlocks |
| PROD-24 | Thermal Modeling & Simulation | FEA, CFD, thermophysical validation |
| PROD-25 | Structural Analysis & FEA | Drum stress, vessel, frame, seismic |
| PROD-26 | Electrical Safety & GIC Immunity | Dielectric design, Carrington hardening |
| PROD-27 | Manufacturing Process Plan | Build sequence, tooling, fixturing |
| PROD-28 | Quality Assurance & Testing | Acceptance criteria, NDT, validation |
| PROD-29 | Deployment & Operations | Site prep, commissioning, procedures |
| PROD-30 | Maintenance & Sustainment | PM schedules, wear parts, spares |
| PROD-31 | Economic Analysis & Viability | CAPEX, OPEX, revenue streams |
| PROD-32 | Regulatory & Compliance | Environmental, safety, permitting |
| PROD-33 | Supply Chain & Logistics | Material sourcing, transport, storage |
| PROD-34 | Training & Certification | Operator curriculum, competencies |
| PROD-35 | Human Factors & Ergonomics | Interface design, safety zones |
| PROD-36 | Cyber-Physical Security | OT security, air-gapped control |
| PROD-37 | Data Management & Digital Twin | Sensor fusion, predictive models |
| PROD-38 | Configuration Management | Version control, change control |
| PROD-39 | Test & Evaluation Specification | FAT, SAT, performance benchmarks |
| PROD-40 | Future Evolution & Roadmap | Gen-II, scaling, new feedstocks |

## Follow-up Document Catalog — 40 Documents

| ID | Title | Focus |
|----|-------|-------|
| FOLLOW-01 | Drum Material Deep-Dive | ZrB₂-SiC synthesis, flash sintering |
| FOLLOW-02 | Induction Coil Optimization | FEA, frequency tuning, efficiency |
| FOLLOW-03 | Acoustic Transducer Array | KNbO₃-BaTiO₃ design, cavitation |
| FOLLOW-04 | Port Valve Thermal Actuation | Ti₃AlC₂ MAX phase characterization |
| FOLLOW-05 | BFRP Vessel Filament Winding | Layup optimization, hydrotest |
| FOLLOW-06 | Gas Scrubber Chemistry | NaHCO₃, carbon bed, plasma torch |
| FOLLOW-07 | Slug Mold Thermal Cycling | ZrO₂ fatigue, quench parameters |
| FOLLOW-08 | PEEK CF40 Seal Engineering | Dynamic rotary seal at 800°C |
| FOLLOW-09 | Aerogel Insulation Performance | Polyimide-silica, λ=0.010 W/m·K |
| FOLLOW-10 | GaN Inverter Thermal Management | Junction-to-case, liquid cooling |
| FOLLOW-11 | FBG Sensor Embedding | PMMA fiber, drum wall integration |
| FOLLOW-12 | Shredder Blade Wear Life | BFRP vs. steel, replacement interval |
| FOLLOW-13 | YInMn Blue Glaze Durability | SRI=115, thermal cycling stability |
| FOLLOW-14 | Indium Electrolysis Refining | 99.9% In from Stage 4 stream |
| FOLLOW-15 | Rare Earth Hydromet Recovery | Nd/Sm/Co from Stage 7 slag |
| FOLLOW-16 | Zircon Dissociation Kinetics | 1676°C, ZrO₂+SiO₂ separation |
| FOLLOW-17 | Polymer Melt Rheology | Viscosity vs. temp, density strat. |
| FOLLOW-18 | Char Activation Protocol | Steam/CO₂ activation, surface area |
| FOLLOW-19 | Precious Metal Electrorefining | Cu anode slime, Au/Ag/Pd recovery |
| FOLLOW-20 | Ferrous Slug Metallurgy | C/Si/Mn control, casting quality |
| FOLLOW-21 | Mineral Slag Hydrometallurgy | Acid leach, solvent extraction |
| FOLLOW-22 | Dust & Fume Capture Efficiency | PM2.5, VOC, heavy metal capture |
| FOLLOW-23 | Energy Balance & Exergy Analysis | kWh/ton, thermal efficiency |
| FOLLOW-24 | LCA & Carbon Footprint | Cradle-to-gate, sequestration credit |
| FOLLOW-25 | Seismic & Shock Qualification | IEEE 693, drum dynamic response |
| FOLLOW-26 | Fire Protection & Suppression | Inert gas, ceramic passive protection |
| FOLLOW-27 | Radiation Hardening | Gamma/neutron, electronics survival |
| FOLLOW-28 | Acoustic Emission Monitoring | Crack detection, process signature |
| FOLLOW-29 | Machine Learning Process Control | Digital twin, anomaly detection |
| FOLLOW-30 | Modular Scale-Up Design | 226L → 2000L, multi-drum |
| FOLLOW-31 | Alternative Feedstock Validation | Municipal waste, tailings, slag |
| FOLLOW-32 | Ceramic Composite Development | New UHTC compositions |
| FOLLOW-33 | Magnet Manufacturing Integration | RE recovery → sintered NdFeB |
| FOLLOW-34 | Grid-Scale Energy Storage | Thermal battery integration |
| FOLLOW-35 | Space Resource Utilization | Regolith processing adaptation |
| FOLLOW-36 | Nuclear Waste Remediation | Actinide separation, vitrification |
| FOLLOW-37 | Ocean Mining Sediment Processing | Polymetallic nodule adaptation |
| FOLLOW-38 | Urban Mining Logistics | Collection network, preprocessing |
| FOLLOW-39 | Policy & Incentive Framework | Critical mineral independence |
| FOLLOW-40 | Open Architecture Licensing | CSMFAB material specs, patents |

## Large File Strategy (Chapter-Based Authoring)

**Use `__Python_Tools/write_large_file.py` for all documents >500 lines:**

```bash
# Split into logical chapters
python3 ../../__Python_Tools/write_large_file.py split \
    docs/PROD-01_System_Overview.md \
    chunks/PROD-01 \
    chapter .md

# Compress for storage
python3 ../../__Python_Tools/write_large_file.py compress \
    docs/PROD-01_System_Overview.md

# Generate manifest with checksums
python3 ../../__Python_Tools/write_large_file.py manifest chunks/PROD-01

# Verify integrity
python3 ../../__Python_Tools/write_large_file.py verify chunks/PROD-01

# Reassemble at publish time
python3 ../../__Python_Tools/write_large_file.py concat chunks/PROD-01 docs/PROD-01_System_Overview.md
```

## Runner Workflow

Each runner processes a batch of 2-3 documents:
1. **Read** current runner file (`NEXT_runner_XXX.md`)
2. **Process** assigned documents (research → write → verify)
3. **Generate** heuristic intros (3 × ~67 lines = 200 lines combined)
4. **Write** output to `docs/` and `intros/`
5. **Create** next runner (`NEXT_runner_XXX+1.md`)
6. **Update** `Master_Todo.md` and `TODO.md` with completed subtasks
7. **Log** progress to `memory/YYYY-MM-DD.md`

## Heartbeat Requirements
- **Update interval**: ≤ 2 minutes (120 seconds)
- **Timeout guard**: ≤ 30 seconds per subtask
- **Auto-continue**: No blocking waits; queue next subtask immediately
- **Terminal output**: Print progress every subtask completion

## Session Resume Protocol
```bash
cd /workspace/app/lol.forge
cat NEXT_runner_001.md
cat RESUME_SESSION_LOLFORGE.md
git status
cat HEARTBEAT_LOLFORGE.md
```

## Key Commands
```bash
# Process next document batch
./scripts/process_batch.sh --runner 1

# Generate heuristic intros for a document
python3 scripts/generate_intros.py --doc PROD-01

# Verify all chunks
python3 ../../__Python_Tools/write_large_file.py verify-all chunks/

# Heartbeat monitor (run in background)
python3 scripts/heartbeat_monitor.py --interval 120

# Git commit and push
git add -A && git commit -m "lol.forge: <description>" && git push
```

## Conventions
- **Chunk naming**: `chunks/<DOC-ID>/chapter_XX_<title>.md`
- **Manifest**: `chunks/<DOC-ID>/MANIFEST.json` (SHA256 + size)
- **Runner naming**: `NEXT_runner_XXX.md` (3-digit)
- **Memory logs**: `memory/YYYY-MM-DD.md` (raw), folded into project MEMORY.md
- **Document naming**: `PROD-XX_<title>.md`, `FOLLOW-XX_<title>.md`
- **Intro naming**: `intros/PROD-XX_<title>_intro_williams.md`, etc.
- **Combined intro**: `intros/PROD-XX_<title>_COMBINED_INTRO.md`
- **No 17-piece splits** — use logical chapter chunks instead

## Source Material Integration
Reference documents from:
- `../seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/`
- `../seed/CSMWip/12_AegisOutfitFabricator/FinishedWork/`
- `../seed/CSMWip/CSMMinesMagnets/FinishedWork/`
- `../seed/CSMFAB/CSMFAB Materials Study 5 Parts/`
- `../seed/CSMFAB/CSMFAB-P001 through P008/`

## Git Workflow
- Commit after each document batch (2-3 docs)
- Push to GitHub after each commit
- Tag major milestones: `lol.forge-prod-10`, `lol.forge-prod-20`, etc.