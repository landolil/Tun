# CSMFAB000000000129
## Aegis-Forge I: Stage 8 — Mineral Residue & Zircon (1600-2200°C)
### Zircon Dissociation, 3Y-TZP Synthesis, and UHTC Material Loop Closure
**Document Number:** CSMFAB000000000129
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator — Product Document 21
**Classification:** Engineering Specification — Manufacturing Release
**Revision:** A (Initial Release)
**Date:** November 2026
**Authors:** CSMFAB Engineering Team
**Distribution:** CSM Forge Division, Phoenix Protocol Division, Materials Synthesis Group

---

## 1. Stage 8 Parameters and Cascade Context

### 1.1 Stage Parameters Table

| Parameter | Value | Tolerance | Notes |
|---|---|---|---|
| **Stage Number** | 8 (Mineral Residue & Zircon) | — | Final thermal stage; follows Stage 7 Ferrous (1200-1600°C) |
| **Temperature Range** | 1600-2200°C | ±15°C | ZrSiO₄ dissociation at 1676°C; ZrO₂ sintering at 2000°C+ |
| **Duration** | 90 minutes total | ±10 min | Includes ramp, dissociation dwell, synthesis, casting |
| **Drum Rotation** | 150 RPM (G = 10.4 at r=300mm) | ±5 RPM | Lowest G for oxide density stratification |
| **Centrifugal G-Force** | 10.4 G | — | Optimized for ZrO₂/REE oxide/silica separation |
| **Atmosphere** | Ar/He (95/5) at 1.1 bar | ±0.05 bar | Inert — prevents SiO oxidation, ZrN formation |
| **Oxygen Partial Pressure** | <10⁻¹⁵ atm | — | Critical for ZrSiO₄ dissociation equilibrium |
| **Induction Frequency** | 1 kHz (Zone 8) | — | Skin depth δ = 14 mm in ZrO₂ at 2000°C |
| **Induction Power** | 500 kW peak (Zone 8) | ±30 kW | Highest power zone; radiative losses dominate |
| **Port Configuration** | Port 8 (25 mm aperture, 280 mm radius) | — | Thermal-actuated Ti₃AlC₂/ZrO₂ valve, opens at 1700°C |
| **ZrO₂/3Y-TZP Port** | Port 8A (dedicated, 15 mm aperture) | — | ZrO₂ molds for 3Y-TZP powder, 10 kg capacity |
| **SiO₂ Condensate Port** | Port 8B (dedicated, 10 mm aperture) | — | Water-cooled ZrO₂ condenser for fumed silica |
| **Feedstock Input** | ~65 kg/batch (Stage 7 slag + mineral residue) | ±5 kg | Slag 65 kg at 1600°C, B=1.2, MgO/Al₂O₃=1.5 |
| **Primary Outputs** | 3Y-TZP powder, Fumed SiO₂, REE oxide concentrate, α-Al₂O₃, TiO₂, UHTC precursors | — | Downstream: FOLLOW-16, 21, 32, PROD-04 (drum material loop) |
| **Safety Class** | SIL-2 (SiO gas, REE dust, high-temp radiation, thermal) | — | Ar/He inerting, SiO monitoring, IR shielding, continuous gas analysis |
| **Cascade Position** | Stage 8 of 8 (Terminal) | — | Completes thermal cascade; feeds Phoenix Protocol hydromet |

### 1.2 Stage 8 in Cascade Context

```
THERMAL CASCADE — STAGE 8 POSITION (TERMINAL STAGE)
═════════════════════════════════════════════════════════════════════════════════

STAGE 7 (PROD-20)                          STAGE 8 (THIS DOCUMENT — TERMINAL)      PHOENIX PROTOCOL (PROD-22)
Ferrous Cascade                             Mineral Residue & Zircon                  EOL Returns & Hydromet
1200-1600°C, 60 min                         1600-2200°C, 90 min                       Closed Loop
                                               ▼                                              ▼
        ┌─────────────────────────────────────────────────────────────────────────────┐
        │                                                                             │
        │    FEEDSTOCK FROM STAGE 7:                                                  │
        │    • Slag: 65 kg at 1600°C, liquid                                         │
        │       CaO: 16.3 kg (25%), SiO₂: 22.8 kg (35%), MgO: 7.8 kg (12%)           │
        │       Al₂O₃: 5.2 kg (8%), FeO: 6.5 kg (10%), MnO: 3.3 kg (5%)              │
        │       REE Oxides: 1.3 kg (2%) — Nd₂O₃ 0.6, Sm₂O₃ 0.3, Dy₂O₃ 0.1, Y₂O₃ 0.2 │
        │       TiO₂: 0.7 kg (1%), ZrO₂: 0.7 kg (1%), Cr₂O₃: 0.3 kg (0.5%)           │
        │       B₂O₃: 0.07 kg (from NdFeB boron), Others: 0.26 kg                     │
        │    • Unreacted mineral residue from earlier stages: ZrSiO₄, Al₂O₃, SiC      │
        │                                                                             │
        │    STAGE 8 PROCESS:                                                         │
        │    ┌─────────────────────────────────────────────────────────────────────┐  │
        │    │ RAMP: 1600 → 1676 → 1750°C (5°C/min through ZrSiO₄ dissociation)  │  │
        │    │ DISSOCIATION DWELL: 1700°C for 30 minutes at 150 RPM               │  │
        │    │ ATMOSPHERE: Ar/He 95/5 at 1.1 bar, pO₂ < 10⁻¹⁵ atm                │  │
        │    │ ZIRCON DISSOCIATION: ZrSiO₄ → ZrO₂ + SiO₂(g)                      │  │
        │    │ SiO₂ GAS CAPTURE: Port 8B condenser → fumed silica                 │  │
        │    │ 3Y-TZP SYNTHESIS: Add Y₂O₃ (from REE stream) → 3Y-TZP powder       │  │
        │    │ UHTC PRECURSORS: ZrB₂ (add B₂O₃+C), Ti₃AlC₂ (add TiO₂+Al₂O₃+C)   │  │
        │    │ PORT 8: Opens at 1700°C — ZrO₂-rich stream to 3Y-TZP molds         │  │
        │    │ PORT 8A: Opens at 1800°C — 3Y-TZP/REE oxide concentrate            │  │
        │    │ PORT 8B: Continuous — SiO₂ condenser (water-cooled)                │  │
        │    │ TRANSITION: Ramp to 2200°C — residual casting, cool down           │  │
        │    └─────────────────────────────────────────────────────────────────────┘  │
        │                                                                             │
        │    OUTPUTS:                                                                 │
        │    • 3Y-TZP ZrO₂ powder (99.5%, 0.5 μm) → Flash sintering (PROD-04 drum)   │
        │    • Fumed SiO₂ (99.9%, 50 nm) → Aerogel (PROD-06, FOLLOW-09), geopolymer │
        │    • REE oxide concentrate (Nd, Sm, Dy, Y) → FOLLOW-21 hydromet            │
        │    • α-Al₂O₃ (99.9%) → FOLLOW-32 UHTC, MAX Phase (Ti₃AlC₂)                │
        │    • TiO₂ (rutile, 99%) → FOLLOW-32 MXene, Ti₃AlC₂ synthesis              │
        │    • ZrB₂ precursor (ZrO₂+B₂O₃+C) → FOLLOW-32 UHTC ceramic                │
        │    • Residual mineral slag → Phoenix Protocol hydromet (FOLLOW-21)         │
        │                                                                             │
        └─────────────────────────────────────────────────────────────────────────────┘

PHYSICAL SEPARATION PRINCIPLE:
• The Mineral Window: 1600°C (SiO₂ melting) to 2200°C (ZrO₂ sintering, TiO₂ decomposition)
• At 1676°C: ZrSiO₄ → ZrO₂ (solid) + SiO₂ (gas) — KEY DISSOCIATION REACTION
• SiO₂ gas captured at Port 8B condenser → fumed silica product
• ZrO₂ remains solid (MP 2716°C) — concentrated by centrifugal separation
• REE oxides (Nd₂O₃, Sm₂O₃, Y₂O₃) solid — co-concentrate with ZrO₂
• Al₂O₃ (MP 2072°C) partially melts at 2000°C+ — separates by density
• TiO₂ decomposes >2000°C — captured as rutile
• 3Y-TZP synthesis: ZrO₂ + 3 mol% Y₂O₃ → flash sinter 1800°C/5 min → 97% TD, 0.5 μm
• UHTC loop closure: ZrB₂ from Stage 8 → PROD-04 drum material (ZrB₂-SiC)
• Ar/He inert atmosphere prevents: SiO oxidation, ZrN formation, Al₂O₃ reduction
• Centrifugal separation (150 RPM, G=10.4) by oxide density: ZrO₂ (5.68) > Al₂O₃ (3.95) > SiO₂ (2.65)
```

