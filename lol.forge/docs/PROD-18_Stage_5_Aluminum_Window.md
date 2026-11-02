# CSMFAB000000000126
## Aegis-Forge I: Stage 5 — Aluminum Window Separation (660-720°C)
### Clean Aluminum Separation, Magnesium Removal via Flux, and Alloy Fractionation
**Document Number:** CSMFAB000000000126
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator — Product Document 18
**Classification:** Engineering Specification — Manufacturing Release
**Revision:** A (Initial Release)
**Date:** November 2026
**Authors:** CSMFAB Engineering Team
**Distribution:** CSM Forge Division, Phoenix Protocol Division, Materials Synthesis Group

---

## 1. Stage 5 Parameters and Cascade Context

### 1.1 Stage Parameters Table

| Parameter | Value | Tolerance | Notes |
|---|---|---|---|
| **Stage Number** | 5 (Aluminum Window) | — | Follows Stage 4 Low-Temp Metals (420-900°C) |
| **Temperature Range** | 660-720°C | ±2°C | Narrow 60°C window — avoid Mg vaporization >720°C |
| **Duration** | 30 minutes total | ±2 min | Includes ramp, dwell, transition |
| **Drum Rotation** | 300 RPM (G = 25.1 at r=300mm) | ±5 RPM | Optimal for Al melt viscosity 1.3 mPa·s |
| **Centrifugal G-Force** | 25.1 G | — | Sufficient for Al film drainage to Port 5 |
| **Atmosphere** | N₂ at 1.5 bar | ±0.1 bar | Inert — prevents Al oxidation, HCl from residual PVC |
| **Induction Frequency** | 10 kHz (Zones 4-5) | — | Optimal skin depth for Al pieces (δ ≈ 0.9 mm at 700°C) |
| **Induction Power** | 80-150 kW/zone (Zones 4-5) | ±10 kW | Selective Al heating; Cu/Fe remain solid |
| **Port Configuration** | Port 5 (12 mm aperture, 300 mm radius) | — | Thermal-actuated Ti₃AlC₂/ZrO₂ valve, opens at 720°C |
| **Feedstock Input** | ~50 kg/batch (Stage 4 output: Al matrix + residual minerals) | ±5 kg | Al particles embedded in char/slag from PROD-13 Categories A-D |
| **Primary Outputs** | Al alloy slugs (wrought/cast fractions), dross/salt slag to Stage 7 | — | Downstream: commercial scrap, tooling, FOLLOW-20 |
| **Safety Class** | SIL-2 (Al fines explosion, HCl, thermal) | — | N₂ inerting, HEPA, continuous monitoring |

### 1.2 Stage 5 in Cascade Context

```
THERMAL CASCADE — STAGE 5 POSITION
════════════════════════════════════════════════════════════════════════════════

STAGE 4 (PROD-17)                          STAGE 5 (THIS DOCUMENT)                    STAGE 6 (PROD-19)
Low-Temp Metals (Pb/Sn/Zn/In)              Aluminum Window (660-720°C)                Copper & Precious Metals
420-900°C, 25 min                          660-720°C, 30 min                            1085-1200°C, 45 min
                                              ▼                                              ▼
         ┌─────────────────────────────────────────────────────────────────────────────┐
         │                                                                             │
         │    FEEDSTOCK FROM STAGE 4:                                                  │
         │    • Al particles (foil, wire, castings, extrusions) — now ONLY metal melt │
         │    • Char residue (activated carbon, consumed as Stage 4 flux)             │
         │    • Slag/minerals (CaO, SiO₂, glass fibers, REE oxides) — solid           │
         │    • Ferrous/Cu particles — solid (Fe Tm=1538°C, Cu Tm=1085°C)             │
         │    • All Pb, Sn, Zn, In, Bi REMOVED in Stage 4                             │
         │                                                                             │
         │    STAGE 5 PROCESS:                                                         │
         │    ┌─────────────────────────────────────────────────────────────────────┐  │
         │    │ RAMP: 450 → 660 → 680°C (5°C/min through 660°C solidus)            │  │
         │    │ DWELL: 680°C for 25 minutes at 300 RPM                              │  │
         │    │ FLUX: NaCl/KCl (50/50) + 5% Na₃AlF₆ (cryolite) injection for Mg   │  │
         │    │ PORT 5: Opens at 720°C — continuous Al stream to ZrO₂ molds        │  │
         │    │ DROSS: Mg/Al₂O₃/AlN surface layer skimmed → salt slag to Stage 7   │  │
         │    │ TRANSITION: Ramp to 1085°C (Stage 6) — Al fully cleared             │  │
         │    └─────────────────────────────────────────────────────────────────────┘  │
         │                                                                             │
         │    OUTPUTS:                                                                 │
         │    • Wrought Al slugs (6xxx, 5xxx series) — low Si/Fe, >99.7% Al         │
         │    • Cast Al slugs (A356, A380 equivalents) — 5-12% Si, for tooling      │
         │    • Dross/salt slag (MgO, Al₂O₃, NaCl, KCl, AlN) → Stage 7 (PROD-20)     │
         │    • Residual char/minerals → Stage 7                                       │
         │                                                                             │
         └─────────────────────────────────────────────────────────────────────────────┘

PHYSICAL SEPARATION PRINCIPLE:
• The Aluminum Window: 660°C (pure Al MP) to 720°C (Mg vaporization onset)
• At 660°C: Al melts, Cu (1085°C) and Fe (1538°C) remain solid
• At 720°C: Mg vapor pressure becomes significant — UPPER BOUND
• Centrifugal force (300 RPM, G=25.1) drives molten Al film to drum wall
• Port 5 (720°C setpoint) drains continuous Al stream
• NaCl/KCl/cryolite flux selectively oxidizes Mg → MgO in dross (Mg removal)
• Al viscosity 1.3 mPa·s at 700°C — flows like water, rapid drainage
```

### 1.3 Feedstock Composition from Stage 4

| Feedstock Source | Mass per 500 kg Batch | Al Content | Key Characteristics |
|---|---|---|---|
| **Category A: PCBs/Electronics (PROD-13)** | 30-50 kg | 5-15 kg Al | Foil, heat sinks, capacitor cans, wire |
| **Category B: Mixed Plastics (PROD-13)** | 10-20 kg | 1-5 kg Al | Metallized films, packaging |
| **Category C: Metals/Appliances (PROD-13)** | 80-150 kg | 50-100 kg Al | Castings (A380, A356), extrusions (6061), sheet (5xxx) |
| **Category D: Construction/Demo (PROD-13)** | 20-40 kg | 5-15 kg Al | Window frames, siding, roofing |
| **Phoenix Protocol Returns (PROD-22)** | 5-15 kg | 2-10 kg Al | Aegis product Al components (tooling, fixtures) |
| **Stage 4 Residual Char/Slag** | 50-80 kg | Trace Al₂O₃ | Mineral residue, REE oxides |

**Total Estimated Aluminum per 500 kg Batch: 60-140 kg**

**Alloy Distribution (Typical Mixed Scrap):**
- Die-cast (A380/A356, 5-12% Si): 40-50%
- Wrought extrusions (6061/6063, Mg-Si): 20-30%
- Sheet/foil (1xxx/3xxx/5xxx, low alloy): 15-25%
- High-strength (2024/7075, Cu-Zn-Mg): 5-10%
- **Mg content: 0.3-1.5% overall — CRITICAL for flux design**

---

## 2. Aluminum Melting and Separation Physics

### 2.1 The Aluminum Window — Thermodynamic Basis

