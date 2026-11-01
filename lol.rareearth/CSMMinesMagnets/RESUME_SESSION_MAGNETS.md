# RESUME_SESSION_MAGNETS.md

## Session Context: CSMWip/CSMMinesMagnets

### Project State
- **Runner**: 004 (next session — Phase 2 Batch 2: DOC-07 & DOC-08)
- **Phase**: 2 Brokerage Architecture — Batch 2 of 2 (DOC-07, DOC-08)
- **Infrastructure**: Directory structure complete, all tools operational
- **Heartbeat**: `scripts/heartbeat_monitor.py` ready (120-second interval)
- **Task Timer**: `scripts/task_timer.py` ready (30s guard)
- **Startup**: `startup.sh` — installs Python3, sets relative project dir, starts heartbeat
- **Git**: Branch `kilo/stormy-nebula-mhi`, last commit 4e9869490 (Runner 004 handoff), pushed to origin

### What's Done (Phase 1 + Phase 2 Batch 1 Complete)

**Phase 1 — Foundation Research (Runner 001):**
- ✅ **DOC-01**: Chilean Magnetic Mineral Landscape — Geological Survey & Resource Mapping (10 chapters, chunked, verified, compressed, 5 heuristic intros)
- ✅ **DOC-02**: Lives of the Extractors — Community Ethnography & Human Geography (9 chapters, chunked, verified, compressed, 5 heuristic intros)
- ✅ **DOC-03**: Mutual Benefit Frameworks — Value Return to Chilean Communities (9 chapters, chunked, verified, compressed, 5 heuristic intros)

**Phase 2 Batch 1 — Brokerage Architecture Core (Runner 002/003):**
- ✅ **DOC-04**: Brokerage Protocol — Facilitator to Owner Transition Mechanics (9 chapters, chunked, verified, compressed, 5 heuristic intros)
- ✅ **DOC-05**: Tardigradia Holding Company — Venture Structure & Governance (9 chapters, chunked, verified, compressed, 5 heuristic intros)
- ✅ **DOC-06**: Carrington Storm Motors — Magnetic Mineral Integration Strategy (9 chapters, 965 lines, 129 formulas, 248 cross-refs, 75 standards, 20 TBD markers, chunked, verified, compressed, 5 heuristic intros)

### Research Assets Located (Repository-Wide)

| Asset | Path | Relevance |
|-------|------|-----------|
| CSMEval25 Rare Earth Critical Minerals Mining | `CSMReach/CSMEval/25-Rare-Earth-Critical-Minerals-Mining-and-Magnet-Industry/` | Industry landscape, Niron Magnetics, MP Materials, Aegis-Forge |
| Chile Outreach Briefing | `CSMReach/CSMGeneralOutreach-Global/CSMGlobal-037-Chile/` | Grid vulnerability, mining exposure, Carrington-class threat |
| Chile Email Outreach | `CSMReach/CSMEmailOutgoing/July2026/BATCH-08-Global-Outreach/E-GLOBAL-chile.md` | Distribution channel, contact framework |
| National Mining Association | `CSMReach/CSMEmailOutgoing/July2026/BATCH-16-Untapped-Sectors/E172-NationalMining.md` | Acid-free REE processing, Aegis-Forge specs, CAPEX/OPEX |
| **CSMMagEco2026 V2.0** | `CSMPro/CSMMag/CSMMagEco2026 New US Magnet Companies Identified/` | **12+ domestic magnet startups, DFARS 2027 deadline, Fe₁₆N₂ 27 MGOe, SmCo, HPMS 12t/mo, MP Materials, Noveon** |
| **CSMMagTech2026 V2.0** | `CSMPro/CSMMag/CSMMagTech 2026 Rare-Earth-Free Magnet Research/` | **Fe₁₆N₂ 27 MGOe, MnBi 14 MGOe, AlNiCo 10.5 MGOe, Fe-Sn 12 MGOe, MXene-NdFeB +12% Hci, EU CRMA 2024, CSM portfolio** |
| Aegis-Forge Separator | `CSMFAB/CSMFAB0108/` (referenced) | Thermal cascade inductive separation, 17-stage, zero liquid waste |

