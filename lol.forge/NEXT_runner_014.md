# NEXT_runner_014.md — lol.forge Runner 014 Instructions
## Session: PROD-31, PROD-32, PROD-33
**Runner ID**: 014
**Target Documents**: PROD-31 (Economic Analysis & Viability), PROD-32 (Regulatory & Compliance), PROD-33 (Supply Chain & Logistics)
**Phase**: Phase 3 Completion — Economics, Regulatory, Supply Chain
**Start After**: Runner 013 complete (PROD-30 pushed)

---

## Quick Start Commands

```bash
cd /workspace/app/Tun/lol.forge

# 1. Full resume (reads all context)
./scripts/resume_runner.sh 014

# 2. Quick status check
./scripts/resume_runner.sh --status

# 3. View this file
cat NEXT_runner_014.md

# 4. Git status
git status
```

---

## Session State Summary

### Completed (Through Runner 013):
- [x] PROD-01 through PROD-30 complete and pushed (30/40 Product Documents = 75%)
- [x] Phase 1: 23/40 complete (PROD-01 through PROD-23)
- [x] Phase 2: 12/12 complete (PROD-16 through PROD-27)
- [x] Phase 3: 10/10 complete (PROD-28 through PROD-30)
- [x] Overall: 36/80 documents (45%)

### Last Commit: `c709205` — PROD-30 Maintenance & Sustainment (1138 lines + 4 intros, 23 chunks)

### Current Document: PROD-31 (Economic Analysis & Viability)
**Status**: Research Phase Ready to Start

---

## Document Batch: PROD-31, PROD-32, PROD-33

### PROD-31: Economic Analysis & Viability
**Source Documents**: PROD-22, 27, 28, 29, 30 + FOLLOW-23, 24 + market data
**Target**: 900+ lines body + 200 lines combined intro
**Key Content Areas**:
1. CAPEX Breakdown (Forge $42.3M: drum $3.2M, vessel $2.8M, coil $5.1M, power $4.7M, frame $2.1M, controls $3.4M, gas $4.2M, cooling $2.9M, civil $4.5M, contingency 15% $5.5M)
2. OPEX Model (Energy $1.8M/yr, labor $2.4M/yr, consumables $0.9M/yr, maintenance $1.1M/yr, logistics $0.7M/yr, overhead $0.8M/yr)
3. Revenue Streams (Metals $49.8M/yr at 226 ton/day, Carbon credits $28.75M/yr at 50 Forges, Phoenix $1.82M/yr net, Thermal battery $TBD)
4. Phoenix Protocol Economics (depot network $12M capex, $3.2M/yr ops, break-even 2.5 Forges, $0.18/kg processing cost)
5. Sensitivity Analysis (In price ±50%, Cu price ±30%, energy ±25%, virgin blend ratio, carbon price $50-150/tCO₂)
6. ROI & Payback (IRR 28% at 10 Forges, 34% at 50 Forges, payback 3.2 yr)
7. Financing Structure (project finance 70/30 debt/equity, DOE LPO eligible, IRA 45X advanced manufacturing credit)
8. Market Analysis (In supply deficit 2025-2035, REE independence mandate, domestic solder demand)
9. Risk Register (technical, market, regulatory, supply chain, force majeure)
10. LCA Integration (PROD-24/FOLLOW-24: -2.3 tCO₂e/ton EOL, MgO carbonation credit)
11. Scale-Up Economics (226L → 2000L Gen-II: CAPEX 4.2×, throughput 8.8×, OPEX/ton -40%)
12. Cross-Reference Matrix (upstream: PROD-22,27,28,29,30,FOLLOW-23,24 → downstream: PROD-32,33,39,40)

**Appendices**: A) Full CAPEX Schedule, B) OPEX Monthly Profile, C) Revenue by Element, D) Sensitivity Tornado, E) Financing Term Sheet, F) Market Forecast Sources

