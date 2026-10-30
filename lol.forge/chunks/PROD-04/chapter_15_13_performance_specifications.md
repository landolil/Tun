## 13. Performance Specifications

### 13.1 Drum Performance Specification Table (12 Parameters)

| # | Parameter | Specification | Test Method | Verification |
|---|---|---|---|---|
| 1 | **Internal Diameter (ID)** | 600.0 ± 0.5 mm (at 20°C) | CMM / Laser scan | 100% inspection |
| 2 | **Wall Thickness** | 35.0 ± 0.3 mm | CMM / UT thickness | 100% inspection |
| 3 | **Length** | 800.0 ± 1.0 mm | CMM | 100% inspection |
| 4 | **Material Density** | ≥ 99.5% theoretical (3.12 g/cm³) | Archimedes | 100% (drum), 10% (liners) |
| 5 | **Flexural Strength (RT)** | ≥ 620 MPa | ASTM C1161 (4-pt bend) | 3 bars/lot |
| 6 | **Max Operating Temperature** | 2200°C (Stage 8 peak) | Design analysis | Analysis + FBG validation |
| 7 | **Max Rotational Speed** | 500 RPM (84.5 G at ID) | Spin test | 100% (600 RPM overspeed) |
| 8 | **Critical Speed (1st bending)** | > 1800 RPM | Impact hammer / FEA | Type test (FA) |
| 9 | **Dynamic Runout at 500 RPM** | < 0.1 mm P-P | Balancing machine | 100% |
| 10 | **Port Valve Trigger Accuracy** | ±5°C of design temp | Thermal cycle test | 100% (8 ports) |
| 11 | **Port Valve Leak Rate** | < 10⁻⁶ mbar·L/s at 5 bar, 2200°C | He leak test | 100% |
| 12 | **Bearing L10 Life** | ≥ 10,000 hours at 500 RPM | ISO 14728 calc + test | Type test (FA) |

### 13.2 Derived Performance Metrics

| Metric | Value | Basis |
|---|---|---|
| **Throughput per batch** | 500 kg feedstock | System spec |
| **Batch cycle time** | 3.5-5 hours | Thermal profile |
| **Thermal ramp rate (max)** | 50°C/min | Thermal shock limit |
| **Temperature uniformity (8 zones)** | ±5°C | FBG + PID control |
| **Pressure rating (MAWP)** | 5 bar N₂/Ar | Design + hydrotest |
| **ID growth at 2200°C** | 8.08 mm | CTE integration |
| **Axial growth at 2200°C** | 10.8 mm | CTE integration |
| **Drum-to-vessel gap (hot)** | 111.4 mm radial | Thermal expansion calc |
| **Heat flux to vessel (Stage 8)** | 64 kW/m² | Aerogel thermal model |
| **Vessel outer surface (Stage 8)** | < 120°C | YInMn glaze + aerogel |
| **Port discharge capacity** | 14.4 kg/s total | Choked flow calc |
| **Wear life (Zone B liner)** | > 67,000 hours | 0.1 mm/1000 hrs rate |
| **FBG sensor survival** | > 95% after sintering | Process validation |

### 13.3 Operating Envelope — Visual Summary

```
TEMPERATURE (°C)
2200 ┤                              █ Stage 8: Mineral
     │                             ██
2000 ┤                            ███
     │                           ████
1800 ┤                          █████
     │                         ██████
1600 ┤                        ███████  Stage 7: Fe
     │                       ████████
1400 ┤                      █████████
     │                     ██████████
1200 ┤                    ███████████  Stage 6: Cu
     │                   ████████████
1000 ┤                  █████████████
     │                 ██████████████
 800 ┤                ███████████████  Stage 5: Al
     │               ████████████████
 600 ┤              █████████████████  Stage 4: Zn/Pb/Sn
     │             ██████████████████
 400 ┤            ███████████████████  Stage 3: Char
     │           ████████████████████
 200 ┤          █████████████████████  Stage 2: Polymer
     │         ██████████████████████
   0 ┼────────┬────┬────┬────┬────┬────┬────┬────┬──── TIME
     0      15   35   65   95  120  145  175  205  240  (min)
          Stg0  Stg1  Stg2  Stg3  Stg4  Stg5  Stg6  Stg7  Stg8
```

### 13.4 Safety Margins Summary

| Safety Factor | Value | Requirement | Status |
|---|---|---|---|
| Centrifugal stress (RT) | 14.4× | >2.5× | ✅ PASS |
| Centrifugal stress (2000°C) | 6.8× | >2.5× | ✅ PASS |
| Thermal stress (Stage 8) | 1.94× | >1.5× | ✅ PASS |
| Combined (rotation+thermal) | 1.55× | >1.5× | ✅ PASS |
| Port reinforcement (K_t) | 1.4-1.6× | <2.0× | ✅ PASS |
| Critical speed margin | 3.78× | >2.0× | ✅ PASS |
| Bearing L10 life | 3.6× | >1.0× | ✅ PASS |
| Valve actuation force | 2.1× spring | >1.5× | ✅ PASS |
| Liner pin compliance | 3.5× mismatch | >2.0× | ✅ PASS |
| Aerogel compression | 7.2% strain | <10% limit | ✅ PASS |

**All safety factors meet or exceed requirements.**

---
