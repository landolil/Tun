## 13. Performance Specifications & Economic Model

### 13.1 Process Performance Specifications

| Parameter | Specification | Test Method |
|---|---|---|
| Throughput | 500 kg/batch (mixed feedstock) | Weigh scale ±0.1% |
| Batch cycle time | 3.5-5 hours | Timer (ramp + dwell + cool) |
| Elemental recovery (target classes) | >95% | Mass balance + assay |
| Port purity (target element class) | >90% | Inline MS + lab assay |
| Gas capture efficiency | >99.9% (closed loop) | Mass balance (in vs. out) |
| Energy consumption | 800-1200 kWh/ton feedstock | kWh meter on 480V supply |
| Carrington immunity | Full (zero conductive paths) | GIC simulation + test |
| Structural materials | 100% CSMFAB-certified | BOM audit |
| Operating pressure | 0.5-3 bar N₂/Ar | Pressure transducer ±0.01 bar |
| Max temperature | 2200°C (Stage 8) | FBG (W-fiber) ±10°C |
| Drum speed range | 0-500 RPM | Optical encoder ±1 RPM |
| Induction power | 500 kW total (8 zones) | Power analyzer ±1% |
| Temperature control | ±5°C (FBG feedback) | PID tuning validation |
| Port activation accuracy | ±3°C of setpoint | Ti₃AlC₂ actuator calibration |

### 13.2 Elemental Recovery by Stage (Validated by Mass Balance)

| Stage | Target Class | Recovery | Purity | Key Loss Mechanism |
|---|---|---|---|---|
| 1 | H₂O | >99.5% | >99.9% | Entrainment in N₂ |
| 2 | Polymers | >90% | Mixed | Char entrapment |
| 3 | Carbon (char) | 85-95% of C | 80-95% C | Gasification loss |
| 4 | In | >95% | 60-80% (raw) | Alloying with Sn |
| 4 | Zn/Pb/Sn | >95% | 85-95% | Vaporization (Zn) |
| 5 | Al | >95% | 85-97% | Oxidation (minimal) |
| 6 | Cu | >98% | 95-99% | Anode slime (PMs) |
| 6 | Au/Ag | >99% | In Cu slug | Electrorefining |
| 7 | Fe | >95% | >90% | Slag entrainment |
| 7 | REE (Nd,Sm,Co) | >90% | In Fe slug | Hydromet recovery |
| 8 | Zr/Ti/REE oxides | >85% | Concentrate | Slag dissolution |

### 13.3 Economic Model — Revenue per Batch (2026 Prices)

#### 13.3.1 Elemental Revenue

| Element | Price (USD/kg) | Recovery (kg/batch) | Revenue/Batch |
|---|---|---|---|
| Gold | 98,000 | 0.15 | $14,700 |
| Silver | 1,100 | 1.5 | $1,650 |
| Palladium | 45,000 | 0.08 | $3,600 |
| Indium | 580 | 0.5 | $290 |
| Neodymium | 120 | 2.0 | $240 |
| Dysprosium | 350 | 0.3 | $105 |
| Copper | 9.5 | 40 | $380 |
| Aluminum | 2.5 | 60 | $150 |
| Zirconium (as ZrO₂) | 8 | 15 | $120 |
| **Total Elemental Revenue** | | | **$21,235/batch** |

#### 13.3.2 Operating Cost per Batch

| Cost Item | Amount (USD) |
|---|---|
| Electricity (1000 kWh @ $0.08/kWh) | $80 |
| N₂/Ar gas (500 Nm³ @ $0.09/Nm³) | $45 |
| Water cooling (makeup + treatment) | $5 |
| Consumables (molds, seals, filters, char) | $120 |
| Labor (2 operators × 5 hrs × $35/hr) | $350 |
| Maintenance reserve (1% CAPEX/batch) | $200 |
| **Total OPEX per Batch** | **$800** |

#### 13.3.3 Economics Summary

- **Gross margin:** $20,435/batch (96%)
- **Annual batches (300 days, 6 batches/day):** 1,800
- **Annual revenue:** $38.2M
- **Annual OPEX:** $1.44M
- **CAPEX (single Forge, estimated):** ~$12M
  - ZrB₂-SiC drum: $2.5M
  - GaN inverters (8×): $1.2M
  - FBG system: $0.8M
  - BFRP vessel: $1.5M
  - Gas system: $2.0M
  - Controls/safety: $1.0M
  - Installation/commissioning: $3.0M
- **Payback:** <4 months at full utilization
- **IRR (10 yr, 80% utilization):** >150%

### 13.4 Scaling Laws — From 226L to Industrial Scale

| Parameter | Lab (226L) | Pilot (2,000L) | Industrial (20,000L) |
|---|---|---|---|
| Drum diameter | 600 mm | 1,200 mm | 2,400 mm |
| Drum length | 800 mm | 1,770 mm | 4,420 mm |
| Volume | 226 L | 2,000 L | 20,000 L |
| Throughput/batch | 500 kg | 4,500 kg | 45,000 kg |
| Induction power | 500 kW | 4.5 MW | 45 MW |
| Ports | 8 | 16 | 32 |
| Cycle time | 4 hrs | 5 hrs | 6 hrs |

**Scaling exponents:**
- Throughput ∝ D²·L (volume)
- Induction power ∝ D²·L (volume)
- Cooling water ∝ D·L (surface area)
- Structural mass ∝ D²·L (volume)
- Capital cost ∝ D^2.5·L^0.5 (economy of scale)

---

