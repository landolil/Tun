## 11. Safety Systems

### 11.1 Pressure Relief Devices

**Primary relief — Rupture Disc (Burst Disc):**
- Type: Reverse-acting ZrO₂ ceramic rupture disc (ASME BPVC Sec VIII Div 1)
- Burst pressure: 12 bar ± 5% (at 200°C)
- Size: DN50 (50 mm flow diameter)
- Material: 3Y-TZP ZrO₂ disc, PEEK CF40 holder
- Location: Top of vessel, gas dome (vapor space only)
- Discharge: Piped to flare stack / scrubber system
- **Zero metal** — full ceramic construction

**Secondary relief — Spring-Loaded Pressure Relief Valve:**
- Type: Pilot-operated, PEEK CF40 body, ZrO₂ trim
- Set pressure: 11 bar (10% above operating, below rupture disc)
- Capacity: 500 kg/hr N₂ (API 520 sizing for fire case)
- Reset pressure: 9.5 bar (blowdown 13%)
- Location: Side of vessel, gas dome
- Manual lift lever for testing

**Relief sizing (fire case — API 521):**
- Wetted surface area: π × 0.9 × 1.2 = 3.39 m²
- Environment factor (bare vessel): F = 1.0
- Required relief rate: Q = 21,000 × F × A^0.82 = 21,000 × 3.39^0.82 = 58,400 kg/hr (standard air)
- N₂ equivalent: 58,400 × √(28.97/28.01) = 59,200 kg/hr
- **Disc + valve combined capacity: 65,000 kg/hr > 59,200 kg/hr ✓**

### 11.2 Structural Health Monitoring

**FBG Strain Sensors (12 sensors):**
| Location | Quantity | Measurement |
|---|---|---|
| Vessel mid-span (hoop) | 4 | Circumferential strain (pressure + thermal) |
| Vessel mid-span (axial) | 2 | Longitudinal strain (pressure end load) |
| Flange-to-vessel joint | 4 | Joint shear strain, bolt preload loss |
| Support saddle | 2 | Frame reaction forces |

- Sensor type: FBG in PMMA POF (polyimide-coated for 200°C)
- Wavelength range: 1510–1590 nm (8 channels per fiber)
- Interrogator: 1 kHz sample rate, 1 pm resolution (1 με)
- Data: Real-time strain field, thermal gradient mapping, pressure verification

**Acoustic Emission (AE) Monitoring:**
- Sensors: 4 × piezoelectric (KNbO₃-BaTiO₃, same as AMLS) on vessel exterior
- Frequency range: 50 kHz–1 MHz
- Purpose: Detect fiber breakage, matrix cracking, delamination onset
- Threshold: 40 dB AE (calibrated to 5% stiffness loss)
- Integration: Alarm at 60 dB, shutdown at 75 dB

**Temperature Monitoring:**
- FBG temperature sensors (same fibers as strain, dual-wavelength)
- 24 points: vessel inner surface (inferred), outer surface, flange, aerogel gap
- Resolution: 0.1°C, range: -50 to +250°C
- Thermal gradient alarm: >50°C/mm radial (indicates aerogel degradation)

### 11.3 Leak Detection

**Primary barrier leak detection:**
- Annulus between primary and secondary seal: N₂ at 12 bar
- Pressure transmitter on annulus — drop indicates primary seal leak
- Flow meter on N₂ supply — increase indicates seal wear
- Alarm threshold: >2× baseline consumption

**Secondary barrier leak detection:**
- Sniffer port at flange OD — continuous N₂ analyzer (thermal conductivity)
- Alarm at >50 ppm N₂ in ambient air
- Confirms secondary seal integrity

**External leak detection:**
- Aspirated sampling tubes around vessel perimeter
- Multi-gas analyzer (NDIR for CO₂, electrochemical for O₂, PID for VOCs)
- Detects any process gas escape to atmosphere

### 11.4 Safety Instrumented Functions (SIF)

| SIF | Function | SIL | Sensors | Final Element | Response Time |
|---|---|---|---|---|---|
| SIF-01 | High pressure trip | SIL-2 | 2oo3 pressure transmitters | Open rupture disc (passive) | <100 ms |
| SIF-02 | High temperature trip | SIL-2 | 2oo3 FBG temp sensors | Shutdown induction power | <500 ms |
| SIF-03 | Seal leak trip | SIL-1 | Annulus pressure + flow | Shutdown feed, N₂ purge | <1 s |
| SIF-04 | AE high alarm | SIL-1 | 2oo4 AE sensors | Alert operator, log event | <10 s |
| SIF-05 | Vessel displacement | SIL-1 | 2oo4 FBG strain | Shutdown rotation | <200 ms |

**Logic solver:** IEC 61508 compliant, all-dielectric (FBG optical inputs, optical outputs to GaN inverters). No copper wiring in safety system.

### 11.5 Emergency Scenarios & Response

| Scenario | Detection | Automatic Action | Operator Action |
|---|---|---|---|
| Overpressure (>11 bar) | 2oo3 PT | Rupture disc bursts (passive) | Evacuate, investigate cause |
| Overtemperature (>220°C outer) | 2oo3 FBG | Induction power cut | Verify cooling, check aerogel |
| Primary seal failure | Annulus pressure drop | N₂ purge max, shutdown feed | Prepare for controlled vent |
| Seismic event >0.3g | Accelerometer | Induction power cut, drum brake | Inspect frame, vessel, seals |
| Fire (external) | Flame detector | N₂ inerting, deluge (water mist) | Fire brigade, isolate vessel |

### 11.6 Carrington Event (GIC) Immunity

The vessel safety systems are inherently GIC-immune:
- **All sensors:** FBG optical (no metallic conductors)
- **All actuators:** GaN inverters with optical control (no copper control wires)
- **Logic solver:** Optical I/O, fiber-coupled
- **Power supply:** Battery-backed (48 VDC) with optical isolation
- **Communication:** PMMA POF to control room (no copper)
- **Grounding:** Frame isolated on ZrO₂ pads (>10¹² Ω to earth)

**No conductive path exists** from process chamber to earth ground. A 100 kV/km geoelectric field induces <1 V across the entire vessel structure — well below any threshold for malfunction.

---