### 1.3 Feedstock Composition from Stage 7

| Component | Mass per Batch | Source | State at 1600°C |
|---|---|---|---|
| **CaO** | 16.3 kg | Stage 7 slag + added flux | Liquid (in slag) |
| **SiO₂** | 22.8 kg | Stage 7 slag (glass, PCB) | Liquid (in slag) |
| **MgO** | 7.8 kg | Stage 4/5 dross (FREE) | Solid (MP 2852°C) |
| **Al₂O₃** | 5.2 kg | Stage 5 dross, anodized Al | Solid (MP 2072°C) |
| **FeO** | 6.5 kg | Stage 7 Fe oxidation | Liquid (in slag) |
| **MnO** | 3.3 kg | Steel scrap, batteries | Liquid (in slag) |
| **REE Oxides** | 1.3 kg | Magnets, dross | Solid |
| **TiO₂** | 0.7 kg | Ilmenite, pigments | Solid (decomposes >2000°C) |
| **ZrO₂** | 0.7 kg | ITO glass, Aegis returns | Solid |
| **ZrSiO₄ (zircon)** | 2-5 kg | LCD glass, mineral residue | Solid → dissociates at 1676°C |
| **Cr₂O₃** | 0.3 kg | Stainless steel | Solid |
| **B₂O₃** | 0.07 kg | NdFeB boron | Volatile |
| **Carbon (unoxidized)** | 1-3 kg | Char residue | Solid/gas (CO) |
| **SiC residue** | 0.5 kg | Refractory carryover | Solid |

**Total Feedstock: ~65 kg liquid slag + 5-10 kg solid mineral residue**

**Key Feed Characteristic:** The Stage 7 slag arrives at 1600°C, fully liquid (liquidus 1350°C at B=1.2), with MgO/Al₂O₃=1.5 from free upstream dross flux. This is the IDEAL feed for zircon dissociation — low viscosity, correct basicity, built-in MgO/Al₂O₃.

---

## 2. Zircon Dissociation at 1676°C

### 2.1 Thermodynamics of ZrSiO₄ Dissociation

**Primary Reaction:**
```
ZrSiO₄ (s) ⇌ ZrO₂ (s) + SiO₂ (g)      ΔH° = +320 kJ/mol
```

**Equilibrium Constant:**
```
Kp = p_SiO₂ = exp(-ΔG°/RT)
ΔG° = ΔH° - TΔS° = 320,000 - T(85) J/mol
```

**Dissociation Temperature at p_SiO₂ = 1 atm:**
```
T_diss = ΔH°/ΔS° = 320,000/85 = 3765 K = 3492°C
```

**Dissociation Temperature at p_SiO₂ = 10⁻³ atm (practical):**
```
ln(10⁻³) = -ΔG°/RT  →  T = 1676°C (1949 K)
```

**Operating Window:**
- Target: 1700°C (25°C above dissociation temperature at p_SiO₂ = 10⁻³ atm)
- p_SiO₂ maintained at 10⁻³ atm by continuous Ar sweep + Port 8B condenser
- At 1700°C, 30 min dwell: >99% zircon dissociation achieved

### 2.2 Dissociation Kinetics

**Rate-Limiting Step:** SiO₂ diffusion through ZrO₂ product layer (shrinking core model)

**Kinetic Equation:**
```
1 - (1 - X)^(1/3) = k·t
k = k₀·exp(-Ea/RT)
Ea = 420 kJ/mol (ZrO₂ diffusion barrier)
k₀ = 1.2×10⁸ s⁻¹
```

**At 1700°C (1973 K):**
```
k = 1.2×10⁸ × exp(-420,000/(8.314×1973)) = 2.1×10⁻⁴ s⁻¹
t_99% = [1 - (0.01)^(1/3)] / k = 0.54 / 2.1×10⁻⁴ = 2570 s = 43 min
```

**Practical Dwell:** 30 min at 1700°C achieves >95% dissociation (ZrSiO₄ particles <100 μm from AMLS liberation)

### 2.3 Zircon Feed Characterization

| Parameter | Value | Source |
|---|---|---|
| **ZrSiO₄ Content** | 2-5 kg/batch | LCD glass (ITO), mineral sand |
| **Particle Size (post-AMLS)** | <100 μm | Acoustic liberation >80% |
| **ZrO₂ Equivalent** | 1.4-3.5 kg | 67% ZrO₂ in ZrSiO₄ |
| **SiO₂ Gas Yield** | 0.7-1.8 kg | 33% SiO₂ in ZrSiO₄ |
| **Impurities** | HfO₂ 1-2%, U/Th trace | Zircon lattice substitution |

**Hafnium Management:** Hf substitutes for Zr in zircon (1-2%). HfO₂ remains with ZrO₂ product. For nuclear-grade Zr, separate Hf removal required (FOLLOW-32). For 3Y-TZP structural ceramic, Hf <2% is acceptable.

---

## 3. Rare Earth Oxide Recovery

### 3.1 REE Oxide Behavior at 1700°C

| REE Oxide | Melting Point | Stability | Partitioning |
|---|---|---|---|
| **Y₂O₃** | 2410°C | Stable | Concentrates with ZrO₂ |
| **La₂O₃** | 2315°C | Stable | Concentrates with ZrO₂ |
| **Nd₂O₃** | 2272°C | Stable | Concentrates with ZrO₂ |
| **Sm₂O₃** | 2335°C | Stable | Concentrates with ZrO₂ |
| **Dy₂O₃** | 2408°C | Stable | Concentrates with ZrO₂ |
| **CeO₂** | 2400°C | Reduces to Ce₂O₃ | Partial volatilization |

**REE Oxide Input (from Stage 7 slag + mineral residue):**
- Nd₂O₃: 0.6 kg
- Sm₂O₃: 0.3 kg
- Dy₂O₃: 0.1 kg
- Y₂O₃: 0.2 kg
- La₂O₃/CeO₂/others: 0.1 kg
- **Total REE Oxides: ~1.3 kg**

### 3.2 Yttrium Addition for 3Y-TZP

**3Y-TZP Composition:** 3 mol% Y₂O₃ in ZrO₂ (≈5.2 wt% Y₂O₃)

