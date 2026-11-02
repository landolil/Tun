## 2. Factory Acceptance Test (FAT) — Component, Module, Subsystem, System Levels

### 2.1 FAT Scope & Sequence

The FAT is executed at the CSMFAB manufacturing facility prior to shipment. It comprises **10 Core Tests (CT-01 through CT-10)** plus **Component/Module verification** per PROD-28 Tables 2.1-2.6.

```
FAT SEQUENCE (14 Days Total):
┌─────────────────────────────────────────────────────────────────────────────┐
│ DAYS 1-3:   COMPONENT/MODULE VERIFICATION (Parallel)                        │
│   Drum UT/CT/FBG (CT) | Vessel Hydro/AE (CT) | Coil Resonance (CT)         │
│   Power Electronics Soak/GIC/EMI (CT) | Frame Modal/Seismic (CT)           │
├─────────────────────────────────────────────────────────────────────────────┤
│ DAYS 4-5:   SUBASSEMBLY INTEGRATION TESTS                                   │
│   Drum+Liners Thermal Cycle | Vessel+Ports+Flanges Pressure+Thermal        │
│   Frame+Isolators Modal/Seismic | Coil Bank+Cold Plates Integrated         │
├─────────────────────────────────────────────────────────────────────────────┤
│ DAYS 6-13:  SYSTEM-LEVEL CORE TESTS (CT-01 through CT-10)                  │
│   CT-01: Drum Rotordynamics (4hr) | CT-02: Vessel Hydrotest (2hr)          │
│   CT-03: Flange Leak Test (4hr) | CT-04: SIS Proof Test (8hr) **GATE**    │
│   CT-05: Coil Resonance (6hr) | CT-06: FBG Calibration (8hr)               │
│   CT-07: GIC Ride-Through (2hr) | CT-08: Thermal Cycle (24hr)             │
│   CT-09: Seismic Shake (4hr) | CT-10: Integrated Hot Run (48hr) **GATE**  │
├─────────────────────────────────────────────────────────────────────────────┤
│ DAY 14:     DATA PACKAGE COMPILATION & SHIP RELEASE GATE                    │
│   All CT tests PASS → Quality Engineer + Plant Manager dual-sign           │
│   FA data packages uploaded to DQR blockchain → Git tag `fat-vX.Y`        │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 2.2 CT-01: Drum Rotordynamics — Detailed Procedure

**Objective:** Verify drum dynamic behavior matches FEA predictions (PROD-25) and is free of critical speed interference through operating range.

| Parameter | Specification | Measurement Method |
|-----------|---------------|-------------------|
| **1st Critical Speed** | >1890 RPM (2.37× operating max 800 RPM) | Impact hammer + accelerometers, sweep 0-3000 RPM |
| **Balance Grade** | ISO 21940-11 G0.4 | Multi-plane balancing at 500 RPM |
| **Synchronous Vibration** | <25 μm p-p at 500 RPM | Non-contact proximity probes (x2, 90°) |
| **Asynchronous Vibration** | <50 μm p-p (sub-synchronous) | Same probes, full spectrum |
| **FBG Strain Correlation** | Modal strain <800 με (Si₃N₄ pins) | 128 FBG channels @ 125 Hz during sweep |

**Acceptance Criteria:**
- [ ] 1st critical speed ≥ 1890 RPM (FEA: 2100 RPM predicted)
- [ ] Balance grade G0.4 achieved
- [ ] Synchronous vibration <25 μm p-p at 500 RPM
- [ ] No sub-synchronous instability observed
- [ ] FBG strain <800 με at all channels during sweep
- [ ] Rotordynamics model updated with measured critical speeds

**Test Setup:**
- Drum mounted on BFRP frame with seismic isolators (PROD-25 stiffness)
- 128 FBG channels active (125 Hz), 8 accelerometers (10 kHz)
- Helmholtz coil off (no GIC), TSN network active (time sync)
- Digital twin (PROD-37) running in shadow mode at 10 Hz

### 2.3 CT-02: Vessel Hydrotest — Detailed Procedure

**Objective:** Verify BFRP vessel pressure integrity and aerogel/glaze performance under design pressure.

| Parameter | Specification | Measurement Method |
|-----------|---------------|-------------------|
| **Test Pressure** | 15 bar N₂ (1.5× design 10 bar) | Certified pressure gauge ±0.1% FS |
| **Hold Duration** | 30 minutes minimum | Timer + pressure logging |
| **Pressure Drop** | Zero (temperature compensated) | ΔP/ΔT correction using FBG vessel strain |
| **Helium Leak Rate** | <1×10⁻⁶ mbar·L/s | He mass spectrometer sniffer all joints |
| **Aerogel IR Baseline** | Uniform external surface ΔT <5°C | IR camera (FLIR A6750) at 10 bar hold |
| **AE Baseline** | <5 hits/min @ 10 bar | 8-channel AE (R15α, 100 kHz-1 MHz) |

**Acceptance Criteria:**
- [ ] Zero pressure drop (temp compensated) over 30 min hold
- [ ] Zero helium leaks >1×10⁻⁶ mbar·L/s at all joints/flanges
- [ ] External IR ΔT <5°C (validates aerogel λ=0.010 W/m·K)
- [ ] AE baseline <5 hits/min @ 10 bar (Felicity ratio >1.0)
- [ ] No audible emissions, no visible deformation
- [ ] Post-test UT delamination scan clean (ASTM E2700)

### 2.4 CT-03: Flange Leak Test — Detailed Procedure

**Objective:** Verify all 24 bolted flange joints (vessel-to-drum, vessel-to-port, port-to-valve) meet leak tightness.

| Joint Group | Quantity | Test Method | Acceptance |
|-------------|----------|-------------|------------|
| Vessel-to-Drum (2 flanges) | 24 bolts each | He sniffer + bubble test | <1×10⁻⁶ mbar·L/s |
| Vessel-to-Port (8 flanges) | 12 bolts each | He sniffer + bubble test | <1×10⁻⁶ mbar·L/s |
| Port-to-Valve (8 flanges) | 8 bolts each | He sniffer + bubble test | <1×10⁻⁶ mbar·L/s |
| **Total** | **44 joints, 400 bolts** | | |

**Procedure:**
1. Torque all bolts per SG-2 ceremony (160 N·m ±5 N·m, dual-verify, AE monitoring)
2. Pressurize system to 10 bar N₂
3. Sniff each bolt circle with He mass spectrometer
4. Apply leak detection fluid (Snoop® equivalent) to each bolt
5. Record leak rate and location for any indication
6. Depressurize, re-torque any leaking joints, re-test

**Acceptance Criteria:**
- [ ] All 44 joints <1×10⁻⁶ mbar·L/s
- [ ] Torque retention >95% of initial 160 N·m after test
- [ ] AE monitoring during torque: no hits >40 dB

### 2.5 CT-04: SIS Proof Test — Detailed Procedure (THE GATE)

**Objective:** Verify all 24 SIL-3 Safety Instrumented Functions trip within <50 ms with 2oo3 voting agreement on TSN VLAN 10.

**This is the single most critical test — FAILURE = NO SHIPMENT.**

#### 2.5.1 SIF Inventory (PROD-23 Table 6.2)

| SIF ID | Function | Sensor (2oo3) | Final Element | Trip Setpoint | Response Time |
|--------|----------|---------------|---------------|---------------|---------------|
| **SIF-01** | Drum Overtemperature | 3× FBG (Zone 1-8 avg) | Zone inverters OFF | 2250°C (Zone 8) | <50 ms |
| **SIF-02** | Drum Overspeed | 3× Encoder + FBG strain | Brake + inverter OFF | 850 RPM | <50 ms |
| **SIF-03** | Vessel Overpressure | 3× PT (PTP-synced) | Inlet valve CLOSE | 12 bar | <50 ms |
| **SIF-04** | Zone Overpower | 3× EM power (per zone) | Zone inverter OFF | 110% rated | <50 ms |
| **SIF-05** | Zone Overcurrent | 3× EM current (per zone) | Zone inverter OFF | 120% rated | <50 ms |
| **SIF-06** | Loss of Cooling | 3× PEX-a flow + T | All inverters OFF | Flow <50% rated | <50 ms |
| **SIF-07** | Loss of Comms (TSN) | 3× TSN heartbeat | Safe state (config) | 3 missed cycles | <50 ms |
| **SIF-08** | PTP Sync Loss | 3× PTP offset | All inverters OFF | Offset >1 μs | <50 ms |
| **SIF-09** | FBG Channel Failure | 3× FBG health (per zone) | Alarm + derate | >5 channels bad | <50 ms |
| **SIF-10** | GIC Detection | 3× DC magnetometer | Grid disconnect + island | 5000 nT/s | <50 ms |
| **SIF-11** | Hydrogen Detection | 3× H₂ sensor (Stage 6) | Port 6B LOCK | 4% LEL | <50 ms |
| **SIF-12** | HCl Detection | 3× HCl sensor (Stage 2) | Scrubber bypass CLOSE | 500 ppm | <50 ms |
| **SIF-13** | Drum Imbalance | 3× Proximity + FBG | Speed reduction | >50 μm sync vib | <50 ms |
| **SIF-14** | Vessel Delam | 3× AE (continuous) | Alarm + derate | Felicity <0.95 | <50 ms |
| **SIF-15** | Frame Displacement | 3× LVDT (isolators) | Shutdown | >25mm | <50 ms |
| **SIF-16** | Emergency Stop (Optical) | 3× POF loop (hardwired) | ALL OFF | Loop break | <10 ms |
| **SIF-17** | Inverter Desat | 3× L0 FPGA (per leg) | Leg OFF | Desat detect | <1 μs |
| **SIF-18** | Zone Thermal Runaway | 3× dT/dt (RTU model) | Zone OFF | >100°C/s | <50 ms |
| **SIF-19** | Carriage Jam | 3× Carousel encoder | Stop + alarm | Position error >2° | <50 ms |
| **SIF-20** | Slug Mold Overfill | 3× Mold weight + IR | Port CLOSE | >105% capacity | <50 ms |
| **SIF-21** | Scrubber Failure | 3× Gas analyzer | Port CLOSE | HCl >1000 ppm | <50 ms |
| **SIF-22** | Precious Metal Loss | 3× LIBS (Stage 6) | Alarm + investigation | Recovery <95% | <50 ms |
| **SIF-23** | RE Magnet Temp | 3× FBG (Stage 7) | Quench protocol | >450°C | <50 ms |
| **SIF-24** | Cyber Tamper | 3× CPAT (PROD-37) | SIS lockdown | Λ_CP >100 | <50 ms |

#### 2.5.2 Proof Test Procedure

```
FOR EACH SIF (1-24):
  1. VERIFY test equipment calibrated, TSN VLAN 10 operational, PTP <1μs
  2. CONFIGURE SIS test mode (bypasses process interlocks, enables trip injection)
  3. INJECT trip condition per setpoint table above
     - Temperature: FBG simulator injects wavelength shift
     - Pressure: Pressure calibrator injects signal to 3 PTs
     - Speed: Encoder simulator injects frequency
     - GIC: Helmholtz coil 100 A/m, 5000 nT/s ramp
     - Cyber: CPAT injects synthetic anomaly Λ_CP >100
  4. MEASURE:
     a. Trip time (t_trip) = time from injection to final element action
     b. 2oo3 vote agreement = all 3 sensors agree within 1 TSN cycle (1ms)
     c. SOE timestamp alignment = max Δt <1 ms across zones
     d. FBG data freeze = all 384 channels capture trip instant
  5. RECORD: t_trip, vote, SOE, FBG freeze frame, Λ_CP (if SIF-24)
  6. RESET: Clear trip, verify auto-reset logic (where applicable)
  7. VERIFY: t_trip <50 ms, 2oo3 = PASS, SOE aligned, FBG freeze captured