### PROD-32: Regulatory & Compliance
**Source Documents**: PROD-22, 23, 26, 28, 29, 30 + FOLLOW-22, 23, 24, 25, 26
**Target**: 900+ lines body + 200 lines combined intro
**Key Content Areas**:
1. Environmental Permitting (NEPA EA/EIS, Clean Air Act Title V, Clean Water Act NPDES, RCRA hazardous waste)
2. Process Safety Management (OSHA PSM 1910.119: H₂, CO, AsH₃/SbH₃/BiH₃, high temp, pressure vessel)
3. Risk Management Program (EPA RMP 40 CFR 68: H₂, HCl, NH₃, Cl₂ threshold quantities)
4. ASME BPVC Compliance (Sec VIII Div 1 vessel, Sec X FRP, Sec IX welding/brazing, Sec V NDT)
5. IEEE 693 Seismic Qualification (drum, vessel, frame, isolators, anchors — S-1/S-2 spectra)
6. Fire Protection (NFPA 69 explosion prevention, NFPA 750 water mist, NFPA 11 foam — zero-metal suppression)
7. Radiation Hardening (NRC 10 CFR 50 App B if nuclear feedstock, gamma/neutron dose on electronics)
8. Air Emissions (CEMS continuous: PM2.5, SO₂, NOx, CO, HCl, As, Cd, Hg, dioxins — 40 CFR 60/63)
9. Water Discharge (NPDES: cooling blowdown, scrubber bleed, stormwater — metal limits, pH, thermal)
10. Solid/Hazardous Waste (RCRA: slag classification, char, spent carbon, PPE — TCLP testing)
11. Worker Safety (OSHA 1910: confined space, lockout/tagout, fall protection, PPE, ergonomics)
12. Cyber-Physical Security (IEC 62443 SL-3: air-gapped OT, TSN VLAN segmentation, no internet)
13. Cross-Reference Matrix (upstream: PROD-22,23,26,28,29,30,FOLLOW-22,23,24,25,26 → downstream: PROD-33,34,39,40)

**Appendices**: A) Permit Matrix, B) PSM/RMP Covered Processes, C) ASME Design Report Index, D) Seismic Qualification Report, E) Air Emissions Inventory, F) Audit Schedule

### PROD-33: Supply Chain & Logistics
**Source Documents**: PROD-12, 22, 27, 28, 29, 30 + FOLLOW-31, 38, 39
**Target**: 900+ lines body + 200 lines combined intro
**Key Content Areas**:
1. Critical Material Sourcing (ZrB₂: Tosoh/Chemat, SiC: Wolfspeed/Onsemi, Basalt: Kamenny Vek, In: Indium Corp/Teck, REE: MP Materials/Lynas)
2. Domestic vs. International Supply (DPA Title III: ZrB₂, SiC, REE, In — domestic preferred; B₂O₃, C, NaHCO₃ — global)
3. Transportation Logistics (drum 4.2t Class 9, vessel 3.8t oversize, coil zones 1.5t — rail/flatbed/barge)
4. Warehouse & Storage (ZrB₂-SiC powder: desiccant <10% RH, basalt roving: UV-protected, Elium®: 5-25°C, NaHCO₃: dry)
5. Vendor Qualification (AVL 50 suppliers, ISO 9001/AS9100, NQA-1 for nuclear grade, on-site audit annual)
6. Inventory Management (Critical spares 100% on-site, 30-day regional, 90-day factory — API 581 adapted)
7. Phoenix Protocol Return Logistics (65 depots → 3 consolidation hubs → Forge — reverse logistics optimization)
8. Carbon Supply Chain (MgO from seawater/brine, NaHCO₃ from Solvay/Church & Dwight, transport emissions)
9. Supply Risk Mitigation (dual-source all critical, strategic stockpile 90-day, OFAC sanctions screening)
10. Import/Export Compliance (EAR/ITAR: GaN, FBG, TSN switches, encryption — license exception TSU/GOV)
11. Contractual Framework (long-term agreements: 5-yr + 5-yr option, price escalation PPI + 1%, force majeure)
12. Cross-Reference Matrix (upstream: PROD-12,22,27,28,29,30,FOLLOW-31,38,39 → downstream: PROD-34,35,39,40)

**Appendices**: A) AVL Master List, B) Critical Material Spec Sheets, C) Transport Route Maps, D) Warehouse Layout, E) Depot Network Diagram, F) Contract Templates

---

## Heuristic Intro Requirements (Per Document)

Each PROD document requires **4 intro files** in `intros/`:
1. `PROD-XX_<title>_intro_williams.md` — ~67 lines (Constraint/Necessity/Commitment)
2. `PROD-XX_<title>_intro_keymaker.md` — ~67 lines (Lock/Key/Turn)
3. `PROD-XX_<title>_intro_el_segundo.md` — ~67 lines (Mirror/Participation/Protocol)
4. `PROD-XX_<title>_COMBINED_INTRO.md` — ~200 lines (concatenated with transitions)

**Reference Templates**: See `intros/PROD-30_Maintenance_and_Sustainment_intro_*.md` for PROD-30 examples.

---

## Processing Workflow (Per Document)

### 1. Research Phase (45 min)
```bash
# Read all source documents listed above
# Extract key parameters, tables, equations, cross-references
# Note any gaps requiring engineering judgment
```

### 2. Write Body (4 hours)
```bash
# Create docs/PROD-XX_<title>.md with 13 sections + appendices
# Target: 900+ lines dense technical content
# Include: equations, tables, architectural diagrams (Mermaid), cross-ref matrix
```

### 3. Generate Intros (90 min)
```bash
# Write 3 individual heuristic intros (~67 lines each)
# Write combined intro (~200 lines)
# Save to intros/PROD-XX_<title>_intro_*.md
```

