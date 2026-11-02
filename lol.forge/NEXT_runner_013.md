# NEXT_runner_013.md — lol.forge Runner 013 Instructions
## Session: PROD-29, PROD-30, PROD-31
**Runner ID**: 013
**Target Documents**: PROD-29 (Deployment & Operations), PROD-30 (Maintenance & Sustainment), PROD-31 (Economic Analysis & Viability)
**Phase**: Phase 3 — QA, Deployment, Maintenance, Economics
**Start After**: Runner 012 complete (PROD-28 pushed)

---

## Quick Start Commands

```bash
cd /workspace/app/Tun/lol.forge

# 1. Full resume (reads all context)
./scripts/resume_runner.sh 013

# 2. Quick status check
./scripts/resume_runner.sh --status

# 3. View this file
cat NEXT_runner_013.md

# 4. Git status
git status
```

---

## Session State Summary

### Completed (Through Runner 012):
- [x] PROD-01 through PROD-28 complete and pushed (28/40 Product Documents = 70%)
- [x] Phase 1: 23/40 complete (PROD-01 through PROD-23)
- [x] Phase 2: 12/12 complete (PROD-16 through PROD-27)
- [x] Phase 3: 8/10 complete (PROD-28)
- [x] Overall: 34/80 documents (42.5%)

### Last Commit: `12a4b6e` — PROD-28 Quality Assurance & Testing (939 lines + 4 intros, 21 chunks)

### Current Document: PROD-29 (Deployment & Operations)
**Status**: Research Phase Ready to Start

---

## Document Batch: PROD-29, PROD-30, PROD-31

### PROD-29: Deployment & Operations
**Source Documents**: PROD-22, 23, 26, 27, 28 + FOLLOW-22, 23, 24
**Target**: 900+ lines body + 200 lines combined intro
**Key Content Areas**:
1. Site Preparation & Civil Works (foundation, utilities, access, zoning)
2. Utility Connections (480V 3-phase, water, N₂, Ar, He, compressed air, internet)
3. Rigging & Lifting Plan (drum 4.2t, vessel 3.8t, frame 12t, coil zones 1.5t each)
4. Cold Commissioning (IC-1..IC-10 from PROD-27: alignment, continuity, fiber, coolant)
5. Hot Commissioning (CT-08 protocol: Stages 0-8 no feed, full ramp/hold/cool)
6. Performance Validation (SAT-05: 6 batches, mass balance >99%, all outputs spec)
7. Standard Operating Procedures (startup, steady-state, shutdown, emergency, changeover)
8. Operations Philosophy (8 batches/day, 90 min cycle, 2-person crew minimum)
9. Shift Handover Protocol (digital log, KPI snapshot, anomaly flag, QR traceability)
10. Maintenance Windows (daily/weekly/monthly/quarterly/annual per PROD-30)
11. Emergency Response (SIL-3 trip, GIC event, fire, seismic, toxic release)
12. Environmental Compliance (CEMS continuous, permit limits, reporting)
13. Cross-Reference Matrix (upstream: PROD-22,23,26,27,28,FOLLOW-22,23,24 → downstream: PROD-30,31,32,34,39)

**Appendices**: A) Site Prep Checklist, B) Utility Schedule, C) Lift Plan Drawings, D) Commissioning Test Sheets, E) SOP Index, F) Emergency Contacts

