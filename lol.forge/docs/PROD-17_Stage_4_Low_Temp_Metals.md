# CSMFAB000000000125
## Aegis-Forge I: Stage 4 — Low-Temperature Metals Separation (Pb, Sn, Zn, In)
### Indium-First Strategy, Density Stratification, and Solder Alloy Formation
**Document Number:** CSMFAB000000000125
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator — Product Document 17
**Classification:** Engineering Specification — Manufacturing Release
**Revision:** A (Initial Release)
**Date:** November 2026
**Authors:** CSMFAB Engineering Team
**Distribution:** CSM Forge Division, Phoenix Protocol Division, Materials Synthesis Group

---

## 1. Stage 4 Parameters and Cascade Context

### 1.1 Stage Parameters Table

| Parameter | Value | Tolerance | Notes |
|---|---|---|---|
| **Stage Number** | 4 (Low-Temperature Metals) | — | Follows Stage 3 Pyrolysis (450-700°C) |
| **Temperature Range** | 420-900°C | ±3°C (tightened to ±1°C at 156-160°C for In) | Stepped ramp: 160→200→280→340→430→450°C |
| **Duration** | 25 minutes total | ±2 min | Includes ramp and dwell at each sub-stage |
| **Drum Rotation** | 400 RPM (In), 300 RPM (Sn/Bi/Pb), 400 RPM (Zn) | ±10 RPM | Variable RPM per sub-stage for optimal separation |
| **Centrifugal G-Force** | 89.2 G (at 400 RPM, r=300mm), 50.2 G (at 300 RPM) | — | Enables density stratification of molten metals |
| **Atmosphere** | N₂ at 1.5 bar + 5% H₂ reducing | ±0.1 bar | Prevents oxidation of In, Sn, Pb, Zn |
| **Induction Frequency** | 50 kHz (Zone 3-4) | — | Optimal skin depth for Zn/Pb/Sn/In particles |
| **Induction Power** | 80 kW peak (Zone 3-4) | ±5 kW | Selective heating of metal particles in solid Al/Cu/Fe matrix |
| **Port Configuration** | Port 4 (12 mm aperture, 300 mm radius) | — | Thermal-actuated Ti₃AlC₂/ZrO₂ valve, PEEK CF40 return spring |
| **Feedstock Input** | ~50 kg/batch (Stage 3 output: char, slag, metal particles) | ±5 kg | From PROD-16 Stage 3 output + residual metals from PROD-13 Categories A-D |
| **Primary Outputs** | In-rich slug, Sn/Pb/Bi solder alloys, Zn dust, Pb bullion, dross to Stage 7 | — | Downstream: FOLLOW-14 (In refining), PROD-19 (Cu/PM) |
| **Safety Class** | SIL-2 (Pb fume, In toxicity, Zn vapor) | — | HEPA + carbon filtration, N₂ inerting, continuous monitoring |

### 1.2 Stage 4 in Cascade Context

```
THERMAL CASCADE — STAGE 4 POSITION
════════════════════════════════════════════════════════════════════════════════

STAGE 3 (PROD-16)                          STAGE 4 (THIS DOCUMENT)                    STAGE 5 (PROD-18)
Pyrolysis & Char                            Low-Temp Metals (Pb/Sn/Zn/In)              Aluminum Window
450-700°C, 45 min                           420-900°C, 25 min                            660-720°C, 30 min
                                              ▼                                              ▼
         ┌─────────────────────────────────────────────────────────────────────────────┐
         │                                                                             │
         │    FEEDSTOCK FROM STAGE 3:                                                  │
         │    • Activated char (C >80%, SA >800 m²/g) → Stage 4 flux + Stage 1 ads.   │
         │    • Pyrolysis slag (CaO, SiO₂, glass fibers, REE oxides) → Stage 7        │
         │    • Metal particles: Pb, Sn, Zn, In, Bi, Au, Ag, Pd (embedded in char)    │
         │    • Residual organics (tar, PAH) → gas management (PROD-07)               │
         │                                                                             │
         │    STAGE 4 PROCESS:                                                         │
         │    ┌─────────────────────────────────────────────────────────────────────┐  │
         │    │ STEP 1 (160°C, 5 min): In liquefies alone — centrifuges to Port 4A │  │
         │    │ STEP 2 (200°C, 3 min): Sn-Pb eutectic (183°C) → Port 4B             │  │
         │    │ STEP 3 (280°C, 3 min): Bi (271°C) + Sn (232°C) → Port 4B           │  │
         │    │ STEP 4 (340°C, 3 min): Pb (327°C) → Port 4C                        │  │
         │    │ STEP 5 (430°C, 10 min): Zn (420°C) + Zamak → Port 4C               │  │
         │    │ STEP 6 (450-660°C): Ramp to Stage 5 — Al remains solid             │  │
         │    └─────────────────────────────────────────────────────────────────────┘  │
         │                                                                             │
         │    OUTPUTS:                                                                 │
         │    • In-rich slug → Electrodeposition (FOLLOW-14) → 99.9% In → YInMn       │
         │    • Sn/Pb/Bi solder ingots → Commercial sale / internal tooling           │
         │    • Zn dust → Zinc oxide / galvanizing feedstock                          │
         │    • Pb bullion → Battery recycling / radiation shielding                  │
         │    • Dross (oxides, flux residue, Au/Ag/Pd) → Stage 6 (PROD-19)           │
         │    • Activated char consumed as flux → Stage 4 residue to Stage 7         │
         │                                                                             │
         └─────────────────────────────────────────────────────────────────────────────┘

PHYSICAL SEPARATION PRINCIPLE:
• Melting point sequence: In (156.6) < Sn (231.9) < Bi (271.5) < Pb (327.5) < Zn (419.5) < Al (660.3)
• At each melting point, ONLY that metal liquefies — others remain solid
• Centrifugal force (300-400 RPM, G=50-89) drives molten metal radially outward
• Thermal-actuated Port 4 valves (Ti₃AlC₂/ZrO₂) open at precise temperature setpoints
• N₂/H₂ reducing atmosphere prevents oxidation; Na₂CO₃ flux scavenges residual oxygen
• Precious metals (Au, Ag, Pd) partition into In/Sn melt → recovered in Stage 6 (PROD-19)
```

### 1.3 Feedstock Composition from Upstream Stages

| Feedstock Source | Mass per 500 kg Batch | Composition Relevant to Stage 4 | Reference |
|---|---|---|---|
| **Stage 3 Char/Slag (PROD-16)** | 80-150 kg | Metal particles embedded in char matrix: Pb 15-40 kg, Sn 8-25 kg, Zn 5-15 kg, In 0.5-3 kg, Au 100-400 g, Ag 1-5 kg, Pd 50-200 g | PROD-16 Section 8, 11 |
| **Category A: PCBs/Electronics (PROD-13)** | 150-200 kg | High Cu, Au, Ag, Pd; Sn/Pb solder; ITO glass (In); Ni, Fe | PROD-13 Table 2 |
| **Category B: Mixed Plastics (PROD-13)** | 100-150 kg | Low metal content; residual Sn/Pb from wire insulation | PROD-13 Table 3 |
| **Category C: Metals/Appliances (PROD-13)** | 100-150 kg | Zn die-cast (Zamak), galvanized steel, Pb-acid battery plates | PROD-13 Table 4 |
| **Category D: Construction/Demo (PROD-13)** | 50-100 kg | Low metal; mineral residue dominates | PROD-13 Table 5 |
| **Phoenix Protocol Returns (PROD-22)** | 10-30 kg | YInMn Blue pigment (In, Y), CoAl₂O₄ (Co), KNbO₃ (Nb), 3Y-TZP (Y, Zr) | PROD-22, Part V |