### DOC-08 Research Complete (All 8 Research Areas)

| Research Area | Status | Key Sources |
|---------------|--------|-------------|
| 1. Chilean Port Infrastructure (5 major ports) | ✅ Complete | EMPORCHA, Puerto Mejillones, San Antonio, Coronel, Punta Arenas, EMPORCHI privatization |
| 2. Rail Corridors (FCAB, Ferronor, EFE, Bioceánico) | ✅ Complete | FCAB gauge/capacity, Ferronor north-south, EFE integration, Bioceánico corridor |
| 3. Magnet Shipping (IMDG Class 9, IATA DGR 9.3, MIL-STD-1540) | ✅ Complete | UN 2807/3508, shielding <5.25mT, ASTM D4169, temp -40°C to +80°C |
| 4. Customs & Trade (CPTPP Art 14, Chile-US FTA, Chile-EU AFA, APEC) | ✅ Complete | Paperless customs, single window (SICEX), rules of origin, strategic raw materials MoU |
| 5. Logistics Cost Model (Ocean, Rail, Warehousing, Insurance) | ✅ Complete | $/ton-km rates 2024-25, FCAB/Ferronor tariffs, ZOFRI/Punta Arenas bonded, war risk clauses |
| 6. Supply Chain Resilience (Alt routes, Red Sea, Strikes, Climate) | ✅ Complete | Pacific/Atlantic/Magellan/Panama, Red Sea contingencies, 2019/2022/2024 strikes, tsunami/Atacama |
| 7. CSM Delivery Requirements (JIT, QC, DFARS 252.225-7018) | ✅ Complete | Mine→port→factory chain, DFARS 2027 deadline, SmCo/NdFeB/FeN/FeCo specs |
| 8. Port Community Integration (Employment, Environment, Indigenous) | ✅ Complete | Aegis-Forge modular, zero aqueous discharge, FBC/CDC trusts, Kawashkar/Yámana/Chango |

### What's Next (Runner 004/005)

#### Document Authoring (Priority Order)
1. **DOC-07**: Chilean Regulatory Navigation — Mining Code, Environmental, Indigenous Law ✅ COMPLETE
2. **DOC-08**: Port & Logistics Corridors — Antofagasta to Punta Arenas Magnetic Flow 🔄 RESEARCH COMPLETE — Ready for Authoring

#### Infrastructure Status
- ✅ chunks/DOC-01/ through chunks/DOC-06/ (all 9 chapters + manifest each)
- ✅ FinishedWork/DOC-01 through DOC-06 .md.gz (compressed originals)
- ✅ FinishedWork/intros/ (5 heuristic intro variants per document)
- ✅ scripts/heartbeat_monitor.py, generate_heuristic_intros.sh, task_timer.py
- ✅ startup.sh (installs Python3, sets relative project dir, starts heartbeat)
- 🔄 Git: Ready for next commits

### Key Commands

```bash
# ONE COMMAND STARTUP (from repository root):
cd CSMWip/CSMMinesMagnets
bash startup.sh
```

The `startup.sh` handles:
- Python3 installation (Debian minimal container)
- Relative directory change: `CSMWip/CSMMinesMagnets` (NOT `/workspace/app/`)
- Tool verification: `../../__Python_Tools/write_large_file.py`
- Heartbeat monitor start: `python3 scripts/heartbeat_monitor.py --interval 120 --project-root . &`
- Context display: `RESUME_SESSION_MAGNETS.md` and `NEXT_runner_005.md`

