## 3.1 Alpha-1 Feedstock Preparation & Liberation — Technical Specification

### 3.1.1 Process Flow — From Waste to Feedstock

```
ALPHA-1 CALAMA — PROCESS FLOW DIAGRAM (50 kt/yr e-waste + 100 kt/yr mining waste)

FEEDSTOCK RECEPTION
├── E-waste: Municipal collection (Calama, Antofagasta, Tocopilla) + Codelco IT/telecom
│   ├── Categories: PCBs, cables, motors, transformers, batteries (Li-ion separated)
│   ├── Pre-sort: Manual + AI vision (Cu/Al/Fe/Plastic/PCB streams)
│   └── Throughput: 15 t/hr (2 shifts, 330 days/yr = 50 kt/yr)
│
├── Mining Waste (Tailings Reprocessing):
│   ├── Chuqui TSF: 200 kt/yr (dredge + pipeline, 15% solids)
│   ├── RT Heap Leach Rinse: 50 kt/yr (conveyor, post-rinse residue)
│   └── MH Filtered Tailings: 30 kt/yr (direct feed, low moisture)
│   └── Throughput: 30 t/hr (continuous, 330 days/yr = 100 kt/yr)
│
└── TOTAL FEEDSTOCK: **150 kt/yr** (mixed matrix)

LIBERATION SEQUENCE (Patented Aegis-Forge)
├── STAGE 0: ACOUSTIC MINERAL LIBERATION (KNbO₃-BaTiO₃ transducers)
│   ├── Frequency: 20–40 kHz (tuned to mineral grain boundaries)
│   ├── Power: 50 kW/m³ slurry | Cavitation intensity: 1.2 W/mL
│   ├── Target: **Liberate REE phosphates (monazite/xenotime) from gangue**
│   ├── Efficiency: 92% liberation <75 μm (vs 65% conventional grinding)
│   └── Energy: **8 kWh/t** (vs 25 kWh/t SAG mill)
│
├── STAGE 1: INFRARED DRYING & PRE-HEAT
│   ├── Source: Waste heat from Alpha-2 (450°C exhaust → 200°C IR)
│   ├── Moisture: 15% → <1% | Temperature: 180°C
│   ├── Throughput: 50 t/hr | Energy: **45 kWh/t** (recovered heat)
│   └── Output: Dry, pre-heated feed for inductive cascade
│
├── STAGE 2: POLYMER FLOW & DENSITY SEPARATION (E-waste stream only)
│   ├── Melt centrifuge: 350°C, 3,000 RPM | Polymer separation: ABS, PC, PE, PVC
│   ├── PVC management: **In-situ HCl capture → NaHCO₃ scrubber → CaCl₂ brine**
│   ├── Metal recovery: Cu/Al/Fe from e-waste plastics (95% efficiency)
│   └── Energy: **120 kWh/t** (inductive melting)
│
└── OUTPUT TO ALPHA-2:
    ├── Stream A: **Liberated mineral concentrate** (tailings + e-waste metals) → 45 t/hr
    ├── Stream B: **Clean polymer fractions** → recycling partners
    ├── Stream C: **PVC-derived HCl/brine** → chemical sales
    └── Stream D: **Inert silica/silicate residue** → construction aggregate
```

### 3.1.2 Alpha-1 Equipment Specification — Calama Hub

| Equipment | Qty | Spec | Supplier | Capex (US$) |
|-----------|-----|------|----------|-------------|
| **Acoustic Transducer Array** | 12 banks | KNbO₃-BaTiO₃, 20-40 kHz, 50 kW/bank | Aegis-Forge proprietary | $4.2M |
| **IR Dryer Tunnel** | 2 lines | 50 t/hr, 200°C, waste heat recovery | Andritz/Metso | $3.8M |
| **Melt Centrifuge (E-waste)** | 1 | 350°C, 3000 RPM, 25 t/hr | BMA/GEA | $5.5M |
| **PVC HCl Scrubber** | 1 | NaHCO₃, 99.9% capture, 500 Nm³/hr | Dürr/CECO | $2.1M |
| **Conveyor/Pipeline Systems** | Lot | 2 km enclosed, dust suppression | Local fabrication | $3.4M |
| **AI Vision Sorting** | 4 stations | Hyperspectral + RGB, 99% accuracy | Tomra/Steinert + Aegis AI | $2.8M |
| **Dust Collection (Baghouse)** | 2 | 99.99% PM2.5, 50,000 m³/hr | Camfil/Donaldson | $1.9M |
| **Process Control (DCS)** | 1 | DeltaV/PCS7 + Aegis Digital Twin | Emerson/Siemens | $2.3M |
| **TOTAL ALPHA-1 CAPEX** | — | — | — | **$26.0M** |

---
