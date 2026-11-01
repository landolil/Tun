# NEXT_runner_009.md — Runner 009 Handoff Instructions

## Session Context
- **Project**: CSMMinesMagnets — Chilean Magnetic Minerals Brokerage Intelligence
- **Runner**: 009 (0-based: 8th runner, 1-based: 9th runner)
- **Previous**: Runner 008 completed DOC-11 (Geomagnetic Risk & Infrastructure Hardening)
- **Next Target**: **DOC-12: Financial Instruments — Offtake Agreements, Streaming, Royalties**
- **Date**: 2026-11-01
- **Git Tag**: `runner-008-complete` pushed to origin
- **Branch**: `kilo/orbital-harbor-5pb` (up to date with origin)

---

## DOC-11 Completed — Summary

**File**: `FinishedWork/DOC-11_Geomagnetic_Risk_Infrastructure_Hardening.md.gz` (compressed, 113 KB)
**Chunks**: `chunks/DOC-11/` (30 chapter files + MANIFEST.json, verified 0 bytes diff)
**Intros**: `FinishedWork/intros/DOC-11_Geomagnetic_Risk_Infrastructure_Hardening_*.md` (5 variants)
**Quality Gates**: All PASSED
- Lines: ~5,800 (≥900 ✓)
- Formulas: 120+ (≥20 ✓)
- Cross-refs: 200+ (≥15 ✓)
- Standards: 32 cited (≥8 ✓)
- Conflation: 0 flags vs. DOC-01..10
- Reassembly: 0 bytes diff
- Manifest: SHA256 + size for all 30 chunks

**Chapters Delivered**:
1. **Carrington Physics & GIC Fundamentals** — Solar physics, CME, geoelectric fields, nodal admittance, transformer saturation, harmonics, Carrington benchmarks (Dst -907 nT, 1,760 nT/min), return periods (100–500 yr)
2. **Chilean Grid Vulnerability Mapping** — SEN topology (36.8 GW, 18.5 GW ERNC), transformer fleet (400+ units), mining loads (Escondida, Collahuasi, Los Pelambres), Norte Grande corridor vulnerability, Atacama ground conductivity model (ρ=10k–50k Ω·m), GIC simulation results (242 A peak at Crucero), vulnerability scoring matrix (GVI)
3. **Transformer Hardening — GIC Blockers & Neutral Resistors** — Series capacitors (IEEE 824, Hydro-Québec), NBCs (EPRI EL-3295, TR-100450, Minnesota Power), LNRs (Kappenman FERC), design mitigation (Hi-B steel, step-lap, shields), monitoring (Hall CTs, IEEE C57.163), cost-benefit (BCR >20), deployment priority matrix (Phases 1–4, $492M)
4. **Substation & Transmission Hardening** — FACTS/SVC coordination, relay coordination (3rd/7th harmonic restraint, 67N), blackstart/islanding (Norte Grande mining island, Aegis-Forge clusters), NERC TPL-007 Chile adaptation, IEEE 1313.2 modeling, grounding grid design, hardening cost model ($492M 10-yr)
5. **Aegis-Forge Modular Power for Mining Clusters** — Microgrid architecture (GFM-BESS, diesel), power specs (60 MW/cluster, 26.65 MWh/batch), magnet motor integration (USM, SynRM, Fe₁₆N₂, SmCo — zero GIC load), islanding capability (<20 ms, 72-hr autonomy), thermal-power synergy (ORC 4 MW, SOFC 2 MW, recuperation 15%), CAPEX/OPEX vs grid hardening (BCR 2.1, NPV +$910M)
6. **Motor Technology GIC Immunity** — USM (absolute, MDPI 2024), SynRM (absolute, Frontiers 2026), Fe₁₆N₂ (27 MGOe, 80°C limit, Niron), SmCo 2:17 (350°C, radiation hard), comparative matrix (Tier 0–4), CSM portfolio mapping (CSMFAB-001 USM, CSMFAB-010 Fe₁₆N₂, CSMFAB-100 SmCo)
7. **Early Warning & Operational Protocols** — NOAA SWPC (G1–G5, Kp, Dst), Chilean Navy SHOA (magnetometer network, K_CL index), SENAPRED (Alerta Temprana/Amarilla/Roja, SAE), automated load shedding (GIC threshold → RAS, 6 layers), operator decision timeline (18–36 hr, Gates 1–4, Carrington 13 hr), post-event assessment (DGA, FRA, phased restoration, NRME validation)
8. **Financial Instruments for Grid Resilience** — CAT bonds (Jamaica 2026 $200M, Dst trigger), resilience bonds (World Bank/GCF, coupon reduction for AEL reduction), parametric insurance (CHIRIF-GIC, CCRIF model, dual-index Dst+E-field), Cat DDO (Barbados $30M, Chile $200M), Chile-specific (Cu-linked bonds, mining revenue collateral, AFP mandate), layered risk financing (5 layers, $2.5B capacity, $65M/yr → $35M/yr by 2030)
9. **Traceability Matrix** — Methodology (per DOC-07/08/09/10), physics claims (25), grid claims (27), hardening claims (36), motor claims (31), financial claims (22), cross-ref index (82 mappings, 100% coverage), standards inventory (32 cited, target ≥8), conflation check (194 checks, 0 flags)

