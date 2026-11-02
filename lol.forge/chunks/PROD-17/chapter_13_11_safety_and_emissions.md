## 11. Safety and Emissions

### 11.1 Hazard Identification

| Hazard | Source | Severity | Controls |
|---|---|---|---|
| **Lead Fume** | Pb vapor at 340°C, dross handling | HIGH (neurotoxin, reprotoxin) | HEPA filtration, N₂ blanket, PPE (PAPR), medical surveillance |
| **Indium Toxicity** | In₂O₃ dust, In compounds | MEDIUM (lung irritant, limited data) | N₂/H₂ atmosphere, enclosed transfer, PPE |
| **Zinc Vapor** | Zn vapor at >500°C hot spots | MEDIUM (metal fume fever) | N₂ blanket, condenser, vapor monitor |
| **Hydrogen Fire/Explosion** | 5% H₂ in N₂ at 1.5 bar | HIGH (flammable range 4-75%) | O₂ <1%, continuous H₂ monitor, vent to flare |
| **Thermal Burns** | 160-430°C surfaces, molten metal | HIGH | Interlocks, PPE, remote operation |
| **Mechanical** | 400 RPM rotating drum, 89 G | HIGH | Containment vessel, vibration monitoring, overspeed trip |
| **Pressure** | 1.5 bar N₂/H₂, 5 bar design | MEDIUM | Relief valves (2 bar), pressure interlocks |
| **PAH/Tar** | Residual organics from Stage 3 | MEDIUM (carcinogen) | N₂ inerting, >800°C tar cracking, carbon adsorption |

### 11.2 Emission Limits and Monitoring

| Emission | Limit | Monitoring | Control |
|---|---|---|---|
| **Pb (stack)** | <0.05 mg/Nm³ | Continuous XRF + periodic impinger | HEPA + carbon, N₂ blanket |
| **In (stack)** | <0.1 mg/Nm³ | Periodic filter + ICP-MS | Enclosed process, N₂/H₂ |
| **Zn (stack)** | <0.5 mg/Nm³ | Continuous optical (213.9 nm) | Condenser, N₂ blanket |
| **PM2.5** | <1 mg/Nm³ | Continuous TEOM | Baghouse + HEPA |
| **HCl (residual)** | <5 ppm | Continuous FTIR | NaHCO₃ injection (from Stage 2) |
| **PAH (total)** | <0.1 mg/Nm³ | Periodic GC-MS | >800°C tar cracking, carbon bed |
| **H₂ (stack)** | <1% (LFL margin) | Continuous catalytic sensor | N₂ purge on alarm |
| **CO** | <50 ppm | Continuous NDIR | Oxidation catalyst on vent |

### 11.3 Process Safety Interlocks

| Interlock | Trigger | Action | Reset |
|---|---|---|---|
| **O₂ High** | >1% O₂ in drum | N₂ purge 10 bar, H₂ cutoff, induction off | Manual + O₂ <0.5% |
| **H₂ High** | >6% H₂ in drum | N₂ purge, H₂ cutoff, vent to flare | Manual + H₂ <4% |
| **Temp Deviation** | >±5°C from setpoint (In: ±1°C) | Hold ramp, alarm, investigate | Manual + within tolerance |
| **RPM Deviation** | >±15 RPM from setpoint | Induction off, decel to safe RPM | Auto at target RPM |
| **Pressure High** | >1.8 bar | Relief valve opens, induction off | Auto at <1.6 bar |
| **Vibration High** | >5 mm/s RMS (bearing) | Decel to stop, alarm | Manual inspection |
| **Port Valve Fail** | Position sensor mismatch | Induction off, N₂ purge, alarm | Manual + valve test |
| **Zn Vapor Detect** | >1 ppm at Port 4C | Emergency N₂ quench 10 bar, induction off | Manual + vapor <0.1 ppm |

---