**Y₂O₃ Required per Batch:**
```
ZrO₂ from zircon: 2.5 kg (avg)
ZrO₂ from feed: 0.7 kg
Total ZrO₂: 3.2 kg
Y₂O₃ needed: 3.2 kg × 0.052 = 0.17 kg Y₂O₃
```

**Y₂O₃ Source:** Stage 7 REE concentrate (Y₂O₃ 0.2 kg) + FOLLOW-15 hydromet Y-product

**Addition Point:** Y₂O₃ injected at Port 8A mold fill (1800°C) — mixes with ZrO₂ stream before 3Y-TZP flash sintering

---

## 4. 3Y-TZP Synthesis

### 4.1 Flash Sintering Process

**Process Parameters:**
- Temperature: 1800°C (5 min dwell)
- Pressure: 1.1 bar Ar/He
- Electric Field: 300 V/cm (DC, applied via ZrO₂ electrodes)
- Powder Feed: ZrO₂ + 3 mol% Y₂O₃, <0.5 μm (milled in-line)

**Flash Sintering Mechanism:**
```
Joule heating: P = σ·E²·V
σ (ZrO₂ at 1800°C) = 10 S/m
E = 300 V/cm = 30,000 V/m
Power density = 10 × 30,000² = 9×10⁹ W/m³
```
- Volumetric heating → uniform temperature, no thermal gradients
- Densification in 5 min vs 2 hr conventional sintering
- Grain growth suppressed → 0.5 μm final grain size

### 4.2 3Y-TZP Product Specifications

| Property | Target | Test Method |
|---|---|---|
| **Density** | >97% theoretical (5.95 g/cm³) | Archimedes |
| **Grain Size** | 0.5 ±0.1 μm | SEM |
| **Y₂O₃ Content** | 3.0 ±0.2 mol% | ICP-OES |
| **HfO₂ Content** | <2 wt% | ICP-MS |
| **Al₂O₃ Impurity** | <0.1 wt% | ICP-OES |
| **SiO₂ Impurity** | <0.05 wt% | ICP-OES |
| **Flexural Strength** | >1200 MPa | 4-point bend |
| **Fracture Toughness** | >8 MPa·m¹/² | Indentation |
| **Phase Purity** | >99% tetragonal | XRD |

### 4.3 3Y-TZP Mold Casting (Port 8A)

**Mold Specifications (from PROD-08):**
- ZrO₂ mold, 10 kg capacity, 100×50×40 mm cavity
- N₂ quench: 10 SLPM at 3 bar, cooling rate 10°C/min
- Cycle time: 8 min/mold, 2-position carousel
- **Stamp:** BATCH-YYYYMMDD-NNN-8A-1800-SSSS

**Mass Balance — 3Y-TZP per Batch:**
```
ZrO₂ feed: 3.2 kg
Y₂O₃ addition: 0.17 kg
Total powder: 3.37 kg
Flash sinter yield: 95%
3Y-TZP product: 3.2 kg per batch
Annual (1,200 batches): 3,840 kg 3Y-TZP
```

---

## 5. Silica Management — Fumed SiO₂ Production

### 5.1 SiO₂ Gas Generation and Capture

**SiO₂ Sources:**
1. **Zircon dissociation:** ZrSiO₄ → ZrO₂ + SiO₂(g) — 0.7-1.8 kg/batch
2. **Slag SiO₂ volatilization:** SiO₂(l) + C(s) → SiO(g) + CO(g) — minor at pO₂ <10⁻¹⁵
3. **Total SiO₂ gas: 1-2 kg/batch**

**Condenser Design (Port 8B):**
```
SiO₂(g) + ½O₂ → SiO₂(s)  (controlled oxidation at condenser)
```
- Water-cooled ZrO₂ condenser, 2 m² surface area
- Coolant: Water at 20°C, 50 L/min
- Condenser temperature: 200°C (SiO₂ deposition) → 50°C (collection)
- Ar/He sweep gas: 20 SLPM carries SiO₂ to condenser

**Fumed Silica Specifications:**
| Property | Target | Standard |
|---|---|---|
| **Purity (SiO₂)** | >99.9% | ICP-OES |
| **Primary Particle Size** | 50 ±10 nm | BET/BET |
| **Specific Surface Area** | 200 ±20 m²/g | BET |
| **pH (4% slurry)** | 3.5-4.5 | ISO 787-9 |
| **Loss on Ignition** | <1.5% | 1000°C/1hr |
| **Fe Content** | <50 ppm | ICP-MS |
| **Al Content** | <100 ppm | ICP-MS |

**Applications:**
- **Aerogel precursor (FOLLOW-09):** Polyimide-silica aerogel, λ=0.010 W/m·K
- **Geopolymer curing (PROD-06):** CO₂ stream from PROD-07
- **Commercial sale:** Fumed silica market ($8-15/kg)

**Mass Balance — Fumed SiO₂ per Batch:**
```
SiO₂ gas captured: 1.5 kg (avg)
Condensation efficiency: 90%
Fumed SiO₂ product: 1.35 kg/batch
Annual (1,200 batches): 1,620 kg fumed SiO₂
```

---

## 6. Alumina/Titania Separation

### 6.1 Al₂O₃ Behavior

**Al₂O₃ in Feed:** 5.2 kg (Stage 7 slag) + 2-5 kg (mineral residue) = 7-10 kg/batch

**At 1800-2000°C:**
- Al₂O₃ MP = 2072°C — primarily solid
- Partial melt at 2000°C+ (eutectics with SiO₂, MgO)
- Density: 3.95 g/cm³ (solid), 3.0 g/cm³ (liquid)

**Separation Strategy:**
- Centrifugal stratification at 150 RPM (G=10.4)
- Al₂O₃ particles (ρ=3.95) concentrate at r_eq = 265 mm
- Separate from ZrO₂ (ρ=5.68, r_eq=285 mm) and SiO₂ (ρ=2.65, r_eq=220 mm)
- **Port 8A (r=250mm):** ZrO₂ + REE oxides + Al₂O₃ co-collection
- **Post-separation:** Al₂O₃ leached from ZrO₂/REE concentrate (FOLLOW-21)

**α-Al₂O₃ Product (via FOLLOW-21):**
- Target: 99.9% α-Al₂O₃, <0.1 μm
- Use: MAX Phase Ti₃AlC₂ synthesis (FOLLOW-32), abrasives, substrates

### 6.2 TiO₂ Behavior

**TiO₂ in Feed:** 0.7 kg (Stage 7 slag) + 1-3 kg (mineral residue) = 2-4 kg/batch

**At >2000°C:**
```
2TiO₂ → 2TiO + O₂  (decomposition)
TiO₂ + 2C → TiC + 2CO  (carbothermal)
```

**Separation Strategy:**
- Rutile (TiO₂) stable to 1800°C — solid particle
- Density: 4.23 g/cm³ — concentrates at r_eq = 270 mm
- **Port 8A co-collection** with ZrO₂/Al₂O₃/REE
- **Post-separation:** TiO₂ leached (FOLLOW-21) → Ti₃AlC₂ synthesis (FOLLOW-32)

---

## 7. Centrifuge Bowl Zones for Mineral Separation

### 7.1 Zone Architecture — 4-Zone Design for Stage 8

