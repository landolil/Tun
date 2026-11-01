## 2.5 Rail Cost Model: $/ton-km Formulas — Unified Framework

A standardized rail cost model enables apples-to-apples comparison across FCAB, Ferronor, EFE, and future corridors. This section presents the unified methodology used throughout this document for magnetic mineral logistics costing.

### 2.5.1 Full Cost Build-Up: $/ton-km Decomposition

**General Formula**:

$$C_{rail} = \frac{C_{fixed} + C_{variable} \times D + C_{interchange} \times N_{interchange} + C_{access} \times D}{Payload \times D} \times (1 + M_{margin})$$

Where:
- $C_{fixed}$ = Train fixed cost (locomotive + crew + overhead) per departure
- $C_{variable}$ = Variable cost per train-km (fuel, maintenance, track wear)
- $D$ = Haul distance (km)
- $C_{interchange}$ = Cost per gauge/operator interchange
- $N_{interchange}$ = Number of interchanges on route
- $C_{access}$ = Track access charge per train-km (infrastructure manager)
- $Payload$ = Net payload per train (tons)
- $M_{margin}$ = Commercial margin (negotiated, typically 10-20%)

**Cost Component Definitions (2024 USD)**:

| Component | FCAB (Private) | Ferronor (State) | EFE (State, Broad) | Unit | Notes |
|-----------|----------------|------------------|-------------------|------|-------|
| **Locomotive (per hr)** | 420 | 380 | 350 | $/hr | Electric 30% lower |
| **Crew (per hr)** | 180 | 160 | 150 | $/hr | 2-person crew |
| **Fuel/Energy (per train-km)** | 8.50 | 9.20 | 3.80 | $/train-km | Diesel vs. electric |
| **Maintenance (per train-km)** | 4.20 | 5.10 | 3.50 | $/train-km | Track + rolling stock |
| **Track Access (per train-km)** | 0.00 (owner) | 0.00 (owner) | 8.00 | $/train-km | EFE regulated |
| **Overhead (per departure)** | 1,200 | 1,000 | 900 | $/departure | Dispatch, admin, insurance |
| **Interchange (per event)** | 500 | 500 | 500 | $/event | Shunt, docs, dwell |
| **Typical Payload** | 3,960 | 3,500 | 3,900 | tons/train | 55-60 wagons × 65-72t |

**Simplified $/ton-km Formula (Single Operator, No Interchange)**:

$$C_{ton-km} = \frac{C_{var}}{Payload} + \frac{C_{fixed}}{Payload \times D} + C_{access}$$

**Example Calculations**:

1. **FCAB: Antofagasta→Mejillones (280km, Concentrate, 3,960t payload)**:
   - $C_{var} = 8.50 + 4.20 = 12.70$/train-km
   - $C_{fixed} = (420+180) \times (280/28) + 1,200 = 6,000 + 1,200 = 7,200$ (10hr round trip)
   - $C_{access} = 0$
   - $C_{ton-km} = \frac{12.70}{3,960} + \frac{7,200}{3,960 \times 280} + 0 = 0.00321 + 0.00065 = \textbf{0.00386 $/ton-km}$
   - **Total**: $0.00386 \times 280 = \textbf{\$1.08/ton}$ (vs. $1.17 published tariff = 8% margin)

2. **Ferronor: Calama→La Serena (250km, Concentrate, 3,500t payload)**:
   - $C_{var} = 9.20 + 5.10 = 14.30$/train-km
   - $C_{fixed} = (380+160) \times (250/22) + 1,000 = 6,136 + 1,000 = 7,136$ (11.4hr round trip)
   - $C_{access} = 0$
   - $C_{ton-km} = \frac{14.30}{3,500} + \frac{7,136}{3,500 \times 250} = 0.00409 + 0.00815 = \textbf{0.0122 $/ton-km}$
   - **Total**: $0.0122 \times 250 = \textbf{\$3.06/ton}$

3. **EFE: Santiago→San Antonio (150km, Containers, 3,900t payload)**:
   - $C_{var} = 3.80 + 3.50 = 7.30$/train-km (electric)
   - $C_{fixed} = (350+150) \times (150/35) + 900 = 2,143 + 900 = 3,043$ (4.3hr round trip)
   - $C_{access} = 8.00$/train-km
   - $C_{ton-km} = \frac{7.30}{3,900} + \frac{3,043}{3,900 \times 150} + \frac{8.00}{3,900} = 0.00187 + 0.00519 + 0.00205 = \textbf{0.0091 $/ton-km}$
   - **Total**: $0.0091 \times 150 = \textbf{\$1.37/ton}$ (vs. $0.90 published = volume discount)

### 2.5.2 Multi-Operator Route Cost Model (North→Central Chile)

