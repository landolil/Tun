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
