## 1. Stage 7 Parameters and Cascade Context

### 1.1 Stage Parameters Table

| Parameter | Value | Tolerance | Notes |
|---|---|---|---|
| **Stage Number** | 7 (Ferrous Cascade) | — | Follows Stage 6 Copper (1085-1200°C) |
| **Temperature Range** | 1200-1600°C | ±10°C | Fe MP 1538°C; superheat to 1580°C for fluidity |
| **Duration** | 60 minutes total | ±5 min | Includes ramp, dwell, REE separation, casting |
| **Drum Rotation** | 200 RPM (G = 13.9 at r=300mm) | ±5 RPM | Lower G for Fe density (7.87 g/cm³ solid, 7.0 liquid) |
| **Centrifugal G-Force** | 13.9 G | — | Optimized for Fe film drainage, REE banding |
| **Atmosphere** | 5% H₂ / 95% N₂ at 1.2 bar | ±0.05 bar | Reducing — prevents FeO, controls C/Si/Mn |
| **Dew Point** | <-40°C | — | Critical for Fe quality; moisture → H₂ + FeO |
| **Induction Frequency** | 2 kHz (Zone 7) | — | Skin depth δ = 8.5 mm in Fe at 1550°C; ferromagnetic coupling |
| **Induction Power** | 400 kW peak (Zone 7) | ±25 kW | Ferromagnetic coupling 2-10× non-ferrous |
| **Port Configuration** | Port 7 (20 mm aperture, 280 mm radius) | — | Thermal-actuated Ti₃AlC₂/ZrO₂ valve, opens at 1550°C |
| **REE Concentrate Port** | Port 7A (dedicated, 15 mm aperture) | — | ZrO₂ molds for REE-rich slag/metal, 10-15 kg capacity |
| **Feedstock Input** | ~160 kg/batch (Stage 6 residue + Stage 4/5 dross/slag) | ±15 kg | Fe 80 kg, Minerals 60 kg, Cu <2 kg, REE magnets, flux |
| **Primary Outputs** | Fe bullion (low-alloy), REE concentrate, Slag to Stage 8, Off-gas | — | Downstream: PROD-08 (cooling), FOLLOW-15 (REE hydromet), FOLLOW-20 |
| **Safety Class** | SIL-2 (Fe fume, CO, REE dust, thermal) | — | HEPA + carbon + chemisorbent, CO monitoring, continuous gas analysis |
| **Cascade Position** | Stage 7 of 8 | — | Precedes Stage 8 Mineral (1600-2200°C), follows Stage 6 Cu (1085-1200°C) |

### 1.2 Stage 7 in Cascade Context

