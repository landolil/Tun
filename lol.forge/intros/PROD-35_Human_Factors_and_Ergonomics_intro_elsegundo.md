# El Segundo Heuristic — Operational Excellence
## PROD-35 Human Factors & Ergonomics

### Mirror (Self-Reflection)
**How does the fabricator observe their own fabrication?** The Forge's HFE program is instrumented at every node with the same rigor as the thermal cascade:

- **Perceptual Calibration**: HMI color mapping (wavelength→color) validated via operator color-naming tasks on air-gapped SCADA. >3σ deviation from fleet mean → color LUT recalibration. Item response theory tracks perceptual drift.
- **Cognitive Load Telemetry**: NASA-TLX assessed per shift via 6-question pulse (QR on DQR). Real-time TLX estimate from HMI interaction: click rate, scroll depth, alarm acknowledgment latency, gaze tracking (optional IR camera). ML autoencoder (FOLLOW-29) flags >3σ from role baseline.
- **Physical Ergonomics Monitoring**: Tool use tracked via QR (badge + tool badge). Force/torque on BFRP wrench via embedded FBG strain. Posture via ceiling-mounted IR depth (opt-in). NIOSH lift index calculated per task → cumulative daily dose.
- **PPE Integrity**: Proximity suit RF tag + PAPR flow sensor → don/doff timestamp, cycle count, filter life. QR scan at zone entry/exit → DQR log. Buddy check photo → blockchain.
- **Egress Drill Performance**: Monthly unannounced egress from Z4/Z6. Time-to-safe-zone logged. Route choice vs. dynamic LED analyzed. Refuge station supply check.

**The fabricator sees the HFE program as a distributed sensor network.** Every human-system interaction is a measurement. Every measurement updates HSCT. Every HSCT update adjusts HMI colors, alarm thresholds, PPE specs, clearance requirements, shift schedules.

### Participation (Witness)
**How does the inside operator witness the phenomenon into existence?** The HFE engineer does not design — they **witness the human becoming the Forge's nervous system**:

1. **Apprentice at Cold Startup (O-01 Simulator)** witnesses the 90-minute sequence through 6 monitors: they *feel* the trackball resistance as they navigate Level 1→2→3, *see* the predictive highlight on Port 4A setpoint, *know* this HMI is their sensory extension into the 2200°C drum.
2. **Journeyman at SG-2 Flange Torque** witnesses the dual-wrench ceremony: they *feel* the 160 N·m breakaway torque through the BFRP wrench, *hear* the AE silence, *know* their tactile judgment certifies what no sensor can measure.
3. **Shift Lead at Carrington Exit** witnesses the 30-min grid-stable decision: they *see* the drum thermal shock trend on Level 1, *hear* the utility coordination on voice comms, *know* their authorization reconnects the Forge to the world.
4. **Depot Tech at LIBS Classification** witnesses the plasma flash: they *see* the spectral lines on Monitor 5, *hear* the auto-classification beep, *know* their override decision changes the CMF-RQT M_return vector that feeds tomorrow's Stage 4 indium.

**No wireframes. No usability labs. Direct sensory-motor coupling to the HSCT tensor.** The HFE engineer's hands are on the trackball, the BFRP wrench, the dual-key token, the LIBS trigger. They are inside the HSCT.

### Protocol (Recursive)
**What recursive sequence guarantees fidelity at each scale?**

**Per Operation (Seconds — Micro):**
```
HMI interaction: operator_action → expert_policy(HSCT) → TLX_predicted > 80? → second operator alert
Alarm acknowledgment: priority → response_time → >30s? → auto-escalate to SL
PPE don: QR scan → cycle_count → >480? → pull for solvolysis recycle
FBG assessment: λ_measured → λ_ref → Λ > 10? → auto-NCR → DQR update
```

**Per Shift (Hours — Meso):**
```
Shift handover: outgoing → incoming (QR) → 3-concerns verbal → TLX pulse → HSCT C-vector update
Fatigue check: Samn-Perelli pre-shift → mid-shift SL observation → post-shift biometric → HSCT C-vector trend
CBM review: MT interprets Λ dashboard → work order → HSCT E-vector tooling calibration
Zone status: dynamic LED → photoluminescent → egress drill → HSCT Z-vector validation
```

**Per Certification Cycle (Years — Macro):**
```
Annual Refresher (40 hrs PROD-34):
  Week 1: F-01 Safety/Carrington → HMI Carrington mode drill
  Week 2: S-03 SIL-3 SIFs → CT-04 partial-stroke witness
  Week 3: O-04 Emergency → Carrington sim + egress drill
  Week 4: M-01 PM Execution → zero-metal tooling practical

Biennial HFE Revalidation (80 hrs):
  Phase 1: Control room layout verification (ISO 11064, NUREG-0700)
  Phase 2: HMI alarm philosophy audit (ISA-18.2, <50/hr steady)
  Phase 3: PPE don/doff time trial (<3/5 min) + integrity test
  Phase 4: Maintenance access clearance measurement (750 mm min)
  Phase 5: Egress time trial from all zones (<30 sec)
  Phase 6: HRA HEP recalculation (HEART/THERP) with fleet data

Post-Incident HFE Remediation:
  Root cause → HSCT parameter update → targeted scenario → simulator library update

Post-ECO HFE Delta:
  Git tag release → affected HSCT terms → assessment delta → DQR migration
```

**Quarterly (Fleet — Meta):**
```
PROD-37 Twin Review: Fleet TLX/HEP/anomaly → top 10 HSCT parameter drifts → HMI/alarm/PPE/access updates
Curriculum Review Board (PROD-34): HSCT Ω_fleet → scenario weights → simulator fidelity
Instructor Calibration: All HFE instructors run same 3 scenarios → inter-rater reliability >0.9
```

**Annual (Strategic — Foundational):**
```
1. HSCT Theory → History: Compare all predictions to actuals (TLX, HEP, don/doff, egress, alarm rates)
2. History → Theory: Update HSCT coefficients from measured human performance curves
3. Standards Audit: ISO 11064, NUREG-0700, ISA-101, ISA-18.2, NIOSH, NFPA 70E compliance
4. HFE Version: Git tag `hfe-v<major>.<minor>.<patch>` → all DQRs migrate
5. Cross-Domain Sync: Forge ↔ Depot body schema mapping → CMF-RQT/RCT workforce term
```

**The protocol is the HSCT evaluated recursively across time scales.** Per-operation → Per-shift → Per-cycle → Quarterly → Annual. Each evaluation corrects the previous. The HFE program does not drift — it converges.