# NEXT_runner_006.md — Runner 006 Handoff Instructions

## Session Context
- **Project**: CSMMinesMagnets — Chilean Magnetic Minerals Brokerage Intelligence
- **Runner**: 006 (0-based: 5th runner, 1-based: 6th runner)
- **Previous**: Runner 005 completed DOC-08 (Port & Logistics Corridors)
- **Next Target**: **DOC-09: Rare Earth & Critical Mineral Specifications — NdFeB, SmCo, FeN, FeCo Grades**
- **Date**: 2026-10-26
- **Git Tag**: `runner-005-complete` pushed to origin
- **Branch**: `kilo/earnest-vault-evm` (up to date with origin)

---

## DOC-08 Completed — Summary

**File**: `FinishedWork/DOC-08_Port_Logistics_Corridors.md.gz` (compressed, 95KB)
**Chunks**: `chunks/DOC-08/` (53 chapter files + MANIFEST.json, verified 0 bytes diff)
**Intros**: `FinishedWork/intros/DOC-08_Port_Logistics_Corridors_*.md` (5 variants)
**Quality Gates**: All PASSED
- Lines: ~4,259 (≥900 ✓)
- Formulas: 45+ (≥20 ✓)
- Cross-refs: 85+ (≥15 ✓)
- Standards: 18 (≥8 ✓)
- Conflation: 0 flags vs. DOC-01..07
- Reassembly: 0 bytes diff
- Manifest: SHA256 + size for all 53 chunks

**Chapters Delivered**:
1. **Chilean Port Infrastructure Capability** — 5 major ports (Antofagasta, Mejillones, San Antonio, Coronel, Punta Arenas), EMPORCHA/CPM governance, terminal concessions, berth specs, REE readiness
2. **Rail Corridors — FCAB & Ferronor** — 900km FCAB (meter gauge), 800km Ferronor (north-south), Calama-Salta Argentina link, EFE integration, Bioceánico, cost model $/ton-km
3. **Magnet Shipping — IMDG Class 9 & IATA DGR 9.3** — UN 2807/3508, thresholds (0.525 mT at 2.1m), Packing Group II, shielding (mu-metal, steel), Fe₁₆N₂ temp control (-20°C ± 2°C), MIL-STD-1540, ASTM D4169, grade specs
4. **Customs — CPTPP Paperless Trade & Blockchain Certificates of Origin** — Article 14 digital trade, e-BL legal validity, CustomsChain blockchain e-CO, Chile-US FTA, Chile-EU Advanced Framework, SICEX single window, WCO SAFE/AEO, HS Codes, clearance timeline (3-6.5 hrs paperless)
5. **Logistics Cost Model — Ocean Freight, Rail, Warehousing & Insurance** — Ocean rates Antofagasta→Shanghai/Rotterdam/Busan/Houston, FCAB/Ferronor tariffs, ZOFRI bonded zones, war risk + magnet degradation insurance, total landed cost formula, sensitivity (±15% fuel, ±20% FX)
6. **Supply Chain Resilience — Alternative Routes & Risk Mitigation** — Pacific route, Atlantic route (Magellan 30d/$38t), Magellan transit (36hrs, pilotage), Panama Canal (drought queue), Red Sea contingencies (Cape +10d), port strikes (2019/2022/2024), tsunami/seismic/Atacama hyperaridity, resilience scoring matrix (RTO/RPO)
7. **CSM Delivery Requirements — Magnet-to-Motor Integration** — Factory intake specs (NdFeB N42H/N48SH/N52EH, SmCo 1:5/2:17, Fe₁₆N₂, Fe-Co), JIT vs buffer strategy (55-95 day lead, hybrid 60-day buffer), 3-tier QC chain (mine/port/factory), DFARS 252.225-7018 compliance (Chile qualifying country), blockchain traceability, DDP INCOTERMS 2020 pricing
8. **Port Community Integration — Local Benefit** — Aegis-Forge modular deployment (15x 40ft HC, 3.2MW, ZLD), zero aqueous discharge benefit, FBC/CDC trusts at 4 port cities, employment multipliers (2.9-3.2x), Indigenous engagement (Kawashkar/Yámana, Chango), CBA template, sentinel monitoring, social license protocol
9. **Traceability Matrix — Logistics Claims to Sources** — 33 claims mapped to primary sources (EMPORCHA, FCAB, IMDG, IATA, CPTPP, ACP, SHOA, CSN, DMC, DOC-01..07), methodology per DOC-07, cross-reference index

---