| Zone | Axial Position | Function | Temperature | RPM | Key Features |
|---|---|---|---|---|---|
| **Z8-1 (Charge/Preheat)** | 700-740 mm | Charge slag, preheat to 1676°C | 1676°C | 150 | Feed inlet, FBG, POF level, pO₂ monitor |
| **Z8-2 (Dissociation)** | 740-770 mm | ZrSiO₄ → ZrO₂ + SiO₂(g) | 1700°C | 150 | 30 min dwell, SiO₂ condenser (Port 8B) |
| **Z8-3 (3Y-TZP Synthesis)** | 770-785 mm | Flash sinter ZrO₂+3Y₂O₃ | 1800°C | 150 | 5 min flash, electric field, Port 8A molds |
| **Z8-4 (Residual/Cool)** | 785-800 mm | Residual oxides, cool down | 1800→1600°C | 150 | Al₂O₃/TiO₂/REE separation, Stage 8 complete |

### 7.2 Zone 8-2: Zircon Dissociation Reactor

**Process Conditions:**
- Temperature: 1700°C ±15°C
- Duration: 30 minutes
- RPM: 150 (G=10.4)
- Atmosphere: Ar/He 95/5, 1.1 bar, pO₂ < 10⁻¹⁵ atm
- SiO₂ partial pressure: 10⁻³ atm (controlled by condenser sweep)

**Dissociation Monitoring:**
| Sensor | Parameter | Frequency | Action |
|---|---|---|---|
| **FBG (48)** | Wall temperature | 1 kHz | PID power |
| **MS (SiO₂)** | p_SiO₂ at condenser | 10 Hz | Sweep gas adjust |
| **Pyrometer** | Melt surface temp | 100 Hz | Power adjust |
| **XRF (slag)** | Zr, Si, REE in slag | 1/min | Dissociation extent |

**Centrifugal Separation During Dissociation:**
- ZrO₂ product (ρ=5.68) → drum wall (r=290-300mm)
- Slag liquid (ρ=2.8) → inward (r=200-250mm)
- REE oxides (ρ=5-7) → co-concentrate with ZrO₂
- **No separate port** — ZrO₂/REE remain in drum for Zone 8-3

### 7.3 Zone 8-3: 3Y-TZP Flash Sintering

**Flash Sintering Cell (Integrated in Drum):**
```
FLASH SINTERING CELL — ZONE 8-3
┌─────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│   ZR-O₂/ZR-O₂ ELECTRODES (DC, 300 V/cm)                                     │
│        │                              │                                     │
│        ▼                              ▼                                     │
│   ┌─────────────────────────────────────────────────┐                       │
│   │   ZrO₂ + 3% Y₂O₃ POWDER BED (10 kg)             │                       │
│   │   • Feed: ZrO₂ from dissociation + Y₂O₃ inj.    │                       │
│   │   • Bed height: 50 mm, porosity 0.4             │                       │
│   │   • Current: 500 A, Voltage: 150 V              │                       │
│   │   • Power: 75 kW (5 min) = 6.25 kWh             │                       │
│   └─────────────────────────────────────────────────┘                       │
│        │                              │                                     │
│        ▼                              ▼                                     │
│   PORT 8A MOLDS (10 kg, 3Y-TZP)                                              │
│                                                                              │
└─────────────────────────────────────────────────────────────────────────────┘
```

**Flash Sintering Cycle (5 min):**
1. **Ramp (0-60s):** 1600→1800°C, field 100→300 V/cm
2. **Flash (60-120s):** Thermal runaway, densification 50→97% TD
3. **Hold (120-300s):** 1800°C, 300 V/cm, grain stabilization
4. **Cool (300-600s):** Field off, N₂ quench 10°C/min

**Port 8A Mold Fill:**
- 3Y-TZP powder flows directly from flash cell to mold
- 2 molds × 10 kg = 20 kg per batch (2 cycles)
- N₂ quench, stamp, LIBS, Data Matrix per PROD-08

### 7.4 Zone 8-4: Residual Separation and Cool Down

**Residual Stream Composition (after ZrO₂/3Y-TZP removal):**
- Al₂O₃: 7-10 kg
- TiO₂: 2-4 kg
- REE oxides: 1.3 kg (minus Y₂O₃ used)
- Cr₂O₃: 0.3 kg
- MgO: 7.8 kg (unchanged)
- CaO/SiO₂ slag: 15-20 kg (depleted in SiO₂)
- FeO/MnO: reduced by carbon
- Carbon: 1-3 kg

**Separation at 150 RPM:**
- TiO₂ (ρ=4.23) → r_eq = 270 mm
- Al₂O₃ (ρ=3.95) → r_eq = 265 mm
- REE oxides (ρ=5-7) → r_eq = 280 mm
- Slag (ρ=2.8) → r_eq = 200 mm

**Final Outputs:**
- **Port 8A (final):** Al₂O₃/TiO₂/REE concentrate → FOLLOW-21 hydromet
- **Drum residue:** CaO-SiO₂-MgO slag + FeO/MnO → Phoenix Protocol stockpile

---

## 8. UHTC Composite Integration — Drum Material Loop Closure

### 8.1 ZrB₂ Synthesis (Carbothermal)

**Reaction:**
```
ZrO₂ + B₂O₃ + 5C → ZrB₂ + 5CO    ΔH° = +850 kJ/mol at 1800°C
```

**Process (FOLLOW-32 scope, Stage 8 provides precursors):**
- ZrO₂ from Stage 8 dissociation (3.2 kg/batch)
- B₂O₃ from NdFeB boron (0.07 kg/batch) + supplemental
- Carbon from char residue (1-3 kg/batch)
- Temperature: 1800°C, 2 hr, Ar atmosphere
- **Product:** ZrB₂ powder, 99% purity, <1 μm

### 8.2 ZrB₂-SiC Drum Material (PROD-04 Loop)

**Drum Composition:** ZrB₂ (70 vol%) + SiC (30 vol%)
- ZrB₂ from Stage 8 carbothermal
- SiC from Stage 3 char carbothermal + supplemental
- **Flash sintered** at 1900°C/5 min (same technology as 3Y-TZP)
- **Closed loop:** Drum material produced from Forge's own output

**Mass Balance — Drum Material per Batch:**
```
ZrB₂ needed per drum: 50 kg (ZrB₂-SiC composite, 70/30)
ZrB₂ from Stage 8: 3.2 kg/batch
Batches per drum: 16
Drum life: 500 batches → 31 drum lifetimes per batch equivalent
```

### 8.3 Ti₃AlC₂ MAX Phase Synthesis (FOLLOW-32)

**Reaction:**
```
3TiO₂ + Al₂O₃ + 4C → Ti₃AlC₂ + 4CO
```
- TiO₂ from Stage 8 (0.7+ kg/batch)
- Al₂O₃ from Stage 8 (5+ kg/batch)
- Carbon from char
- **Product:** Ti₃AlC₂ powder → MXene (Ti₃C₂Tₓ) via HF etching (FOLLOW-32)

---

## 9. Output Streams

### 9.1 Stream Summary Table

