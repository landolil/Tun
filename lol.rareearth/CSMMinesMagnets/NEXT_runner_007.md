# NEXT_runner_007.md — Runner 007 Handoff Instructions

## Session Context
- **Project**: CSMMinesMagnets — Chilean Magnetic Minerals Brokerage Intelligence
- **Runner**: 007 (0-based: 6th runner, 1-based: 7th runner)
- **Previous**: Runner 006 completed DOC-09 (Rare Earth & Critical Mineral Specifications)
- **Next Target**: **DOC-10: Magnet Manufacturing Supply Chain — Mine to Magnet to Motor**
- **Date**: 2026-10-26
- **Git Tag**: `runner-006-complete` pushed to origin
- **Branch**: `kilo/earnest-vault-evm` (up to date with origin)

---

## DOC-09 Completed — Summary

**File**: `FinishedWork/DOC-09_Rare_Earth_Critical_Mineral_Specifications.md.gz` (compressed, 21KB)
**Chunks**: `chunks/DOC-09/` (58 chapter files + MANIFEST.json, verified 0 bytes diff)
**Intros**: `FinishedWork/intros/DOC-09_Rare_Earth_Critical_Mineral_Specifications_*.md` (5 variants)
**Quality Gates**: All PASSED
- Lines: ~924 (≥900 ✓)
- Formulas: 45+ (≥20 ✓)
- Cross-refs: 85+ (≥15 ✓)
- Standards: 18 (≥8 ✓)
- Conflation: 0 flags vs. DOC-01..08
- Reassembly: 0 bytes diff
- Manifest: SHA256 + size for all 58 chunks

**Chapters Delivered**:
1. **NdFeB Grade Specifications — Complete Matrix** — N35-N52, H/SH/EH/UH/AH tiers, $B_r$, $H_{cJ}$, $(BH)_{max}$, temp coeffs, corrosion, machining, Jiles-Atherton model, eddy current formulas
2. **SmCo Grade Specifications — 1:5 & 2:17 Series** — S16-S32, high-temp advantage (350°C), radiation hardness, no coating needed, recoil permeability, Néel-Arrhenius stability
3. **Fe₁₆N₂ — Alpha-double-prime Iron Nitride** — Metastable BCC phase, 27 MGOe target, 80°C hard decomp limit, zero REE/DFARS compliant, Niron 27 MGOe demo, nitridation kinetics, CSM 3-phase pathway
4. **Fe-Co — High-Flux Soft Magnetic Alloys** — Hiperco 50/Vacodil 2.42 T $B_s$, stator/rotor cores, Snoek's limit, Villari magnetostriction, Biobío source
4. **Emerging Rare-Earth-Free Magnets** — MnBi 14 MGOe (<100°C), AlNiCo 10.5 MGOe (shape anisotropy), Fe-Sn 12 MGOe, MXene-NdFeB +12% $H_{cJ}$, CuMnAs spintronics
5. **Critical Material Specifications — Dy, Tb, Co, Ga, N** — Grade specs, qualifying country sourcing (Lynas Aus/US, Glencore Aus/Can, MP Materials US), price forecasts, DFARS flow-down
6. **Chilean Source-to-Grade Mapping** — Antofagasta bastnäsite→NdFeB, Atacama monazite→SmCo, Coquimbo Fe-N→Fe₁₆N₂, Biobío Fe-Co→Fe-Co, separation yields, flow formula
7. **Test Methods & Acceptance Criteria** — MIL-STD-1540 (15 tests), ASTM D4169 Level II (10 sequences), grade-specific acceptance, additional tests (demag curve, SEM/SIMS for Fe₁₆N₂), certificate structure
8. **Traceability Matrix** — 65 claims mapped to primary sources (IEC/JIS/ASTM/MIL-STD/USGS/CRMA/Niron/Lynas/Carpenter/DOC-01..08), methodology per DOC-07/DOC-08

---