**Total Estimated Metal Content per 500 kg Batch (Stage 4 Recoverable):**
- Lead (Pb): 25-55 kg (from solder, batteries, wheel weights)
- Tin (Sn): 12-30 kg (from solder, plating, alloys)
- Zinc (Zn): 10-25 kg (from die-cast, galvanizing)
- Indium (In): 1-5 kg (from ITO coatings, LCD panels — CRITICAL MINERAL)
- Bismuth (Bi): 1-5 kg (from fusible alloys, cosmetics)
- Gold (Au): 100-500 g (partitioning into In/Sn melt)
- Silver (Ag): 1-8 kg (partitioning into In/Sn melt)
- Palladium (Pd): 50-300 g (partitioning into In/Sn melt)

---

## 2. Indium-First Separation Strategy

### 2.1 Indium Melting Point — The Separation Key

Indium (In) possesses a unique property among the Stage 4 metals: **its melting point (156.6°C) is significantly below all other metals in the feedstock**. At 156.6°C, indium transitions from solid to liquid while tin (231.9°C), bismuth (271.5°C), lead (327.5°C), zinc (419.5°C), aluminum (660.3°C), copper (1084.6°C), and iron (1538°C) all remain solid.

This creates a **thermodynamic window of absolute selectivity** — a physical separation opportunity that requires no chemical reagents, only precise temperature control.

| Metal | Melting Point (°C) | ΔT from In MP | State at 160°C |
|---|---|---|---|
| **Indium (In)** | **156.6** | **0** | **LIQUID** |
| Tin (Sn) | 231.9 | +75.3 | Solid |
| Bismuth (Bi) | 271.5 | +114.9 | Solid |
| Lead (Pb) | 327.5 | +170.9 | Solid |
| Zinc (Zn) | 419.5 | +262.9 | Solid |
| Aluminum (Al) | 660.3 | +503.7 | Solid |
| Copper (Cu) | 1084.6 | +928.0 | Solid |
| Iron (Fe) | 1538.0 | +1381.4 | Solid |

**The Indium-First Principle:** Heat the drum slowly through 155→157→160°C. Hold at 160°C. Only indium is liquid. Centrifuge at 400 RPM (G=89.2). The liquid indium migrates radially outward to the drum wall and exits through Port 4A (setpoint 160°C). All other metals remain solid particles suspended in the char/carbon matrix, unmoved by centrifugal force because they are not fluid.

### 2.2 Indium-First Process Sequence

```
INDUIM-FIRST PROCESS FLOW
════════════════════════════════════════════════════════════════════════════════

INPUT: Stage 3 output (char + metal particles) → Drum at 150°C → N₂/H₂ atmosphere

STEP 1: INDIUM LIQUEFACTION (155-160°C, 5 min dwell)
├── Ramp: 150 → 155 → 157 → 160°C at 1°C/min through critical range
├── Hold: 160°C for 5 minutes (allows In coalescence)
├── Centrifuge: 400 RPM (89.2 G at drum wall)
├── Valve: Port 4A opens at 160°C (Ti₃AlC₂ actuator calibrated for In MP)
├── Output: In-rich liquid slug (In 60-80%, residual organics 20-40%)
│   └── Organics: tar, light hydrocarbons from char — co-discharge with In
└── Downstream: Electrodeposition refining (FOLLOW-14) → 99.9% In cathode

STEP 2: Sn-Pb EUTECTIC CLEARANCE (183-200°C, 3 min dwell)
├── Ramp: 160 → 183 → 200°C
├── Hold: 200°C for 3 minutes
├── Centrifuge: 300 RPM (50.2 G)
├── Valve: Port 4B opens at 200°C
├── Output: Sn60/Pb40 eutectic slug (primary solder alloy)
│   └── Phase diagram: Sn-Pb eutectic at 183°C, 63% Sn / 37% Pb
└── Downstream: Alloy purification, casting → commercial solder / internal use

STEP 3: Bi + Sn MELT (271-280°C, 3 min dwell)
├── Ramp: 200 → 271 → 280°C
├── Hold: 280°C for 3 minutes
├── Centrifuge: 300 RPM (50.2 G)
├── Valve: Port 4B opens at 280°C
├── Output: Bi-Sn + residual Sn liquid
│   └── Bi-Sn eutectic: 57% Bi / 43% Sn at 139°C (already liquid)
│   └── Pure Sn melts at 232°C — combines with Bi
└── Downstream: Bi-Sn alloy (low-temp solder), Sn recovery

STEP 4: LEAD MELT (327-340°C, 3 min dwell)
├── Ramp: 280 → 327 → 340°C
├── Hold: 340°C for 3 minutes
├── Centrifuge: 300 RPM (50.2 G)
├── Valve: Port 4C opens at 340°C
├── Output: Pb-rich liquid (85-95% Pb)
│   └── Remaining Sn/Bi already removed — high purity Pb achievable
└── Downstream: Pb bullion casting → battery recycling, shielding

STEP 5: ZINC SEPARATION (420-430°C, 10 min dwell)
├── Ramp: 340 → 420 → 430°C
├── Hold: 430°C for 10 minutes (Zn boiling point 907°C — safe margin)
├── Centrifuge: 400 RPM (89.2 G — higher G for Zn vapor suppression)
├── Valve: Port 4C opens at 430°C
├── Output: Zn-rich liquid (85-95% Zn)
│   └── Zamak (Zn/Al/Cu) melts at 380-390°C — included
│   └── Zn vapor pressure at 430°C: ~0.01 Pa — negligible with N₂ blanket
└── Downstream: Zn dust condensation, ZnO production, galvanizing feed

STEP 6: TRANSITION TO STAGE 5 (450-660°C)
├── Ramp: 430 → 450 → 660°C
├── No port discharge — Al solidus at 660°C
├── All Stage 4 metals fully cleared by 450°C
└── Drum at 660°C, 200 RPM → Stage 5 Aluminum Window begins

TOTAL STAGE 4 TIME: ~25 minutes (5 + 3×3 + 10 + ramp time ~5 min)
```

### 2.3 Downstream Indium Refining — 99.9% In Production

The In-rich slug from Step 1 (60-80% In, 20-40% organics) undergoes **electrodeposition refining** to achieve 99.9% purity, directly feeding YInMn Blue pigment production.

**Electrodeposition Parameters (FOLLOW-14 Detail):**

| Parameter | Value | Notes |
|---|---|---|
| **Electrolyte** | In₂(SO₄)₃ 0.5 M in H₂SO₄ 1 M | Indium sulfate in sulfuric acid |
| **Temperature** | 50°C | Optimizes current efficiency |
| **Cathode** | Stainless steel 316L | High H₂ overpotential, In adhesion |
| **Anode** | In-rich slug in Ti basket | Soluble anode, continuous feed |
| **Current Density** | 10-20 mA/cm² | Balance rate vs. dendrite formation |
| **Cell Voltage** | 1.8-2.2 V | Low voltage — energy efficient |
| **Current Efficiency** | >95% | High due to In reduction potential (-0.34 V vs SHE) |
| **Product Purity** | 99.9% In (3N) | Meets YInMn synthesis spec |
| **Production Rate** | ~2 kg In/hour per m² cathode | Scalable with cell count |

