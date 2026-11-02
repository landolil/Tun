## 9. Factory Acceptance Test (FAT) — CT-01 through CT-10 (A-14)

### 9.1 Test Matrix

| Test | ID | Description | Duration | Pass Criteria |
|---|---|---|---|---|
| CT-01 | Drum Rotordynamics | Spin to 500 RPM, measure critical speeds, balance | 4 hr | 1st critical >1890 RPM, balance G0.4 |
| CT-02 | Vessel Hydrotest | 15 bar N₂, hold 30 min, leak check | 2 hr | Zero pressure drop, zero leaks |
| CT-03 | Flange Leak Test | He leak test all 24 bolted joints | 4 hr | <10⁻⁶ mbar·L/s each |
| CT-04 | SIS Proof Test | Inject all 24 SIL-3 SIF trip conditions | 8 hr | All trip <50 ms, PFD_avg <10⁻³ |
| CT-05 | Coil Resonance | Sweep 50–100 kHz, verify ZVS all zones | 6 hr | ZVS phase <5° at full power |
| CT-06 | FBG Calibration | 25/500/1000/1500/2000°C reference points | 8 hr | Drift <0.5%/1000 hrs |
| CT-07 | GIC Ride-Through | 100 A/m Helmholtz, 30 min, full operation | 2 hr | No spurious trips, data intact |
| CT-08 | Thermal Cycle | Stages 0-8 no feed, full ramp/hold/cool | 24 hr | All stages ±5°C, no anomalies |
| CT-09 | Seismic Shake | IEEE 693 High, 3 axes, 5 OBE + 1 SSE | 4 hr | HCLPF >1.6g, no structural damage |
| CT-10 | Integrated Hot Run | 6 batches, Category A feedstock | 48 hr | All outputs spec, mass balance >99% |

### 9.2 CT-04 SIS Proof Test — Detailed Procedure

**Test philosophy:** Each of 24 SIL-3 SIFs tested via direct signal injection on TSN VLAN 10.

| SIF Tag | Function | Injection Method | Response | Reset |
|---|---|---|---|---|
| SIF-00-01 | Drum over-temp | FBG simulator >T_lim | All inverters OFF | Manual + SIS |
| SIF-00-02 | Vessel over-pressure | Pressure simulator >5 bar | Vent + OFF | Manual + SIS |
| SIF-00-03 | Atmosphere breach | pO₂ simulator >10⁻⁶ | N₂ purge + OFF | Manual + SIS |
| SIF-00-04 | Cooling loss | Flow simulator <10 L/min | Ramp to 20% | Manual + SIS |
| SIF-00-07 | Ground fault | NGR simulator >5 A | All OFF + isolate | Manual + SIS |
| SIF-00-22 | Optical E-stop | POF loop break (×8) | All OFF (HW) | HW latch |
| SIF-00-23 | Crane interlock | POF interlock break (×4) | Zone OFF + hold | Manual + SIS |
| SIF-00-24 | Fire detection | IR/UV simulator | Suppression + OFF | Manual + SIS |

**Test data package per SIF:** Trip time (ms), reset time (s), channel agreement (2oo3), logic solver scan record.

### 9.3 CT-10 Integrated Hot Run — 6 Batch Protocol

| Batch | Feedstock | Key Verification Points |
|---|---|---|
| 1 | Category A (PCB-rich) | Port 4 In yield >99%, Port 5 Al >99.7% |
| 2 | Category B (mixed e-waste) | Port 6 Cu >99.9%, PM recovery >95% |
| 3 | Category C (battery) | Port 7 RE concentrate grade, H₂ <4% |
| 4 | Category D (EOL CSM) | Phoenix re-entry blend, drum wear check |
| 5 | Category A (repeat) | Reproducibility, SIF stability |
| 6 | Full Phoenix blend | Circular mass balance, digital twin sync |

---