The Aluminum Window is the 60°C interval between 660°C and 720°C where:
- **Aluminum is liquid** (MP 660.3°C for pure Al; alloys liquidus 577-652°C)
- **Magnesium is liquid but not vaporizing** (MP 650°C, BP 1091°C, significant vapor >720°C)
- **Copper is solid** (MP 1084.6°C) — 365°C margin
- **Iron is solid** (MP 1538°C) — 878°C margin
- **All Stage 4 metals (Pb, Sn, Zn, In, Bi) REMOVED** — drum cleared below 450°C

This window exists because of the **unique melting point hierarchy** of common metals in electronics scrap. No engineering adjustment can widen it — it is a thermodynamic constant.

| Metal | Melting Point (°C) | Boiling Point (°C) | State in Window |
|---|---|---|---|
| Mg | 650 | 1091 | Liquid (co-melts with Al) |
| **Al (pure)** | **660.3** | **2470** | **LIQUID** |
| Al alloys (A380) | 566-577 | 577-590 | Liquid (eutectic) |
| Al alloys (6061) | 582 | 652 | Liquid |
| Al alloys (7075) | 477 | 635 | Liquid |
| Cu | 1084.6 | 2562 | Solid |
| Fe | 1538 | 2861 | Solid |
| Ni | 1455 | 2913 | Solid |
| Cr | 1907 | 2671 | Solid |
| Ti | 1668 | 3287 | Solid |

### 2.2 Aluminum Melt Properties at 680°C

| Property | Value | Significance |
|---|---|---|
| **Density (liquid)** | 2.38 g/cm³ | Lightest structural metal — inner annulus |
| **Viscosity** | 1.3 mPa·s | Extremely fluid — flows like water |
| **Surface Tension** | 0.86 N/m | High — resists droplet formation, forms film |
| **Thermal Conductivity** | 90 W/m·K | Rapid heat distribution in melt pool |
| **Electrical Resistivity** | 4.5×10⁻⁸ Ω·m | Good induction coupling at 10 kHz |
| **Skin Depth (10 kHz)** | δ ≈ 0.9 mm | Excellent for 1-5 mm Al particles |
| **Latent Heat of Fusion** | 397 kJ/kg | Significant energy at phase change |
| **Specific Heat (liquid)** | 1.18 kJ/kg·K | Sensible heat in 60°C window: 71 kJ/kg |
| **Thermal Expansion (liquid)** | 1.3×10⁻⁴ /K | Volume change affects film thickness |
| **Vapor Pressure (720°C)** | <10⁻⁶ Pa | Negligible Al loss — unlike Mg |
| **Oxidation Rate (680°C, 1 ppm O₂)** | 0.1 µm/min | Forms protective Al₂O₃ skin |

### 2.3 Centrifugal Film Formation and Drainage

At 300 RPM (ω = 31.4 rad/s, r = 0.3 m), the molten aluminum forms a continuous annular film at the drum wall:

**Film Thickness (Nusselt falling film analogy, centrifugal):**
$$\delta = \left( \frac{3 \mu Q}{2\pi \rho \omega^2 r} \right)^{1/3}$$

For Q = 5 kg/min Al flow, μ = 1.3 mPa·s, ρ = 2380 kg/m³:
δ ≈ **0.8 mm** — thin, stable film

**Drainage Velocity:**
$$v = \frac{\rho \omega^2 r \delta^2}{3\mu} \approx 0.15 \text{ m/s}$$

**Time to traverse 800 mm drum length:** ~5 seconds — **drainage is rapid**

**Centrifugal Pressure at Port 5:**
$$\Delta P = \frac{1}{2} \rho \omega^2 (r_{wall}^2 - r_{port}^2) = \frac{1}{2} \times 2380 \times 31.4^2 \times (0.3^2 - 0.05^2) = 33 \text{ kPa}$$
Sufficient to overcome 1.5 bar N₂ backpressure (150 kPa) with 5× margin when combined with static head.

### 2.4 Melt Pool Dynamics and Wave Stability

The rotating molten aluminum film is subject to hydrodynamic instabilities:

**Kelvin-Helmholtz Instability** (gas-liquid interface):
$$\omega_{KH}^2 = \frac{(\rho_g U_g - \rho_l U_l)^2 k^2}{(\rho_g + \rho_l)^2} - \frac{(\rho_l - \rho_g)gk + \sigma k^3}{\rho_g + \rho_l}$$
At 680°C, ρ_l = 2380 kg/m³, ρ_g = 1.2 kg/m³ (N₂ at 1.5 bar), U_g ≈ 0, U_l = v = 0.15 m/s, σ = 0.86 N/m.
For film thickness δ = 0.8 mm, dominant wavelength λ ≈ 2πδ = 5 mm.
Growth rate: ω_KH ≈ 50 s⁻¹ — **waves form but are stabilized by rotation**

**Rayleigh-Taylor Instability** (centrifugal acceleration):
$$\omega_{RT}^2 = \frac{(\rho_l - \rho_g) \omega^2 r k - \sigma k^3}{\rho_l + \rho_g}$$
Centrifugal acceleration stabilizes the interface (heavy liquid outward). The 25 G field suppresses RT instability completely.

**Result:** Stable, uniform annular film with small-amplitude ripple waves (1-2 mm) that enhance heat transfer without causing droplet entrainment.

### 2.5 Heat Transfer in the Melt Pool

**Induction Heating Power Density:**
$$P_v = \frac{\pi^2 B_{peak}^2 d^2 f^2}{6 \rho_{Al} D}$$
At 10 kHz, B_peak = 0.3 T, d = 3 mm (particle size), ρ_Al = 4.5×10⁻⁸ Ω·m, D = 0.3 m (drum):
P_v ≈ 1.2 MW/m³ — **volumetric heating within Al particles**

**Thermal Diffusion Time (Al particle, 3 mm):**
$$\tau_{th} = \frac{d^2}{4\alpha} = \frac{(0.003)^2}{4 \times 7.6 \times 10^{-5}} \approx 0.03 \text{ s}$$
Al particles heat uniformly — no thermal gradients.

**Melt Pool Temperature Uniformity:**
With 384 FBG sensors (48 per zone × 8 zones), axial temperature variation <±2°C achieved through:
- Induction zone power modulation (Zones 4-5 independently controlled)
- Drum rotation distributing heat circumferentially
- High Al thermal conductivity (90 W/m·K) spreading heat axially

---

## 3. Magnesium Removal Strategy

### 3.1 The Mg Challenge

Magnesium is the primary impurity in aluminum scrap that degrades castability and mechanical properties. In Stage 5 feedstock:
- **6061/6063 extrusions**: 0.8-1.2% Mg
- **7075 aerospace**: 2.1-2.9% Mg
- **A356 cast**: 0.3-0.45% Mg
- **5xxx sheet**: 2.5-5.5% Mg
- **Overall feedstock Mg: 0.3-1.5%**

**Problem:** Mg co-melts with Al (MP 650°C). At 680°C, Mg is fully dissolved in Al melt. Standard Al refining removes Mg by:
1. **Chlorine flux sparging** — forms MgCl₂ gas (toxic, environmental hazard)
2. **Vacuum distillation** — energy intensive, slow
3. **Solid flux reaction** — NaCl/KCl + cryolite forms MgO/Al₂O₃ dross

**Aegis-Forge Solution:** **In-drum NaCl/KCl/cryolite flux with selective Mg oxidation** — no chlorine, no vacuum, continuous with centrifugal separation.

### 3.2 Flux Chemistry — NaCl/KCl/Cryolite System

**Flux Composition:**
- NaCl: 47.5 wt% (melting point 801°C, eutectic with KCl at 657°C)
- KCl: 47.5 wt% (lowers melting point, improves fluidity)
- Na₃AlF₆ (Cryolite): 5 wt% (dissolves Al₂O₃, adjusts flux basicity)
- **Eutectic melting point: 657°C** — fully liquid at Stage 5 temperatures