```
THERMAL CASCADE — STAGE 7 POSITION
═════════════════════════════════════════════════════════════════════════════════

STAGE 6 (PROD-19)                          STAGE 7 (THIS DOCUMENT)                    STAGE 8 (PROD-21)
Copper & Precious Metals                   Ferrous Cascade                              Mineral Residue & Zircon
1085-1200°C, 45 min                        1200-1600°C, 60 min                          1600-2200°C, 90 min
                                               ▼                                              ▼
        ┌─────────────────────────────────────────────────────────────────────────────┐
        │                                                                             │
        │    FEEDSTOCK FROM STAGE 6:                                                  │
        │    • Fe/Ni/Co particles — 80 kg (solid at Stage 6, melt at Stage 7)         │
        │    • Mineral residue — 60 kg (CaO, SiO₂, glass fibers, REE oxides)          │
        │    • Char ash/flux residue — 22 kg (from Stage 4/5/6)                       │
        │    • Cu residue — <2 kg (dissolves in Fe melt)                              │
        │    • Stage 4 dross/slag — 18 kg (MgO, Al₂O₃, flux, PMs 0.5 kg, REE)         │
        │    • Stage 5 dross/salt slag — 12 kg (MgO, Al₂O₃, NaCl, KCl, AlN)           │
        │    • NdFeB/SmCo magnets (from AMLS magnetic separation) — 5-10 kg           │
        │                                                                             │
        │    STAGE 7 PROCESS:                                                         │
        │    ┌─────────────────────────────────────────────────────────────────────┐  │
        │    │ RAMP: 1200 → 1538 → 1580°C (3°C/min through Fe solidus 1538°C)    │  │
        │    │ DWELL: 1580°C for 40 minutes at 200 RPM                              │  │
        │    │ ATMOSPHERE: 5% H₂ / 95% N₂ at 1.2 bar, dew point <-40°C             │  │
        │    │ CARBON CONTROL: CO/CO₂ injection for C=2-4% target                  │  │
        │    │ SLAG: CaO/SiO₂ basicity B=1.2, MgO/Al₂O₃ from upstream dross        │  │
        │    │ REE MAGNETS: NdFeB (1177°C), SmCo (1490°C) melt → REE-Fe melt       │  │
        │    │ PORT 7: Opens at 1550°C — Fe bullion stream to ZrO₂ molds           │  │
        │    │ PORT 7A: Opens at 1500°C — REE-rich slag/metal to separate molds    │  │
        │    │ TRANSITION: Ramp to 1600°C (Stage 8) — Fe cleared, minerals remain  │  │
        │    └─────────────────────────────────────────────────────────────────────┘  │
        │                                                                             │
        │    OUTPUTS:                                                                 │
        │    • Fe bullion (Fe >90%, C 2-4%, Si 1-2%, Mn 0.5-1%) → Castings/sale      │
        │    • REE concentrate (Nd, Sm, Co in Fe-slag matrix) → FOLLOW-15 hydromet   │
        │    • Slag (CaO-SiO₂-MgO-Al₂O₃-REE oxides) → Stage 8 (PROD-21)             │
        │    • Off-gas (CO, H₂, H₂O, REE volatiles) → PROD-07 Gas Capture            │
        │                                                                             │
        └─────────────────────────────────────────────────────────────────────────────┘

PHYSICAL SEPARATION PRINCIPLE:
• The "Ferrous Window": 1200°C (cast iron MP) to 1600°C (Cr MP, minerals solid)
• At 1200°C: Cast iron melts, carbon steel (1370-1400°C), stainless (1400-1430°C) solid
• At 1538°C: Pure Fe melts, Ni (1455°C), Co (1495°C) already liquid
• At 1600°C: Cr (1907°C) remains solid → Stage 8; minerals (ZrO₂, REE oxides, Al₂O₃) solid
• Ferromagnetic coupling (2 kHz, below Curie 770°C) → 2-10× power density vs non-ferrous
• Centrifugal force (200 RPM, G=13.9) drives molten Fe film to drum wall
• Port 7 (1550°C setpoint) drains continuous Fe stream
• REE magnets (NdFeB, SmCo) melt and partition: REEs to slag, Fe to bullion
• Slag engineering: CaO addition for basicity B=1.2; MgO/Al₂O₃ from upstream dross
• Carbon control: CO/CO₂ gas injection maintains C=2-4% in Fe bullion
```

### 1.3 Feedstock Composition from Upstream Stages

| Feedstock Source | Mass per 500 kg Batch | Fe Content | Key Characteristics |
|---|---|---|---|
| **Stage 6 Mineral Residue (PROD-19)** | 160 kg | 80 kg Fe | Fe particles, Ni/Co 10 kg, Minerals 60 kg, Cu <2 kg |
| **Stage 4 Dross/Slag (PROD-17)** | 18 kg | Trace Fe | MgO 10 kg, Flux 5 kg, Char ash 2 kg, PMs 0.5 kg, REE oxides |
| **Stage 5 Dross/Salt Slag (PROD-18)** | 12 kg | Trace Fe | MgO/Al₂O₃ 7 kg, Flux 2.5 kg, Metallic Al 2 kg, AlN 0.5 kg |
| **AMLS Magnetic Separation (PROD-05)** | 10 kg | 5 kg Fe | NdFeB/SmCo magnets, motor stators, transformer cores |
| **Category C: Metals/Appliances (PROD-13)** | 40 kg | 30 kg Fe | Steel scrap, cast iron, Ni/Co alloys |

**Total Estimated Iron per 500 kg Batch: 115-125 kg**
**Rare Earth Magnet Content (from AMLS + Category C):**
- NdFeB: 3-5 kg (Nd ~1.2 kg, Fe ~2.0 kg, B ~0.1 kg, Dy ~0.1 kg)
- SmCo: 1-2 kg (Sm ~0.3 kg, Co ~0.6 kg, Fe ~0.8 kg)

**Slag Formers (from upstream dross + mineral residue):**
- CaO: 15-25 kg (from Stage 6 mineral residue + added)
- SiO₂: 30-40 kg (glass fibers, PCB substrate)
- MgO: 10-15 kg (Stage 4/5 dross)
- Al₂O₃: 5-10 kg (Stage 5 dross, anodized Al)
- REE Oxides: 0.5-2 kg (Nd₂O₃, Sm₂O₃, Dy₂O₃, Y₂O₃)

---