**Reaction:**
```
Anode:  In → In³⁺ + 3e⁻
Cathode: In³⁺ + 3e⁻ → In(s) (deposited)
Overall:  In(anode) → In(cathode)  (purification by selective deposition)
```

**Impurity Behavior:**
- Sn, Pb, Bi: More negative reduction potentials — remain in solution
- Cu, Fe, Zn: Co-deposit slightly — controlled by current density
- Organics: Oxidized at anode or filtered pre-electrolysis
- **Result:** Cathode deposit >99.9% In, suitable for YInMn Blue synthesis

**YInMn Blue Connection:**
99.9% In from Stage 4 → YInMn Blue pigment (Y:In:Mn = 1:1:1 molar) → CSMFAB products (thermal barrier coatings, IR-reflective pigments, ceramic glazes). This creates a **closed-loop domestic indium supply chain** — the strategic objective of the Indium-First Strategy.

---

## 3. Metal Melting and Density Stratification

### 3.1 Molten Metal Properties at Separation Temperatures

| Metal | Melting Point (°C) | Boiling Point (°C) | Density Liquid (g/cm³) | Density Solid (g/cm³) | Electrical Resistivity (μΩ·cm) |
|---|---|---|---|---|---|
| **Indium (In)** | 156.6 | 2072 | **7.31** | 7.31 | 8.4 |
| **Tin (Sn)** | 231.9 | 2602 | **6.99** | 7.31 | 11.5 |
| **Bismuth (Bi)** | 271.5 | 1564 | **10.05** | 9.78 | 129 |
| **Lead (Pb)** | 327.5 | 1749 | **10.66** | 11.34 | 20.6 |
| **Zinc (Zn)** | 419.5 | 907 | **6.57** | 7.14 | 5.9 |
| **Aluminum (Al)** | 660.3 | 2470 | 2.38 | 2.70 | 2.7 |

**Key Density Order (Liquid, at respective melting points):**
1. **Lead (Pb): 10.66 g/cm³** — Heaviest → outermost annulus
2. **Bismuth (Bi): 10.05 g/cm³** — Second heaviest
3. **Tin (Sn): 6.99 g/cm³** — Intermediate
4. **Indium (In): 7.31 g/cm³** — Similar to Sn, separates at 160°C before Sn melts
5. **Zinc (Zn): 6.57 g/cm³** — Lightest of the four primary metals

### 3.2 Density Stratification Physics

Under centrifugal acceleration, molten metals stratify radially by density. The equilibrium position of each liquid phase is determined by the balance of centrifugal force, interfacial tension, and viscosity.

**Centrifugal Potential:**
$$\Phi(r) = -\frac{1}{2} \omega^2 r^2$$

**Radial Force Balance at Interface:**
$$\Delta P = \Delta \rho \cdot \omega^2 \cdot r \cdot \Delta r + \frac{2\gamma}{R_{interface}}$$

Where:
- $\Delta \rho$ = density difference between adjacent liquid layers
- $\omega$ = angular velocity (rad/s)
- $r$ = radial position
- $\gamma$ = interfacial tension (typically 0.3-0.5 N/m for molten metals)
- $R_{interface}$ = radius of curvature of interface

**At 400 RPM (ω = 41.89 rad/s, r = 0.3 m):**
- Centrifugal acceleration: $a_c = \omega^2 r = 527 \text{ m/s}^2 = 53.7 \text{ G}$ (at mean radius)
- Pressure gradient in Pb: $\frac{dP}{dr} = \rho \omega^2 r = 10,660 \times 41.89^2 \times 0.3 = 5.6 \text{ MPa/m}$

**Stratification Time Estimate (Stokes settling in centrifugal field):**
$$t_{settle} \approx \frac{18 \mu}{\Delta \rho \cdot \omega^2 \cdot r \cdot d^2}$$
For 1 mm droplets, μ ~ 2 mPa·s (molten metal viscosity), Δρ ~ 3000 kg/m³:
$t_{settle} \approx 0.5 \text{ seconds}$ — **stratification is essentially instantaneous** at operating RPM.

### 3.3 Centrifuge Bowl Zones — Stage 4 Configuration

At 400 RPM during In separation, the drum interior forms three concentric liquid zones:

```
CENTRIFUGE BOWL ZONES — STAGE 4 (400 RPM, G=89.2)
════════════════════════════════════════════════════════════════════════════════

                    DRUM WALL (r = 300 mm)
                    ┌─────────────────────────┐
                    │                         │
                    │   OUTER ZONE            │  ← PORT 4C (Pb, 340°C)
                    │   Lead (Pb)             │      Density: 10.66 g/cm³
                    │   ρ = 10.66 g/cm³       │      r = 250-300 mm
                    │   Thickness: ~5-10 mm   │
                    ├─────────────────────────┤
                    │                         │
                    │   MIDDLE ZONE           │  ← PORT 4B (Sn/Bi, 200/280°C)
                    │   Tin (Sn) + Bismuth    │      Density: 6.99-10.05 g/cm³
                    │   ρ = 7-10 g/cm³        │      r = 200-250 mm
                    │   Thickness: ~10-15 mm  │
                    ├─────────────────────────┤
                    │                         │
                    │   INNER ZONE            │  ← PORT 4A (In, 160°C)
                    │   Indium (In)           │      Density: 7.31 g/cm³
                    │   ρ = 7.31 g/cm³        │      r = 150-200 mm
                    │   Thickness: ~5-10 mm   │
                    ├─────────────────────────┤
                    │                         │
                    │   SOLID MATRIX          │
                    │   Char + Al/Cu/Fe particles          │
                    │   (not molten at 160°C) │      r = 0-150 mm
                    │                         │
                    └─────────────────────────┘
                    DRUM CENTER (r = 0)

PORT MAPPING:
• Port 4A (160°C): Inner zone — In collection (r ≈ 150-200 mm)
• Port 4B (200/280°C): Middle zone — Sn/Bi collection (r ≈ 200-250 mm)
• Port 4C (340/430°C): Outer zone — Pb/Zn collection (r ≈ 250-300 mm)
```

**Zn Separation at 430°C (400 RPM):**
At 430°C, only Zn is molten (Al still solid at 660°C). Zn density 6.57 g/cm³ forms a single liquid layer at the drum wall (r = 250-300 mm), collected at Port 4C. Higher RPM (400 vs 300) increases G-force to 89.2, improving Zn collection efficiency and suppressing vapor loss (Zn boils at 907°C).

---

## 4. Centrifuge Bowl Zones — Detailed Design

### 4.1 Inner Zone: Indium/Tin Collection (Port 4A, 160°C)

| Parameter | Value | Notes |
|---|---|---|
| **Radial Position** | r = 150-200 mm | Inner liquid annulus |
| **Temperature** | 160°C (In MP + 3.4°C superheat) | Precise control ±1°C |
| **Port Aperture** | 12 mm diameter | Standard Port 4A |
| **Valve Actuation** | Ti₃AlC₂/ZrO₂ bilayer | Calibrated for 160°C |
| **Collection Time** | 5 minutes at 400 RPM | In coalescence + radial migration |
| **Expected Composition** | In 60-80%, Organics 20-40% | Organics from char co-discharge |
| **Downstream** | Electrodeposition (FOLLOW-14) | 99.9% In product |

