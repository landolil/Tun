## 1. Stage 6 Parameters and Cascade Context

### 1.1 Stage Parameters Table

| Parameter | Value | Tolerance | Notes |
|---|---|---|---|
| **Stage Number** | 6 (Copper & Precious Metals) | — | Follows Stage 5 Aluminum Window (660-720°C) |
| **Temperature Range** | 1085-1200°C | ±5°C | Cu MP 1084.6°C; superheat to 1150°C for fluidity |
| **Duration** | 45 minutes total | ±3 min | Includes ramp, dwell, anode casting, transition |
| **Drum Rotation** | 250 RPM (G = 17.4 at r=300mm) | ±5 RPM | Lower G for Cu density (8.96 g/cm³) — prevents over-packing |
| **Centrifugal G-Force** | 17.4 G | — | Optimized for Cu film drainage and PM banding |
| **Atmosphere** | 5% H₂ / 95% N₂ at 1.2 bar | ±0.05 bar | Reducing — prevents Cu₂O, controls As/Sb/Bi volatilization |
| **Dew Point** | <-40°C | — | Critical for Cu quality; moisture → H₂ + Cu₂O |
| **Induction Frequency** | 5 kHz (Zone 6) | — | Skin depth δ = 4.2 mm in Cu at 1150°C |
| **Induction Power** | 250 kW peak (Zone 6) | ±15 kW | Overcomes Cu high heat capacity (0.385 J/g·K) |
| **Port Configuration** | Port 6 (15 mm aperture, 280 mm radius) | — | Thermal-actuated Ti₃AlC₂/ZrO₂ valve, opens at 1180°C |
| **Anode Casting Port** | Port 6A (dedicated, 25 mm aperture) | — | ZrO₂ molds on 4-position carousel, 50 kg anode capacity |
| **Feedstock Input** | ~80 kg/batch (Stage 5 mineral residue + Stage 4 dross PM) | ±10 kg | Cu particles, PM carriers, Fe/Ni/Co solid, minerals |
| **Primary Outputs** | Cu anodes (4×50 kg), Anode slime (PM concentrate), Off-gas, Slag to Stage 7 | — | Downstream: PROD-08 (cooling), FOLLOW-19 (electrorefining) |
| **Safety Class** | SIL-2 (Cu fume, As/Sb/Bi, SO₂, thermal) | — | HEPA + carbon + chemisorbent, H₂ monitoring, continuous gas analysis |
| **Cascade Position** | Stage 6 of 8 | — | Precedes Stage 7 Ferrous (1200-1600°C), follows Stage 5 Al (660-720°C) |

### 1.2 Stage 6 in Cascade Context