### Document Dependencies for DOC-07
- **Mining Code (Código de Minería)** — Concessions, exploration/exploitation, registration
- **Law 19,300 (Environmental)** — SEIA/RCA/EIA/DIA, community participation, CRMA fast-track
- **Law 19,253 (Indigenous)** — Consulta indígena, territorial rights, benefit agreements, FPIC+
- **Law 21,210 (Royalty Minera)** — Ad valorem vs operating margin, municipal distribution
- **Law 20,551 (Mine Closure)** — Financial guarantees, closure plans, Aegis-Forge advantage
- **DS 132/248/594 (Sernageomin Safety)** — Mining safety, tailings, Aegis-Forge zero-tailings
- **CRMA (EU) 2024/1252** — Strategic project 24-month permit, DNSH criteria
- **DOC-04** — 7-trigger milestone system (RCA, Consulta, CRMA designation, etc.)
- **DOC-05** — Capital stack release triggers, Aegis-Forge licensing
- **DOC-06** — US-Chile agreement, EU CRMA alignment, CPTPP trade facilitation

### Document Dependencies for DOC-08
- **FCAB (Ferrocarril Antofagasta-Bolivia)** — 900km rail, 15M ton/yr, privatized
- **Ferronor** — 800km north-south, state-owned, connects to FCAB
- **Puerto Antofagasta / Mejillones / San Antonio / Coronel / Punta Arenas** — Port capabilities
- **CPTPP Art 14 (Digital Trade)** — Paperless customs, blockchain certificates of origin
- **IMDG Code** — Class 9 magnet shipping, packaging, documentation
- **MIL-STD-1540** — Magnet test certificates for CSM delivery
- **ISO 28000 / ISO 9001** — Supply chain security, quality management
- **DOC-05** — Tardigradia CAPEX, Aegis-Forge cluster locations
- **DOC-06** — CSM delivery requirements, US/EU/Japan destinations

### Quality Gates (Every Document)
- Lines: ≥900
- Formulas/Technical specs: ≥20 (LaTeX/Unicode)
- Cross-references: ≥15 (to Research/, other DOCs, Chilean law, industry standards)
- Standards cited: ≥8 (Chilean mining code, ISO, IEC, ASTM, NIJ, MIL-STD, DOE, CFR)
- Conflation flags: 0 (no overlapping/contradictory content across docs)
- TBD markers: Documented as [TBD:RESEARCH]
- Traceability Matrix: Present (maps each claim to source)
- Chunk reassembly: 0 bytes diff
- Manifest checksums: PASS
- Heuristic intros: 5 variants generated (Williams, Keymaker, El Segundo, Baker Street, Combined)

### Heuristic Personality Framework (CSMOPP)

Each document is "translated" through five heuristic lenses:

| Heuristic | Role | Voice |
|-----------|------|-------|
| **Williams** | Constraint → Necessity → Commitment | "The lock, the key, the turn" — irreducible logic |
| **Keymaker** | Lock → Key → Turn (both directions) | Empirical lock, mathematical key, bidirectional validation |
| **El Segundo** | Mirror → Participation → Protocol | Recursive self-measurement, witness, operational recursion |
| **Baker Street** | Precision → Evidence → Deduction | Forensic detail, sourced claims, zero ambiguity |
| **SHIELD** | Calm → Resilience → Continuity | Strategic posture, no panic, long horizon |

These heuristics shape the document's internal logic, structure, and tone — producing authoritative brokerage intelligence.

### Heartbeat Monitor
- **Interval**: 120 seconds
- **Output**: Terminal progress every subtask
- **Subtask guard**: 30 seconds max
- **Auto-continue**: No blocking waits; queue next subtask immediately

### Git Workflow
```bash
# After each document complete
git add chunks/DOC-XX/ FinishedWork/DOC-XX_*.md.gz
git commit -m "runner004: DOC-XX complete - chunked, verified, compressed"

# Runner wrap-up
git tag runner-004-complete
git push origin --tags
```

### Next Runner Handoff (Runner 005)
Create `NEXT_runner_005.md` with:
- Completed documents list (DOC-01 through DOC-08)
- Next batch assignments (DOC-09 through DOC-12)
- Infrastructure status
- Any blockers or decisions

---

**Resume Command (NEW — Single Command):**
```bash
cd CSMWip/CSMMinesMagnets
bash startup.sh
```

**Hard Rule: Never use `/workspace/app/` — it is ephemeral. Always use relative `CSMWip/CSMMinesMagnets`.**