## 8. System Integration & Loop Closure (A-13)

### 8.1 Integration Sequence (4 Weeks)

**Week 1 — Foundation & Frame:**
1. Install elastomeric isolators on foundation (tiltmeter 0.1 μrad level)
2. Mount BFRP frame, torque PEEK CF40 bolts (dual-verify)
3. Install carousel rotor, bearing preload verification
4. Route PEX-a coolant mains, POF cable trays (BFRP)

**Week 2 — Vessel & Drum Insertion:**
1. Lower vessel onto frame (crane 10t, spreader bar, load cells)
2. Install aerogel gap standoffs (12× ZrO₂, verified gap 50 mm ±2 mm)
3. Insert drum into vessel (vertical, guided by alignment pins)
4. Verify drum-to-vessel concentricity: <0.5 mm radial runout

**Week 3 — Flange Closure & Port Valves:**
1. Install drum-end PEEK CF40 flanges (12× M24 ZrO₂ bolts, 160 N·m dual-verify)
2. Install port valve assemblies (×8) into drum sleeves
3. Connect actuator FBG leads to POF bulkheads
4. Install ZrO₂ gaskets, torque sequence (star pattern)

**Week 4 — Coil Bank, Electronics, Loop Closure:**
1. Install 8-zone coil bank around vessel (alignment pins, BFRP brackets)
2. Connect PEX-a coolant: zone → cold plate → manifold → chiller
3. Mount 8 power electronics modules on frame
4. Route POF: TSN ring (dual), PTP grandmaster, FBG interrogators
5. TSN ring closure: verify <100 μs latency, PTP <1 μs sync
6. FBG splices: all 384 channels verified (IL <0.5 dB)
7. SIL-3 SIS FPGA config load + self-test

### 8.2 Integration Verification Checkpoints

| Checkpoint | Verification | Acceptance |
|---|---|---|
| IC-1: Frame level | Tiltmeter | <0.1 mrad |
| IC-2: Drum concentricity | Laser tracker | <0.5 mm |
| IC-3: Aerogel gap | Ultrasonic thickness | 50 mm ±2 mm |
| IC-4: Flange bolt torque | Torque wrench + angle | 160 N·m ±5 N·m |
| IC-5: Port valve actuation | Thermal cal (680°C ΔT) | 3.6 mm ±0.2 mm |
| IC-6: Coolant circuit | Pressure decay | <0.1 bar/hr @ 10 bar |
| IC-7: POF attenuation | OTDR | <0.2 dB/m, splice <0.5 dB |
| IC-8: TSN latency | Traffic generator | <100 μs guard band |
| IC-9: PTP sync | Offset monitor | <1 μs all nodes |
| IC-10: SIS self-test | Built-in test | All 24 SIFs PASS |

---