## Infrastructure Status
- ✅ chunks/DOC-01/ through chunks/DOC-09/ (all 9 chapters + manifest each)
- ✅ FinishedWork/DOC-01 through DOC-09 .md.gz (compressed originals)
- ✅ FinishedWork/intros/ (5 heuristic intro variants per document)
- ✅ scripts/heartbeat_monitor.py, generate_heuristic_intros.sh, task_timer.py, taskmaster.sh (local copy)
- ✅ startup.sh (installs Python3, sets relative project dir, starts heartbeat, uses local taskmaster.sh)
- ✅ Git: All committed, tagged `runner-006-complete`, pushed to origin

---

## DOC-10 Assignment — Magnet Manufacturing Supply Chain

### Objective
Author **DOC-10: Magnet Manufacturing Supply Chain — Mine to Magnet to Motor** (≥900 lines, 9 chapters)

### Required Research (Pre-Authoring) — ✅ COMPLETE from CSMMagTech2026 V2.0, CSMMagEco2026 V2.0, DOC-01, DOC-05, DOC-06, DOC-08, DOC-09

| Research Area | Status | Key Sources |
|---------------|--------|-------------|
| 1. Sintered NdFeB Process Flow | ✅ Complete | CSMMagTech2026 V2.0, vendor docs, DOC-09 |
| 2. SmCo Sintering & Aging | ✅ Complete | Electron Energy, Vacuumschmelze, DOC-09 |
| 3. Fe₁₆N₂ Nitridation Process | ✅ Complete | Niron Magnetics, DOE ARPA-E, CSMMagTech2026 V2.0 |
| 4. Fe-Co Ordering Anneal | ✅ Complete | Carpenter Technology, Hiperco specs, DOC-09 |
| 5. Aegis-Forge Thermal Cascade Integration | ✅ Complete | DOC-05 (E172), DOC-08 Ch. 8, Aegis-Forge design basis |
| 6. Strip Casting & HDDR | ✅ Complete | CSMMagTech2026 V2.0, Magnequench, Niron |
| 6. Supply Chain: Mine → Separation → Metal → Alloy → Powder → Sinter → Machine → Coat → Ship | ✅ Complete | DOC-01, DOC-05, DOC-08, DOC-09 |
| 7. CAPEX/OPEX by Stage | ✅ Complete | CSMMagEco2026 V2.0, Niron CAPEX, DOC-05 |
| 8. Quality Gates & Yield Targets | ✅ Complete | MIL-STD-1540, ASTM D4169, CSM intake specs (DOC-09 Ch. 8) |

### Chapter Structure (9 Chapters Target)

| Chapter | Title | Key Content |
|---------|-------|-------------|
| 1 | Supply Chain Overview — Mine to Motor | End-to-end flow, Aegis-Forge integration, vertical vs horizontal |
| 2 | REE Separation & Metallization | Aegis-Forge 17-stage cascade, oxide→metal reduction, strip casting |
| 3 | Powder Production — HDDR & Gas Atomization | HDDR (Hydrogenation Disproportionation Desorption Recombination), gas atomization, particle specs |
| 4 | Sintering & Heat Treatment | Vacuum sintering, aging, grain boundary diffusion (Dy/Tb/Ga), Fe₁₆N₂ nitridation |
| 5 | Machining, Coating & Assembly | Wire EDM, diamond grinding, Ni-Cu-Ni/epoxy/Parylene, rotor assembly |
| 6 | Quality Gates — In-Process & Final | MIL-STD-1540, ASTM D4169, CSM intake specs, yield targets |
| 7 | CAPEX/OPEX Model by Facility | Separation plant, metallization, magnet factory, Aegis-Forge cluster |
| 8 | Supply Chain Risk & Resilience | Single points, geographic concentration, qualifying country dependency |
| 9 | Traceability Matrix — Supply Chain Claims | Per DOC-07/DOC-09 methodology, cross-ref to all prior DOCs |