AGGREGATE ACCEPTANCE:
  - All 24 SIFs: t_trip <50 ms (target <30 ms)
  - All 24 SIFs: 2oo3 vote = PASS
  - All 24 SIFs: SOE timestamps aligned <1 ms
  - PFD_avg calculation (IEC 61508-6) <1×10⁻³ per SIF
  - SIF-16 (Optical E-stop): t_trip <10 ms
  - SIF-17 (FPGA Desat): t_trip <1 μs (verified at L0)

DOCUMENTATION:
  - CT-04 Test Report with all 24 SIF data sheets
  - PFD_avg calculation sheets per SIF
  - SOE log export (CSV, blockchain anchored)
  - FBG freeze frame archive (384 channels × 24 SIFs)
  - SIS Engineer witness signature (Gate CT-04)
```

#### 2.5.3 Partial-Stroke Test (Quarterly, PROD-30)

| SIF Group | Test Method | Frequency | Acceptance |
|-----------|-------------|-----------|------------|
| SIF-01 to SIF-15 (Process) | Partial stroke 10-90% valve travel | Quarterly | Stroke time within 20% baseline |
| SIF-16 (Optical E-stop) | Full stroke (loop break) | Monthly | <10 ms |
| SIF-17 (FPGA Desat) | Built-in self-test (BIST) | Per startup | All legs PASS |
| SIF-18 to SIF-24 (Derived) | Logic solver injection | Quarterly | Logic executes <50 ms |

---

### 2.6 CT-05: Coil Resonance — Detailed Procedure

**Objective:** Verify all 8 zone resonant inverters achieve ZVS at full power across frequency range.

| Zone | Frequency | Power | ZVS Phase | Q Factor | Thermal ΔT |
|------|-----------|-------|-----------|----------|------------|
| Z1 | 100 kHz | 50 kW | <5° | >150 | <10°C |
| Z2 | 100 kHz | 50 kW | <5° | >150 | <10°C |
| Z3 | 50 kHz | 80 kW | <5° | >150 | <10°C |
| Z4 | 10 kHz | 150 kW | <5° | >150 | <10°C |
| Z5 | 10 kHz | 150 kW | <5° | >150 | <10°C |
| Z6 | 5 kHz | 200 kW | <5° | >150 | <10°C |
| Z7 | 2 kHz | 350 kW | <5° | >150 | <10°C |
| Z8 | 1 kHz | 500 kW | <5° | >150 | <10°C |

**Procedure:** Per PROD-10 Section 2.3, sweep frequency ±5%, verify ZVS acquisition <38 ms (PROD-23), thermal balance at 100% load for 30 min.

### 2.7 CT-06: FBG Calibration — Detailed Procedure

**Objective:** Calibrate all 384 FBG channels at 5 reference temperatures with drift tracking.

| Reference Temp | Method | Channels | Acceptance |
|----------------|--------|----------|------------|
| 25°C (ambient) | Calibrated bath | 384 + 16 ref | λ₀ recorded, R² > 0.999 |
| 500°C | Furnace zone | 384 + 16 ref | Δλ/ΔT match PQR ±2% |
| 1000°C | Furnace zone | 384 + 16 ref | Δλ/ΔT match PQR ±2% |
| 1500°C | Furnace zone | 384 + 16 ref | Δλ/ΔT match PQR ±2% |
| 2000°C | Furnace zone | 384 + 16 ref | Δλ/ΔT match PQR ±2% |

**Drift Monitoring:** Continuous comparison to PQR calibration curve. Alert at >0.1 nm/°C deviation. Auto-NCR at >0.5%/1000 hrs drift.

### 2.8 CT-07: GIC Ride-Through — Detailed Procedure

**Objective:** Verify full Forge operation survives Carrington-class geomagnetic storm (100 A/m, 5000 nT/s, 30 min).

| Phase | Condition | Duration | Monitoring |
|-------|-----------|----------|------------|
| **Ramp** | Helmholtz 0→100 A/m, 5000 nT/s | 30 s | All 384 FBG, TSN frames, PTP offset, DC link |
| **Hold** | 100 A/m steady | 30 min | Zero spurious SIF trips, zero data loss, comms OK |
| **Ramp Down** | 100→0 A/m | 30 s | Controlled recovery, no thermal shock >100°C/s |
| **Post** | Grid stable 30 min | 30 min | Twin reconciliation, CT-04 partial-stroke |

**Acceptance Criteria:**
- [ ] Zero spurious SIF trips during 30 min hold
- [ ] Zero data loss (merkle chain intact, PROD-37)
- [ ] PTP offset <1 μs throughout (GNSS+OCXO holdover)
- [ ] TSN frame integrity 100% (no CRC errors)
- [ ] No thermal shock >100°C/s during ramp down
- [ ] Post-test CT-04 partial-stroke (6 SIFs) PASS

### 2.9 CT-08: Thermal Cycle — Detailed Procedure

**Objective:** Verify full 8-stage thermal cascade with no feedstock, full ramp/hold/cool.

| Stage | Target Temp | Ramp Rate | Hold | Cool Rate | Key Checks |
|-------|-------------|-----------|------|-----------|------------|
| 0: Acoustic | N/A | N/A | 30 min | N/A | AE baseline, FBG health |
| 1: Drying | 120°C | 50°C/min | 60 min | 50°C/min | H₂O removal, FBG drift |
| 2: Polymer | 300°C | 50°C/min | 90 min | 50°C/min | Melt flow, no PVC >5% |
| 3: Pyrolysis | 575°C | 30°C/min | 120 min | 30°C/min | Char formation, gas spec |
| 4: Low-Temp Metals | 660°C | 20°C/min | 90 min | 20°C/min | Zn/Pb/Sn/In separation |
| 5: Aluminum | 690°C | 10°C/min | 60 min | 10°C/min | Clean Al separation |
| 6: Copper | 1150°C | 10°C/min | 120 min | 10°C/min | Cu + Au/Ag/Pd recovery |
| 7: Ferrous | 1400°C | 10°C/min | 120 min | 10°C/min | Fe + RE magnets |
| 8: Mineral | 1950°C | 5°C/min | 180 min | 5°C/min | Silicate + RE oxides |

**Acceptance Criteria:**
- [ ] All stages ±5°C setpoint throughout hold
- [ ] No SIF trips (except intentional test trips)
- [ ] All 384 FBG channels active throughout
- [ ] Digital twin sync <3σ vs. process
- [ ] Gas capture system nominal (PROD-07)
- [ ] Port valves actuate per schedule (PROD-09)

### 2.10 CT-09: Seismic Shake — Detailed Procedure

**Objective:** Verify structural integrity per IEEE 693 High Seismic.

| Test | Input | Acceptance |
|------|-------|------------|
| **OBE ×5** | IEEE 693 High RRS ×0.4g, 3 axes | No structural damage; re-tests CT-01,02,03,04 PASS |
| **SSE ×1** | IEEE 693 High RRS ×1.0g, 3 axes | HCLPF >1.6g; no loss of safety function |
| **Isolator Displacement** | Measured via LVDT | <25 mm OBE, <100 mm SSE |
| **Post-Shake FAT** | CT-01,02,03,04,05,06 | All PASS (re-test required) |

### 2.11 CT-10: Integrated Hot Run — Detailed Procedure (THE GATE)

**Objective:** Demonstrate end-to-end process performance with 6 production batches.

| Batch | Feedstock | Target Outputs | Key Metrics |
|-------|-----------|----------------|-------------|
| 1 | Category A (clean e-waste) | Cu, Au, Ag, Pd, Al, Fe | Recovery >99%, SI ±0.05 |
| 2 | Category B (mixed + PVC) | + HCl capture, In first | Recovery >98%, HCl <50 ppm |
| 3 | Category C (auto shredder) | + RE magnets, high Fe | Recovery >97%, RE >95% |
| 4 | Category D (slag/tailings) | + Mineral residue, Zr | Recovery >95%, Zr >90% |
| 5 | Category A (repeat) | Reproducibility | All metrics within ±2% |
| 6 | Phoenix Return (EOL) | Closed-loop validation | Mass balance >99.5% |

**Per-Batch Acceptance:**
- [ ] Mass balance >99% (elemental closure)
- [ ] All output slugs meet PROD-08 spec (mass spec, dimensions)
- [ ] Energy per ton within PROD-31 budget (±10%)
- [ ] Gas emissions within PROD-32 permits
- [ ] Digital twin sync <3σ throughout
- [ ] No SIF trips, no NCRs

**Final Gate:** All 6 batches PASS → Plant Manager witness (SAT-05 equivalent) → Ship release.

---