### 4. Prepend Combined Intro
```bash
cat intros/PROD-XX_<title>_COMBINED_INTRO.md docs/PROD-XX_<title>.md > /tmp/PROD-XX_FULL.md
mv /tmp/PROD-XX_FULL.md docs/PROD-XX_<title>.md
```

### 5. Chunk & Verify (15 min)
```bash
node scripts/split_chunks.js split docs/PROD-XX_<title>.md chunks/PROD-XX chapter .md
node scripts/split_chunks.js manifest chunks/PROD-XX
node scripts/split_chunks.js verify chunks/PROD-XX
node scripts/split_chunks.js compress docs/PROD-XX_<title>.md
```

### 6. Git Commit & Push (5 min)
```bash
git add -A
git -c user.name=Kilo Agent -c user.email=kilo@carringtonstormmotors.com commit -m lol.forge: PROD-XX <Title> — <lines> lines + 4 intros, <N> chunks verified
git push
```

### 7. Update Trackers (10 min)
- Update TODO.md (micro-subtask status, heartbeat log)
- Update Master_Todo.md (check off document, update progress tables)
- Append to memory/2026-11-03.md (session log)
- Update HEARTBEAT_LOLFORGE.md (state + log)
- Update .heartbeat_state.json

---

## Source Material Locations

### Primary (CSMFAB0108 Aegis-Forge):
```
/workspace/app/seed/CSMFAB/CSMFAB0108 Aegis-Forge Thermal Cascade Inductive Material Separator/
├── Vol 1/  # System Overview, Architecture, Coil Bank, Drum, Ports
├── Vol 2/  # Stage-by-Stage Process Engineering (8 stages)
├── Vol 3/  # Power Electronics, Induction, Sensors
├── Vol 4/  # Gas Capture, Feed Prep, Assembly Line
└── Vol 5/  # Phoenix Protocol, Integration
```

### Heuristic Templates (Outfit Fabricator):
```
/workspace/app/seed/CSMWip/12_AegisOutfitFabricator/FinishedWork/intros/
```

### Mines Magnets (Supply Chain):
```
/workspace/app/seed/CSMWip/CSMMinesMagnets/FinishedWork/
```

### Materials Study:
```
/workspace/app/seed/CSMFAB/CSMFAB Materials Study 5 Parts/
/workspace/app/seed/CSMFAB/CSMFAB-P001 through P008/
```

---

## Micro-Subtask Methodology

| Constraint | Implementation |
|---|---|
| **≤30 seconds per subtask** | Break each phase into 1-2 line actions; update TODO.md immediately |
| **Heartbeat every 2 min** | Print status: `[HEARTBEAT] Runner 014 | PROD-31 | research | 45 lines | 0 commits | OK` |
| **Auto-continue** | No blocking waits; queue next micro-task immediately |
| **Terminal output** | Print progress every subtask completion |

### Example Micro-Subtask Breakdown (PROD-31 Research):
1. Read PROD-22 Phoenix Protocol (15 min) → TODO.md update
2. Read PROD-27 Manufacturing CAPEX (15 min) → TODO.md update
3. Read PROD-28 QA OPEX (10 min) → TODO.md update
4. Read PROD-29 Deployment OPEX (10 min) → TODO.md update
5. Read PROD-30 Maintenance OPEX (10 min) → TODO.md update
6. Read FOLLOW-23,24 (10 min) → TODO.md update
7. Synthesize cross-reference matrix → TODO.md update

---

## Quality Gates (Per Document)

- [ ] Body ≥900 lines (excluding intro)
- [ ] 4 heuristic intros generated (Williams, Keymaker, El Segundo, Combined)
- [ ] Combined intro prepended to body
- [ ] Chunked via split_chunks.js (logical chapters)
- [ ] Manifest generated (SHA256 + size per chunk)
- [ ] All chunks verified OK
- [ ] Compressed (.gz) created
- [ ] Git committed with standard message format
- [ ] Pushed to origin/main
- [ ] All trackers updated (TODO, Master_Todo, Memory, Heartbeat)

---

## Emergency Recovery

If session interrupted:
1. Next session runs `./scripts/resume_runner.sh 014`
2. Reads this file + RESUME_SESSION_LOLFORGE.md + TODO.md
3. Continues from last completed micro-subtask

---

## Next Runner

After PROD-31, 32, 33 complete:
- Create `NEXT_runner_015.md` for PROD-34, 35, 36
- Update Master_Todo.md Phase 3 progress = 100%
- Tag milestone: `git tag lol.forge-prod-33 && git push --tags`

---

*Generated: 2026-11-03 | Runner 013 complete (PROD-30) | Next: Runner 014*
*All work persisted in GitHub. Ephemeral workspace is compute only.*