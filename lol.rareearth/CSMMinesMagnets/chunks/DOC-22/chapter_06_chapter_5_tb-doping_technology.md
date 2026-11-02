## Chapter 5: Tb-Doping Technology — Hci Enhancement, GBD, Tb Criticality

### 5.1 Grain Boundary Diffusion (GBD) Physics

#### 5.1.1 Mechanism

```
Tb Grain Boundary Diffusion in Sm₂Co₁₇:
    
    2:17 Grain          Grain Boundary          2:17 Grain
    ┌─────────────┐     ┌─────────────────┐     ┌─────────────┐
    │  Sm₂Co₁₇    │     │  Tb-rich shell  │     │  Sm₂Co₁₇    │
    │  (cell)     │────▶│  Tb₂Co₁₇/TbCo₅  │◀───│  (cell)     │
    └─────────────┘     └─────────────────┘     └─────────────┘
    
    Tb diffusion: D_Tb = D₀ exp(-Q/RT)
    D₀ ≈ 10⁻⁴ m²/s, Q ≈ 250 kJ/mol
    At 950°C: D_Tb ≈ 10⁻¹⁶ m²/s → 50 nm in 2 hrs
```

#### 5.1.2 Hci Enhancement Model

```
Hci(Tb) = Hci₀ × (1 + k × C_Tb^α)

Where:
- Hci₀ = base coercivity (undoped 2:17) ~600-800 kA/m
- C_Tb = Tb atomic fraction at grain boundary (0.5-1.0 at%)
- k = enhancement coefficient (empirical, ~40-60)
- α = scaling exponent (~0.8-1.0)

Example:
C_Tb = 0.7 at% → Hci = 800 × (1 + 50 × 0.007^0.9) ≈ 800 × 1.45 = 1,160 kA/m
(+45% enhancement at 0.7% Tb)
```

---

### 5.2 Tb Supply Criticality Analysis

| Metric | Value | Assessment |
|--------|-------|------------|
| **Global Tb Production** | ~10 t/yr (2024) | **Extremely constrained** |
| **Global Tb Reserves** | ~380 t (USGS) | **<2 years at 2030 demand** |
| **Chinese Share** | >95% | **Monopoly** |
| **Chilean Potential** | 87 t/yr (DOC-22 Ch. 2) | **8.7x global current production** |
| **Required for SmCo 2030** | 18 t/yr (SmCo doping only) | **Chile = 4.8x required** |
| **Required for NdFeB 2030** | 80 t/yr (Tb-doping) | **Chile = 1.1x required** |

**Strategic Conclusion**: **Chilean Tb (87 t/yr) exceeds SmCo 2030 demand (18 t/yr) by 4.8x** — enabling **Tb-doped SmCo autonomy** for Western defense. **NdFeB Tb-doping** requires additional supply (recycling, substitution).

---

### 5.3 Tb-Doping Process Integration

#### 5.3.1 Aegis-Forge Tb Product Specification

| Parameter | Specification | Rationale |
|-----------|---------------|-----------|
| **Tb₄O₇ Purity** | ≥99.99% (4N) | Avoids non-magnetic Tb₂O₃ in diffusion |
| **Dy Impurity** | <200 ppm | Dy competes for grain boundary sites |
| **Oxygen in Tb Metal** | <100 ppm | Prevents oxide formation during diffusion |
| **Particle Size** | D50 = 2-5 μm | Matches SmCo powder for coating |

#### 5.3.2 GBD Process Flow (US/Japan Sintering Facility)

```
Tb-Co Master Alloy Production (Chile/US/Japan)
    │
    ├── Tb metal (≥99.5%) + Co metal (≥99.9%)
    ├── Induction melting (1400°C, vacuum)
    ├── Casting → Ingot → Crushing → Powder (D50=10-20μm)
    │
    ▼
SmCo 2:17 Powder Coating
    │
    ├── SmCo 2:17 powder (D50=3-5μm) + Tb-Co powder (D50=10-20μm)
    ├── Mechanical mixing / electrostatic coating
    ├── Tb-Co coating thickness: 5-15 nm (target 0.5-1% Tb)
    │
    ▼
Vacuum Diffusion Annealing
    │
    ├── 950°C, 2-4 hrs, 10⁻³ Pa vacuum
    ├── Tb diffuses 30-50 nm along grain boundaries
    ├── Forms Tb₂Co₁₇/TbCo₅ shell
    │
    ▼
Standard SmCo Sintering + Aging
    │
    ▼
Tb-Doped SmCo 2:17 Magnet
    │
    ├── Hci: 1,200-2,000 kA/m (vs 600-1,600 undoped)
    ├── (BH)max: 30-34 MGOe (vs 28-32 undoped)
    └── Max op temp: 350-400°C
```

---

### 5.4 Chapter 5 Summary

**Tb grain boundary diffusion** enhances SmCo 2:17 Hci by **30-50% at 0.5-1.0% Tb** via Tb₂Co₁₇/TbCo₅ grain boundary shell. **Global Tb supply (10 t/yr) is critically insufficient** for 2030 demand (298 t/yr). **Chilean Tb potential (87 t/yr) covers 4.8x SmCo doping needs** — **strategic Tb autonomy achievable**. Aegis-Forge Stage 8 produces **4N Tb₄O₇** for direct Tb-Co master alloy production.

**Next Chapter**: Chapter 6 — Defense Qualification: MIL-STD-1540, DFARS 2027, ITAR, SmCo Traceability.

---