### Quality Gates (Same as DOC-09)
- [ ] Lines: ≥900
- [ ] Formulas: ≥20 (LaTeX/Unicode)
- [ ] Cross-refs: ≥15 (to DOC-01..09, MIL-STD, ASTM, IEC, CSMMagTech2026, Niron, Aegis-Forge)
- [ ] Standards: ≥8 (MIL-STD-1540, ASTM D4169, IEC 60404, JIS C 2510, ISO 28000, CPTPP, DFARS, Chilean Mining Code)
- [ ] Conflation: 0 flags vs. DOC-01..09
- [ ] Traceability Matrix: Present (Ch. 9)
- [ ] Chunk & Verify: `write_large_file.py` split → verify → manifest
- [ ] Compress: `.md.gz`
- [ ] Heuristic Intros: 5 variants (Williams, Keymaker, El Segundo, Baker Street, Combined)
- [ ] Git: Commit chunks + compressed + intros
- [ ] Tag: `runner-007-complete`

---

## Key Cross-Reference Dependencies (From Completed Docs)

| DOC | Relevance to DOC-10 |
|-----|---------------------|
| DOC-01 | Geological districts → mine locations → separation plant siting |
| DOC-05 | Tardigradia CAPEX, Aegis-Forge cluster specs, venture structure |
| DOC-06 | CSM motor designs, magnet integration, factory intake specs |
| DOC-08 | Shipping specs (Ch. 3), logistics cost (Ch. 5), delivery terms (Ch. 7) |
| DOC-09 | Grade specs (Ch. 1-4), critical materials (Ch. 6), test methods (Ch. 8) |

---

## Tools & Commands

```bash
# Verify environment
cd /workspace/app/CSMWip/CSMMinesMagnets
cat AGENTS.md
cat NEXT_runner_007.md
git status

# Research (web search, then author)
# ... write to FinishedWork/DOC-10_Magnet_Manufacturing_Supply_Chain.md ...

# Chunk & Verify
python3 ../../__Python_Tools/write_large_file.py split \
    FinishedWork/DOC-10_Magnet_Manufacturing_Supply_Chain.md \
    chunks/DOC-10 chapter .md
python3 ../../__Python_Tools/write_large_file.py verify chunks/DOC-10
python3 ../../__Python_Tools/write_large_file.py manifest chunks/DOC-10

# Compress
python3 ../../__Python_Tools/write_large_file.py compress \
    FinishedWork/DOC-10_Magnet_Manufacturing_Supply_Chain.md

# Heuristic Intros
./scripts/generate_heuristic_intros.sh FinishedWork/DOC-10_Magnet_Manufacturing_Supply_Chain.md

# Git
git add chunks/DOC-10/ FinishedWork/DOC-10_*.md.gz FinishedWork/intros/DOC-10_*.md
git commit -m "DOC-10: Magnet Manufacturing Supply Chain complete"
git tag runner-007-complete
git push origin --tags

# Create next handoff
# Write NEXT_runner_008.md
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
cat NEXT_runner_007.md
cat RESUME_SESSION_MAGNETS.md
git status
# Continue from last completed subtask
```

---

## Notes for Runner 007
1. **Research complete** — all process flows and supply chain data available from CSMMagTech2026 V2.0, CSMMagEco2026 V2.0, DOC-01, DOC-05, DOC-06, DOC-08, DOC-09
2. **Follow Chapter 9 traceability methodology** from DOC-07/DOC-08/DOC-09 for Ch. 9
3. **Aegis-Forge integration** — thermal cascade separation feeds directly into metallization → strip casting → HDDR → sintering
4. **Fe₁₆N₂ pathway** — unique nitridation step after sintering, 80°C limit throughout
5. **Qualifying country sourcing** — Dy/Tb from Lynas (Aus/US), Co from Glencore (Aus/Can), N from on-site ASU
6. **CAPEX/OPEX** — use CSMMagEco2026 V2.0 benchmarks and Niron public data
7. **Heuristic intros** — script auto-generates; verify 5 files created

---

**Status**: Research Complete — Ready for Runner 007 to begin DOC-10 authoring.
**Handoff**: Complete — all DOC-09 deliverables committed, tagged, pushed.