## Infrastructure Status
- ✅ chunks/DOC-01/ through chunks/DOC-08/ (all 9 chapters + manifest each)
- ✅ FinishedWork/DOC-01 through DOC-08 .md.gz (compressed originals)
- ✅ FinishedWork/intros/ (5 heuristic intro variants per document)
- ✅ scripts/heartbeat_monitor.py, generate_heuristic_intros.sh, task_timer.py, taskmaster.sh (local copy)
- ✅ startup.sh (installs Python3, sets relative project dir, starts heartbeat, uses local taskmaster.sh)
- ✅ Git: All committed, tagged `runner-005-complete`, pushed to origin

---

## DOC-09 Assignment — Rare Earth & Critical Mineral Specifications

### Objective
Author **DOC-09: Rare Earth & Critical Mineral Specifications — NdFeB, SmCo, FeN, FeCo Grades** (≥900 lines, 9 chapters)

### Required Research (Pre-Authoring) — ✅ COMPLETE from CSMMagTech2026 V2.0 & CSMMagEco2026 V2.0

| Research Area | Status | Key Sources |
|---------------|--------|-------------|
| 1. NdFeB Grades (N35-N52, H/SH/EH/UH/AH) | ✅ Complete | CSMMagTech2026 V2.0, vendor datasheets, DOC-06 |
| 2. SmCo Grades (1:5 S16-S24, 2:17 S24-S32) | ✅ Complete | CSMMagTech2026 V2.0, Electron Energy, DOC-06 |
| 3. Fe₁₆N₂ (Alpha-double-prime) | ✅ Complete | **Niron Magnetics 27 MGOe**, CSMMagTech2026 V2.0, DOE ARPA-E |
| 4. Fe-Co (Hiperco 50, Vacodil, Permendur) | ✅ Complete | CSMMagTech2026 V2.0, Carpenter Technology, DOC-06 |
| 5. Emerging: MnBi, AlNiCo, Fe-Sn, MXene-NdFeB | ✅ Complete | CSMMagTech2026 V2.0 (MnBi 14 MGOe, AlNiCo 10.5 MGOe, Fe-Sn 12 MGOe, MXene +12% Hci) |
| 6. Critical Materials: Dy, Tb, Co, Ga, N | ✅ Complete | CSMMagEco2026 V2.0, USGS, EU CRMA 2024 |
| 7. Chilean Source Mapping (DOC-01) | ✅ Complete | Antofagasta IOCG (bastnäsite), Atacama IOCG (monazite), Coquimbo Fe-N, Biobío Fe-Co |
| 8. Test Standards (MIL-STD-1540, ASTM, IEC) | ✅ Complete | MIL-STD-1540E, ASTM D4169, IEC 60404, JIS C 2510 |

### Chapter Structure (9 Chapters Target)

| Chapter | Title | Key Content |
|---------|-------|-------------|
| 1 | NdFeB Grade Specifications — Complete Matrix | N35-N52, H/SH/EH/UH/AH, $B_r$, $H_{cJ}$, $(BH)_{max}$, temp coeffs, corrosion, machining |
| 2 | SmCo Grade Specifications — 1:5 & 2:17 Series | S16-S32, high-temp advantage, radiation hardness, no coating needed, cost premium |
| 3 | Fe₁₆N₂ — Alpha-double-prime Iron Nitride | Metastable phase, 27 MGOe target, 80°C decomp limit, zero REE, DFARS compliant, Niron status |
| 4 | Fe-Co — High-Flux Soft Magnetic Alloys | Hiperco 50, Vacodil, Permendur, stator/rotor core use, 2.4T $B_r$, zero REE |
| 5 | Emerging Rare-Earth-Free Magnets | MnBi 14 MGOe, AlNiCo 10.5 MGOe, Fe-Sn 12 MGOe, MXene-NdFeB +12% Hci, CuMnAs |
| 6 | Critical Material Specifications — Dy, Tb, Co, Ga, N | Purity grades, sourcing (qualifying countries), DFARS flow-down, price forecasts |
| 7 | Chilean Source-to-Grade Mapping | Antofagasta bastnäsite → NdFeB, Atacama monazite → SmCo, Coquimbo Fe-N → Fe₁₆N₂, Biobío Fe-Co → Fe-Co |
| 8 | Test Methods & Acceptance Criteria | MIL-STD-1540, ASTM D4169, IEC 60404-8-1, JIS C 2510, pulse magnetometer, thermomagnetic |
| 9 | Traceability Matrix — Specification Claims to Sources | Per DOC-07 methodology, cross-ref to DOC-01, DOC-06, DOC-08, CSMMagTech2026 |