```
THERMAL CASCADE — STAGE 6 POSITION
═════════════════════════════════════════════════════════════════════════════════

STAGE 5 (PROD-18)                          STAGE 6 (THIS DOCUMENT)                    STAGE 7 (PROD-20)
Aluminum Window                             Copper & Precious Metals                   Ferrous Cascade
660-720°C, 30 min                           1085-1200°C, 45 min                        1200-1600°C, 60 min
                                               ▼                                              ▼
        ┌─────────────────────────────────────────────────────────────────────────────┐
        │                                                                             │
        │    FEEDSTOCK FROM STAGE 5:                                                  │
        │    • Cu particles (wire, PCB traces, motor windings) — 30 kg/batch          │
        │    • Precious metals (Au, Ag, Pd, Pt) — CARRIED IN Cu MELT from Stage 4    │
        │    • Ferrous particles (Fe, Ni, Co) — SOLID (Fe Tm=1538°C)                 │
        │    • Mineral residue (CaO, SiO₂, glass, REE oxides) — SOLID                 │
        │    • Char ash, flux residue — SOLID                                         │
        │    • Stage 4 dross (MgO, Al₂O₃, flux, PM 100-500 g/t) — added at charge    │
        │                                                                             │
        │    STAGE 6 PROCESS:                                                         │
        │    ┌─────────────────────────────────────────────────────────────────────┐  │
        │    │ RAMP: 720 → 1085 → 1150°C (3°C/min through Cu solidus 1084.6°C)   │  │
        │    │ DWELL: 1150°C for 30 minutes at 250 RPM                              │  │
        │    │ ATMOSPHERE: 5% H₂ / 95% N₂ at 1.2 bar, dew point <-40°C             │  │
        │    │ FLUX: None (Cu self-fluxing); CaO addition for slag basicity if     │  │
        │    │ PORT 6: Opens at 1180°C — Cu anode stream to ZrO₂ molds             │  │
        │    │ PORT 6A: Dedicated anode casting carousel — 4 molds, 50 kg each     │  │
        │    │ ANODE SLIME: Forms at Cu/mold interface — collected per anode       │  │
        │    │ TRANSITION: Ramp to 1200°C (Stage 7) — Fe remains solid, Cu cleared  │  │
        │    └─────────────────────────────────────────────────────────────────────┘  │
        │                                                                             │
        │    OUTPUTS:                                                                 │
        │    • Cu anodes (99.9%+ Cu, PMs in solid solution) → Electrorefining        │
        │    • Anode slime (20-40% Cu, 10-30% Ag, 5-15% Au, 1-5% Pd/Pt) → FOLLOW-19  │
        │    • Off-gas (SO₂, AsH₃, SbH₃, BiH₃, H₂) → PROD-07 Gas Capture            │
        │    • Slag/residue (Fe, minerals, oxides) → Stage 7 (PROD-20)              │
        │                                                                             │
        └─────────────────────────────────────────────────────────────────────────────┘

PHYSICAL SEPARATION PRINCIPLE:
• The "Copper Window": 1085°C (pure Cu MP) to 1200°C (Fe remains solid, Ni MP 1455°C)
• At 1085°C: Cu melts, Fe (1538°C), Ni (1455°C), Co (1495°C), Cr (1907°C) remain solid
• Centrifugal force (250 RPM, G=17.4) drives molten Cu film to drum wall
• Port 6 (1180°C setpoint) drains continuous Cu stream to anode molds
• Precious metals (Au, Ag, Pd, Pt) DISSOLVE in Cu melt — partition to anode slime
• H₂/N₂ reducing atmosphere prevents Cu₂O; controls As/Sb/Bi volatilization
• Anode casting: 4× ZrO₂ molds (50 kg each) on carousel — continuous cast/cool cycle
• NO flux added — Cu self-fluxing; CaO only if needed for slag basicity control
```

### 1.3 Feedstock Composition from Upstream Stages

| Feedstock Source | Mass per 500 kg Batch | Cu Content | PM Content | Key Characteristics |
|---|---|---|---|---|
| **Stage 5 Mineral Residue (PROD-18)** | 140 kg | 30 kg Cu | PMs in Cu matrix | Cu particles, Fe 80 kg, Minerals 60 kg |
| **Stage 4 Dross/Slag (PROD-17)** | 18 kg | Trace Cu | 500 g PMs | Oxides 10 kg, Flux 5 kg, Char ash 2 kg, PMs 0.5 kg |
| **Phoenix Protocol Returns (PROD-22)** | 10 kg | 5 kg Cu | PMs in Cu | Aegis product Cu components, connectors |
| **Category A: PCBs/Electronics (PROD-13)** | 30 kg | 25 kg Cu | High PM density | Traces, vias, connectors, motor windings |
| **Category C: Metals/Appliances (PROD-13)** | 50 kg | 20 kg Cu | Low PM | Cu wire, tubing, busbar, sheet |

**Total Estimated Copper per 500 kg Batch: 80-110 kg**
**Total Precious Metals (from Stage 4 dross + PCB Cu):**
- Au: 350 g (99.5% in Cu melt from Stage 4 In/Sn streams)
- Ag: 4,000 g (99% in Cu melt from Stage 4 In/Sn/Pb streams)
- Pd: 150 g (95% in Cu melt from Stage 4 In/Sn streams)
- Pt: 30 g (80% in Cu melt from Stage 4 streams)

**Copper Purity in Feed:** 99%+ (PCB traces, wire, motor windings are high-purity Cu)
**Oxygen in Feed Cu:** <100 ppm (reduced by Stage 5 N₂ atmosphere carryover)

---