### PROD-30: Maintenance & Sustainment
**Source Documents**: PROD-04, 06, 08, 09, 10, 25, 27, 28, 29 + FOLLOW-04, 05, 07, 08, 12
**Target**: 900+ lines body + 200 lines combined intro
**Key Content Areas**:
1. Maintenance Strategy (RCM + CBM + TBM hybrid, SIL-3 constraints)
2. Drum Maintenance (UT annual, CT biennial, FBG drift monitor, liner pin inspect, 500-batch life)
3. Vessel Maintenance (AE continuous, UT annual, hydrotest 5-yr, glaze inspection, aerogel settling)
4. Port Valve Maintenance (quarterly actuation check, braze joint UT, seal replacement, 2000-cycle life)
5. Coil Bank Maintenance (resonance verification monthly, cold plate leak check, FBG cross-talk, ZVS cal)
4. Power Electronics Maintenance (GaN module thermal soak test, cap bank ESR, SIF injection, EMI)
5. Frame & Carousel (bearing vibration trend, isolator stiffness, mold dimension check, index accuracy)
6. Consumables & Wear Parts (FBG interrogator bulbs, PEEK CF40 seals, ZrO₂ pistons, In foil TIM, braze alloy)
7. Spare Parts Logistics (critical spares on-site, 30-day lead items, 90-day lead items, vendor codes)
8. Predictive Maintenance (FBG drift → auto-NCR, AE Felicity → delam alert, vibration RMS → bearing alert)
9. Condition-Based Intervals (API 581 RBI adapted for zero-metal, SIL-3 override on SIF components)
10. Major Overhaul (18-month drum swap, 36-month vessel inspect, 5-year full teardown)
11. Documentation & Records (QR-linked work orders, blockchain CAPA, fleet twin sync)
12. Training & Competency (PROD-34 alignment, maintenance cert levels, requalification)
13. Cross-Reference Matrix (upstream: PROD-04,06,08,09,10,25,27,28,29,FOLLOW-04,05,07,08,12 → downstream: PROD-31,32,34,37,39)

**Appendices**: A) PM Schedule Master Table, B) Wear Parts BOM, C) Spare Parts Stocking Levels, D) Predictive Thresholds, E) Overhaul Procedure Index, F) Competency Matrix

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

---

## Heuristic Intro Requirements (Per Document)

Each PROD document requires **4 intro files** in `intros/`:
1. `PROD-XX_<title>_intro_williams.md` — ~67 lines (Constraint/Necessity/Commitment)
2. `PROD-XX_<title>_intro_keymaker.md` — ~67 lines (Lock/Key/Turn)
3. `PROD-XX_<title>_intro_el_segundo.md` — ~67 lines (Mirror/Participation/Protocol)
4. `PROD-XX_<title>_COMBINED_INTRO.md` — ~200 lines (concatenated with transitions)

**Reference Templates**: See `intros/PROD-28_Quality_Assurance_and_Testing_intro_*.md` for PROD-28 examples.

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
git -c user.name="Kilo Agent" -c user.email="kilo@carringtonstormmotors.com" commit -m "lol.forge: PROD-XX <Title> — <lines> lines + 4 intros, <N> chunks verified"
git push
```

### 7. Update Trackers (10 min)
- Update TODO.md (micro-subtask status, heartbeat log)
- Update Master_Todo.md (check off document, update progress tables)
- Append to memory/2026-11-02.md (session log)
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
| **Heartbeat every 2 min** | Print status: `[HEARTBEAT] Runner 013 | PROD-29 | research | 45 lines | 0 commits | OK` |
| **Auto-continue** | No blocking waits; queue next micro-task immediately |
| **Terminal output** | Print progress every subtask completion |

### Example Micro-Subtask Breakdown (PROD-29 Research):
1. Read PROD-22 Phoenix Protocol (15 min) → TODO.md update
2. Read PROD-23 Control Architecture (15 min) → TODO.md update
3. Read PROD-26 GIC Immunity (10 min) → TODO.md update
4. Read PROD-27 Manufacturing/FAT (10 min) → TODO.md update
5. Read PROD-28 QA/SAT (10 min) → TODO.md update
6. Read FOLLOW-22,23,24 (10 min) → TODO.md update
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
1. Next session runs `./scripts/resume_runner.sh 013`
2. Reads this file + RESUME_SESSION_LOLFORGE.md + TODO.md
3. Continues from last completed micro-subtask

---

## Next Runner

After PROD-29, 30, 31 complete:
- Create `NEXT_runner_014.md` for PROD-32, 33, 34
- Update Master_Todo.md Phase 3 progress = 100%
- Tag milestone: `git tag lol.forge-prod-30 && git push --tags`

---

*Generated: 2026-11-02 | Runner 012 complete (PROD-28) | Next: Runner 013*
*All work persisted in GitHub. Ephemeral workspace is compute only.*