**In Collection Efficiency:**
At 400 RPM, G=89.2, the centrifugal force on a 1 mm In droplet:
$F_c = \frac{4}{3}\pi r^3 \rho \omega^2 r = 1.2 \times 10^{-5} \text{ N}$
Viscous drag (Stokes): $F_d = 6\pi \mu r v$
Terminal velocity: $v = \frac{2}{9} \frac{r^2 \rho \omega^2 r}{\mu} \approx 0.5 \text{ m/s}$
Time to migrate 150 mm: **0.3 seconds** — well within 5-minute dwell.

### 4.2 Middle Zone: Tin/Bismuth Collection (Port 4B, 200°C & 280°C)

| Parameter | Value | Notes |
|---|---|---|
| **Radial Position** | r = 200-250 mm | Middle liquid annulus |
| **Temperature Step 2** | 200°C (Sn-Pb eutectic) | 63% Sn / 37% Pb |
| **Temperature Step 3** | 280°C (Bi + Sn) | Bi 271°C, Sn 232°C |
| **Port Aperture** | 12 mm diameter | Standard Port 4B |
| **Valve Actuation** | Ti₃AlC₂/ZrO₂ bilayer | Calibrated for 200°C/280°C |
| **Collection Time** | 3 min (eutectic), 3 min (Bi/Sn) | Shorter — lower viscosity |
| **Downstream** | Alloy purification, casting | Solder production |

**Sn-Pb Eutectic Formation:**
The Sn-Pb binary phase diagram shows a eutectic at 183°C (61.9% Sn / 38.1% Pb by weight). Commercial solder is 63/37 Sn/Pb. During Stage 4, Sn and Pb particles melt together at the eutectic temperature, forming a homogeneous liquid that centrifuges to the middle zone.

**Bi-Sn System:**
Bi-Sn eutectic at 139°C (57% Bi / 43% Sn) — already liquid at Step 3 temperature (280°C). Pure Sn melts at 232°C. The combined Bi-Sn liquid has density ~8-9 g/cm³, positioning it between In (inner) and Pb (outer).

### 4.3 Outer Zone: Lead/Zinc Collection (Port 4C, 340°C & 430°C)

| Parameter | Value | Notes |
|---|---|---|
| **Radial Position** | r = 250-300 mm | Outer liquid annulus at drum wall |
| **Temperature Step 4** | 340°C (Pb melt) | Pb 327.5°C + 12.5°C superheat |
| **Temperature Step 5** | 430°C (Zn melt) | Zn 419.5°C + 10.5°C superheat |
| **Port Aperture** | 12 mm diameter | Standard Port 4C |
| **Valve Actuation** | Ti₃AlC₂/ZrO₂ bilayer | Calibrated for 340°C/430°C |
| **Collection Time** | 3 min (Pb), 10 min (Zn) | Zn longer — vapor suppression |
| **RPM** | 300 RPM (Pb), 400 RPM (Zn) | Higher RPM for Zn improves collection |
| **Downstream** | Pb bullion, Zn dust/oxide | Commercial markets |

