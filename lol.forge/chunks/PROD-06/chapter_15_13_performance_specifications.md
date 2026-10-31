## 13. Performance Specifications

### 13.1 Design Parameters Summary

| Parameter | Value | Unit | Notes |
|---|---|---|---|
| Design pressure (MAWP) | 10 | bar | 2× operating pressure |
| Operating pressure | 5 | bar | N₂/Ar atmosphere |
| Hydrotest pressure | 15 | bar | 1.5× MAWP, N₂ gas |
| Internal diameter | 900 | mm | ±0.5 mm |
| External diameter | 936 | mm | ±0.5 mm |
| Length (internal) | 1200 | mm | ±1.0 mm |
| Wall thickness | 18 | mm | ±0.3 mm, 16 plies |
| Design temperature (external) | 200 | °C | Max outer surface |
| Internal drum temperature | 2200 | °C | Drum operating max |
| Radial thermal gradient | 2000 | °C | Across 68 mm (aerogel + wall) |
| Vessel mass (complete) | 215 | kg | BFRP + flanges + insulation |
| Design life | 20 | years | 100,000 pressure cycles |
| Seismic design | IEEE 693 High | — | 0.5g PGA |
| Leak rate (operating) | <10⁻⁶ | mbar·L/s | Helium, all seals |
| External surface emissivity | 0.15 | — | YInMn Blue at 1000°C |
| Aerogel thermal conductivity | 0.010 | W/m·K | Polyimide-silica hybrid |

### 13.2 Structural Performance

| Parameter | Value | Safety Factor | Basis |
|---|---|---|---|
| Hoop stress (10 bar) | 25.0 MPa | 44.0 | Barlow + Lamé |
| Longitudinal stress (10 bar) | 12.5 MPa | 68.0 | End cap load |
| Combined pressure + thermal (RT) | 113.3 MPa | 9.7 | Thermal 87.8 + pressure 25.5 |
| Combined pressure + thermal (200°C) | 78.4 MPa | 8.3 | E=45 GPa, σ_ult=650 MPa |
| Buckling pressure (200°C, with rings) | 32.1 bar | 3.2 | FEA eigenvalue |
| Fatigue life (pressure) | >10⁷ cycles | — | S-N curve, R=0.1 |
| Fatigue life (thermal) | >10⁶ cycles | — | Strain range 1.35×10⁻³ |
| Natural frequency (1st mode) | 6.2 Hz | — | >5 Hz seismic separation |

### 13.3 Thermal Performance

| Parameter | Value | Unit | Notes |
|---|---|---|---|
| Drum outer surface temp | 2200 | °C | Max operating |
| Aerogel inner surface temp | ~2000 | °C | Radiative equilibrium |
| Aerogel outer surface temp | ~250 | °C | Conductive drop across 50 mm |
| Vessel inner surface temp | ~200 | °C | BFRP wall conduction |
| Vessel outer surface temp | ~150 | °C | Radiative/convective cooling |
| Glaze surface temp (steady) | ~130 | °C | With YInMn Blue SRI=115 |
| Heat flux through aerogel | 1.5 | kW/m² | Steady state |
| Heat flux at vessel outer surface | 2.3 | kW/m² | Cooling capacity |
| Thermal response time (vessel) | 45 | min | Thermal mass / heat flux |
| Max thermal ramp rate | 50 | °C/min | Coordinated with drum |

### 13.4 Seal Performance

| Parameter | Primary (ZrO₂ Face) | Secondary (PEEK Lip) | Unit |
|---|---|---|---|
| Leak rate (operating) | 2×10⁻⁷ | 5×10⁻⁸ | mbar·L/s |
| Max speed | 600 | 600 | RPM |
| Max temperature | 800 | 200 | °C |
| Max pressure differential | 10 | 12 | bar |
| L10 life | 20,000 | 10,000 | hours |
| Wear rate | <0.02 mm/10k hrs | 0.08 mm/10k hrs | — |
| PV factor | 12.6 (hydrostatic) | 0.8 (boundary) | MPa·m/s |

### 13.5 Monitoring System Performance

| Sensor Type | Quantity | Resolution | Range | Sample Rate |
|---|---|---|---|---|
| FBG Strain | 12 | 1 με | ±5000 με | 1 kHz |
| FBG Temperature | 24 | 0.1°C | -50 to +250°C | 10 Hz |
| Acoustic Emission | 4 | 1 dB | 40–100 dB | 100 kS/s |
| Pressure (process) | 3 (2oo3) | 0.01 bar | 0–20 bar | 100 Hz |
| Pressure (annulus) | 1 | 0.01 bar | 0–20 bar | 10 Hz |
| Flow (N₂ purge) | 1 | 0.1 SLM | 0–50 SLM | 1 Hz |
| Displacement (vessel) | 4 | 0.01 mm | ±50 mm | 10 Hz |

### 13.6 Weight & Cost Summary

| Item | Mass (kg) | In-House Cost | Commercial Cost |
|---|---|---|---|
| BFRP vessel (wound) | 142 | $8,500 | $35,000 |
| PEEK CF40 flanges (2) | 84 | $12,000 | $45,000 |
| Aerogel blanket | 73 | $4,200 | $12,000 |
| YInMn Blue glaze | 8 | $1,500 | $2,000 |
| ZrO₂ seals & bolts | 12 | $3,000 | $8,000 |
| Frame & isolators | 85 | $6,000 | $18,000 |
| Instrumentation | 8 | $15,000 | $25,000 |
| **Total** | **412** | **$50,200** | **$145,000** |

**In-house savings: 65%** — primarily from basalt fiber, Elium® formulation, and aerogel synthesis.

---