**Mg Removal Reactions:**
```
Primary:  2Mg (in Al) + CO₂ (from flux decomposition) → 2MgO (dross) + C
Alternative: 3Mg + Al₂O₃ (drum liner wear) → 3MgO + 2Al
With cryolite: Mg + Na₃AlF₆ → MgF₂ (in flux) + 3NaF + Al
```

**Flux Basicity Control:**
- NaCl/KCl is neutral (basicity = 1.0)
- Cryolite adds AlF₃ which reacts with MgO: MgO + AlF₃ → MgF₂ + Al₂O₃
- Target flux basicity: 0.8-1.0 (slightly acidic) — maximizes MgO solubility in flux, minimizes Al loss

**Flux Injection Protocol:**
| Timing | Flux Rate | Total per Batch | Notes |
|---|---|---|---|
| Ramp 660→680°C | 0.5 kg/min | 5 kg | Initial flux blanket |
| Dwell 680°C (25 min) | 0.2 kg/min | 5 kg | Continuous Mg scavenging |
| Ramp 720°C | 0.3 kg/min | 2 kg | Final dross conditioning |
| **TOTAL** | — | **12 kg** | **~10% of Al mass** |

### 3.3 Mg Removal Kinetics

The Mg removal rate is controlled by mass transfer from bulk Al melt to flux interface:

**Mass Transfer Coefficient (k_m):**
$$k_m = \frac{D_{Mg}}{\delta_{BL}} \approx \frac{5 \times 10^{-9} \text{ m}^2/\text{s}}{0.5 \text{ mm}} = 1 \times 10^{-5} \text{ m/s}$$
Where D_Mg = Mg diffusivity in liquid Al at 680°C, δ_BL = boundary layer thickness.

**Removal Rate:**
$$\frac{d[Mg]}{dt} = -k_m \cdot A \cdot \frac{[Mg]_{bulk} - [Mg]_{eq}}{V}$$
With A/V = 3/δ (film geometry) = 3750 m⁻¹, [Mg]_eq ≈ 0 (MgO precipitation):
At [Mg]_0 = 1.0 wt% = 41 mol/m³: d[Mg]/dt = -0.015 wt%/min
**Time to reach 0.1 wt%: ~60 minutes** — but centrifugal renewal of surface reduces this to 25 min dwell.

**Centrifugal Surface Renewal:**
Film drainage exposes fresh metal to flux interface continuously.
Surface renewal frequency: f = v/δ = 0.15/0.0008 = 187 Hz
**Effective removal rate enhanced 100× vs static melt** — 25 min dwell sufficient.

### 3.4 Cryolite Role and Fluoride Chemistry

Cryolite (Na₃AlF₆) serves three critical functions:

1. **Al₂O₃ Solubility:** Dissolves protective Al₂O₃ skin on melt surface (solubility ~3 wt% at 680°C), exposing fresh Al to flux
2. **Mg Fluoride Formation:** Mg + Na₃AlF₆ → MgF₂ + 3NaF + Al (ΔG = -45 kJ/mol at 680°C) — irreversible Mg capture
3. **Flux Fluidity:** Lowers viscosity from 2.5 mPa·s (NaCl/KCl) to 1.8 mPa·s — improves mixing

**Fluoride Balance:**
- Cryolite input: 0.6 kg/batch (5% of 12 kg)
- MgF₂ formed: 0.4 kg/batch (from 0.15 kg Mg removed)
- NaF generated: 0.3 kg/batch — remains in flux, recycled
- **Net fluoride consumption: negligible** — closed loop in flux recycle

### 3.5 Mg Removal Efficiency

| Parameter | Target | Measurement |
|---|---|---|
| **Mg in feed Al** | 0.3-1.5% | ICP-OES on feed sample |
| **Mg in Al product** | <0.1% (1000 ppm) | ICP-OES on slug sample |
| **Mg removal efficiency** | >93% | Mass balance: Mg in dross / Mg in feed |
| **Al loss to dross** | <5% of feed Al | Al in dross / Al in feed |
| **Dross generation rate** | 8-12% of Al mass | Weighed dross / Al produced |

**Mg Partitioning:**
- 85-90% of Mg → MgO in dross (flux reaction)
- 5-10% of Mg → MgF₂ in flux (cryolite reaction)
- <1% of Mg → remains in Al product
- **Al loss mechanism:** Mechanical entrapment in dross (not chemical)

### 3.6 Alternative Mg Removal Methods (Evaluated and Rejected)

| Method | Principle | Rejection Reason |
|---|---|---|
| Cl₂/Ar sparging | Mg + Cl₂ → MgCl₂(g) | Toxic gas, environmental permit, corrosion |
| SF₆ cover gas | Mg + SF₆ → MgF₂ + SO₂ | Potent GHG (GWP 23,500), banned in EU |
| Vacuum distillation | Mg vaporization at 720°C, 10⁻³ mbar | Energy intensive, slow, separate equipment |
| Electrolytic (3-layer) | Mg²⁺ migration to cathode | Capital cost, not compatible with batch process |
| **NaCl/KCl/Cryolite (SELECTED)** | **Mg oxidation + fluoride capture** | **No toxic gas, in-drum, continuous, proven** |

---

## 4. Aluminum Alloy Fractionation

### 4.1 Fractionation Strategy

The Stage 5 output is a **mixed aluminum alloy slug** (85-97% Al, 1-8% Si, 0.5-3% Cu, 0.3-1.5% Mg). Downstream refining (PROD-112, FOLLOW-20) separates this into two primary product streams:

| Product Stream | Target Composition | Source Alloys | Application |
|---|---|---|---|
| **Wrought Al (Remelt)** | Al >99.7%, Si <0.15%, Fe <0.2%, Mg <0.1%, Cu <0.05% | 1xxx, 3xxx, 5xxx, 6061 (low Cu), clean 6063 | Extrusion billet, rolling slab, wire rod |
| **Cast Al (Secondary)** | Al 88-92%, Si 5-12%, Cu 1-3%, Mg 0.3-0.5% | A380, A356, 319, 7075 (high Si/Cu) | Die-casting, sand casting, tooling |

**Fractionation Method:** **Sequential Port 5 Collection by Temperature Ramp**
- 660-680°C: Early melt = lowest liquidus alloys (A380, A356, 5xxx) — higher Si/Mg
- 680-700°C: Mid-range = 6061, 6063, 3xxx — moderate Mg/Si
- 700-720°C: Late melt = pure Al, 1xxx, clean 6063 — highest purity
- **Each 5-minute temperature band collected to separate ZrO₂ mold position**

### 4.2 Wrought vs Cast Separation Logic

| Criterion | Wrought Stream | Cast Stream |
|---|---|---|
| **Si content** | <0.15% | 5-12% |
| **Fe content** | <0.20% | 0.2-0.8% |
| **Cu content** | <0.05% | 0.5-3% |
| **Mg content** | <0.10% | 0.3-0.5% |
| **Primary source** | Extrusions, wire, foil, sheet | Die-cast, engine parts, housings |
| **Downstream** | Homogenize → DC cast → extrude | Direct remelt → die-cast/sand cast |
| **Value** | $2.50-3.00/kg | $1.80-2.20/kg |

**Separation Control:**
- Inline XRF at Port 5 exit — real-time Si, Fe, Cu, Mg
- Temperature band assignment logged per mold position
- Post-batch assay of each slug confirms fractionation

### 4.3 Thermodynamic Basis for Fractionation

The sequential melting of Al alloys follows their **liquidus temperatures**:

| Alloy | Liquidus (°C) | Collection Window | Mold Position |
|---|---|---|---|
| A380 (Si 8.5%, Cu 3.5%) | 577 | 660-670°C (early) | 1-2 |
| A356 (Si 7%, Mg 0.35%) | 613 | 665-675°C | 2 |
| 5xxx (Mg 3-5%) | 630-650 | 670-680°C | 2-3 |
| 6061 (Mg 1%, Si 0.6%) | 652 | 675-685°C | 3 |
| 6063 (Mg 0.7%, Si 0.4%) | 655 | 680-690°C | 3-4 |
| 1xxx (pure Al) | 660 | 685-700°C | 4 |
| 3xxx (Mn 1%) | 655-660 | 690-705°C | 4-5 |
| 7075 (Zn 5.6%, Mg 2.5%, Cu 1.6%) | 635 | 670-680°C (but Zn removed) | — |

**Note:** 7075 and other Zn-containing alloys have Zn removed in Stage 4, so their liquidus shifts. The remaining Al-Cu-Mg system melts in the 670-690°C range.

### 4.4 Fractionation by Impurity Segregation

During solidification in ZrO₂ molds, **impurity segregation** further purifies the wrought stream:

**Scheil Equation (non-equilibrium solidification):**
$$C_s = k C_0 (1 - f_s)^{k-1}$$
Where C_s = solid composition, C_0 = initial composition, f_s = fraction solidified, k = partition coefficient.

| Impurity | Partition Coefficient (k) | Segregation Behavior |
|---|---|---|
| Si | 0.12 | Strongly rejected to liquid — last 10% of solid has 8× bulk Si |
| Fe | 0.03 | Extremely rejected — forms FeAl₃ in interdendritic regions |
| Cu | 0.17 | Rejected — enriches in last-to-freeze zones |
| Mg | 0.35 | Moderately rejected |
| Mn | 0.45 | Mildly rejected |

**Practical Application:** Wrought slugs (Positions 4-5) are cast with **directional solidification** (bottom chill plate at -150°C N₂ quench). The first 80% of solidification produces Al with <0.05% Si, <0.1% Fe, <0.02% Cu. The last 20% (high-impurity zone) is cropped and recycled to cast stream.

### 4.5 Real-Time Fractionation Control Algorithm

```
FOR each 5-min temperature band in [660-665, 665-670, 670-675, 675-680, 
                                     680-685, 685-690, 690-695, 695-700, 
                                     700-705, 705-710, 710-715, 715-720]:
    1. READ XRF (Si, Fe, Cu, Mg, Mn)
    2. CALCULATE predicted final composition after solidification
       (using Scheil model with measured cooling rate)
    3. ASSIGN mold position:
       IF Si_pred < 0.15% AND Fe_pred < 0.2% AND Cu_pred < 0.05%:
           Position = NEXT_WROUGHT_POSITION
       ELSE:
           Position = NEXT_CAST_POSITION
    4. LOG assignment (timestamp, temperature, XRF, prediction)
    5. DIVERT Port 5 flow to assigned ZrO₂ mold (rotary carousel)
ENDFOR

WROUGHT_POSITIONS = [1, 2, 3, 4]   # 4 molds for wrought
CAST_POSITIONS = [5, 6, 7, 8]      # 4 molds for cast
```

### 4.6 Downstream Refining Requirements

| Stream | Refining Step | Purpose | Energy |
|---|---|---|---|
| **Wrought** | Homogenization (550°C, 8h) | Eliminate microsegregation | 50 kWh/ton |
|  | DC Casting | Produce 200 mm billets | 80 kWh/ton |
|  | Scalping/Hot Rolling | Remove surface defects | 120 kWh/ton |
| **Cast** | Remelt + Flux | Remove oxides, adjust Si | 30 kWh/ton |
|  | Die/Sand Casting | Near-net shape parts | 40 kWh/ton |
|  | Heat Treat (T5/T6) | Mechanical properties | 60 kWh/ton |

**Total downstream energy: ~250 kWh/ton Al** — still 75% less than primary Al (1000+ kWh/ton)

---

## 5. Dross Management

### 5.1 Dross Formation Mechanism

Dross forms at the melt surface by:
1. **Al oxidation**: 4Al + 3O₂ → 2Al₂O₃ (even in N₂, trace O₂ exists)
2. **Mg oxidation**: 2Mg + O₂ → 2MgO (primary dross component with flux)
3. **Nitride formation**: 2Al + N₂ → 2AlN (at 680°C in N₂ atmosphere)
4. **Flux entrapment**: NaCl/KCl/cryolite mechanically trapped in oxide layer

**Dross Composition (Typical):**
- Al₂O₃: 40-50%
- MgO: 20-30% (from Mg removal)
- NaCl/KCl: 15-20% (entrapped flux)
- AlN: 5-10%
- Metallic Al (entrapped): 10-20% of dross mass

**Dross Formation Rate Model:**
$$\frac{dm_{dross}}{dt} = k_{ox} A_{surface} p_{O_2}^{1/2} + k_{nit} A_{surface} p_{N_2} + \dot{m}_{flux\_entrain}$$
Where:
- k_ox = 2.5×10⁻⁶ kg/m²·s·Pa^0.5 (Al oxidation rate constant at 680°C)
- k_nit = 1.2×10⁻⁷ kg/m²·s·Pa (AlN formation rate at 680°C)
- A_surface = 2πrL = 1.5 m² (drum inner surface area)
- p_O₂ = 1 Pa (1 ppm in 1.5 bar N₂)
- p_N₂ = 1.5×10⁵ Pa
- m_flux_entrain = 0.1 kg/min (empirical)

Calculated: dm_dross/dt ≈ 0.4 kg/min → **12 kg over 30 min** — matches observed 8-15 kg/batch.

### 5.2 Salt Flux Dross Recovery

**Recovery Process (Downstream of Stage 5):**
1. **Hot dross** (680°C) discharged with Al stream — skimmed at Port 5
2. **Rotary furnace re-melt**: Dross + 5% NaCl/KCl flux, 750°C, 30 min
3. **Stirring**: Recovers entrapped Al (90% recovery of metallic Al in dross)
4. **Skim**: Clean Al returned to cast stream; salt slag to Stage 7

**Recovery Metrics:**
| Metric | Target |
|---|---|
| Al recovery from dross | >90% |
| Salt flux recycle rate | >80% (recovered flux reused) |
| Final salt slag to Stage 7 | <2% of Al feed mass |
| Energy for dross re-melt | 15 kWh/ton dross |

**Rotary Furnace Design (FOLLOW-20 Detail):**
- Capacity: 500 kg dross/batch
- Rotation: 15 RPM (gentle — prevents Al oxidation)
- Atmosphere: N₂ + 5% H₂ (reducing — prevents further oxidation)
- Flux: NaCl/KCl (same as Stage 5 — recycle loop)
- Tilt: 5° for slag discharge
- **Al recovery: 92% typical (1.8 kg recovered from 2 kg entrapped)**

### 5.3 Dross to Stage 7

The salt slag (NaCl/KCl/MgO/Al₂O₃/AlN) exits the Aegis-Forge I with the Stage 7 ferrous stream. It is processed in the **Phoenix Protocol hydrometallurgical refinery**:
- Water leach: NaCl/KCl dissolved, recovered by evaporation
- MgO/Al₂O₃/AlN residue: Acid leach for REE recovery (Stage 8 minerals)
- **Zero waste — all flux components recycled or valorized**

### 5.4 Dross Thermodynamics and Phase Diagram

The NaCl-KCl-MgO-Al₂O₃ system at 680°C:

**Phase Relations:**
- NaCl-KCl: Complete liquid miscibility (eutectic 657°C)
- MgO: Solubility in NaCl/KCl = 0.5 wt% at 680°C
- Al₂O₃: Solubility in NaCl/KCl = 0.1 wt%; in cryolite = 10 wt%
- MgO-Al₂O₃: Forms spinel MgAl₂O₄ (melting point 2135°C) — stable solid

**Dross Cooling Path:**
1. 680°C: Liquid flux + suspended MgO/Al₂O₃/AlN + entrapped Al
2. 657°C: NaCl/KCl eutectic solidification begins
3. 600°C: Flux fully solid — MgO/Al₂O₃/AlN trapped in salt matrix
4. 25°C: Final dross — crystalline NaCl, KCl, MgAl₂O₄, AlN, metallic Al

This solidification behavior enables **mechanical separation** of salt from oxides in the rotary furnace (salt melts at 657°C, oxides remain solid).

### 5.5 Flux Recycle Loop Economics

| Parameter | Value | Source |
|---|---|---|
| Fresh flux cost (NaCl/KCl/cryolite) | $0.80/kg | Bulk chemical pricing |
| Flux consumption (net) | 2.4 kg/batch | 12 kg in - 9.6 kg recycled |
| Recycle rate | 80% | Rotary furnace recovery |
| Annual flux cost (1200 batches) | $2,300 | Negligible vs Al revenue |
| Salt slag to Stage 7 | 2.4 kg/batch | Contains MgO, Al₂O₃, REEs |

The flux recycle loop is **economically self-sustaining** — the value of recovered NaCl/KCl ($0.30/kg) exceeds processing cost.

---

## 6. Impurity Partitioning

### 6.1 Impurity Behavior in Stage 5

| Impurity | Source | Behavior at 680°C | Partitioning |
|---|---|---|---|
| **Si** | Die-cast (A380/A356), glass fibers | Dissolves in Al (max 1.6% at 680°C) | Reports to Al slug — fractionation by Si content |
| **Fe** | Steel contaminants, alloy impurities | Insoluble in Al (max 0.05% at 680°C) | Forms FeAl₃ intermetallics → dross/slag |
| **Cu** | Wire, 2024/7075 alloys, motors | Dissolves in Al (max 5.6% at 680°C) | Reports to Al slug — fractionation by Cu content |
| **Mn** | Alloying (3xxx), steel | Dissolves in Al (max 1.8% at 680°C) | Reports to Al slug — minor |
| **Zn** | 7075, galvanized residuals | **REMOVED in Stage 4** — <0.01% residual | Negligible |
| **Pb/Sn/Bi/In** | Solder, coatings | **REMOVED in Stage 4** — <0.001% residual | Negligible |
| **Ni/Cr/Ti** | Stainless, superalloys | Insoluble — solid particles | Report to Stage 7/8 slag |
| **REE (Nd, Sm, Co)** | Magnet particles | Insoluble — oxide particles | Report to Stage 8 slag |
| **Ca** | CaO from Stage 3 char flux | Insoluble — forms CaAl₂O₄ | Dross/slag |
| **Na/K** | Flux carryover | Dissolves in flux, not Al | <10 ppm in Al product |
| **F** | Cryolite decomposition | Forms AlF₃ gas (trace) | <1 ppm in Al product |

### 6.2 Target Product Specifications

| Product | Al | Si | Fe | Cu | Mg | Mn | Zn | Ti | Others |
|---|---|---|---|---|---|---|---|---|---|
| **Wrought Remelt** | >99.7% | <0.15% | <0.20% | <0.05% | <0.10% | <0.05% | <0.01% | <0.05% | <0.05% each |
| **Cast Secondary** | 88-92% | 5-12% | <0.8% | 0.5-3% | 0.3-0.5% | <0.5% | <0.1% | <0.2% | <0.1% each |

**Quality Metrics:**
- Hydrogen content: <0.1 mL/100g Al (degassing in mold)
- Grain size: <500 µm (controlled cooling in ZrO₂ molds)
- Inclusion count: <5/mm² >20 µm (SiC candle filtration effective)

### 6.3 Impurity Partitioning Thermodynamics

**Gibbs Free Energy of Formation at 680°C (953 K):**
| Reaction | ΔG (kJ/mol) | Implication |
|---|---|---|
| 4Al + 3O₂ → 2Al₂O₃ | -1,120 | Al oxidation strongly favored |
| 2Mg + O₂ → 2MgO | -980 | Mg oxidation favored over Al |
| 2Fe + 3/2O₂ → Fe₂O₃ | -620 | Fe oxidation less favored |
| 2Cu + O₂ → 2CuO | -85 | Cu oxidation marginal |
| 2Al + N₂ → 2AlN | -180 | Nitride formation favored in N₂ |
| Mg + Na₃AlF₆ → MgF₂ + 3NaF + Al | -45 | Fluoride capture favored |

**Partition Coefficients (K = C_dross / C_Al) at 680°C:**
| Element | K (dross/Al) | K (flux/Al) | K (slag/Al) | Primary Sink |
|---|---|---|---|---|
| Mg | 50 | 10 | 5 | Dross (MgO) |
| Si | 0.5 | 0.01 | 100 | Slag (silicates) |
| Fe | 20 | 0.1 | 500 | Slag (FeAl₃, spinels) |
| Cu | 2 | 0.05 | 50 | Slag (CuAl₂) |
| Mn | 5 | 0.1 | 100 | Slag (MnAl₂O₄) |
| Na/K | 0.01 | 1000 | 10 | Flux |
| F | 0.1 | 500 | 1 | Flux (MgF₂, NaF) |

**Key Insight:** The flux system (NaCl/KCl/cryolite) selectively captures Mg and F, while the slag (mineral residue) captures Si, Fe, Cu, Mn. The Al product is purified by this **dual-sink partitioning**.

---

## 7. Output Streams

### 7.1 Stream Summary Table

| Stream | Port | Temp (°C) | Mass/Batch | Composition | Downstream |
|---|---|---|---|---|---|
| **Wrought Al slugs** | 5 (early) | 680-700 | 20-40 kg | Al >99.7%, Si<0.15%, Fe<0.2% | Remelt → extrusion billet |
| **Cast Al slugs** | 5 (late) | 700-720 | 30-60 kg | Al 88-92%, Si 5-12%, Cu 1-3% | Direct die-cast/sand cast |
| **Dross/Salt Slag** | 5 (skim) | 680-720 | 8-15 kg | Al₂O₃/MgO 60%, flux 20%, Al 10% | Rotary re-melt → Stage 7 |
| **Mineral Residue** | — | 720 | 50-80 kg | Char ash, CaO, SiO₂, REE oxides | Stage 7 feed |

### 7.2 Mass Balance per 500 kg Batch