| Stream | Port | Temp (°C) | Mass/Batch | Composition | Downstream |
|---|---|---|---|---|---|
| **3Y-TZP Powder** | 8A | 1800→25 | 3.2 kg | ZrO₂ 94.8%, Y₂O₃ 5.2%, 0.5 μm | Flash sinter → PROD-04 drum, parts |
| **Fumed SiO₂** | 8B | 50 | 1.35 kg | SiO₂ 99.9%, 50 nm, 200 m²/g | Aerogel (FOLLOW-09), geopolymer, sale |
| **REE Oxide Concentrate** | 8A (final) | 1600 | 1.5 kg | Nd/Sm/Dy/Y oxides, Al₂O₃, TiO₂ | FOLLOW-21 hydromet → FOLLOW-33 magnets |
| **α-Al₂O₃** | 8A (final) | 1600 | 5 kg | Al₂O₃ 99.9% | MAX Phase (FOLLOW-32), abrasives |
| **TiO₂ (rutile)** | 8A (final) | 1600 | 2 kg | TiO₂ 99% | MXene (FOLLOW-32), Ti₃AlC₂ |
| **ZrB₂ Precursor** | 8A (final) | 1800 | 2 kg | ZrO₂+B₂O₃+C mix | FOLLOW-32 carbothermal → ZrB₂ |
| **Residual Slag** | — | 1600 | 15 kg | CaO-SiO₂-MgO-FeO-MnO | Phoenix Protocol stockpile |

### 9.2 Mass Balance per 500 kg Batch

```
MASS BALANCE — STAGE 8 (Terminal Stage, per 500 kg Mixed Feedstock)
═════════════════════════════════════════════════════════════════════════════════

INPUT (from Stage 7 slag + mineral residue):
├── Stage 7 slag: 65 kg at 1600°C
│   ├── CaO: 16.3 kg, SiO₂: 22.8 kg, MgO: 7.8 kg, Al₂O₃: 5.2 kg
│   ├── FeO: 6.5 kg, MnO: 3.3 kg, REE Oxides: 1.3 kg
│   ├── TiO₂: 0.7 kg, ZrO₂: 0.7 kg, Cr₂O₃: 0.3 kg, B₂O₃: 0.07 kg
├── Mineral residue (ZrSiO₄, Al₂O₃, SiC, etc.): 5 kg
│   ├── ZrSiO₄: 3 kg, Al₂O₃: 2 kg, SiC: 0.5 kg, Carbon: 1 kg
└── TOTAL INPUT: 70 kg

STAGE 8 PROCESSING:
├── Ar/He atmosphere: mass negligible
├── Y₂O₃ addition (for 3Y-TZP): +0.17 kg
├── B₂O₃ addition (for ZrB₂): +0.5 kg (supplemental)
├── Carbon addition (carbothermal): +2 kg (supplemental char)
└── Net processing: 72.67 kg

OUTPUTS:
├── 3Y-TZP Powder (Port 8A): 3.2 kg
│   └── ZrO₂: 3.04 kg, Y₂O₃: 0.16 kg
├── Fumed SiO₂ (Port 8B): 1.35 kg
│   └── SiO₂: 1.34 kg (99.9%)
├── REE Oxide Concentrate (Port 8A final): 1.5 kg
│   └── Nd₂O₃: 0.6, Sm₂O₃: 0.3, Dy₂O₃: 0.1, Y₂O₃: 0.2, Al₂O₃: 0.2, TiO₂: 0.1
├── α-Al₂O₃ (Port 8A final): 5.0 kg
│   └── Al₂O₃: 4.95 kg
├── TiO₂ Rutile (Port 8A final): 2.0 kg
│   └── TiO₂: 1.98 kg
├── ZrB₂ Precursor Mix (Port 8A final): 2.0 kg
│   └── ZrO₂: 1.0, B₂O₃: 0.5, C: 0.5
├── Residual Slag (Drum): 15 kg
│   └── CaO: 10, SiO₂: 3, MgO: 2, FeO: 1, MnO: 0.5
├── Off-Gas: ~3 kg
│   └── CO, CO₂, SiO (trace), Ar, He
└── TOTAL OUTPUT: ~73 kg ≈ 72.67 kg ✓

MATERIAL RECOVERY:
├── Zr (as ZrO₂/ZrB₂/3Y-TZP): >99% of feed Zr
├── Si (as fumed SiO₂): >90% of feed Si (balance in slag)
├── REE (Nd, Sm, Dy, Y): >95% to concentrate
├── Al (as α-Al₂O₃): >90% to concentrate
├── Ti (as TiO₂): >90% to concentrate
└── Fe/Mn: >90% to residual slag (Phoenix stockpile)
```

---

## 10. Throughput and Quality

### 10.1 Production Targets

| Metric | Target | Measurement | Frequency |
|---|---|---|---|
| **Batch Cycle Time** | 90 min (Stage 8) / 3.5 hr (full cascade) | Timer | Per batch |
| **Throughput** | 500 kg/batch (65 kg slag feed) | Scale | Per batch |
| **Annual Capacity** | 1,200 batches/yr (24/7, 85% avail.) | — | Annual |
| **ZrSiO₄ Dissociation** | >95% | XRD (ZrSiO₄ residual) | Per batch |
| **3Y-TZP Density** | >97% TD | Archimedes | Per batch |
| **3Y-TZP Grain Size** | 0.5 ±0.1 μm | SEM | Per shift |
| **Fumed SiO₂ SSA** | 200 ±20 m²/g | BET | Per batch |
| **REE Recovery to Concentrate** | >95% | ICP-OES (mass balance) | Per batch |
| **Al₂O₃ Recovery** | >90% | ICP-OES | Per batch |
| **TiO₂ Recovery** | >90% | ICP-OES | Per batch |
| **pO₂ (process)** | <10⁻¹⁵ atm | Zirconia probe | Continuous |

### 10.2 Product Quality Specifications

| Product | Specification | Standard | Verification |
|---|---|---|---|
| **3Y-TZP Powder** | ZrO₂ 94.8%, Y₂O₃ 5.2%, 0.5μm, 97% TD | ASTM C1459 | Per batch (density, SEM, ICP) |
| **Fumed SiO₂** | SiO₂>99.9%, 50nm, 200m²/g | ASTM D3849 | Per batch (BET, ICP) |
| **REE Concentrate** | Nd+Sm+Dy+Y >60%, Al₂O₃<15% | FOLLOW-21 feed spec | Per batch (LIBS, assay) |
| **α-Al₂O₃** | Al₂O₃>99.9%, <0.1μm | ASTM C1189 | Per batch (ICP, PSD) |
| **TiO₂ Rutile** | TiO₂>99%, rutile>95% | ASTM D3720 | Per batch (XRD, ICP) |
| **ZrB₂ Precursor** | ZrO₂:B₂O₃:C = 1:0.5:0.5 molar | FOLLOW-32 spec | Per batch (XRD, ICP) |

---

## 11. Energy Balance

### 11.1 Energy Inputs

| Energy Source | Quantity | Notes |
|---|---|---|
| **Induction (Zone 8)** | 420 kWh/batch | 500 kW × 0.75 hr × 0.989 eff × 1.12 (radiative) |
| **Ar/He Gas Supply** | 15 kWh/batch | Compression, purification |
| **Flash Sintering (3Y-TZP)** | 6.25 kWh/batch | 75 kW × 5 min × 2 cycles |
| **SiO₂ Condenser Cooling** | 10 kWh/batch | Water cooling, 50 L/min |
| **Y₂O₃/B₂O₃/C Additions** | 8 kWh/batch | Precursor production energy |
| **Off-gas Treatment** | 5 kWh/batch | PROD-07 allocation (minimal) |
| **Control/Instrumentation** | 5 kWh/batch | FBG, pyrometer, MS, ZVS, PID |
| **TOTAL GROSS ENERGY** | **469 kWh/batch** | |

### 11.2 Energy Recovery

