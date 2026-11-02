## 3. Cold Commissioning (Integration Checkpoints IC-1..IC-10)

*Re-execution of PROD-27 IC-1..IC-10 at site with site-specific verification*

### 3.1 IC-1: Frame Placement & Isolator Verification

| Check | Method | Acceptance |
|---|---|---|
| Frame position | Laser tracker | ±2 mm X/Y, ±1 mm Z |
| Isolator preload | LVDT + torque | 2.5 MN/m vert ±5%, 0.8 MN/m horiz ±5% |
| Anchor bolt torque | Torque wrench | 1,200 N·m ±50 N·m (M30 B7) |
| Frame level | Precision level | <0.1 mm/m |
| Ground resistance | Fall-of-potential | Combined <5 Ω |

### 3.2 IC-2: Drum/Vessel/Carousel Assembly

| Check | Method | Acceptance |
|---|---|---|
| Drum bearing fit | Feeler gauge + FBG | Si₃N₄/ZrO₂, N₂ film 0.1 bar, clearance 0.05±0.01 mm |
| Vessel flange bolt ceremony | Dual-verify torque | 24× M24 ZrO₂, 160 N·m ±5 N·m, AE monitoring |
| Carousel indexing | Encoder + FBG | 8-pos, 45° steps, <2 s, 0.01° resolution |
| Port valve alignment | Laser tracker | 8 ports, 44.2° spacing, ±0.5° azimuth |
| Drum rotation | VFD + encoder | 0-500 RPM, vibration <25 μm sync |

### 3.3 IC-3: Coil Bank & Power Electronics Installation

| Check | Method | Acceptance |
|---|---|---|
| Coil zone position | Laser tracker | ±2 mm radial, ±1 mm axial |
| Cold plate connections | He leak test | <10⁻⁹ mbar·L/s all 8 zones |
| PEX-a manifold pressure | Hydrostatic | 10 bar, 30 min, zero drop |
| Module rack alignment | CMM | ±1 mm all mounting points |
| POF cable routing | OTDR | <0.2 dB/m, splices <0.5 dB, return loss >50 dB |
| TSN switch power | VDC measure | 24 VDC ±2%, ripple <50 mV |

### 3.4 IC-4: Control System & SIS Commissioning

| Check | Method | Acceptance |
|---|---|---|
| TSN ring latency | Traffic generator | <100 μs end-to-end, <10 μs jitter |
| PTP synchronization | PTP monitor | <1 μs offset all nodes, 24h holdover test |
| SIS FPGA bitstream | CRC verify | Matches factory hash (PROD-23 Appendix) |
| SIF injection test | PROD-28 CT-04 protocol | All 24 SIFs <50 ms, 2oo3, PFD_avg<10⁻³ |
| GIC ride-through | Portable Helmholtz 50 A/m | Zero spurious trips, zero data loss |
| Air-gap verification | Network scan | Zero IT→OT IP paths, data diode unidirectional |

### 3.5 IC-5: Cooling System Commissioning

| Check | Method | Acceptance |
|---|---|---|
| DI water resistivity | Inline monitor | >18 MΩ·cm continuous |
| Flow balance | Ultrasonic flow meters | 500 L/min ±2% per zone |
| Cold plate ΔT | IR + FBG | <15°C at 500 kW (thermal soak test) |
| Pump redundancy | Failover test | <5 s switchover, no flow interruption |
| Leak detection | Zone sensors | <10 s detection, auto-isolate |

### 3.6 IC-6: Gas System Commissioning

| Check | Method | Acceptance |
|---|---|---|
| N₂ purity | Paramagnetic O₂ analyzer | <1 ppm O₂, dew point <-60°C |
| Ar purity | GC-TCD | <1 ppm impurities |
| MFC calibration | Primary standard | ±1% FS all 32 MFCs |
| ZrO₂ valve actuation | LVDT + FBG | 3.6±0.2 mm @ 680°C ΔT |
| Leak rate (integrated) | He mass spec | <10⁻⁶ mbar·L/s system |

### 3.7 IC-7: Fume & Gas Capture System

| Check | Method | Acceptance |
|---|---|---|
| Plasma torch ignition | High-voltage probe | Stable arc, 5 kW minimum |
| Scrubber flow | Differential pressure | NaHCO₃ bed ΔP <5 kPa at design flow |
| Carbon bed breakthrough | FID analyzer | <1 ppm VOC at outlet |
| Condensate drainage | Level sensors | Auto-drain, no carryover |
| Stack CEMS | Certified gas audit | PM2.5 <5 mg/Nm³, HCl <10 ppm, SO₂ <50 ppm |

### 3.8 IC-8: Feed & Output Systems

| Check | Method | Acceptance |
|---|---|---|
| Shredder alignment | Laser + vibration | Blade clearance 0.5 mm, vib <2 mm/s |
| Conveyor belt tracking | Edge sensors | <5 mm wander |
| Carousel mold heating | IR thermography | 200°C ±5°C uniform |
| Slug quench flow | Flow meters | N₂ 50 SLPM, pattern verified |
| Mass spec calibration | Certified standards | ±2% on all monitored elements |

### 3.9 IC-9: Safety Systems Verification

| Check | Method | Acceptance |
|---|---|---|
| E-stop response | Functional test | <100 ms all zones, SIL-3 |
| LOTO verification | Physical attempt | Zero energy isolation failures |
| Arc flash boundaries | Calculation + labels | Cat 0 at 18" (PROD-26) |
| Confined space | Atmosphere test | O₂ 19.5-23.5%, LEL <10%, H₂S <10 ppm |
| Fire detection | Alarm test | <10 s detection, zone isolation |

### 3.10 IC-10: Digital Twin Synchronization

| Check | Method | Acceptance |
|---|---|---|
| Twin connectivity | API latency | <100 ms round-trip |
| State vector sync | 10 Hz compare | <1% deviation all 512 states |
| Historical replay | 1 hr data match | >99.9% point match |
| ML anomaly baseline | Auto-encoder | Reconstruction error <3σ |
| QR/Blockchain sync | Hyperledger query | All 14 assemblies linked |

---