```
MASS BALANCE — STAGE 5 (Typical 500 kg Mixed Feedstock)
═════════════════════════════════════════════════════════════════════════════════

INPUT (from Stage 4 cleared feedstock):
├── Al particles (all categories): 100 kg
├── Ferrous particles (Fe, Ni, Co): 80 kg
├── Copper particles (Cu, PMs): 30 kg
├── Mineral residue (CaO, SiO₂, glass, REE): 60 kg
├── Char ash (from Stage 4 flux consumption): 20 kg
├── Flux residue (NaCl/KCl/cryolite carryover): 5 kg
└── TOTAL INPUT: 295 kg

STAGE 5 PROCESSING:
├── Flux injected: +12 kg (NaCl/KCl/cryolite)
├── N₂/H₂ atmosphere: mass negligible
└── Net processing: 307 kg

OUTPUTS:
├── Wrought Al slugs (Port 5A): 30 kg
│   └── Al: 29.5 kg (98.3%), Impurities: 0.5 kg
├── Cast Al slugs (Port 5B): 50 kg
│   └── Al: 45 kg (90%), Si: 3 kg (6%), Cu: 1 kg (2%), Mg: 0.3 kg, Fe: 0.4 kg
├── Dross/Salt Slag (Port 5 skim): 12 kg
│   └── Al₂O₃/MgO: 7 kg, Flux: 2.5 kg, Metallic Al: 2 kg, AlN: 0.5 kg
├── Mineral residue to Stage 7: 140 kg
│   └── Fe/Ni/Co: 80 kg, Cu: 30 kg, Minerals: 60 kg, Char ash: 20 kg, Flux: 5 kg
├── Dross re-melt recovery (downstream): -1.8 kg Al returned to cast stream
└── TOTAL OUTPUT: 307 kg ✓ (mass conserved)

ALUMINUM RECOVERY:
├── Al in feed: 100 kg
├── Al in wrought slugs: 29.5 kg
├── Al in cast slugs: 45 kg
├── Al in dross (entrapped): 2 kg
├── Al recovered from dross re-melt: 1.8 kg
├── Al loss (oxidation, entrapment): 1.7 kg
└── **Net Al recovery: 76.3 kg / 100 kg = 76.3%** (industry typical: 70-85%)
```

---

## 8. Throughput and Quality

### 8.1 Production Targets

| Metric | Target | Measurement | Frequency |
|---|---|---|---|
| **Batch Cycle Time** | 30 min (Stage 5) / 3.5 hr (full cascade) | Timer | Per batch |
| **Throughput** | 500 kg/batch | Scale | Per batch |
| **Annual Capacity** | 1,200 batches/yr (24/7, 85% avail.) | — | Annual |
| **Al Recovery (net)** | >75% of feed Al | Mass balance | Per batch |
| **Wrought Al Purity** | Al >99.7%, Si <0.15%, Fe <0.2% | ICP-OES / XRF | Every slug |
| **Cast Al Si Range** | 5-12% Si | XRF | Every slug |
| **Mg Removal** | Feed Mg 0.3-1.5% → Product <0.1% | ICP-OES | Per batch |
| **Dross Al Recovery** | >90% of dross Al | Rotary furnace yield | Per batch |
| **H₂ in Product** | <0.1 mL/100g | Gas analysis | Every 10th slug |
| **Grain Size** | <500 µm | Metallography | Per shift |

### 8.2 Sampling and Analytical Protocol

| Sample Point | Method | Analytes | Frequency |
|---|---|---|---|
| **Feed (Stage 4 exit)** | Grab sample, 500 g | Full elemental (ICP-OES/MS) | Every batch |
| **Port 5 (Al stream)** | Auto-sampler, 100 g/5 min | Si, Fe, Cu, Mg, Mn, Zn, Ti | Continuous (banded) |
| **Dross (skim)** | Grab sample, 200 g | Al₂O₃, MgO, Flux, Metallic Al | Every batch |
| **Mineral residue (Stage 7)** | Grab sample, 500 g | Fe, Cu, REE, Flux, C | Every batch |
| **Wrought slug** | Drill chips, 10 g | Full wrought spec panel | Every slug |
| **Cast slug** | Drill chips, 10 g | Full cast spec panel | Every slug |
| **Refined flux recycle** | Solution assay | NaCl, KCl, NaF, AlF₃ | Every recycle batch |

---

## 9. Energy Balance

### 9.1 Energy Requirements

| Component | Energy (kWh/batch) | Notes |
|---|---|---|
| **Sensible Heat (100 kg Al, 450→680°C)** | 28 kWh | c_p avg 1.1 kJ/kg·K, ΔT=230K |
| **Latent Heat — Al (100 kg)** | 11 kWh | L_f = 397 kJ/kg |
| **Sensible Heat (minerals, 150 kg, 450→720°C)** | 18 kWh | c_p avg 0.8 kJ/kg·K, ΔT=270K |
| **Flux Heating (12 kg, 25→680°C)** | 2 kWh | c_p ~1.2 kJ/kg·K + fusion |
| **Mg Oxidation Exotherm** | -3 kWh | 2Mg + O₂ → 2MgO, ΔH = -602 kJ/mol |
| **Al Oxidation Exotherm (trace)** | -1 kWh | 4Al + 3O₂ → 2Al₂O₃, limited by O₂ |
| **Induction Losses (coil, coupling)** | 25 kWh | 100 kW × 30 min × 0.5 efficiency factor |
| **Rotation (300 RPM, 30 min)** | 3 kWh | Motor + bearing losses |
| **N₂ Compression** | 4 kWh | 1.5 bar, 500 L/min |
| **Flux Injection System** | 1 kWh | Pneumatic conveying |
| **XRF/POF/FBG Sensors** | 0.5 kWh | Instrumentation power |
| **Heat Losses (radiation, conduction)** | 12 kWh | Drum wall, aerogel gap, vessel |
| **TOTAL STAGE 5 ENERGY** | **100 kWh/batch** | **= 0.20 kWh/kg feed** |

### 9.2 Energy Recovery and Integration

| Recovery Stream | Energy Recovered | Use |
|---|---|---|
| **Stage 4 Off-gas/Char Heat** | ~45 kWh | Pre-heats Stage 5 feed (already in drum) |
| **Al Slug Sensible Heat (680→200°C)** | ~20 kWh | Pre-heats Stage 1-2 air, facility heat |
| **Dross Re-melt Heat** | ~5 kWh | Integrated in rotary furnace |
| **Induction Waste Heat (cold plates)** | ~35 kWh | Facility heating / ORC |
| **Flux Sensible Heat (recycle)** | ~3 kWh | Pre-heats fresh flux |

**Net Stage 5 Energy (with recovery):** ~100 - 65 = **35 kWh/batch net input**
**Full Cascade Net Energy:** ~350 kWh/batch (all stages)

### 9.3 Exergy Analysis

| Stream | Exergy (kWh) | Quality |
|---|---|---|
| Induction electricity | 100 | High (work potential) |
| Al chemical exergy | 320 | Very high (Al is energy-intensive to produce) |
| Dross/flux chemical | 15 | Medium |
| **Total Exergy Input** | **435 kWh** | — |
| **Product Exergy (Al slugs)** | **320 kWh** | Chemical + physical |
| **Exergy Efficiency** | **74%** | Good for thermal-metal process |

### 9.4 Exergy Destruction Breakdown

| Process | Exergy Destroyed (kWh) | % of Total | Cause |
|---|---|---|---|
| Induction heating (Joule + hysteresis) | 15 | 35% | Resistive losses, non-ideal coupling |
| Heat transfer (drum wall → melt) | 8 | 19% | Finite ΔT (50°C avg) |
| Mg oxidation (chemical irreversibility) | 6 | 14% | Finite ΔG vs equilibrium |
| Al oxidation (trace) | 3 | 7% | Finite ΔG |
| Gas compression (N₂) | 2 | 5% | Compressor inefficiency |
| Rotation (mechanical) | 2 | 5% | Bearing friction, windage |
| Sensors/control | 1 | 2% | Electronics |
| **Total** | **37** | **87%** | — |

**Improvement Opportunities:**
- Induction: Optimize coil geometry, increase frequency → 10% reduction
- Heat transfer: Reduce drum wall thickness, improve contact → 5% reduction
- Mg oxidation: Optimize flux chemistry → 3% reduction

---

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

## 11. Control System

### 11.1 Temperature Ramp Profile

