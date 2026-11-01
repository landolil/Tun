# PROD-15 El Segundo Heuristic Intro
## Operational Reliability & Manufacturing Lens — El Segundo Works

**Document:** PROD-15 Stage 2 Polymer Flow & Separation
**Heuristic:** El Segundo — Operational reliability, manufacturing reality, maintenance, "what breaks at 3 AM"
**Author:** CSM Fabrication Division | **Date:** 2026-11-01

---

### EL SEGUNDO HEURISTIC: PROD-15 STAGE 2 POLYMER FLOW & SEPARATION

**Core Question:** Will this run for 8,000 hours without a tech crawling inside a 450°C dielectric bowl?

---

#### 1. WHAT BREAKS FIRST (Ranked by MTBF)

| Rank | Component | Failure Mode | MTBF (hrs) | Detection | Fix Time |
|------|-----------|--------------|------------|-----------|----------|
| 1 | **Candle filters (SiC)** | Pore blinding, thermal shock crack | 2,500 | ΔP >5 bar | 2 hr (swap cartridge) |
| 2 | **NaHCO₃ feeder screw** | Polymer melt-back, screw seizure | 3,000 | Feeder current spike | 4 hr (replace screw) |
| 3 | **ZrO₂ bowl liner** | Thermal cycling crack, polymer adhesion | 5,000 | Vibration signature | 8 hr (relining) |
| 4 | **Ti₃AlC₂ port actuator** | Carbon deposition, thermal ratchet | 4,000 | Position sensor fault | 3 hr (swap actuator) |
| 5 | **PEEK CF40 seal spring** | Creep at 450°C, CF percolation drift | 6,000 | Leak rate increase | 2 hr (replace spring) |
| 6 | **HCl POF sensor** | PMMA darkening, absorption drift | 4,000 | Calibration fail | 1 hr (swap fiber) |
| 7 | **Si₃N₄ bearings** | Lubricant degradation, ball spall | 10,000 | Vibration + temp | 6 hr (replace pair) |

**Key Insight:** Filters and feeder are the consumables. Design for 5-min filter swap, 30-min feeder screw swap. Everything else is annual.

---

#### 2. MAINTENANCE WINDOWS (Aegis-Forge I: 20 batches/day = 1 batch/72 min)

**Daily (Every 20 batches = 24 hrs):**
- Filter back-pulse check (automated, verify ΔP <2 bar)
- NaHCO₃ hopper level (refill 50 kg bag)
- HCl sensor zero-check (N₂ purge, verify <5 ppm)
- Condensate trap drain (oligomer collection)

**Weekly (Every 140 batches = 168 hrs):**
- Candle filter cartridge swap (12 cartridges, 2 hr)
- Feeder screw inspection (remove, clean, reinstall, 30 min)
- Port actuator cycling test (full open/close, 10 min)
- Seal leak check (He sniff at 1.2 bar N₂, 15 min)

**Monthly (Every 600 batches = 720 hrs):**
- ZrO₂ liner visual (boroscope through port, 30 min)
- Bearing vibration baseline (accelerometer, 15 min)
- PEEK CF40 spring force check (torque wrench, 20 min)
- POF sensor calibration (HCl gas cell, 30 min)

**Annually (Every 7,200 batches = 8,760 hrs):**
- Full bowl relining (ZrO₂ tile replacement, 8 hr)
- Bearing replacement (Si₃N₄ pair, 6 hr)
- Ultrasonic motor alignment check (laser, 2 hr)
- BFRP casing UT scan (delamination check, 4 hr)

---

#### 3. OPERATIONAL PROCEDURES

**STARTUP SEQUENCE (Cold to Run):**
1. Bowl at 25°C → Purge N₂ 30 min (O₂ <2%)
2. Ramp induction 10°C/min to 150°C (no feed)
3. Verify ZrO₂ liner temp uniform (POF Bragg, ΔT <5°C)
4. Start centrifuge 10 RPM → 150 RPM over 5 min
5. Verify bearing temps <80°C, vibration <2 mm/s
6. Start NaHCO₃ feeder (dry run, verify flow)
7. Start melt pump, prime filters (N₂ purge lines)
8. Vacuum pump on, verify 50 mbar
9. **FEED AUTHORIZED** — all green lights

**SHUTDOWN SEQUENCE (Run to Cold):**
1. Stop feed, run 5 min empty (purge melt)
2. Discharge ports open, clear residual melt to molds
3. Stop centrifuge, hold N₂ purge
4. Stop induction, cool 20°C/min (thermal shock limit)
5. At 150°C: stop vacuum, stop melt pump
6. At 80°C: stop N₂ purge, vent to atmosphere
7. **SAFE FOR MAINTENANCE**