| Recovery Source | Quantity | Notes |
|---|---|---|
| **Sensible Heat (Stage 7 slag)** | 40 kWh/batch | Slag enters at 1600°C |
| **Sensible Heat (molds)** | 20 kWh/batch | Mold preheat recovery |
| **SiO₂ Condensation Heat** | 15 kWh/batch | Latent heat recovery |
| **Off-gas Sensible Heat** | 10 kWh/batch | Heat exchanger |
| **TOTAL RECOVERED** | **85 kWh/batch** | |

### 11.3 Net Energy Balance

```
ENERGY BALANCE — STAGE 8 (Per 500 kg Batch, Terminal Stage)
═════════════════════════════════════════════════════════════════════════════════

GROSS ENERGY INPUT:     469 kWh
ENERGY RECOVERED:       -85 kWh
NET ENERGY CONSUMED:    384 kWh/batch

ENERGY INTENSITY:
├── Per kg 3Y-TZP:      384 kWh / 3.2 kg = 120 kWh/kg 3Y-TZP
├── Per kg feedstock:   384 kWh / 500 kg = 0.77 kWh/kg feed
└── Per $ revenue:      384 kWh / $8,500 = 0.045 kWh/$

EXERGY ANALYSIS:
├── Induction exergy: 420 kWh × 1.0 = 420 kWh
├── Gas/precursor exergy: 28 kWh × 0.95 = 26.6 kWh
├── Flash sinter exergy: 6.25 kWh × 1.0 = 6.25 kWh
├── Recovered exergy: 85 kWh × 0.5 = 42.5 kWh
├── Net exergy: 452.85 - 42.5 = 410.35 kWh
├── Product exergy (3Y-TZP): 3.2 kg × 50 kWh/kg = 160 kWh
├── Product exergy (SiO₂): 1.35 kg × 5 kWh/kg = 6.75 kWh
├── Product exergy (REE): 1.5 kg × 200 kWh/kg = 300 kWh
├── Product exergy (Al₂O₃/TiO₂): 7 kg × 20 kWh/kg = 140 kWh
├── **Total product exergy: 606.75 kWh**
├── **Exergy efficiency: 606.75 / 410.35 = 148%** (chemical exergy dominates)
└── Thermal exergy efficiency: (160+6.75) / 410.35 = 41%

COMPARISON:
├── Conventional 3Y-TZP: 80-120 kWh/kg (sintering + milling)
├── Conventional fumed SiO₂: 20-30 kWh/kg (flame hydrolysis)
├── Aegis-Forge Stage 8: 120 kWh/kg 3Y-TZP (but co-produces SiO₂, REE, Al₂O₃, TiO₂)
└── **System-level: cascade integration eliminates separate plants**
```

---

## 12. Safety and Emissions

### 12.1 Hazard Identification (HAZOP Summary)

| Hazard | Cause | Consequence | Mitigation | SIL |
|---|---|---|---|---|
| **SiO gas release** | ZrSiO₄ dissociation, condenser failure | SiO oxidation → SiO₂ respirable dust, asphyxiation | Redundant condenser, continuous SiO MS, Ar purge | SIL-2 |
| **REE dust (nano-oxides)** | 3Y-TZP, REE concentrate handling | Respiratory sensitization, long-term | HEPA, sealed containers, PAPR, glove boxes | SIL-2 |
| **High-temp radiation** | 2200°C surfaces | Severe burns, eye damage | IR shielding, aluminized PPE, remote handling | SIL-1 |
| **Ar/He asphyxiation** | Inert gas leak in confined space | Oxygen displacement, death | O₂ monitors (<19.5% alarm), ventilation | SIL-2 |
| **Electric flash sintering** | 300 V/cm DC field | Electrocution, arc flash | Interlocked enclosure, ground fault, PPE | SIL-2 |
| **Thermal runaway** | Radiative loss control failure | Drum damage, refractory failure | Pyrometer triplicate, power cut at 2250°C | SIL-2 |
| **ZrN formation** | N₂ contamination at >1600°C | Drum embrittlement | Ar/He purity >99.999%, N₂ monitor | SIL-1 |

### 12.2 Emission Monitoring and Limits

| Emission Point | Parameter | Limit | Monitoring |
|---|---|---|---|
| **Port 8B Condenser** | SiO/SiO₂ | <1 mg/Nm³ | Continuous MS |
| **PROD-07 Stack** | REE (nano) | <0.1 mg/Nm³ | Filter + ICP-MS per shift |
| **Fugitive (Forge)** | SiO₂ respirable | <0.05 mg/m³ | Area monitors (photometer) |
| **Fugitive (Forge)** | O₂ | >19.5% | Electrochemical sensors |
| **Fugitive (Forge)** | Radiation | <2.5 μSv/hr | TLD badges, area monitors |

---

## 13. Control System

### 13.1 Control Architecture — Stage 8 Specific

**Cascade PID Structure (from PROD-10, extended for Stage 8):**
```
STAGE 8 CONTROL HIERARCHY
══════════════════════════

SUPERVISORY (1 Hz)
├── Batch State Machine: CHARGE → DISSOCIATION → FLASH_SINTER → RESIDUAL_SEP → COOLDOWN
├── Recipe Management: Temp profile, RPM, gas, power, pO₂, precursor additions
├── Quality Gate: XRD dissociation, 3Y-TZP density, SiO₂ SSA
├── Precursor Management: Y₂O₃, B₂O₃, C inventory, addition scheduling
└── Phoenix Registry: Slug UUID, grade, downstream route (FOLLOW-16,21,32)

ZONE 8 PID (1 kHz) — PROD-10 Zone 8
├── Master: Drum wall temp (FBG median, 48 sensors) → Power setpoint
├── Slave 1: Resonance tracking (GaN inverter) → Frequency/phase (1 kHz ZVS)
├── Slave 2: POF level (slag height) → Feed rate
├── Slave 3: Gas analyzer (Ar, He, O₂, SiO) → MFC setpoints, condenser flow
├── Slave 4: Pyrometer (surface) → Temp cross-check
├── Slave 5: ZrO₂ probe (pO₂) → Ar/He ratio, getter status
├── Slave 6: Flash sinter cell (V, I, T) → Field profile, duration
├── Slave 7: Port 8A mold FBG (6 per mold) → N₂ quench flow
└── Slave 8: Port 8B condenser temp → Coolant flow

DISSOCIATION MONITOR (10 Hz)
├── READ MS_SiO₂ → p_SiO₂
├── TARGET p_SiO₂ = 10⁻³ atm
├── IF p_SiO₂ > 10⁻²: INCREASE Ar sweep, DECREASE power
├── IF p_SiO₂ < 10⁻⁴: DECREASE Ar sweep (SiO₂ re-deposition risk)
├── CALCULATE X_diss = 1 - (p_SiO₂_measured / p_SiO₂_initial)^(1/3)
├── IF X_diss < 0.95 at t=25 min: EXTEND dwell, ALERT

FLASH SINTER CONTROL (100 Hz)
├── READ V_cell, I_cell, T_pyrometer
├── TARGET: T=1800°C, E=300 V/cm, t=300s
├── RAMP: E = 100 + 200×(t/60) V/cm for t<60s
├── FLASH DETECTION: dI/dt > threshold → thermal runaway start
├── HOLD: E = 300 V/cm, PID on T_pyrometer
├── IF T > 1850°C: REDUCE E, ALERT
├── COOL: E = 0, N₂ quench profile

DUAL-PORT CAROUSEL CONTROL (10 Hz)
├── Port 8A (3Y-TZP): 2 molds × 10 kg, flash sinter sync
├── Port 8A (final): Al₂O₃/TiO₂/REE concentrate
├── Port 8B (SiO₂): Continuous condenser, no mold
├── Cool: N₂ quench profile per material
├── Demold/Stamp/LIBS/Registry: per PROD-08

SAFETY INTERLOCKS (Hardwired, <10 ms)
├── pO₂ > 10⁻¹⁰ atm → Emergency Ar flood, power cut
├── SiO > 10 ppm in off-gas → Condenser check, power cut
├── Temp > 2250°C → Power cut, Ar flood
├── Pressure > 1.3 bar → Vent, power cut
├── Vibration > 3 G → Power cut (lower RPM = lower G tolerance)
├── FBG comm loss > 100 ms → Power cut
├── Flash cell V > 200V or I > 600A → Power cut
├── Carousel position error > 1° → E-stop
└── O₂ area < 19.5% → Evacuation alarm, Ar purge
```