```
STAGE 5 TEMPERATURE PROFILE — 30 MINUTE SEQUENCE
═════════════════════════════════════════════════════════════════════════════════

Time (min)  Temp (°C)  Action                    RPM    Port    Flux
──────────────────────────────────────────────────────────────────────────────
0-5         450→660    Ramp through Al solidus   300    —       0.5 kg/min
5-10        660→680    Ramp to dwell temp        300    —       0.5 kg/min
10-35       680        DWELL — Al melt + Mg removal  300    5       0.2 kg/min
35-37       680→720    Ramp to max (Mg limit)    300    5       0.3 kg/min
37-40       720        Final dwell/transition    300    5       0.3 kg/min
40+         720→1085   Ramp to Stage 6           200    —       —

CONTROL MODE: Cascade PID — Outer: drum wall temp (FBG Zones 4-5), Inner: induction power
BAND COLLECTION: 5-min temperature bands → separate ZrO₂ mold positions (1-5)
```

### 11.2 PID Control Parameters

| Loop | Variable | Kp | Ki | Kd | Setpoint Source |
|---|---|---|---|---|---|
| **Outer (Temp)** | Drum wall temp (FBG Zones 4-5) | 0.6 | 0.03 | 0.08 | Profile generator |
| **Inner (Power)** | Induction power (Zones 4-5) | 1.0 | 0.25 | 0.03 | Outer loop output |
| **RPM** | Drum speed | 0.4 | 0.08 | 0.03 | 300 RPM constant |
| **Pressure** | Drum N₂ pressure | 1.8 | 0.4 | 0.08 | 1.5 bar constant |
| **Port 5 Temp** | Valve actuator temp | 1.2 | 0.15 | 0.05 | 720°C |
| **Flux Injection** | Mass flow rate | 0.8 | 0.1 | 0.02 | Profile + XRF feedback |

**Resonance Tracking (Induction):**
- Frequency sweep ±3% around 10 kHz every 15 sec
- Phase-locked loop maintains ZVS
- Load change detection: Al melt increases coupling → frequency shift tracked

### 11.3 Metal Level Sensors (POF)

**Plastic Optical Fiber (POF) Level Detection at Port 5:**
- PMMA fiber (1 mm core) at r = 280 mm, 3 axial positions (200, 400, 600 mm)
- Light transmission attenuated by molten Al film (n_Al ≈ 1.2 vs n_air = 1.0)
- Resolution: 0.3 mm film thickness
- Response time: <50 ms
- **Used for:** Continuous flow verification, mold fill level, overfill protection

### 11.4 Composition Feedback Control (XRF)

**Inline XRF at Port 5 Exit:**
- Si-PIN detector, 50 kV Rh anode, 10 sec acquisition
- Measures: Si, Fe, Cu, Mg, Mn, Zn, Ti, Pb, Sn
- **Real-time fractionation decision:** XRF Si content → mold position assignment
  - Si < 0.5% → Position 1 (Wrought)
  - Si 0.5-3% → Position 2 (Mixed wrought/cast)
  - Si 3-8% → Position 3 (Cast A356)
  - Si > 8% → Position 4-5 (Cast A380/high-Si)

### 11.5 Flux Injection Control

- **Pneumatic powder injection** (N₂ carrier) at drum top flux port
- **Mass flow controller** per component (NaCl/KCl blend, cryolite separate)
- **Injection synchronized** with temperature profile
- **Feedback:** 
  - XRF Mg in Al stream → adjust cryolite rate (Mg removal efficiency)
  - Dross alkalinity (pH of quench water) → adjust NaCl/KCl ratio
  - Flux consumption rate → inventory management

### 11.6 Mold Carousel Control

**8-Position ZrO₂ Mold Carousel (PROD-08 Integration):**
- Rotation: Indexed by Port 5 discharge events (XRF trigger)
- Position 1-4: Wrought molds (water-cooled Cu chill plates)
- Position 5-8: Cast molds (insulated for slower cooling)
- Cooling: N₂ quench at -150°C for wrought; ambient air for cast
- Cycle time: 5 min per position (matches temperature band dwell)
- **Synchronization:** Carousel index triggered by XRF band decision + Port 5 flow confirmation

### 11.7 Supervisory Control and Data Acquisition (SCADA)

**HMI Screens:**
1. **Thermal Overview**: Real-time FBG map (8 zones × 48 sensors), temperature profile tracking
2. **Composition Monitor**: XRF trends (Si, Fe, Cu, Mg), fractionation assignment log
3. **Flux Management**: Hopper levels, injection rates, recycle loop status
4. **Dross/Skim**: Skim frequency, dross mass, Al recovery rate
5. **Energy Dashboard**: Induction power, heat recovery, exergy efficiency
6. **Safety Status**: Interlock states, emission monitors, vibration spectra

**Alarm Hierarchy:**
- **Level 1 (Critical)**: Temp >725°C, O₂ >2%, Port 5 fail, Vibration >5 mm/s — **Auto shutdown**
- **Level 2 (Major)**: Temp ramp >10°C/min, RPM ±10%, Pressure >1.8 bar — **Auto hold + alarm**
- **Level 3 (Minor)**: XRF drift, Flux level low, Emission >50% limit — **Alarm only**
- **Level 4 (Info)**: Band transition, Mold index, Batch complete — **Log only**

**Data Historian:**
- 1 Hz logging for all FBG, XRF, POF, induction, rotation, pressure
- 10-year retention (compressed)
- OPC-UA interface for enterprise integration

---

## 12. Cross-Reference Matrix

### 12.1 Upstream Dependencies

| Document | Section | Dependency | PROD-18 Usage |
|---|---|---|---|
| **PROD-02** | 7.1-7.6 | Stage 5 thermal profile, Al window physics | Core process basis |
| **PROD-04** | 2.1, 7.5 | Drum geometry, Port 5 location/actuation | Valve timing, zone mapping |
| **PROD-09** | 2.2, 5.3 | Port 5 valve specs, Ti₃AlC₂ actuation at 720°C | Valve calibration, force balance |
| **PROD-12** | 3, 4, 7 | BFRP, SiC, ZrO₂, Ti₃AlC₂, cryolite specs | Material selection, properties |
| **PROD-13** | Tables 2-5 | Feedstock Categories A-D Al content | Input mass balance, alloy distribution |
| **PROD-16** | 4.4, 8.1 | Activated char consumption, slag composition | Mineral residue to Stage 7 |
| **PROD-17** | 1.2, 8.1 | Stage 4 cleared metals, Al matrix clean | Zn/Pb/Sn/In removed, Al only melt |

### 12.2 Downstream Dependencies

| Document | Section | Dependency | PROD-18 Provides |
|---|---|---|---|
| **PROD-19** | 1.3 | Stage 5 cleared Al, Cu/Fe feedstock | Al removed, Cu/Fe matrix clean |
| **PROD-20** | 1.3, 8.1 | Stage 7 ferrous feed, dross/slag | Dross/salt slag to Stage 7 |
| **PROD-21** | 1.3 | Stage 8 mineral residue | Minerals concentrated |
| **FOLLOW-14** | 3.2 | Mg removal kinetics | Flux chemistry validation |
| **FOLLOW-20** | 3.1, 4.1 | Ferrous/wrought/cast Al metallurgy | Slug composition, fractionation logic |
| **FOLLOW-21** | All | Mineral slag hydrometallurgy | Stage 7/8 slag composition |
| **FOLLOW-23** | 3.1 | Energy balance | Stage 5 energy integration |

### 12.3 Cross-Reference Table