**EMERGENCY STOP (HCl >200 ppm or Fire):**
1. Kill induction (instant)
2. Max NaHCO₃ feed (feeder 100%)
3. Flood N₂ (2 bar, 100 m³/hr)
4. Centrifuge brake (eddy current, 30 sec to stop)
5. Auto-discharge ports open (gravity + centrifugal)
6. Isolate vacuum, vent to scrubber
7. **ALARM + LOG + NOTIFY**

---

#### 4. SPARES STOCKING (El Segundo Standard: 95% availability)

| Spare Part | Qty On-Site | Lead Time | Cost Each | Annual Budget |
|------------|-------------|-----------|-----------|---------------|
| SiC candle filter (12-pack) | 4 packs | 4 weeks | $2,400 | $9,600 |
| NaHCO₃ feeder screw (PEEK CF40) | 6 | 2 weeks | $850 | $5,100 |
| ZrO₂ liner tile set | 2 sets | 6 weeks | $12,000 | $24,000 |
| Ti₃AlC₂ actuator | 4 | 8 weeks | $3,200 | $12,800 |
| PEEK CF40 seal spring | 12 | 3 weeks | $180 | $2,160 |
| PMMA POF HCl sensor head | 4 | 1 week | $450 | $1,800 |
| Si₃N₄ bearing pair | 2 pairs | 4 weeks | $1,800 | $3,600 |
| **TOTAL ANNUAL SPARES** | | | | **$59,060** |

---

#### 5. OPERATOR TRAINING REQUIREMENTS

| Skill | Hours | Certification |
|-------|-------|---------------|
| Normal startup/shutdown | 8 | CSM-OP-201 |
| Filter cartridge swap | 4 | CSM-MT-202 |
| Feeder screw replacement | 6 | CSM-MT-203 |
| HCl sensor calibration | 3 | CSM-CAL-204 |
| Emergency procedures | 8 | CSM-EMER-205 |
| Bearing vibration analysis | 16 | CSM-VIB-206 |
| **TOTAL** | **45** | **Level 2 Operator** |

---

#### 6. EL SEGUNDO VERDICT

**Operability Score: 7.5/10**

**What Works:**
- Filter swap in 2 hrs (cartridge design, no tools)
- Feeder screw accessible from outside (no bowl entry)
- All sensors POF — no electrical in hot zone
- Emergency procedures tested, automated
- Spares budget <$60k/yr (manageable)

**What Keeps Me Up at Night:**
1. **ZrO₂ liner crack at 3 AM** — no redundant liner, 8 hr repair, line down
   - *Mitigation:* Keep 2 liner sets on-site, practice 4-hr swap
2. **NaHCO₃ feeder screw seizes mid-batch** — HCl spikes, batch scrap
   - *Mitigation:* Redundant feeder (parallel), auto-switchover
3. **Port actuator carbon-locked** — melt solidifies in slot
   - *Mitigation:* N₂ purge slots during discharge, Ti₃AlC₂ self-lubricating

**Deferred to FOLLOW-12 (Shredder Wear):**
- Filter back-pulse solids → shredder blade wear correlation
- Need data on char/filler particle size distribution from Stage 2

**Deferred to FOLLOW-22 (Dust Capture):**
- Vacuum vent oligomer condensation → baghouse loading
- Need condensate particle size for cyclone design

---

#### 7. THE "3 AM TEST"

*Scenario: 0300 hrs, Batch 847, HCl sensor reads 180 ppm, rising.*

**Automated Response (0-30 sec):**
- Induction OFF
- NaHCO₃ feeder 100%
- N₂ flood 2 bar
- Centrifuge brake engage

**Operator Response (30 sec - 5 min):**
- Acknowledge alarm (HMI)
- Verify NaHCO₃ feeding (hopper level, feeder current)
- Verify N₂ flow (flowmeter)
- Check POF HCl trend (dropping?)

**Decision Point (5 min):**
- HCl <50 ppm → Resume ramp, extend dwell 10 min
- HCl >50 ppm → Abort batch, emergency discharge, full cooldown

**Post-Mortem (Next Shift):**
- Feeder screw inspection (likely cause: melt-back)
- PVC assay on feed sample (was it >5%?)
- Sensor calibration check
- Log to FOLLOW-18 (char activation — this batch's char is different)

---

*El Segundo Heuristic: "Design for the tech who hasn't slept. They're the one fixing it."*
*This document: Designed for 3 AM. Maintenance windows defined. Spares budgeted.*