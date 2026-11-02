## 10. Safety and Emissions

### 10.1 Hazard Identification

| Hazard | Source | Severity | Controls |
|---|---|---|---|
| **Aluminum Fines Explosion** | Al dust <100 µm, 680°C | HIGH (dust explosion Kst = 400 bar·m/s) | N₂ inerting (O₂ <5%), no ignition sources, grounding |
| **HCl Gas** | Residual PVC from Stage 2 (PROD-15) | MEDIUM (corrosive, toxic) | NaHCO₃ injection (from Stage 2), carbon bed, monitoring |
| **Molten Al Splash** | 680°C liquid metal | HIGH (severe burns) | Containment vessel, PPE, remote operation, port interlocks |
| **Thermal Radiation** | 720°C drum surface | HIGH | BFRP vessel, aerogel insulation, IR shielding |
| **Flux Dust (NaCl/KCl)** | Flux injection, dross handling | LOW (irritant) | Local exhaust, PPE (N95), enclosed transfer |
| **Mg Vapor** | >720°C excursions | MEDIUM (MgO fume) | Strict 720°C max, ramp rate limit, temp interlocks |
| **Mechanical** | 300 RPM, 25 G | HIGH | Containment, vibration monitoring, overspeed trip |
| **AlN Formation** | 680°C in N₂ atmosphere | LOW (chronic inhalation) | N₂ purity, flux coverage, ventilation |
| **HF Emission** | Cryolite decomposition | LOW (trace) | Temp control <720°C, flux coverage, scrubber |

### 10.2 Emission Limits and Monitoring

| Emission | Limit | Monitoring | Control |
|---|---|---|---|
| **Al fume (stack)** | <0.5 mg/Nm³ | Continuous optical + periodic filter | N₂ inerting, baghouse + HEPA |
| **HCl** | <5 ppm | Continuous FTIR | NaHCO₃ injection, carbon bed |
| **MgO fume** | <1 mg/Nm³ | Periodic filter + ICP | Temp control <720°C, flux coverage |
| **PM2.5** | <1 mg/Nm³ | Continuous TEOM | Baghouse + HEPA |
| **HF (from cryolite)** | <0.5 ppm | Periodic impinger + ion chrom. | Flux coverage, temp control |
| **CO** | <50 ppm | Continuous NDIR | Oxidation catalyst on vent |
| **NOx** | <20 ppm | Continuous chemiluminescence | Low-temp operation, no flame |
| **AlN (particulate)** | <0.1 mg/Nm³ | Periodic filter + XRD | N₂ purity, flux blanket |

### 10.3 Process Safety Interlocks

| Interlock | Trigger | Action | Reset |
|---|---|---|---|
| **Temp High** | >725°C at any FBG | Induction OFF, N₂ purge, ramp hold | Manual + <720°C |
| **Temp Ramp Rate** | >10°C/min through 660-720°C | Induction power limit, alarm | Auto at <5°C/min |
| **O₂ High** | >2% O₂ in drum | N₂ purge 10 bar, induction OFF | Manual + O₂ <1% |
| **RPM Deviation** | >±10 RPM from 300 | Induction OFF, decel to safe | Auto at target RPM |
| **Pressure High** | >1.8 bar | Relief valve, induction OFF | Auto at <1.6 bar |
| **Vibration High** | >5 mm/s RMS | Decel to stop, alarm | Manual inspection |
| **Port 5 Fail** | Position sensor mismatch | Induction OFF, N₂ purge, alarm | Manual + valve test |
| **HCl High** | >10 ppm at exit | NaHCO₃ injection max, alarm | Auto at <5 ppm |
| **XRF Drift** | Si reading >2σ from trend | Flag batch, hold fractionation | Manual verification |
| **Flux Level Low** | <2 kg in hopper | Alarm, inhibit flux injection | Manual refill |

### 10.4 Quantitative Risk Assessment (QRA)

| Scenario | Frequency (per yr) | Consequence | Risk Rank | Mitigation |
|---|---|---|---|---|
| Al dust explosion | 1×10⁻⁴ | 3 fatalities, $5M damage | MEDIUM | N₂ inerting, grounding, no ignition |
| Molten Al splash (operator) | 5×10⁻³ | 1 fatality | HIGH | Remote operation, PPE, interlocks |
| Port 5 valve fail open | 2×10⁻³ | Al spill, 1 injury | MEDIUM | Spring return, position sensor, test |
| Mg vapor release | 1×10⁻³ | 1 injury, $100k | LOW | Temp limit, vapor monitor |
| HCl release >50 ppm | 1×10⁻² | 2 injuries | MEDIUM | Carbon bed, NaHCO₃ injection, monitor |
| Induction coil failure | 5×10⁻³ | $1M downtime | MEDIUM | Redundant zones, predictive maintenance |

**Overall Risk: ACCEPTABLE with controls** — all HIGH risks have engineered safeguards.

---