**Zn Vapor Suppression:**
Zn boiling point = 907°C. At 430°C, Zn vapor pressure = 0.01 Pa (negligible). However, local hot spots from induction could create transient vapor. Mitigation:
- N₂ blanket at 1.5 bar suppresses vaporization (Raoult's law)
- Rapid condensation zone immediately after Port 4C (water-cooled BFRP condenser)
- 400 RPM maximizes centrifugal retention of liquid Zn
- **Target Zn loss: <0.1% of Zn feed**

**Pb Collection Purity:**
By Step 4 (340°C), Sn and Bi have already been removed (Steps 2-3). The remaining Pb is >95% pure in the liquid phase. Dross (PbO, flux residue) forms on surface and is skimmed before Port 4C discharge.

---

## 5. Oxidation Control

### 5.1 Reducing Atmosphere Design

Stage 4 operates in a **N₂ + 5% H₂ atmosphere at 1.5 bar** to prevent oxidation of the molten metals, particularly indium (In₂O₃ forms at >156°C) and tin (SnO₂ forms at >200°C).

**Atmosphere Composition:**
- Nitrogen (N₂): 95% — inert carrier, pressure maintenance
- Hydrogen (H₂): 5% — reducing agent, oxygen scavenger
- Total Pressure: 1.5 bar absolute — suppresses vaporization, improves heat transfer
- Dew Point: <-40°C — minimizes H₂O partial pressure

**Oxygen Partial Pressure Control:**
Target $p_{O_2} < 10^{-20}$ atm at 400°C (thermodynamic requirement for In/Sn/Pb/Zn stability).
Achieved by:
1. N₂ purge at startup (5 volume exchanges)
2. Continuous H₂ injection (5% of flow)
3. Getter material: Zr-Fe alloy chips in drum annulus (scavenges residual O₂)
4. Online O₂ sensor (zirconia cell) — alarm at >1 ppm O₂

### 5.2 Na₂CO₃ Flux Chemistry

Sodium carbonate flux is injected at each sub-stage to:
1. **Dissolve surface oxides** on metal particles
2. **Scavenge residual oxygen** as CO₂
3. **Flux non-metallic inclusions** (char ash, ceramic particles) into slag
4. **Control slag basicity** for downstream processing

**Flux Injection Protocol:**
| Sub-Stage | Flux Type | Injection Rate | Timing |
|---|---|---|---|
| In (160°C) | Na₂CO₃ (5 wt% of metal) | 0.5 kg/min | During 5-min dwell |
| Sn/Pb (200°C) | Na₂CO₃ + 2% NaF | 1.0 kg/min | During 3-min dwell |
| Bi/Sn (280°C) | Na₂CO₃ + 2% NaF | 0.5 kg/min | During 3-min dwell |
| Pb (340°C) | Na₂CO₃ + 5% NaF | 1.5 kg/min | During 3-min dwell |
| Zn (430°C) | Na₂CO₃ + 3% NaF | 2.0 kg/min | During 10-min dwell |

**Flux Reactions:**
```
Na₂CO₃ → Na₂O + CO₂ (at T > 850°C, but in molten metal at 400°C:
Na₂CO₃ + 2Me → 2Na + Me₂O + CO  (Me = In, Sn, Pb, Zn)
Net: Oxide reduction + CO generation

With NaF (flux modifier):
NaF + Na₂O → 2Na + NaFO (enhanced oxide dissolution)
```

**Flux Consumption:**
Total Na₂CO₃ per batch: ~8-12 kg
Total NaF per batch: ~0.5 kg
Flux residue (slag) exits with dross to Stage 7 — total ~15-20 kg/batch.

### 5.3 Indium Oxidation Prevention

Indium is the most oxidation-sensitive Stage 4 metal. In₂O₃ forms spontaneously at 156°C in air.

**In-Specific Controls:**
1. **H₂ partial pressure > 0.075 bar** (5% of 1.5 bar) — reduces In₂O₃:
   $$\text{In}_2\text{O}_3 + 3\text{H}_2 \rightarrow 2\text{In} + 3\text{H}_2\text{O} \quad (\Delta G < 0 \text{ at } 160°C)$$
2. **Flux coverage** — Na₂CO₃ layer on melt surface blocks O₂ diffusion
3. **Minimize surface area** — 400 RPM creates thin annular film (large r, small h)
4. **Port 4A rapid discharge** — In exits within 5 minutes of melting
5. **Inline O₂ monitor** at Port 4A — shutdown if >0.5 ppm O₂

### 5.4 Zinc Vapor Suppression

Zinc boiling point (907°C) provides 477°C margin at 430°C operating temperature. However, induction hot spots and surface vaporization require controls:

**Zn Vapor Controls:**
1. **N₂ pressure 1.5 bar** — raises effective boiling point (Clausius-Clapeyron)
2. **Induction power modulation** — 50 kHz, 80 kW max, pulsed to avoid hot spots
3. **Condenser at Port 4C exit** — water-cooled BFRP, 20°C, captures any vapor
4. **Zn vapor sensor** (optical absorption at 213.9 nm) — alarm at >1 ppm
5. **Emergency N₂ quench** — 10 bar N₂ injection if vapor detected

---

## 6. Solder Alloy Formation

### 6.1 Pb/Sn Eutectic (63/37) — Primary Solder Product

The Sn-Pb binary system exhibits a eutectic at 183°C with 61.9% Sn / 38.1% Pb by weight. Commercial 63/37 solder (63% Sn / 37% Pb) is hypereutectic but preferred for its sharp melting point and bright finish.

**Phase Diagram Parameters:**
- Eutectic: 183°C, 61.9% Sn
- Sn liquidus: 231.9°C (pure Sn)
- Pb liquidus: 327.5°C (pure Pb)
- Terminal solid solubility: ~1% Pb in Sn, ~2% Sn in Pb at 183°C

**Production Protocol:**
1. Stage 4 Step 2: Drum at 200°C, 300 RPM, Port 4B opens
2. Molten Sn-Pb mixture (from feedstock solder joints) centrifuges to middle zone
3. Discharged slug: ~60-65% Sn, 35-40% Pb (close to 63/37 target)
4. Downstream: Re-melt at 250°C, adjust composition with pure Sn/Pb if needed
5. Cast into ingots (2 kg bars) or wire (2-3 mm diameter)

**Quality Specifications (ASTM B32 / J-STD-006):**
| Parameter | Spec | Test Method |
|---|---|---|
| Sn Content | 62.5-63.5% | XRF / ICP-OES |
| Pb Content | 36.5-37.5% | XRF / ICP-OES |
| Cu | <0.08% | ICP-OES |
| Ag | <0.1% | ICP-OES |
| Bi | <0.1% | ICP-OES |
| Fe | <0.02% | ICP-OES |
| As/Sb | <0.03% each | ICP-OES |
| Appearance | Bright, shiny, no dross inclusions | Visual |

### 6.2 In/Sn (52/48) — Low-Temperature Solder

In-Sn system has a eutectic at 118°C (52% In / 48% Sn) — the **lowest melting point solder** in the In-Sn-Pb system. Critical for step-soldering and temperature-sensitive assemblies.

**Production:**
- Source: In from Step 1 (60-80% In) + Sn from Step 2/3
- Ratio adjustment: Blend to 52% In / 48% Sn
- Melt at 150°C, cast into 1 kg ingots or 1.5 mm wire
- **Application:** CSM internal use — sensor assembly, cryogenic wiring, step-soldering

### 6.3 Bi/Sn (57/43) — Lead-Free Alternative

Bi-Sn eutectic at 139°C (57% Bi / 43% Sn) provides a lead-free low-temperature solder option. Higher cost (Bi ~$12/kg vs Pb ~$2/kg) but RoHS compliant.

**Production:**
- Source: Bi from Step 3 + Sn from Step 2/3
- Ratio: 57% Bi / 43% Sn
- Cast into 1 kg ingots
- **Application:** Medical electronics, RoHS-compliant assemblies

### 6.4 Alloy Purification and Casting

**Purification Steps (Downstream of Stage 4):**
1. **Re-melt** in induction furnace (10 kHz, 20 kW) at 250°C (Pb/Sn) or 150°C (In/Sn)
2. **Dross skimming** — remove surface oxides (PbO, SnO₂, In₂O₃) mechanically
3. **Flux treatment** — Na₂CO₃/NaF flux, stir 5 min, skim again
4. **Composition adjustment** — add pure Sn, Pb, In to hit target specs
5. **Degassing** — N₂ sparge 10 min to remove dissolved H₂
6. **Casting** — continuous caster or static mold, controlled cooling

**Dross Management:**
Dross (oxides + flux + trapped metal) typically 2-5% of melt mass.
- Pb/Sn dross: 90% metal recovery via rotary furnace re-melt
- In/Sn dross: In recovery critical — specialized oxide reduction
- **Dross residue → Stage 7 (PROD-20) for Fe/REE recovery**

---

## 7. Precious Metal Carrier — Au/Ag/Pd Partitioning

### 7.1 Partitioning Behavior in Stage 4

Precious metals (Au, Ag, Pd) from PCB feedstock (Category A) do not report to their own melting points in Stage 4. Instead, they **partition into the In/Sn liquid phase** due to:
1. **Solubility**: Au (0.1% in Sn at 250°C), Ag (high in Sn), Pd (moderate in Sn)
2. **Wetting**: Au/Sn, Ag/Sn, Pd/Sn form intermetallics readily
3. **Density**: Au (19.3 g/cm³), Ag (10.5 g/cm³), Pd (12.0 g/cm³) — but as trace solutes, follow host melt

**Partition Coefficients (K = C_metal / C_slag) at Stage 4 Conditions:**

| Precious Metal | K (In/Sn melt vs slag) | Recovery to In/Sn Stream | Downstream Recovery |
|---|---|---|---|
| **Gold (Au)** | 10³ - 10⁴ | >99.5% | Stage 6 electrorefining (PROD-19) |
| **Silver (Ag)** | 10² - 10³ | >99% | Stage 6 electrorefining (PROD-19) |
| **Palladium (Pd)** | 10² - 10³ | >95% | Stage 6 electrorefining (PROD-19) |
| **Platinum (Pt)** | 10¹ - 10² | 80-90% | Stage 6/7 (PROD-19/20) |

**Mechanism:** During Stage 4 Step 1 (160°C), In is the only liquid. Au/Ag/Pd particles (from PCB traces, typically 1-100 μm) are wetted by molten In and incorporated into the In-rich droplet. As temperature rises and Sn melts (Steps 2-3), additional PMs partition into the Sn-rich phase.

### 7.2 Precious Metal Content per Ton of PCBs

| Metal | Content (g/ton PCB) | Value at 2026 Prices | Recovery Target |
|---|---|---|---|
| **Gold (Au)** | 300-400 g | $3,200/tr oz = **$31-41k/ton** | >99.5% |
| **Silver (Ag)** | 3,000-5,000 g | $32/tr oz = **$3.1-5.1k/ton** | >99% |
| **Palladium (Pd)** | 100-200 g | $1,000/tr oz = **$3.2-6.4k/ton** | >95% |
| **Platinum (Pt)** | 10-50 g | $950/tr oz = **$0.3-1.5k/ton** | >80% |

**Total PM Value per Ton PCB:** **$38-54k** — primary revenue driver for Aegis-Forge I economics.

### 7.3 Downstream Electrorefining (Stage 6, PROD-19)

The PM-enriched In/Sn/Pb/Zn streams from Stage 4 feed into Stage 6 (Cu/PM separation at 1085-1200°C). There, the PMs report to the copper anode slime during Cu electrorefining:

```
Stage 4 Output (In/Sn/Pb/Zn slugs with PMs)
         ↓
Stage 5 (Al separation) — PMs remain in residue
         ↓
Stage 6 (Cu melt at 1085°C) — PMs dissolve in Cu melt
         ↓
Cu Electrorefining (FOLLOW-19):
  Anode: Cu + Au + Ag + Pd + Pt (99% Cu)
  Cathode: 99.99% Cu
  Anode Slime: Au, Ag, Pd, Pt, Se, Te (10-20% of anode mass)
         ↓
  Hydrometallurgical separation (FOLLOW-19):
    - Au: Chlorination → reduction → 99.99% Au sponge
    - Ag: Nitric acid leach → electrolysis → 99.9% Ag
    - Pd/Pt: Aqua regia → selective precipitation → 99.95% Pd/Pt
```

---

## 8. Output Streams

### 8.1 Stream Summary Table

| Stream | Port | Temp (°C) | Mass/Batch | Composition | Downstream |
|---|---|---|---|---|---|
| **In-rich slug** | 4A | 160 | 1-5 kg | In 60-80%, Org 20-40%, PMs trace | FOLLOW-14 (Electrodeposition) → YInMn |
| **Sn/Pb eutectic** | 4B | 200 | 10-25 kg | Sn 60-65%, Pb 35-40%, PMs trace | Purification → Solder ingots/wire |
| **Bi/Sn alloy** | 4B | 280 | 1-5 kg | Bi 55-60%, Sn 40-45% | Low-temp solder casting |
| **Pb bullion** | 4C | 340 | 15-40 kg | Pb 90-95%, dross 5-10% | Battery recycling, shielding |
| **Zn liquid** | 4C | 430 | 8-20 kg | Zn 85-95%, Al/Cu 5-15% (Zamak) | Zn dust, ZnO, galvanizing |
| **Dross/Slag** | 4C | 340-430 | 10-20 kg | Oxides, flux, char ash, PMs 100-500 g/t | Stage 7 (PROD-20) |
| **Activated Char (consumed)** | — | 160-430 | 10-20 kg | C >80%, SA >800 m²/g | Flux consumed, residue to Stage 7 |

### 8.2 Mass Balance per 500 kg Batch

```
MASS BALANCE — STAGE 4 (Typical 500 kg Mixed Feedstock)
════════════════════════════════════════════════════════════════════════════════

INPUT (from Stage 3 + Category A-D residual metals):
├── Char/slag from Stage 3: 120 kg
├── PCB metal fraction (Cat A): 45 kg (Cu, Au, Ag, Pd, Sn, Pb, In)
├── Zn die-cast (Cat C): 30 kg (Zn, Al, Cu)
├── Pb-acid battery plates (Cat C): 25 kg (Pb, Sb, Ca)
├── Wire/cable (Cat A/B): 20 kg (Cu, Sn, Pb)
├── Other metals: 10 kg
└── TOTAL INPUT: ~250 kg metal-bearing material

STAGE 4 PROCESSING:
├── Char consumed as flux/reductant: -15 kg
├── Organics pyrolysis/gas: -5 kg (to PROD-07)
└── Net metal processing: 230 kg

OUTPUTS:
├── In-rich slug (Port 4A): 3 kg
│   └── In: 2.0 kg (67%), Organics: 1.0 kg (33%)
├── Sn/Pb eutectic (Port 4B): 18 kg
│   └── Sn: 11 kg (61%), Pb: 7 kg (39%), PMs: 50 g
├── Bi/Sn alloy (Port 4B): 3 kg
│   └── Bi: 1.7 kg (57%), Sn: 1.3 kg (43%)
├── Pb bullion (Port 4C): 28 kg
│   └── Pb: 25 kg (89%), Dross: 3 kg (11%)
├── Zn liquid (Port 4C): 15 kg
│   └── Zn: 13 kg (87%), Al/Cu: 2 kg (13%)
├── Dross/Slag to Stage 7: 18 kg
│   └── Oxides: 10 kg, Flux residue: 5 kg, Char ash: 2 kg, PMs: 0.5 kg
└── TOTAL OUTPUT: 230 kg ✓ (mass conserved)

PRECIOUS METAL TRACKING:
├── Au: 350 g total → 348 g to In/Sn streams (99.5%) → 2 g to dross (0.5%)
├── Ag: 4,000 g total → 3,960 g to In/Sn/Pb streams (99%) → 40 g to dross (1%)
├── Pd: 150 g total → 142 g to In/Sn streams (95%) → 8 g to dross (5%)
└── Pt: 30 g total → 24 g to In/Sn/Pb streams (80%) → 6 g to dross (20%)
```

---

## 9. Throughput and Quality

### 9.1 Production Targets

| Metric | Target | Measurement | Frequency |
|---|---|---|---|
| **Batch Cycle Time** | 25 min (Stage 4) / 3.5 hr (full cascade) | Timer | Per batch |
| **Throughput** | 500 kg/batch | Scale | Per batch |
| **Annual Capacity** | 1,200 batches/yr (24/7, 85% avail.) | — | Annual |
| **Indium Recovery** | >99.5% of feed In | ICP-MS (In in slag vs feed) | Per batch |
| **Tin Recovery** | >99% of feed Sn | XRF (Sn in slag vs feed) | Per batch |
| **Lead Recovery** | >99.9% of feed Pb | XRF (Pb in slag vs feed) | Per batch |
| **Zinc Recovery** | >99% of feed Zn | XRF (Zn in slag vs feed) | Per batch |
| **Au Recovery (to In/Sn)** | >99.5% | Fire assay (slime vs feed) | Per batch |
| **Ag Recovery (to In/Sn/Pb)** | >99% | ICP-OES (slime vs feed) | Per batch |
| **Pd Recovery (to In/Sn)** | >95% | ICP-OES (slime vs feed) | Per batch |

### 9.2 Product Quality Specifications

| Product | Purity Target | Key Impurities (Max) | Standard |
|---|---|---|---|
| **Indium (refined)** | 99.99% (4N) | Cu <10 ppm, Fe <5 ppm, Pb <10 ppm, Sn <20 ppm | ASTM B751 |
| **Sn/Pb Solder (63/37)** | 62.5-63.5% Sn | Cu <800 ppm, Ag <0.1%, Bi <0.1%, Fe <200 ppm | J-STD-006B |
| **In/Sn Solder (52/48)** | 51.5-52.5% In | Pb <500 ppm, Cu <100 ppm, Fe <50 ppm | Internal spec |
| **Bi/Sn Solder (57/43)** | 56.5-57.5% Bi | Pb <1000 ppm, Cu <200 ppm | Internal spec |
| **Lead Bullion** | 99.9% Pb | Cu <500 ppm, Ag <100 ppm, Sn <0.1%, As <50 ppm | ASTM B29 |
| **Zinc Product** | 99.9% Zn (SHG) | Pb <0.003%, Cd <0.003%, Fe <0.002%, Cu <0.001% | ASTM B240 |

### 9.3 Sampling and Analytical Protocol

| Sample Point | Method | Analytes | Frequency |
|---|---|---|---|
| **Feed (Stage 3 exit)** | Grab sample, 500 g | Full elemental (ICP-OES/MS), C, S | Every batch |
| **Port 4A (In slug)** | Auto-sampler, 50 g | In, Sn, Pb, Bi, Au, Ag, Pd, C | Every batch |
| **Port 4B (Sn/Pb, Bi/Sn)** | Auto-sampler, 100 g | Sn, Pb, Bi, Au, Ag, Pd | Every batch |
| **Port 4C (Pb, Zn)** | Auto-sampler, 100 g | Pb, Zn, Al, Cu, Au, Ag | Every batch |
| **Dross (Stage 7 feed)** | Grab sample, 200 g | Fe, REE, PMs, flux, C | Every batch |
| **Refined In (FOLLOW-14)** | Cathode coupon, 10 g | 4N+ certification | Every heat |
| **Solder ingots** | Drill chips, 10 g | Full J-STD-006 panel | Every 10th ingot |

---

## 10. Energy Balance

### 10.1 Energy Requirements

| Component | Energy (kWh/batch) | Notes |
|---|---|---|
| **Sensible Heat (250 kg, 150→450°C)** | 45 kWh | c_p avg ~0.5 kJ/kg·K, ΔT=300K |
| **Latent Heat — In (2 kg)** | 0.06 kWh | L_f = 28.7 kJ/kg |
| **Latent Heat — Sn (12 kg)** | 0.35 kWh | L_f = 59.2 kJ/kg |
| **Latent Heat — Bi (1.7 kg)** | 0.02 kWh | L_f = 53.4 kJ/kg |
| **Latent Heat — Pb (25 kg)** | 0.33 kWh | L_f = 23.0 kJ/kg |
| **Latent Heat — Zn (13 kg)** | 0.36 kWh | L_f = 112 kJ/kg |
| **Induction Losses (coil, coupling)** | 15 kWh | 80 kW × 25 min × 0.45 efficiency factor |
| **Rotation (300-400 RPM, 25 min)** | 2 kWh | Motor + bearing losses |
| **N₂/H₂ Compression** | 3 kWh | 1.5 bar, 500 L/min |
| **Flux Heating/Decomposition** | 2 kWh | Na₂CO₃ → Na₂O + CO₂ (partial) |
| **Heat Losses (radiation, conduction)** | 8 kWh | Drum wall, aerogel gap, vessel |
| **TOTAL STAGE 4 ENERGY** | **76 kWh/batch** | **= 0.15 kWh/kg feed** |

### 10.2 Energy Recovery and Integration

| Recovery Stream | Energy Recovered | Use |
|---|---|---|
| **Stage 3 Pyrolysis Gas** | ~120 kWh (chem. energy) | Combusted for Stage 1-2 pre-heat |
| **Stage 4 Off-gas (CO, H₂)** | ~15 kWh | Recirculated to burner |
| **Char Sensible Heat (600→160°C)** | ~25 kWh | Pre-heats Stage 4 feed |
| **Slag Sensible Heat** | ~10 kWh | Pre-heats flux injection |
| **Induction Waste Heat (cold plates)** | ~30 kWh | Facility heating / ORC |

**Net Stage 4 Energy (with recovery):** ~76 - 45 = **31 kWh/batch net input**
**Full Cascade Net Energy:** ~350 kWh/batch (all stages)

### 10.3 Exergy Analysis

| Stream | Exergy (kWh) | Quality |
|---|---|---|
| Induction electricity | 76 | High (work potential) |
| Pyrolysis gas chemical | 120 | Medium (combustion) |
| Metal sensible heat | 25 | Low (400°C) |
| **Total Exergy Input** | **221 kWh** | — |
| **Product Exergy (metals)** | **185 kWh** | Chemical + physical |
| **Exergy Efficiency** | **84%** | Excellent for thermal process |

---

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

## 12. Control System

### 12.1 Temperature Ramp Profile

```
STAGE 4 TEMPERATURE PROFILE — 25 MINUTE SEQUENCE
════════════════════════════════════════════════════════════════════════════════

Time (min)  Temp (°C)  Action                    RPM    Port    Gas
──────────────────────────────────────────────────────────────────────────────
0-5         150→160    In liquefaction           400    4A      N₂/H₂
5-8         160        In dwell + centrifuge     400    4A      N₂/H₂
8-10        160→183    Ramp to Sn-Pb eutectic    400    —       N₂/H₂
10-13       200        Sn-Pb dwell + centrifuge  300    4B      N₂/H₂
13-15       200→271    Ramp to Bi/Sn             300    —       N₂/H₂
15-18       280        Bi/Sn dwell + centrifuge  300    4B      N₂/H₂
18-20       280→327    Ramp to Pb                300    —       N₂/H₂
20-23       340        Pb dwell + centrifuge     300    4C      N₂/H₂
23-24       340→420    Ramp to Zn                300    —       N₂/H₂
24-25       430        Zn dwell + centrifuge     400    4C      N₂/H₂
25+         430→660    Ramp to Stage 5           200    —       N₂/H₂

CONTROL MODE: Cascade PID — Outer loop: drum wall temp (FBG), Inner loop: induction power
```

### 12.2 PID Control Parameters

| Loop | Variable | Kp | Ki | Kd | Setpoint Source |
|---|---|---|---|---|---|
| **Outer (Temp)** | Drum wall temp (FBG Zone 4) | 0.8 | 0.05 | 0.1 | Profile generator |
| **Inner (Power)** | Induction power (Zone 3-4) | 1.2 | 0.3 | 0.05 | Outer loop output |
| **RPM** | Drum speed | 0.5 | 0.1 | 0.05 | Profile generator |
| **Pressure** | Drum N₂ pressure | 2.0 | 0.5 | 0.1 | 1.5 bar constant |
| **Port 4A Temp** | Valve actuator temp | 1.5 | 0.2 | 0.1 | 160°C (In) |
| **Port 4B Temp** | Valve actuator temp | 1.5 | 0.2 | 0.1 | 200/280°C |
| **Port 4C Temp** | Valve actuator temp | 1.5 | 0.2 | 0.1 | 340/430°C |

**Resonance Tracking (Induction):**
- Frequency sweep ±5% around 50 kHz every 10 sec
- Phase-locked loop maintains zero-voltage switching (ZVS)
- Efficiency optimization: max power transfer at resonance

### 12.3 Gas Composition Feedback

| Sensor | Location | Measurement | Control Action |
|---|---|---|---|
| **O₂ (zirconia)** | Drum headspace | ppm O₂ | H₂ injection rate, N₂ purge |
| **H₂ (catalytic)** | Drum headspace | % H₂ | H₂ injection valve |
| **HCl (FTIR)** | Drum exit gas | ppm HCl | NaHCO₃ injection rate |
| **Zn vapor (UV)** | Port 4C exit | ppm Zn | Emergency quench trigger |
| **CO/CO₂ (NDIR)** | Gas management | % CO, CO₂ | Pyrolysis completeness |

### 12.4 Metal Level Sensors (POF)

**Plastic Optical Fiber (POF) Level Detection:**
- PMMA fiber (1 mm core) embedded in drum wall at r = 280 mm
- Light transmission attenuated by molten metal contact
- Calibrated for each metal (In, Sn, Pb, Zn) refractive index
- Resolution: 0.5 mm liquid level
- Response time: <100 ms
- **Used for:** Port open confirmation, dwell time optimization, overfill protection

### 12.5 Flux Injection Control

- **Pneumatic powder injection** (N₂ carrier) at drum top port
- **Mass flow controller** per flux type (Na₂CO₃, NaF blend)
- **Injection synchronized** with temperature profile steps
- **Feedback:** Slag basicity (inline pH probe in quench water) → adjust flux rate

---

## 13. Cross-Reference Matrix

### 13.1 Upstream Dependencies

| Document | Section | Dependency | PROD-17 Usage |
|---|---|---|---|
| **PROD-02** | 6.1-6.5 | Stage 4 thermal profile, In-First strategy | Core process basis |
| **PROD-04** | 2.1, 7.5 | Drum geometry, Port 4 location/actuation | Valve timing, zone mapping |
| **PROD-07** | 3.2, 4.1 | Gas management, HCl/CO₂ capture | Off-gas routing, N₂/H₂ supply |
| **PROD-09** | 2.2, 5.3 | Port 4 valve specs, Ti₃AlC₂ actuation | Valve calibration, force balance |
| **PROD-12** | 4.2, 7.3, 10.1 | BFRP, SiC, ZrO₂, Ti₃AlC₂, KNbO₃ specs | Material selection, properties |
| **PROD-13** | Tables 2-5 | Feedstock Categories A-D composition | Input mass balance, metal content |
| **PROD-15** | 4.3, 5.2 | PVC/HCl management, char output | Residual HCl, char flux source |
| **PROD-16** | 4.4, 8.1 | Activated char properties, slag composition | Flux source, slag to Stage 7 |

### 13.2 Downstream Dependencies

| Document | Section | Dependency | PROD-17 Provides |
|---|---|---|---|
| **PROD-18** | 1.3 | Stage 4 cleared metals, Al feedstock | Zn/Pb/Sn/In removed, Al matrix clean |
| **PROD-19** | 1.3, 7.1 | PM-enriched streams, dross composition | PM carriers, dross to Stage 6 |
| **PROD-20** | 1.3, 8.1 | Stage 7 ferrous feed, REE partitioning | Slag/dross to Stage 7, REE in dross |
| **FOLLOW-14** | All | In electrodeposition refining | In-rich slug composition, rate |
| **FOLLOW-15** | 3.2 | REE from Stage 4 dross | Nd/Sm/Co in dross to Stage 7 |
| **FOLLOW-19** | All | PM electrorefining from Cu anode slime | PM partitioning data, slime composition |
| **FOLLOW-20** | 3.1 | Ferrous slug metallurgy | Pb/Sn/Zn removal before Stage 7 |

### 13.3 Cross-Reference Table

| PROD-17 Section | References | Referenced By |
|---|---|---|
| 1.1 Parameters | PROD-02 Table 1, PROD-04 Table 2 | PROD-18, PROD-19 |
| 1.2 Context | PROD-16 Fig 1, PROD-18 Fig 1 | — |
| 1.3 Feedstock | PROD-13 Tables 2-5, PROD-16 Sec 8 | — |
| 2.1 In MP | Materials Study Part V (In) | FOLLOW-14 |
| 2.2 Process Seq | PROD-02 Sec 6.2, PROD-09 Sec 2.2 | PROD-18 |
| 2.3 In Refining | Materials Study Part V, FOLLOW-14 | — |
| 3.1 Properties | Materials Study Part II (metals) | — |
| 3.2 Stratification | PROD-04 Sec 2.4 (centrifugal) | PROD-18, PROD-19 |
| 3.3 Zones | PROD-09 Sec 2.2 (port mapping) | — |
| 4.1-4.3 Zones | PROD-04 Sec 7.5 (ports), PROD-09 Sec 2.3 | — |
| 5.1 Atmosphere | PROD-07 Sec 3.1 (gas system) | — |
| 5.2 Flux | PROD-12 Sec 3 (ceramics), PROD-16 Sec 5 | PROD-20 |
| 5.3 In Oxidation | Materials Study Part V (In) | FOLLOW-14 |
| 5.4 Zn Vapor | Materials Study Part II (Zn) | — |
| 6.1-6.4 Solder | PROD-12 Sec 13 (cost), FOLLOW-14 | — |
| 7.1-7.3 PM Carrier | PROD-13 Table 2, PROD-19 Sec 7 | PROD-19, FOLLOW-19 |
| 8.1-8.2 Outputs | PROD-16 Sec 8, PROD-18 Sec 1.3 | PROD-18, PROD-19, PROD-20 |
| 9.1-9.3 Quality | PROD-12 Sec 13 (specs), PROD-28 (QA) | — |
| 10.1-10.3 Energy | PROD-02 Sec 12, PROD-23 (energy bal) | PROD-24 |
| 11.1-11.3 Safety | PROD-26 (GIC), PROD-28 (QA), PROD-32 (reg) | — |
| 12.1-12.5 Control | PROD-10 (power elec), PROD-23 (control) | PROD-23 |
| 13 Matrix | All above | Master_Todo, NEXT_runner |

---

*End of CSMFAB000000000125 — PROD-17 Stage 4 Low-Temperature Metals Separation*
*Next: Heuristic Intros (Williams, Keymaker, El Segundo) → Chunking → Verification → Git Commit*

## Appendix A: Stage 4 Quick-Reference Card

### A.1 Sub-Stage Quick Reference
| Step | Temp (°C) | Time | RPM | Port | Primary Output | Key Control |
|---|---|---|---|---|---|---|
| 1 | 160 | 5 min | 400 | 4A | In-rich (60-80%) | ±1°C, H₂ >0.075 bar |
| 2 | 200 | 3 min | 300 | 4B | Sn-Pb eutectic | ±3°C, flux injection |
| 3 | 280 | 3 min | 300 | 4B | Bi-Sn alloy | ±3°C, flux injection |
| 4 | 340 | 3 min | 300 | 4C | Pb bullion | ±3°C, dross skim |
| 5 | 430 | 10 min | 400 | 4C | Zn liquid | ±3°C, vapor monitor |
| 6 | 450→660 | ramp | 200 | — | Transition to Stage 5 | No discharge |

### A.2 Critical Setpoints
- **In melting**: 156.6°C (only liquid metal at this temp)
- **Sn-Pb eutectic**: 183°C (61.9% Sn / 38.1% Pb)
- **Bi melting**: 271.5°C
- **Sn melting**: 231.9°C
- **Pb melting**: 327.5°C
- **Zn melting**: 419.5°C (boiling 907°C — 477°C margin)
- **Al solidus**: 660.3°C (Stage 5 boundary)

### A.3 Emergency Shutdown Sequence
1. Induction OFF (all zones)
2. N₂ purge 10 bar (5 volume exchanges)
3. H₂ supply CUTOFF
4. Drum decel to 50 RPM (controlled)
5. All ports CLOSED (spring return)
6. Vent to flare stack
7. Alarm + operator notification

### A.4 Key Equations
- Centrifugal G: G = ω²r/g = (2π·RPM/60)²·0.3/9.81
- Skin depth: δ = √(2ρ/ωμ)  (ρ=resistivity, μ=permeability)
- Settling time: t = 18μ/(Δρ·ω²·r·d²)
- Oxidation potential: ΔG = ΔH - TΔS (In₂O₃ + 3H₂ → 2In + 3H₂O, ΔG<0 at 160°C)
- Exergy efficiency: η_ex = Ex_products / Ex_inputs

---

*End of CSMFAB000000000125 — PROD-17 Stage 4 Low-Temperature Metals Separation*
*Next: Heuristic Intros (Williams, Keymaker, El Segundo) → Chunking → Verification → Git Commit*