### Quality Gates (Same as DOC-08)
- [ ] Lines: ≥900
- [ ] Formulas: ≥20 (LaTeX/Unicode)
- [ ] Cross-refs: ≥15 (to DOC-01..08, Chilean law, MIL-STD, ASTM, IEC, USGS, EU CRMA)
- [ ] Standards: ≥8 (MIL-STD-1540, ASTM D4169, IEC 60404, JIS C 2510, ISO 28000, CPTPP, DFARS, Chilean Mining Code)
- [ ] Conflation: 0 flags vs. DOC-01..08
- [ ] Traceability Matrix: Present (Ch. 9)
- [ ] Chunk & Verify: `write_large_file.py` split → verify → manifest
- [ ] Compress: `.md.gz`
- [ ] Heuristic Intros: 5 variants (Williams, Keymaker, El Segundo, Baker Street, Combined)
- [ ] Git: Commit chunks + compressed + intros
- [ ] Tag: `runner-006-complete`

---

## Key Cross-Reference Dependencies (From Completed Docs)

| DOC | Relevance to DOC-09 |
|-----|---------------------|
| DOC-01 | Geological mapping → mineral occurrences → grade assignments |
| DOC-06 | CSM factory intake specs (Ch. 7 of DOC-08) → grade requirements |
| DOC-07 | Regulatory: Mining Code concessions → REE separation permitting, CRMA strategic project |
| DOC-08 | Ch. 3 (shipping specs by grade), Ch. 7 (intake specs, DFARS), Ch. 9 (traceability methodology) |

---

## Tools & Commands

```bash
# Verify environment
cd /workspace/app/CSMWip/CSMMinesMagnets
cat AGENTS.md
cat NEXT_runner_006.md
git status

# Research (web search, then author)
# ... write to FinishedWork/DOC-09_Rare_Earth_Critical_Mineral_Specifications.md ...

# Chunk & Verify
python3 ../../__Python_Tools/write_large_file.py split \
    FinishedWork/DOC-09_Rare_Earth_Critical_Mineral_Specifications.md \
    chunks/DOC-09 chapter .md
python3 ../../__Python_Tools/write_large_file.py verify chunks/DOC-09
python3 ../../__Python_Tools/write_large_file.py manifest chunks/DOC-09

# Compress
python3 ../../__Python_Tools/write_large_file.py compress \
    FinishedWork/DOC-09_Rare_Earth_Critical_Mineral_Specifications.md

# Heuristic Intros
./scripts/generate_heuristic_intros.sh FinishedWork/DOC-09_Rare_Earth_Critical_Mineral_Specifications.md

# Git
git add chunks/DOC-09/ FinishedWork/DOC-09_*.md.gz FinishedWork/intros/DOC-09_*.md
git commit -m "DOC-09: Rare Earth & Critical Mineral Specifications complete"
git tag runner-006-complete
git push origin --tags

# Create next handoff
# Write NEXT_runner_007.md
```

---

## Heartbeat Monitor
- **PID**: Check `ps aux | grep heartbeat_monitor.py`
- **Interval**: 120 seconds (per HEARTBEAT_MAGNETS.md)
- **Log**: `Logs/heartbeat.log`

---

## Session Resume Protocol (If Interrupted)
```bash
cd /workspace/app/CSMWip/CSMMinesMagnets
cat NEXT_runner_006.md
cat RESUME_SESSION_MAGNETS.md
git status
# Continue from last completed subtask
```

---

## Notes for Runner 006
1. **Research complete** — all grade specifications and Chilean source mapping done via CSMMagTech2026 V2.0, CSMMagEco2026 V2.0, DOC-01, DOC-06, DOC-08
2. **Follow Chapter 9 traceability methodology** from DOC-07/DOC-08 for Ch. 9
3. **Fe₁₆N₂ focus** — Niron Magnetics 27 MGOe, 80°C hard limit, zero REE, DFARS compliant — this is the strategic differentiator
4. **SmCo advantage** — high temp (350°C), radiation hard, no Dy/Tb — critical for downhole/aerospace/defense
5. **Chilean sourcing** — map each grade to specific Chilean deposit (Antofagasta bastnäsite, Atacama monazite, Coquimbo Fe-N, Biobío Fe-Co)
6. **Critical materials** — Dy/Tb from qualifying countries (Lynas Australia/US), Co from Australia/Canada, N from air separation
7. **Heuristic intros** — script auto-generates; verify 5 files created

---

**Status**: Research Complete — Ready for Runner 006 to begin DOC-09 authoring.
**Handoff**: Complete — all DOC-08 deliverables committed, tagged, pushed.