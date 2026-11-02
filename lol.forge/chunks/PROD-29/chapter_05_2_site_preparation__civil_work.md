## 2. Site Preparation & Civil Works

### 2.1 Foundation Design

**Reinforced Concrete Mat Foundation (PROD-25 derived):**

| Parameter | Value | Basis |
|---|---|---|
| **Thickness** | 600 mm | Bearing pressure + seismic overturning |
| **Reinforcement** | #11 @ 150 mm EW T&B + #8 shear ties @ 200 mm | ACI 318 + IEEE 693 |
| **Compressive Strength** | 45 MPa (6500 psi) at 28 days | ACI 318 |
| **Anchor Bolts** | 24× M30 A193-B7, 900 mm embed, epoxy grout | PROD-25 Frame FEA |
| **Isolator Pockets** | 4× Ø400 mm × 300 mm deep, precision-machined | PROD-25 Isolators |
| **Grounding Grid** | 4/0 CU bare, 3 m grid, exothermic welds, <5 Ω | PROD-26 Grounding |

**Foundation Acceptance (IC-1):**
- Survey: elevation ±3 mm, flatness <5 mm/3 m, anchor bolt pattern ±2 mm
- Megger: anchor bolt to grid >100 MΩ at 500 VDC
- Concrete cores: 3 cores, f'c ≥ 45 MPa, no honeycombing

### 2.2 Utility Connections

| Utility | Connection Point | Specification | Verification |
|---|---|---|---|
| **480V 3-Phase** | Main disconnect (outdoor) | 750 kVA, IEEE 519, PQ meter | SAT-1: PQ analysis 7 days |
| **DI Water Supply** | Inlet manifold (BFRP flange) | 500 L/min, 18 MΩ·cm, 30°C | IC-5: Resistivity >18 MΩ·cm |
| **DI Water Return** | Outlet manifold | 500 L/min, <35°C, particle <1 μm | IC-5: Flow balance ±2% |
| **N₂ Supply** | Gas manifold (ZrO₂ valves) | 200 Nm³/hr, 99.999%, 8 bar | IC-6: Purity >99.999%, dew pt <-60°C |
| **Ar Supply** | Gas manifold | 50 Nm³/hr, 99.999%, 8 bar | IC-6: Purity >99.999% |
| **Instrument Air** | Air manifold (PEEK) | 8 bar, oil-free, -40°C dew pt | IC-6: Dew point <-40°C |
| **IT Fiber** | Network cabinet (BFRP) | 1 Gbps, dedicated, air-gapped | SAT-3: OTDR <0.2 dB/km |
| **Storm Drain** | Containment sump | 10,000 L capacity, double wall | PROD-32 Permit |

### 2.3 Rigging & Lifting Plan

| Assembly | Mass | Lift Points | Crane | Procedure |
|---|---|---|---|---|
| **Frame (A-12)** | 12,000 kg | 4× lifting lugs (BFRP) | 50 t mobile | IC-1: Place on isolators, torque anchors |
| **Drum (A-01/03)** | 4,200 kg | 4× ZrO₂ lifting eyes | 20 t overhead | IC-2: Lower into frame, align bearings |
| **Vessel (A-06/07)** | 3,800 kg | 4× BFRP lifting rings | 20 t overhead | IC-2: Lower over drum, bolt flanges |
| **Coil Zone (×8)** | 1,500 kg each | 2× Al₂O₃ lugs | 10 t overhead | IC-3: Position, connect cold plates |
| **Inverter Module (×8)** | 800 kg each | 4× BFRP handles | 5 t overhead | IC-3: Rack mount, POF connect |
| **Carousel (A-08)** | 2,500 kg | 4× lifting eyes | 10 t overhead | IC-2: Mount on frame, align index |

**Critical Lift Requirements:**
- All lifts >2 t: dual-crane, certified rigging, lift plan approved by PE
- Zero-metal rigging: BFRP slings, ZrO₂ shackles, Dyneema taglines
- Wind limit: <15 km/h for lifts >1 t
- Load test: 125% static hold 5 min before each critical lift

---