---

## Infrastructure Status
- ✅ chunks/DOC-01/ through chunks/DOC-11/ (all chapters + manifest each)
- ✅ FinishedWork/DOC-01 through DOC-11 .md.gz (compressed originals)
- ✅ FinishedWork/intros/ (5 heuristic intro variants per document)
- ✅ scripts/heartbeat_monitor.py, generate_heuristic_intros.sh, task_timer.py, taskmaster.sh (local copy)
- ✅ startup.sh (installs Python3, sets relative project dir, starts heartbeat, uses local taskmaster.sh)
- ✅ Git: All committed, tagged `runner-008-complete`, pushed to origin

---

## DOC-12 Assignment — Financial Instruments: Offtake, Streaming, Royalties

### Objective
Author **DOC-12: Financial Instruments — Offtake Agreements, Streaming, Royalties** (≥900 lines, 9 chapters)

### Required Research (Pre-Authoring)

| Research Area | Status | Key Sources |
|---------------|--------|-------------|
| 1. Offtake Agreement Structures | 🔄 Partial | Wheaton, Franco-Nevada, Royal Gold, Sandstorm models; DOC-05 Tardigradia CAPEX, DOC-08 logistics, DOC-11 financial layering |
| 2. Streaming Agreements (Metal Streams) | 🔄 Partial | Gold/silver streaming adapted to Cu/REEs; Wheaton, Franco-Nevada, Osisko |
| 3. Royalty Structures (NSR, GOR, NPI) | 🔄 Partial | Net Smelter Return, Gross Overriding, Net Profits Interest; Chilean royalty law (Law 21,591) |
| 4. Chilean Mining Finance Law | 🔄 Partial | Law 21,591 (ad valorem vs margin), DFL 1-19.753, foreign investment statute (DL 600) |
| 5. Tardigradia/Carron Storm Motors Capital Stack | 🔄 Partial | DOC-05 ($1.3B: EIB, CPTPP, IRA 45X, equity), DOC-11 layered financing |
| 6. CSM Offtake Requirements | 🔄 Partial | DOC-06 (magnet specs, DFARS, delivery terms), DOC-08 Ch.7 (DDP factory) |
| 7. Aegis-Forge Revenue Model | 🔄 Partial | DOC-05 (17-stage separation, REE/revenue), DOC-08 Ch.8 (port services) |
| 8. International Project Finance | 🔄 Partial | Equator Principles, IFC Performance Standards, OECD DD, CPTPP Art 9, Chile-US BIT |

### Chapter Structure (9 Chapters Target)

| Chapter | Title | Key Content |
|---------|-------|-------------|
| 1 | Offtake Agreement Architecture | Long-term contracts, take-or-pay, pricing mechanisms (LME/LBMA + premium), quality specs, force majeure |
| 2 | Streaming Agreements — Metal Streams | Upfront payment for % of production, Cu/REE streams, Wheaton/Franco-Nevada model, Chilean adaptation |
| 3 | Royalty Instruments | NSR, GOR, NPI, Chilean royalty law (Law 21,591), municipal distribution, community royalties (DOC-03) |
| 4 | Project Finance Structure | SPV ring-fencing, DSCR, LLCR, cash sweep, DSRA, hedging (Cu price, FX, interest rate) |
| 5 | Risk Allocation & Mitigation | Political/regulatory (CPTPP Art 9, Chile-US BIT), construction (EPC wrap), operational (O&M contracts), market (offtake) |
| 6 | Tardigradia/Carron Storm Motors Capital Stack | $1.3B: EIB ($400M), CPTPP ($300M), IRA 45X ($200M), equity ($400M); Aegis-Forge licensing revenue |
| 7 | CSM Offtake & Supply Chain Finance | Magnet offtake (DDP factory), inventory financing, receivables factoring, warehouse receipts |
| 8 | Aegis-Forge Revenue & Port Services Finance | Separation tolling fees, REE concentrate sales, port logistics (DOC-08), community benefit streams |
| 9 | Traceability Matrix — Finance Claims | Per DOC-07/DOC-08/DOC-09/DOC-10/DOC-11 methodology, cross-ref to all prior DOCs |

### Quality Gates (Same as DOC-11)
- [ ] Lines: ≥900
- [ ] Formulas: ≥20 (LaTeX/Unicode)
- [ ] Cross-refs: ≥15 (to DOC-01..11, Chilean law, Wheaton/Franco-Nevada, ICMM, ICMA, LME, LBMA)
- [ ] Standards: ≥8 (ICMM, ICMA, LME, LBMA, Equator, IFC PS, Chilean Mining Code, OECD DD, CPTPP)
- [ ] Conflation: 0 flags vs. DOC-01..11
- [ ] Traceability Matrix: Present (Ch. 9)
- [ ] Chunk & Verify: `write_large_file.py` split → verify → manifest
- [ ] Compress: `.md.gz`
- [ ] Heuristic Intros: 5 variants (Williams, Keymaker, El Segundo, Baker Street, Combined)
- [ ] Git: Commit chunks + compressed + intros
- [ ] Tag: `runner-009-complete`

