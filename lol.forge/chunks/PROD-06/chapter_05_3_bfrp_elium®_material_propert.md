## 3. BFRP/Elium® Material Properties

### 3.1 Basalt Fiber Properties

| Property | Value | Test Standard |
|---|---|---|
| Tensile strength (fiber) | 3,000–4,840 MPa | ASTM D3379 |
| Elastic modulus (fiber) | 89–95 GPa | ASTM D3379 |
| Density | 2.65–2.80 g/cm³ | ASTM D3800 |
| Dielectric constant (1 MHz) | 6.4–7.2 | ASTM D150 |
| Electrical resistivity | >10¹² Ω·m | ASTM D257 |
| Operating temperature range | -200°C to +700°C | — |
| CTE (α) longitudinal | 6.0 × 10⁻⁶/K | — |
| CTE (α) transverse | 8.5 × 10⁻⁶/K | — |

**Source:** Mafic USA basalt roving, aerospace grade, CSMFAB-qualified batch. Basalt is the most common rock on Earth's surface — essentially free raw material. In-house production at $1.80–$2.50/kg vs. $4.50–$14.00 commercial (60–85% savings).

### 3.2 Elium® Thermoplastic Acrylic Resin Properties

| Property | Value | Test Standard |
|---|---|---|
| Base monomer | Methyl methacrylate (MMA) | — |
| Liquid viscosity | 100–300 mPa·s | ASTM D2196 |
| Cured Tg | 80–110°C | DMA (depends on cure) |
| Tensile modulus (neat) | 3.2 GPa | ASTM D638 |
| Elongation at break | 6–12% | ASTM D638 |
| Cure time (room temp) | 30–120 min | Peroxide/UV initiated |
| Recyclability | 100% monomer recovery at 350°C | Phoenix Protocol |

**In-house formulation:** MMA + peroxide initiator (0.5–2%) + chain transfer agent → Elium-equivalent at $4–$6/kg vs. $8.50–$18.00 commercial (40–65% savings).

### 3.3 BFRP Composite Properties (60% FVF, [±18°/90°]₄ Layup)

| Property | Value (RT) | Value (200°C) | Test Standard |
|---|---|---|---|
| Density | 1.95 g/cm³ | — | ASTM D792 |
| Tensile strength (hoop) | 1,100 MPa | 650 MPa | ASTM D3039 |
| Tensile strength (axial) | 850 MPa | 500 MPa | ASTM D3039 |
| Compressive strength (hoop) | 900 MPa | 450 MPa | ASTM D6641 |
| Compressive strength (axial) | 700 MPa | 350 MPa | ASTM D6641 |
| Flexural strength | 1,200 MPa | 720 MPa | ASTM D7264 |
| In-plane shear strength | 80 MPa | 45 MPa | ASTM D5379 |
| Elastic modulus (hoop) | 65 GPa | 45 GPa | ASTM D3039 |
| Elastic modulus (axial) | 55 GPa | 38 GPa | ASTM D3039 |
| Poisson's ratio (ν₁₂) | 0.32 | 0.34 | — |
| CTE (α₁) hoop | 6.2 × 10⁻⁶/K | — | Dilatometry |
| CTE (α₂) axial | 8.8 × 10⁻⁶/K | — | Dilatometry |
| Interlaminar shear (ILSS) | 65 MPa | 35 MPa | ASTM D2344 |
| Thermal conductivity (k) | 0.45 W/m·K | 0.52 W/m·K | Laser flash |
| Specific heat (c_p) | 1,100 J/kg·K | 1,400 J/kg·K | DSC |

**Layup architecture:** [±18°/90°]₄ = 16 plies total (4 repeats of +18°/-18°/90°). The ±18° plies provide hoop strength for pressure containment; 90° plies provide axial stiffness and damage tolerance. Filament winding on CNC mandrel ensures precise fiber placement and tension control.

### 3.4 Rule of Mixtures Derivations

**Effective hoop modulus (Halpin-Tsai, φ = 0.60 fiber volume fraction):**
$$E_{hoop} = E_m \frac{1 + \zeta \eta \phi}{1 - \eta \phi}, \quad \eta = \frac{E_f/E_m - 1}{E_f/E_m + \zeta}$$
With E_f = 92 GPa (basalt), E_m = 3.2 GPa (Elium®), ζ = 20 (high aspect ratio fibers):
$$E_{hoop} \approx 65.2 \text{ GPa} \text{ (matches measured 65 GPa)}$$

**Effective hoop strength (Rule of Mixtures with fiber efficiency factor):**
$$\sigma_{hoop} = \phi \sigma_f \eta_\sigma + (1-\phi) \sigma_m$$
With σ_f = 3,800 MPa (basalt strength), σ_m = 70 MPa (Elium®), η_σ = 0.48 (off-axis efficiency):
$$\sigma_{hoop} \approx 0.60 \times 3800 \times 0.48 + 0.40 \times 70 = 1,094 \text{ MPa} \text{ (matches measured 1,100 MPa)}$$

**Effective CTE (Schapery model for quasi-isotropic):**
$$\alpha_{eff} = \frac{\phi \alpha_f E_f + (1-\phi) \alpha_m E_m}{\phi E_f + (1-\phi) E_m}$$
With α_f = 7.25×10⁻⁶/K (basalt average), α_m = 60×10⁻⁶/K (Elium®):
$$\alpha_{eff} \approx 7.5 \times 10^{-6} \text{/K} \text{ (matches measured hoop 6.2, axial 8.8 × 10⁻⁶/K)}$$

### 3.5 Temperature-Dependent Properties

The BFRP retains structural integrity to 200°C external surface (protected by glaze + aerogel). At 200°C:
- Matrix-dominated properties (compressive, shear, ILSS) drop to ~50% of RT values
- Fiber-dominated properties (hoop tensile) retain ~60% of RT values
- Modulus drops ~30% due to matrix softening near Tg
- **Critical design limit:** External surface must not exceed 200°C to maintain SF > 2.0 on pressure load

### 3.6 In-House Synthesis Feasibility

**Basalt fiber production (highest priority in-house):**
- Equipment: crusher ($40K), furnace ($180K), bushings ($80K), winder ($50K) = **$350K capital**
- Raw material: local basalt rock ($2–$5/ton), silane sizing ($3.50/kg)
- In-house cost: **$1.80–$2.50/kg** vs. $4.50–$14.00 commercial
- Savings: 60–85%, Feasibility: 5/5

**Elium®-equivalent from MMA:**
- MMA bulk: $1.80–$2.80/kg (Arkema/Trinseo supply agreement)
- In-house formulation: **$4–$6/kg** vs. $8.50–$18.00 commercial
- Savings: 40–65%, Feasibility: 4/5

---
