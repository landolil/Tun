## 4. Acceptance Criteria — System Level (FAT/SAT)

### 4.1 Factory Acceptance Test (FAT) — CT-01 through CT-10

| Test | ID | Description | Pass Criteria | Duration |
|---|---|---|---|---|
| **CT-01** | Drum Rotordynamics | Spin to 500 RPM, critical speeds, balance | 1st critical >1890 RPM; G0.4 balance; sync vib <25μm | 4 hr |
| **CT-02** | Vessel Hydrotest | 15 bar N₂, 30 min hold, He leak | Zero pressure drop; zero leaks <10⁻⁶ mbar·L/s | 2 hr |
| **CT-03** | Flange Leak Test | He sniffer all 24 bolted joints | All joints <10⁻⁶ mbar·L/s | 4 hr |
| **CT-04** | SIS Proof Test | Inject all 24 SIL-3 SIF trip conditions | All trip <50ms; 2oo3 agreement; PFD_avg<10⁻³ | 8 hr |
| **CT-05** | Coil Resonance | Sweep per zone, ZVS at full power | ZVS phase <5° all zones 100% load | 6 hr |
| **CT-06** | FBG Calibration | 5 ref temps (25/500/1000/1500/2000°C) | Drift <0.5%/1000hrs; R²>0.999 all 384 ch | 8 hr |
| **CT-07** | GIC Ride-Through | 100 A/m Helmholtz, 30 min, full ops | Zero spurious trips; zero data loss | 2 hr |
| **CT-08** | Thermal Cycle | Stages 0-8 no feed, full ramp/hold/cool | All stages ±5°C setpoint; no SIF trips | 24 hr |
| **CT-09** | Seismic Shake | IEEE 693 High, 5 OBE + 1 SSE, 3 axes | HCLPF >1.6g; no structural damage; re-tests pass | 4 hr |
| **CT-10** | Integrated Hot Run | 6 batches (Cat A, B, C, D, A, Phoenix) | Mass balance >99%; all outputs spec; twin sync | 48 hr |

### 4.2 Site Acceptance Test (SAT)

| Test | ID | Description | Pass Criteria |
|---|---|---|---|
| **SAT-01** | Site Power Quality | IEEE 519 THD <5%, individual <3% | Utility compliance certificate |
| **SAT-02** | Ground Resistance | Combined <5Ω (UFER + ring) | Fall-of-potential method |
| **SAT-03** | POF Attenuation | End-to-end all 384 FBG + TSN + PTP | <0.2 dB/m; splices <0.5 dB |
| **SAT-04** | TSN/PTP Sync | On-site latency <100μs; PTP <1μs | Traffic generator + offset monitor |
| **SAT-05** | Performance Benchmarks | 6 batches (same as CT-10) | All outputs spec; mass balance >99% |

---
