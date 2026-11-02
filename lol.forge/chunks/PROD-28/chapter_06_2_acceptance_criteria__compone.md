## 2. Acceptance Criteria — Component Level

### 2.1 Drum (ZrB₂-SiC) — Assembly A-01/A-03

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **Density** | Archimedes + CT | ≥99.8% theoretical; open porosity <0.05% | 100% (each drum) | ASTM C373, C830 |
| **Dimensions** | CMM + laser scanner | ID 600±0.5, OD 670±0.5, L 800±1.0, roundness <25μm, taper <10μm | 100% | ASME Y14.5, ISO 10360 |
| **UT (volumetric)** | 5 MHz phased array | No indications >0.5mm flat, >2mm Ø; 100% volume | 100% | ASTM E2700 |
| **CT (high-res)** | 200μm voxel | No closed porosity >0.2%; grain structure uniform | 100% (FA), 10% (prod) | ASTM E1695 |
| **FBG survival** | Interrogator sweep | 128/128 channels active; wavelength match ±0.1nm | 100% | PROD-24 |
| **Flash V/I signature** | DAQ @ 100 kHz | Resistivity drop 1000× @ 1720°C±20°C; dwell 5min; cool 50°C/min | 100% | PROD-04 |
| **Liner bond** | UT (bond test) | No unbonded area >5mm dia at pin interfaces | 100% | ASTM E1961 |
| **Surface finish (ID)** | Profilometer | Zone A Ra<0.4μm, Zone B Ra<0.6μm, Zone C Ra<1.0μm | 100% | ISO 4287 |

### 2.2 Vessel (BFRP/Elium®) — Assembly A-06/A-07

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **Fiber angle** | Laser triangulation | ±18°/90° ±1° all 16 plies | 100% (in-process) | ASTM D5379 |
| **Fiber volume fraction** | Dielectric cure monitor | 60% ±2% | 100% (in-process) | ASTM D3171 |
| **Wall thickness** | Ultrasonic gauge | 18mm ±0.3mm | 100% | ASTM E797 |
| **Hydrotest** | N₂ to 15 bar | Zero pressure drop (temp comp) 30 min; zero leaks He <10⁻⁶ mbar·L/s | 100% | ASME BPVC Sec X |
| **Aerogel density** | Gamma densitometer | 0.12 ±0.01 g/cm³ uniform radial | 100% | ASTM C177 |
| **Glaze adhesion** | Pull-off (ASTM D4541) | >10 MPa; no cohesive failure in glaze | 100% (FA), 10% (prod) | ASTM D4541 |
| **SRI** | Spectrophotometer | YInMn Blue ≥115; CoAl₂O₄ ≥85 | 100% | ASTM E1980 |
| **UT (delamination)** | 2.25 MHz phased array | No delaminations >10mm dia; no porosity clusters | 100% | ASTM E2700 |
| **AE baseline** | Acoustic emission | <5 hits/min @ 10 bar (background) | 100% | ASTM E1419 |

### 2.3 Port Valve Assemblies — Assembly A-04 (×8)

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **Braze joint** | 10× mag + UT | No voids >50μm; joint thickness 50±10μm; Ag-CuO-TiO₂ phase confirmed | 100% | AWS B2.1 |
| **Piston clearance** | Air gauge | 0.05mm ±0.01mm (ZrO₂ piston in ZrB₂-SiC sleeve) | 100% | ISO 286-2 |
| **Actuation deflection** | LVDT in furnace | 3.6mm ±0.2mm at 680°C ΔT; repeatable 10 cycles | 100% | PROD-09 |
| **Leak rate (closed)** | He mass spec | <10⁻⁶ mbar·L/s @ 5 bar N₂ | 100% | ASTM E1003 |
| **Cycle life (accel)** | Thermal cycler | 500 cycles (25→700°C) no degradation | FA only | PROD-09 |
| **FBG strain cal** | Known weights | 0.1nm/με ±2% linearity R²>0.999 | 100% | PROD-24 |

### 2.4 Coil Bank — Assembly A-09 (×8 zones)

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **Resonant frequency** | Impedance analyzer | Per zone table ±1% (Z1:100kHz, Z8:1kHz) | 100% | PROD-10 |
| **Q factor** | Ring-down | >150 all zones | 100% | PROD-10 |
| **ZVS verification** | V/I scope trace | Phase <5° at 100% load | 100% | PROD-10 |
| **Thermal balance** | IR camera @ 500kW | ΔT <10°C across zone | 100% | PROD-10 |
| **FBG embed** | Interrogator | 48/48 channels/zone active; cal 25/500/1000/1500/2000°C | 100% | PROD-24 |
| **Cold plate leak** | He mass spec | <10⁻⁹ mbar·L/s | 100% | ASTM E1003 |
| **PEX-a integrity** | Pressure decay | <0.1 bar/hr @ 10 bar | 100% | ASTM F1055 |

### 2.5 Power Electronics Modules — Assembly A-10 (×8)

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **DC link charge** | Scope | 0→800V in 500ms; no overshoot >850V | 100% | PROD-10 |
| **ZVS acquisition** | V/I @ 100% load | Phase <5°; v_DS zero-crossing before gate | 100% | PROD-10 |
| **Thermal soak** | 500kW/30min + IR | T_j <125°C (GaN); cold plate ΔT <15°C | 100% | PROD-10 |
| **GIC ride-through** | Helmholtz 100 A/m | No SIF trips; data intact; comms OK | 100% | PROD-23, PROD-26 |
| **EMI** | CISPR 11 Class A | >20dB margin conducted/radiated | 100% | CISPR 11 |
| **SIL-3 SIF injection** | TSN VLAN 10 | All 3 SIFs/module trip <50ms; PFD_avg<10⁻³ | 100% | IEC 61508 |
| **POF attenuation** | OTDR | <0.2dB/m; splices <0.5dB; return loss >50dB | 100% | IEC 60793 |

### 2.6 Frame, Carousel, Bearings — Assembly A-12

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **Frame dimensions** | CMM | ±1mm length, ±0.5mm diagonal, bolt holes ±0.1mm | 100% | ISO 10360 |
| **Isolator stiffness** | Static load test | 2.5 MN/m vertical ±5%; 0.8 MN/m horiz ±5% | 100% | PROD-25 |
| **Carousel indexing** | Encoder + FBG | 8-position, 45° steps, <2s, 0.01° resolution | 100% | PROD-08 |
| **Bearing preload** | Torque + FBG | Si₃N₄/ZrO₂, N₂ film 0.1bar; vibration <0.5g RMS | 100% | ISO 13373 |
| **Mold dimensions** | CMM | 0.1mm tolerance (ISO 8062) | 100% | PROD-08 |

---