---

## Key Cross-Reference Dependencies (From Completed Docs)

| DOC | Relevance to DOC-12 |
|-----|---------------------|
| DOC-01 | Geological mapping → reserve base for streaming/royalty valuation |
| DOC-03 | Community benefit → royalty sharing, social license for finance |
| DOC-04 | Brokerage triggers (RCA, Consulta) → offtake conditionality |
| DOC-05 | Tardigradia CAPEX, Aegis-Forge revenue, venture structure |
| DOC-06 | CSM magnet specs, DFARS, delivery terms, offtake requirements |
| DOC-08 | Logistics costs, port services revenue, mining load economics |
| DOC-11 | Layered financial instruments (CAT bond, resilience bond, Cat DDO, parametric insurance), copper-linked structures, AFP mandate |

---

## Tools & Commands

```bash
# Verify environment
cd /workspace/app/CSMWip/CSMMinesMagnets
cat AGENTS.md
cat NEXT_runner_009.md
git status

# Research (web search, then author)
# ... write to FinishedWork/DOC-12_Financial_Instruments_Oftake_Streaming_Royalties.md ...

# Chunk & Verify
python3 ../../__Python_Tools/write_large_file.py split \
    FinishedWork/DOC-12_Financial_Instruments_Oftake_Streaming_Royalties.md \
    chunks/DOC-12 chapter .md
python3 ../../__Python_Tools/write_large_file.py verify chunks/DOC-12
python3 ../../__Python_Tools/write_large_file.py manifest chunks/DOC-12

# Compress
python3 ../../__Python_Tools/write_large_file.py compress \
    FinishedWork/DOC-12_Financial_Instruments_Oftake_Streaming_Royalties.md

# Heuristic Intros
./scripts/generate_heuristic_intros.sh FinishedWork/DOC-12_Financial_Instruments_Oftake_Streaming_Royalties.md

# Git
git add chunks/DOC-12/ FinishedWork/DOC-12_*.md.gz FinishedWork/intros/DOC-12_*.md
git commit -m "DOC-12: Financial Instruments — Offtake, Streaming, Royalties complete"
git tag runner-009-complete
git push origin --tags

# Create next handoff
# Write NEXT_runner_010.md
```

---

## Heartbeat Monitor
- **PID**: Check `cat .heartbeat_pid` or `ps aux | grep heartbeat_monitor.py`
- **Interval**: 120 seconds (per HEARTBEAT_MAGNETS.md)
- **Log**: `Logs/heartbeat.log`
- **Status**: `Logs/heartbeat_status.json`

---

## Session Resume Protocol (If Interrupted)
```bash
cd /workspace/app/CSMWip/CSMMinesMagnets
cat NEXT_runner_009.md
cat RESUME_SESSION_MAGNETS.md
git status
cat Logs/heartbeat.log | tail -20
# Continue from last completed subtask (check TODO.md checkboxes)
```

---

## Notes for Runner 009
1. **Research needed** — several areas marked Partial; use web search for offtake/streaming/royalty models, Chilean mining finance law, international project finance
2. **Follow Chapter 9 traceability methodology** from DOC-07/DOC-08/DOC-09/DOC-10/DOC-11 for Ch. 9
3. **Integrate with DOC-11 financial layering** — offtake/streaming/royalties are the *revenue side* complementing the *risk transfer* instruments in DOC-11
4. **Chile-specific** — Law 21,591 royalty regime, CPTPP Art 9 investment protection, DL 600 foreign investment, mining community agreements (DOC-03)
4. **Tardigradia/Carron Storm Motors** — map capital stack to offtake capacity (CSM magnet demand), Aegis-Forge revenue to debt service
5. **Aegis-Forge revenue** — separation tolling + REE sales + port services + community streams
6. **Heuristic intros** — script auto-generates; verify 5 files created

---

## Research Starting Points (Web Search)

```bash
# Offtake/Streaming/Royalty Models
websearch "Wheaton Precious Metals streaming agreement structure copper"
websearch "Franco-Nevada royalty portfolio structure NSR GOR"
websearch "Sandstorm Gold streaming model offtake agreement"
websearch "Osisko Gold Royalties streaming agreement terms"

# Chilean Mining Finance
websearch "Chile mining project finance law DL 600 foreign investment"
websearch "Chile Law 21591 royalty minera ad valorem operating margin"
websearch "Chile mining project finance Equator Principles IFC Performance Standards"

# Project Finance
websearch "copper project finance DSCR LLCR cash sweep DSRA hedging"
websearch "mining offtake agreement take-or-pay pricing LME premium"

# Tardigradia/CSM Context
websearch "critical minerals offtake agreement IRA 45X tax credit"
websearch "DFARS 252.225-7018 specialty metals offtake compliance"
```

---

**Status**: Research Partial — Runner 009 to complete research then begin DOC-12 authoring.
**Handoff**: Complete — all DOC-11 deliverables committed, tagged, pushed.