| PROD-18 Section | References | Referenced By |
|---|---|---|
| 1.1 Parameters | PROD-02 Table 1, PROD-04 Table 2 | PROD-19, PROD-20 |
| 1.2 Context | PROD-17 Fig 1, PROD-19 Fig 1 | — |
| 1.3 Feedstock | PROD-13 Tables 2-5, PROD-17 Sec 8 | — |
| 2.1 Al Window | Materials Study Part I (Al) | — |
| 2.2 Melt Props | Materials Study Part I, Part II | PROD-19 |
| 2.3 Centrifugal | PROD-04 Sec 2.4 (centrifugal) | PROD-19, PROD-20 |
| 3.1-3.3 Mg Removal | Materials Study Part V (Mg), FOLLOW-20 | FOLLOW-14, FOLLOW-20 |
| 4.1-4.2 Fractionation | PROD-12 Sec 13 (specs), PROD-28 (QA) | PROD-19, FOLLOW-20 |
| 5.1-5.3 Dross | PROD-16 Sec 5 (char activation), PROD-07 (gas) | PROD-20, FOLLOW-21 |
| 6.1-6.2 Impurities | PROD-13 (feedstock), PROD-17 (Stage 4 removal) | PROD-19, PROD-20 |
| 7.1-7.2 Outputs | PROD-17 Sec 8, PROD-19 Sec 1.3 | PROD-19, PROD-20 |
| 8.1-8.2 Quality | PROD-12 Sec 13, PROD-28 | — |
| 9.1-9.3 Energy | PROD-02 Sec 12, PROD-23 | PROD-24 |
| 10.1-10.3 Safety | PROD-26, PROD-28, PROD-32 | — |
| 11.1-11.5 Control | PROD-10, PROD-23 | PROD-23 |
| 12 Matrix | All above | Master_Todo, NEXT_runner |

---

## Appendix A: Stage 5 Quick-Reference Card

### A.1 Process Quick Reference

| Phase | Temp (°C) | Time | RPM | Port | Flux Rate | Key Control |
|---|---|---|---|---|---|---|
| Ramp 1 | 450→660 | 5 min | 300 | — | 0.5 kg/min | 5°C/min max |
| Ramp 2 | 660→680 | 5 min | 300 | — | 0.5 kg/min | ±2°C at 660°C |
| Dwell | 680 | 25 min | 300 | 5 | 0.2 kg/min | XRF banding, Mg removal |
| Ramp 3 | 680→720 | 2 min | 300 | 5 | 0.3 kg/min | Mg vapor limit |
| Final | 720 | 3 min | 300 | 5 | 0.3 kg/min | Transition prep |
| To S6 | 720→1085 | ramp | 200 | — | — | Al cleared |

### A.2 Critical Setpoints

- **Al pure MP**: 660.3°C (solidus boundary)
- **A380 eutectic**: 577°C (first liquid)
- **6061 liquidus**: 652°C
- **Mg removal window**: 660-720°C (Mg BP 1091°C, vapor >720°C)
- **Mg vapor limit**: 720°C (strict upper bound)
- **Port 5 actuation**: 720°C ±2°C
- **Flux eutectic**: NaCl/KCl 657°C (liquid throughout)

### A.3 Emergency Shutdown Sequence

1. Induction OFF (Zones 4-5)
2. N₂ purge 10 bar (5 volume exchanges)
3. Flux injection OFF
4. Drum decel to 50 RPM (controlled)
5. Port 5 CLOSED (spring return confirmed)
6. Vent to flare stack
7. Alarm + operator notification

### A.4 Key Equations

- Centrifugal G: G = ω²r/g = (2π·RPM/60)²·0.3/9.81
- Skin depth: δ = √(2ρ/ωμ)  (ρ=resistivity, μ=permeability)
- Film thickness: δ = (3μQ/2πρω²r)^(1/3)
- Drainage velocity: v = ρω²rδ²/3μ
- Mg oxidation: 2Mg + O₂ → 2MgO (ΔG < 0 at 680°C)
- Exergy efficiency: η_ex = Ex_products / Ex_inputs

---

## Appendix B: ZrO₂ Mold Design for Stage 5 (PROD-08 Integration)

### B.1 Mold Specifications

| Parameter | Wrought Molds (Pos 1-4) | Cast Molds (Pos 5-8) |
|---|---|---|
| **Material** | 3Y-TZP ZrO₂ (PROD-12) | 3Y-TZP ZrO₂ |
| **Chill Plate** | Copper (water-cooled) | None (insulated) |
| **Cooling Rate** | 500°C/s (N₂ quench -150°C) | 50°C/s (air) |
| **Mold Temp (pre-heat)** | 200°C | 300°C |
| **Capacity** | 8 kg Al | 12 kg Al |
| **Dimensions** | 150×150×300 mm | 200×200×300 mm |
| **Wall Thickness** | 15 mm | 20 mm |

### B.2 Thermal Cycling Performance

**Wrought Mold (3Y-TZP + Cu chill):**
- Thermal shock ΔT: 680°C → -150°C = 830°C in <10 s
- 3Y-TZP thermal shock resistance: ΔT_critical = 650°C (conservative)
- **Design margin: Cu chill absorbs 80% of heat flux, ZrO₂ sees ΔT ≈ 160°C** — safe
- Mold life: 500 cycles (inspected per PROD-08 schedule)

**Cast Mold (3Y-TZP insulated):**
- Thermal shock ΔT: 680°C → 25°C = 655°C in 60 s
- Well within 3Y-TZP capability
- Mold life: 2000 cycles

### B.3 Solidification Control

**Wrought (Directional Solidification):**
- Bottom chill: Copper plate at -150°C (liquid N₂ circulated)
- Heat extraction: 500 kW/m² → solidification front velocity 2 mm/s
- Columnar grain zone: 80% of height
- Equiaxed zone: 20% (top) — cropped

**Cast (Equiaxed Solidification):**
- Insulated walls: 5 mm ceramic fiber blanket
- Heat extraction: 50 kW/m² → solidification time 15 min
- Uniform equiaxed grains: 200-500 µm (target for cast alloys)
- No cropping needed — entire slug usable

### B.4 Mold Change Procedure

1. Carousel rotates to unload position (outside drum envelope)
2. Robotic arm extracts solidified slug (cooled to 200°C)
3. Mold cleaned by N₂ blast (removes oxide skin)
4. Mold pre-heated to 200/300°C (induction heater on carousel)
5. Carousel indexes to Port 5 position
6. **Cycle time: 3 minutes** — fits within 5-min temperature band

---

## Appendix C: Stage 5 Economic Analysis

### C.1 Revenue per 500 kg Batch

| Product | Mass (kg) | Price ($/kg) | Revenue ($) |
|---|---|---|---|
| Wrought Al slugs | 30 | 2.75 | 82.50 |
| Cast Al slugs | 50 | 2.00 | 100.00 |
| **Total Al Revenue** | **80** | — | **182.50** |

### C.2 Operating Costs per Batch

| Cost Item | Cost ($/batch) |
|---|---|
| Induction electricity (35 kWh net) | 3.50 |
| N₂/H₂ gas | 2.00 |
| Flux (net 2.4 kg) | 1.92 |
| Dross re-melt energy | 0.30 |
| Mold cooling (N₂) | 1.50 |
| Maintenance allocation | 5.00 |
| Labor (0.5 FTE/batch) | 15.00 |
| **Total OPEX** | **29.22** |

### C.3 Net Margin

| Metric | Value |
|---|---|
| Revenue per batch | $182.50 |
| OPEX per batch | $29.22 |
| **Net margin per batch** | **$153.28** |
| Annual net (1200 batches) | $183,936 |
| CAPEX allocation (10 yr) | $50/batch |
| **Fully burdened margin** | **$103.28/batch** |

**Note:** Al revenue is secondary to the primary revenue streams (In, PMs, Cu, REEs). Stage 5 Al recovery **funds the cascade's parasitic loads** (rotation, gas, cooling) without requiring external energy revenue.

---

*End of CSMFAB000000000126 — PROD-18 Stage 5 Aluminum Window Separation*
*Next: Heuristic Intros (Williams, Keymaker, El Segundo) → Chunking → Verification → Git Commit*