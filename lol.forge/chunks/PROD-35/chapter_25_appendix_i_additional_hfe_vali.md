## Appendix I: Additional HFE Validation Methods (Expanded)

### I.1 Control Room Validation (ISO 11064 / NUREG-0700)

**Validation Phase 1 — Design Review (Pre-FAT):**
- Sightline verification: 3D CAD + operator manikins (5th-95th %) → all monitors visible
- Lighting simulation: Dialux/EAG → 50 lux ambient, 300 lux task, UGR<16 verified
- Acoustic model: Odeon → NC-35 verified with HVAC + pumps + operator speech
- Thermal CFD: 22±1°C, 40-50% RH, <0.15 m/s velocity at all stations

**Validation Phase 2 — FAT (Factory Acceptance Test):**
- Hardware-in-loop: L3 SCADA + L2 PLCs + L1 RTUs + L0 FPGAs on TSN
- Scenario: 8-hr steady state + 3 upsets + 1 Carrington
- Metrics: Alarm rate, TLX (NASA-TLX per operator), SIF response, authorization gate timing
- Pass Criteria: Alarm rate <50/hr steady, TLX <60 steady, SIF <50ms, Gates 100% correct

**Validation Phase 3 — SAT (Site Acceptance Test):**
- 10 production batches (PROD-28 SAT-05)
- Metrics: Batch mass balance >99%, zero spurious SIF trips, operator TLX logs
- Pass Criteria: All 10 batches meet spec, zero human error requiring recovery

### I.2 HMI Validation (ISA-101 / ISA-18.2)

**Alarm Rationalization (Pre-FAT):**
- Master Alarm Database: 247 alarms (24 SIF + 120 Process + 50 Equipment + 53 Cyber)
- Each alarm: Priority, Setpoint, Deadband, Shelving limit, Suppression logic, Operator action
- ISA-18.2 compliance: Rationalization workshop (SL, QI, Safety Eng, Controls Eng)
- Flood test: Inject 500 alarms/10 min → verify chattering filter, priority audio only

**HMI Usability Test (FAT):**
- 6 operators (2 FO, 2 DT, 1 MT, 1 QI) execute 10 scenarios
- Metrics: Task completion time, error count, NASA-TLX, SUS (System Usability Scale)
- Pass Criteria: SUS >80, zero critical errors, TLX <80 all scenarios

### I.3 Maintenance Access Validation (PROD-27 FA)

**First Article Physical Verification:**
- Drum FBG access: 3 FA drums → MT performs procedure → time, clearance, tool fit, PPE
- Port valve swap: 3 FA ports → MT performs procedure → time, torque, AE silence
- Coil cold plate: 8 FA zones → MT performs IR scan → access, reach, tool positioning
- Vessel aerogel: 1 FA vessel → MT performs borescope → access, visibility, documentation

**Pass Criteria:** All procedures ≤ target time, 750 mm clearance verified, zero tool interference, PPE don/doff <3/5 min

### I.4 PPE Validation (NFPA 1971 / 1951 / ISO 11612)

**Proximity Suit + PAPR System Test:**
- Radiant heat: 3000°F, 30 sec exposure → interior T rise <10°C
- Convective heat: 500°C, 5 min → interior T rise <5°C
- PAPR flow: >170 L/min continuous, 8-hr battery, filter life 500 cycles
- Don/doff: 10 operators × 5 cycles → avg <3 min don, <5 min doff
- Buddy check: 100% defect detection (seam, zipper, hose, filter, flow)

### I.5 Egress Validation (PROD-29)

**Monthly Unannounced Drill Protocol:**
- Trigger: SL activates Egress Drill via HMI (logged, timestamped)
- Measurement: Time from drill start to all personnel at Z0 safe zone
- Routes: Primary + secondary from each zone tested quarterly
- Pass Criteria: All personnel <30 sec (Z4), <45 sec (Z6), headcount 100% at Z0

**Annual Full-Scale Exercise:**
- Scenario: Carrington storm + H₂ leak + drum crack (multi-hazard)
- Participants: All shifts, rescue team, safety, management
- Metrics: Egress time, comms effectiveness, rescue response, PPE integrity
- After-action: Root cause, corrective actions, procedure updates

---