### 13.2 Key Control Algorithms

**Zircon Dissociation Control:**
```
X_diss_target = 0.95
p_SiO₂_setpoint = 10⁻³ atm
MEASURED_X_diss = 1 - (MS_SiO₂ / MS_SiO₂_initial)^(1/3)
ERROR_diss = X_diss_target - MEASURED_X_diss
IF ERROR_diss > 0.05 at t>20 min:
    EXTEND dwell by ERROR_diss × 600 s
    INCREASE power by 10%
    LOG to batch record
```

**Flash Sinter Detection:**
```
FLASH_DETECTED = (dI_cell/dt > 50 A/s) AND (T_pyrometer > 1750°C)
IF FLASH_DETECTED:
    LOG flash_time
    SWITCH to hold_mode (E=300 V/cm constant)
    TARGET_T = 1800°C
    PID_GAINS: Kp=0.5, Ki=0.01, Kd=0.1 (pre-tuned)
```

**REE/Al/Ti Separation Verification:**
```
IF Zone 8-4 active:
    READ XRF_residual → C_Al, C_Ti, C_REE, C_Zr
    IF C_Zr > 5% in residual: ZrO₂ carryover → ALERT, adjust Zone 8-3 duration
    IF C_REE < 5% in concentrate: REE loss → ALERT, check Zone 8-2 dissociation
```

---

## 14. Cross-Reference Matrix

| This Doc Section | Referenced Document | Referenced Section | Dependency Type |
|---|---|---|---|
| 1.1, 1.3 | PROD-02 | Stage 8 parameters, cascade temps | Input (thermal profile) |
| 1.3, 9.2 | PROD-20 | Stage 7 slag composition, temp | Input (primary feed) |
| 1.3 | PROD-13 | Mineral residue categories | Input (ZrSiO₄, Al₂O₃, TiO₂) |
| 2.1, 2.2 | FOLLOW-16 | ZrSiO₄ dissociation kinetics | Method (kinetics) |
| 3.1, 3.2 | FOLLOW-15 | Y₂O₃ supply for 3Y-TZP | Input (Y₂O₃ source) |
| 3.2, 9.1 | FOLLOW-32 | 3Y-TZP flash sinter, UHTC | Downstream (drum material) |
| 4.1, 4.2 | FOLLOW-32 | Flash sintering methodology | Method (flash sinter) |
| 5.1, 9.1 | FOLLOW-09 | Fumed SiO₂ aerogel precursor | Downstream (aerogel) |
| 6.1, 6.2 | FOLLOW-21 | Al₂O₃/TiO₂ hydromet separation | Downstream (hydromet) |
| 6.2, 9.1 | FOLLOW-32 | TiO₂ → Ti₃AlC₂ → MXene | Downstream (MAX Phase) |
| 7.2, 7.3 | PROD-04 | Drum material specs (ZrB₂-SiC) | Output (drum loop closure) |
| 8.1, 8.2 | FOLLOW-32 | ZrB₂ carbothermal, Ti₃AlC₂ | Downstream (UHTC) |
| 8.2 | PROD-04 | Drum life, material requirements | Input (drum demand) |
| 9.1, 9.2 | PROD-08 | ZrO₂ mold specs, stamp, LIBS | Output (slug catalog) |
| 10.3 | PROD-24 | Exergy analysis methodology | Method (energy) |
| 11.1, 11.2 | PROD-26 | GIC immunity, electrical safety | Safety (electrical) |
| 12.1 | PROD-23 | Distributed control architecture | Architecture (control) |
| 13 | PROD-38 | Configuration management | Process (version control) |
| 2.3 | PROD-05 | AMLS zircon liberation | Upstream (feed prep) |
| 3.2 | PROD-18 | Stage 5 YInMn Blue Y₂O₃ source | Cross-link (Y₂O₃) |

---

## Appendix A: Stage 8 Quick-Reference Card

```
╔═══════════════════════════════════════════════════════════════════════════════════╗
║                   AEGIS-FORGE I — STAGE 8 QUICK REFERENCE                         ║
║                  Mineral Residue & Zircon (1600-2200°C)                           ║
╠═══════════════════════════════════════════════════════════════════════════════════╣
║ PARAMETERS                                                                        ║
║   Temp: 1600-2200°C (±15°C)   │  RPM: 150 (G=10.4)   │  Time: 90 min             ║
║   Freq: 1 kHz (Zone 8)        │  Power: 500 kW peak  │  Gas: Ar/He 95/5, 1.1 bar ║
║   pO₂: <10⁻¹⁵ atm             │  Port 8: 25mm @ 280mm, 1700°C                     ║
║   Port 8A: 15mm, 1800°C (3Y-TZP)  │  Port 8B: 10mm SiO₂ condenser                ║
╠═══════════════════════════════════════════════════════════════════════════════════╣
║ FEED (per 500 kg batch)                                                           ║
║   Stage 7 Slag: 65 kg @ 1600°C, B=1.2, MgO/Al₂O₃=1.5 (free flux from dross)      ║
║   ZrSiO₄: 3 kg  │  Al₂O₃: 7-10 kg  │  TiO₂: 2-4 kg  │  REE Oxides: 1.3 kg        ║
╠═══════════════════════════════════════════════════════════════════════════════════╣
║ SEQUENCE                                                                          ║
║   1. CHARGE: Slag at 1600°C, Ar/He inert, pO₂<10⁻¹⁵                              ║
║   2. DISSOCIATION: 1676→1700°C, 30 min, ZrSiO₄→ZrO₂+SiO₂(g), SiO₂→Port 8B       ║
║   3. 3Y-TZP FLASH: 1800°C, 5 min, 300 V/cm, Y₂O₃ injection → Port 8A molds       ║
║   4. RESIDUAL SEP: 150 RPM, Al₂O₃/TiO₂/REE centrifuge → Port 8A final            ║
║   5. COOLDOWN: 1800→1600°C, residual slag → Phoenix stockpile                    ║
╠═══════════════════════════════════════════════════════════════════════════════════╣
║ OUTPUTS                                                                           ║
║   3Y-TZP: 3.2 kg (97% TD, 0.5μm) → PROD-04 drum, parts                           ║
║   Fumed SiO₂: 1.35 kg (50nm, 200m²/g) → Aerogel, geopolymer, sale               ║
║   REE Concentrate: 1.5 kg (Nd/Sm/Dy/Y) → FOLLOW-21 hydromet                      ║
║   α-Al₂O₃: 5 kg  │  TiO₂: 2 kg  │  ZrB₂ precursor: 2 kg → FOLLOW-32             ║
║   Residual Slag: 15 kg → Phoenix Protocol stockpile                              ║
╠═══════════════════════════════════════════════════════════════════════════════════╣
║ KEY SPECS                                                                         ║
║   ZrSiO₄ Dissoc: >95% @ 1700°C/30min  │  3Y-TZP: 97% TD, 0.5μm                   ║
║   Fumed SiO₂: 200m²/g, 50nm           │  REE Recovery: >95% to concentrate       ║
║   Net Energy: 384 kWh/batch           │  Exergy Eff: 41% (thermal), 148% (chem)  ║
╠═══════════════════════════════════════════════════════════════════════════════════╣
║ SAFETY: SIL-2  │  SiO gas <1mg/Nm³  │  REE dust HEPA  │  Ar/He O₂>19.5%  │       ║
╚═══════════════════════════════════════════════════════════════════════════════════╝
```