**Route**: Antofagasta (mine) → San Antonio (port) via FCAB + Ferronor + EFE
**Distance**: 1,150km | **Interchanges**: 2 (Calama, La Calera) | **Payload**: 3,500t (constrained by weakest link)

$$C_{total} = \sum_{i=1}^{3} \left( \frac{C_{var,i} \times D_i + C_{fixed,i}}{Payload} + C_{access,i} \times D_i \right) + N_{interchange} \times C_{interchange}$$

| Segment | Operator | Distance | $C_{var}$ | $C_{fixed}$ | $C_{access}$ | Cost/ton |
|---------|----------|----------|-----------|-------------|--------------|----------|
| Antofagasta→Calama | FCAB | 280km | 12.70 | 7,200 | 0 | $1.08 |
| Calama Interchange | — | — | — | — | — | $0.50 |
| Calama→La Serena | Ferronor | 250km | 14.30 | 7,136 | 0 | $3.06 |
| La Serena→La Calera | Ferronor | 220km | 14.30 | 6,264 | 0 | $2.68 |
| La Calera Interchange | — | — | — | — | — | $0.50 |
| La Calera→San Antonio | EFE | 150km | 7.30 | 3,043 | 8.00 | $1.37 |
| **Total Rail** | | **1,150km** | | | | **$9.19/ton** |

**With Commercial Margin (15%)**: $9.19 × 1.15 = **$10.57/ton rail cost**

**Ocean Freight (San Antonio→Rotterdam, ULCV)**: $1,450/TEU ÷ 22t = $65.90/ton
**Total Landed Rail+Ocean**: $10.57 + $65.90 = **$76.47/ton**

### 2.5.3 Sensitivity Analysis: Key Cost Drivers

| Driver | Base | -20% | +20% | Impact on $/ton-km | Impact on Antofagasta→San Antonio |
|--------|------|------|------|-------------------|-----------------------------------|
| **Diesel Price** | $0.95/L | $0.76/L | $1.14/L | ±0.0012 | ±$1.38/ton |
| **Electricity Price** | $45/MWh | $36/MWh | $54/MWh | ±0.0003 | ±$0.35/ton (EFE leg only) |
| **Payload (tons/train)** | 3,500 | 2,800 | 4,200 | ∓0.0018 | ∓$2.07/ton |
| **Track Access (EFE)** | $8/tr-km | $6.40 | $9.60 | ±0.0004 | ±$0.46/ton |
| **Interchange Dwell** | 2.5 hr | 1.5 hr | 4.0 hr | ±$0.15/ton | ±$0.15/ton (fixed) |
| **Commercial Margin** | 15% | 10% | 20% | ±0.0014 | ±$1.29/ton |

**Electrification Impact (FCAB + Ferronor, 2028)**:
- Fuel cost reduction: 65% (diesel → electric)
- $C_{var}$ reduction: FCAB $12.70 → $5.80, Ferronor $14.30 → $6.10
- **New Antofagasta→San Antonio rail cost**: $9.19 → **$5.82/ton (37% reduction)**
- **CO₂ Reduction**: 85% on electrified segments

### 2.5.4 Cost Model for Magnetic Mineral Products

| Product | Payload Density | Packaging | Train Payload | Rail $/ton (Antof→SA) | Ocean $/ton (SA→Rot) | Total $/ton |
|---------|----------------|-----------|---------------|----------------------|----------------------|-------------|
| **REE Concentrate (Bulk)** | 3.2 t/m³ | None (wagon) | 3,960t | $9.19 | $42 (Capesize) | **$51.19** |
| **NdFeB Container** | 1.8 t/m³ | 20ft HC | 1,320t* | $18.40 | $65.90 | **$84.30** |
| **SmCo Container** | 1.6 t/m³ | 40ft HC | 1,180t* | $20.56 | $65.90 | **$86.46** |
| **Fe₁₆N₂ Reefer** | 1.5 t/m³ | 40ft HC (reefer) | 1,100t* | $22.10 | $78 (reefer premium) | **$100.10** |
| **Fe-Co Bulk** | 4.0 t/m³ | None (wagon) | 3,960t | $9.19 | $48 (Panamax) | **$57.19** |

*Containerized payload limited by container count (44-60 containers/train vs. 55 wagons bulk)

**Key Insight**: **Bulk concentrate rail economics are 45-55% cheaper than containerized finished magnets** per ton. This drives the strategic preference for:
- **Bulk export** of REE concentrates (Mejillones/Antofagasta → Capesize → Asia)
- **Containerized export** of high-value finished magnets only (San Antonio → ULCV → Global)
- **Local finishing** (Aegis-Forge Chile) to capture value before containerization cost
