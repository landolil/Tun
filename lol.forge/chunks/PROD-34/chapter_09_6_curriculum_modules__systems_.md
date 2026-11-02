## 6. Curriculum Modules — Systems (Induction, Cascade, Control, QA)

### 6.1 Module S-01: Induction Power Electronics (24 hrs)

**Topics:**
- GaN Class E inverters (GS66516T), ZVS at 100 kHz → 1 kHz (PROD-10)
- FBG sensors: WDM+TDM, 384 ch @ 125 Hz, PMMA POF (PROD-10, FOLLOW-11)
- PID ±5°C + resonance tracking, varactor bias, cap bank (PROD-10, 23)
- Microchannel cold plates, liquid cooling, junction-to-case thermal (PROD-10, FOLLOW-10)
- SIL-3 gate drive: desat detect 10 ns, 2oo3 voting (PROD-23, 28)

**Assessment**: Simulator — tune Zone 3 PID to ±2°C at 50 kHz, maintain ZVS >99.9%

### 6.2 Module S-02: Distributed Control Architecture (24 hrs)

**Topics:**
- L0 FPGA: Gate drive, desat, ZVS, current sense at 100 kHz (PROD-23)
- L1 RTU: ARM Cortex-A53, 1 kHz thermal-admittance model, FBG acquisition (PROD-23)
- L2 PLC: IEC 61131-3, 100 Hz cascade, interlocks, recipe (ISA-88), carousel (PROD-23)
- L3 SCADA: Linux dual, 10 Hz historian, alarms, batch, twin sync (PROD-23, 29, 37)
- TSN/PTP: 1 Gbps dual-ring, 4 VLANs, <1 μs sync, FRER (PROD-23, FOLLOW-11)

**Assessment**: Practical — configure TSN schedule, verify PTP <1 μs, inject L0 desat

### 6.3 Module S-03: SIL-3 Safety Instrumented Functions (16 hrs)

**Topics:**
- 24 SIFs: 3 per zone × 8 zones (overtemp, overpressure, vibration, GIC, comms loss)
- 2oo3 voting on independent sensors, <50 ms trip, PFD_avg <1×10⁻³ (PROD-28)
- CT-04 proof test: full injection sequence, SOE verification (PROD-28)
- SIF bypass: dual-key (SL + Safety Eng), 4 hr max, blockchain audit (PROD-28)
- SIS proof test interval: quarterly partial-stroke, annual full (PROD-30)

**Assessment**: Oral board — walk through CT-04 sequence, justify bypass decision

### 6.4 Module S-04: Quality Assurance & NDT (16 hrs)

**Topics:**
- Zero-metal NDT: UT PA (5 MHz, 64-element), CT (200 μm), AE (R15α), IR, VT (PROD-28)
- FBG-as-primary-metrology: 384 ch @ 125 Hz, drift <0.5%/1000 hrs (PROD-28)
- Recursive Bayesian health update: Λ > 10 → auto-NCR (PROD-28 Keymaker Key)
- QR + Hyperledger traceability: UUID chain, immutable record (PROD-28, 38)
- Four human witness gates: SG-2, SG-3, CT-04, SAT-05 (PROD-28)

**Assessment**: Practical — UT PA on ZrB₂-SiC coupon, interpret AE Felicity ratio

---