---

## Appendix B: UHTC Precursor Specifications for FOLLOW-32

```
UHTC PRECURSOR SPECIFICATIONS (Stage 8 Output to FOLLOW-32)
════════════════════════════════════════════════════════════════════════════════════

1. ZrB₂ CARBOTHERMAL PRECURSOR MIX
   Composition (molar):
   ├── ZrO₂: 1.0 mol (from Stage 8 dissociation, 3.2 kg available)
   ├── B₂O₃: 1.0 mol (0.07 kg from NdFeB + supplemental)
   ├── C: 5.0 mol (from char residue + supplemental)
   └── Total: 2.0 kg mix per batch (yields ~1.5 kg ZrB₂ after reaction)
   
   Reaction: ZrO₂ + B₂O₃ + 5C → ZrB₂ + 5CO  (1800°C, 2 hr, Ar)
   Product spec: ZrB₂ >99%, O <0.5%, C <0.3%, Fe <0.02%
   Use: PROD-04 drum material (70 vol% ZrB₂ + 30 vol% SiC)

2. Ti₃AlC₂ MAX PHASE PRECURSOR MIX
   Composition (molar):
   ├── TiO₂: 3.0 mol (from Stage 8, 2+ kg available)
   ├── Al₂O₃: 1.0 mol (from Stage 8, 5+ kg available)
   ├── C: 4.0 mol (from char residue)
   └── Total: 1.5 kg mix per batch (yields ~1.0 kg Ti₃AlC₂)
   
   Reaction: 3TiO₂ + Al₂O₃ + 4C → Ti₃AlC₂ + 4CO  (1500°C, 4 hr, Ar)
   Product spec: Ti₃AlC₂ >98%, Al₄C₃ <1%, TiC <1%
   Use: FOLLOW-32 → MXene (Ti₃C₂Tₓ) via HF etching → EMI shields, supercaps

3. 3Y-TZP FLASH SINTER FEED
   Composition:
   ├── ZrO₂: 3.04 kg (from Stage 8 dissociation)
   ├── Y₂O₃: 0.16 kg (3 mol%, from FOLLOW-15 Y-product)
   └── Total: 3.2 kg powder per batch
   
   Flash sinter: 1800°C, 300 V/cm, 5 min, 75 kW
   Product: 3.2 kg 3Y-TZP (97% TD, 0.5 μm grain)
   Use: PROD-04 drum components, PROD-06 fasteners, PROD-07 crucibles
```

---

## Appendix C: Stage 8 Economic Analysis

```
STAGE 8 ECONOMIC ANALYSIS (Per 500 kg Batch, Terminal Stage)
════════════════════════════════════════════════════════════════════════════════════

REVENUE STREAMS:
├── 3Y-TZP Powder (3.2 kg @ $200/kg):       $640
├── Fumed SiO₂ (1.35 kg @ $12/kg):          $16.20
├── REE Concentrate (est. value):           $4,500
│   ├── Nd₂O₃: 0.6 kg @ $45/kg = $27
│   ├── Sm₂O₃: 0.3 kg @ $15/kg = $4.50
│   ├── Dy₂O₃: 0.1 kg @ $300/kg = $30
│   ├── Y₂O₃: 0.2 kg @ $30/kg = $6
│   └── FOLLOW-21 recovery 95%+ → $4,500 est. recovered value
├── α-Al₂O₃ (5 kg @ $15/kg):                $75
├── TiO₂ Rutile (2 kg @ $10/kg):            $20
├── ZrB₂ Precursor (internal, drum value):  $1,200
│   (16 batches/drum × $200/kg × 50 kg ZrB₂ = $1,200/batch equivalent)
├── Residual Slag (Phoenix stockpile):      Internal (future hydromet)
└── TOTAL REVENUE:                          $6,451

OPERATING COSTS:
├── Electricity (384 kWh net @ $0.12):      $46.08
├── Ar/He Gas:                              $20.00
├── Y₂O₃ (0.17 kg @ $30/kg):                $5.10
├── B₂O₃ (0.5 kg @ $50/kg):                 $25.00
├── Supplemental Carbon (2 kg @ $0.50/kg):  $1.00
├── ZrO₂ Mold Amortization (2 molds):       $20.00
├── Flash Sinter Electrodes:                $10.00
├── Condenser Maintenance:                  $15.00
├── Consumables (filters, gaskets):         $10.00
├── Labor (automated, 0.1 FTE/batch):       $25.00
└── TOTAL OPERATING COST:                   $177.18

GROSS MARGIN PER BATCH:                     $6,274
GROSS MARGIN %:                             97.2%

ANNUALIZED (1,200 batches/yr):
├── Revenue:              $7.74M
├── Operating Cost:       $213K
├── Gross Margin:         $7.53M
└── Payback (Machine $230K):  37 batches (4.6 days)

STRATEGIC VALUE (Non-Monetary — INFINITE):
├── **Drum Material Self-Production**: ZrB₂-SiC from Forge output → ZERO supply chain risk
├── **3Y-TZP Self-Production**: Fasteners, crucibles, armor from Forge output
├   **Fumed SiO₂ Self-Production**: Aerogel insulation (λ=0.010) for Forge
├── **REE Closed Loop**: Magnets → Forge → Hydromet → Oxides → Magnets (FOLLOW-33)
├── **MAX Phase Self-Production**: Ti₃AlC₂ → MXene for EMI, energy storage
├── **Carbon Negative Potential**: Char → C for carbothermal → CO for Stage 7
└── **Zero Critical Mineral Imports**: Zr, Y, Ti, Al, Si, REE all domestic

SENSITIVITY ANALYSIS:
├── REE Price -30%:     Margin $4,800/batch (REE = 70% of external revenue)
├── Electricity +50%:   Margin $6,250/batch (energy = minor)
├── Y₂O₃ Price +100%:   Margin $6,260/batch (Y₂O₃ = minor)
├── ZrSiO₄ Feed -50%:   Margin $5,500/batch (3Y-TZP reduced)
└── **Most sensitive to: REE prices, ZrSiO₄ feed availability, drum lifetime**

CASCADE ECONOMIC INTEGRATION:
Stage 8 is the **keystone** of the Aegis-Forge economic model:
- Produces the drum material (ZrB₂-SiC) that enables the Forge to exist
- Produces the insulation (aerogel from SiO₂) that enables thermal efficiency
- Produces the REE oxides that enable magnet manufacturing (FOLLOW-33)
- Produces the MAX Phase (Ti₃AlC₂) for EMI shielding (Carrington hardening)
- **Without Stage 8, the Forge cannot build itself. With Stage 8, the Forge replicates.**
```

---

*End of PROD-21: Stage 8 Mineral Residue & Zircon*
*CSMFAB000000000129 — Aegis-Forge I Thermal Cascade Inductive Material Separator*
*Series: Product Document 21 of 40*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*