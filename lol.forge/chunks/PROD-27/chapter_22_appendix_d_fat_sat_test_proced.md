## Appendix D: FAT/SAT Test Procedures (CT-01 through CT-10)

### D.1 CT-01 Drum Rotordynamics

**Objective:** Verify drum dynamic behavior matches FEA predictions (PROD-25).

**Setup:** Drum mounted on integration fixture, drive motor + encoder, accelerometers (8×), proximity probes (4×), laser vibrometer.

**Procedure:**
1. Install drum, verify runout <25 μm at 50 RPM
2. Accelerate 10 RPM/s to 500 RPM, record at each 50 RPM increment
3. Coast down, record critical speed crossings
4. Balance correction: add/remove mass at correction planes
5. Re-run to 500 RPM, verify G0.4 (ISO 21940-11)
6. Overspeed test: 600 RPM for 5 min (1.2× operating)

**Pass Criteria:**
- 1st bending critical speed >1890 RPM (FEA: 2100 RPM)
- Balance grade G0.4 at 500 RPM
- Synchronous vibration <25 μm pk-pk
- No subsynchronous instability

### D.2 CT-02 Vessel Hydrotest

**Objective:** Verify pressure boundary integrity per ASME BPVC Sec X.

**Setup:** Vessel on frame, N₂ supply 15 bar, pressure transducers (3×), He leak detector.

**Procedure:**
1. Visual inspection: welds, bonds, flange faces
2. Pressurize to 5 bar, hold 10 min, inspect
3. Pressurize to 10 bar, hold 10 min, inspect
4. Pressurize to 15 bar (1.5× design), hold 30 min
5. Depressurize to 5 bar, He leak test all joints
6. Full depressurization, final visual

**Pass Criteria:**
- Zero pressure drop at 15 bar/30 min (temp compensated)
- Zero leaks at all joints (He <10⁻⁶ mbar·L/s)
- No permanent deformation (CMM pre/post)

### D.3 CT-03 Flange Leak Test

**Objective:** Verify all 24 bolted joints (12 per flange) seal at design pressure.

**Procedure:**
1. Pressurize vessel to 10 bar N₂
2. He sniffer probe at each bolt hole, gasket OD, flange face
3. Record leak rate per joint
4. Any leak >10⁻⁶ mbar·L/s → re-torque → re-test

**Pass Criteria:** All 24 joints <10⁻⁶ mbar·L/s

### D.4 CT-04 SIS Proof Test

**Procedure per SIF:** (See Section 9.2)

### D.5 CT-05 Coil Resonance

**Objective:** Verify all 8 zones achieve ZVS at target frequency and power.

**Setup:** Each zone connected to test inverter, water load, V/I probes, thermal camera.

**Procedure per zone:**
1. Frequency sweep 50–100 kHz (Z1–Z2), 1–50 kHz (Z3–Z8)
2. Identify resonant peak, set operating point
3. Ramp power 0→100% in 10% steps, 5 min dwell
4. Record V/I phase, switch voltage, current, temperature
5. Verify ZVS: v_DS zero crossing before gate turn-on

**Pass Criteria:** ZVS phase <5° at 100% load all zones

### D.6 CT-06 FBG Calibration

**Objective:** Calibrate all 384 FBG sensors against reference temperatures.

**Setup:** Drum in furnace, 5 reference thermocouples (Type C) at known positions, FBG interrogator.

**Temperature points:** 25°C, 500°C, 1000°C, 1500°C, 2000°C

**Procedure:**
1. Ramp furnace to each point, hold 30 min stabilization
2. Record all 384 FBG wavelengths + 5 reference TCs
3. Compute calibration coefficients per sensor
4. Verify linearity R² >0.999, drift <0.5%/1000 hrs

**Pass Criteria:** All 384 sensors calibrated, drift <0.5%/1000 hrs

### D.7 CT-07 GIC Ride-Through

**Setup:** Helmholtz coil (100 A/m, 5000 nT/s), full system operational.

**Procedure:**
1. Start 6-batch sequence (CT-10)
2. At Batch 3 midpoint, energize Helmholtz to 100 A/m
3. Maintain 30 min, monitor all systems
4. De-energize, verify 30 min stable grid
5. Operator authorizes continued operation

**Pass Criteria:** Zero spurious SIF trips, zero data loss, all comms intact

### D.8 CT-08 Thermal Cycle

**Objective:** Full thermal cascade (Stages 0-8) without feedstock.

**Procedure:**
1. Execute Stage 0: AMLS 20 min, verify LI >0.8
2. Execute Stage 1: IR drying to 150°C, verify moisture <0.1%
3. Execute Stages 2-8 per thermal profile (PROD-02)
4. Hold each stage 30 min, record all FBG, power, gas
5. Cool down per controlled ramp (50°C/min max)

**Pass Criteria:** All stages ±5°C of setpoint, no SIF trips, no anomalies

### D.9 CT-09 Seismic Shake

**Setup:** Shake table, IEEE 693 High RRS, 3 axes.

**Procedure:**
1. Mount integrated system on shake table (isolators installed)
2. 5 OBE events (0.4g ZPA), inspect between
3. 1 SSE event (1.0g ZPA), inspect
4. Post-shake: CT-01, CT-02, CT-03, CT-04 re-run

**Pass Criteria:** HCLPF >1.6g, no structural damage, all re-tests pass

### D.10 CT-10 Integrated Hot Run

**See Section 9.3 for 6-batch protocol.**

---

*End of CSMFAB000000000127 — PROD-27 Manufacturing Process Plan*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*