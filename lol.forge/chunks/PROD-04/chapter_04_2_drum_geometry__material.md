## 2. Drum Geometry & Material

### 2.1 Dimensional Specification

| Parameter | Value | Tolerance | Notes |
|---|---|---|---|
| Internal diameter (ID) | 600 mm | ±0.5 mm | Working surface after liner application |
| External diameter (OD) | 670 mm | ±0.5 mm | Including 35 mm wall |
| Length (L) | 800 mm | ±1.0 mm | Internal working length |
| Wall thickness | 35 mm | ±0.3 mm | Uniform ZrB₂-SiC composite |
| Internal working volume | 226.2 L | — | π × (0.3)² × 0.8 |
| Drum mass (ZrB₂-SiC only) | 156 kg | — | ρ = 3120 kg/m³ |
| Mass with liners | 178 kg | — | +22 kg liner zones |

**Geometric configuration:** The drum is a thick-walled cylinder (r_i = 300 mm, r_o = 335 mm, L = 800 mm) rotating about its longitudinal axis. The 35 mm wall provides the structural section for combined centrifugal, pressure, and thermal loading. The internal diameter of 600 mm defines the working chamber where feedstock is processed; the three liner zones are applied to this internal surface.

### 2.2 ZrB₂-SiC Composite Material Properties

The drum body is fabricated from a **ZrB₂-SiC composite (12 vol% ZrB₂, 88 vol% SiC matrix)**, flash-sintered to near-full density. This composition balances the high thermal conductivity and oxidation resistance of ZrB₂ with the fracture toughness and thermal shock resistance of SiC.

| Property | Value (RT) | Value (1500°C) | Value (2000°C) | Test Standard |
|---|---|---|---|---|
| Density (ρ) | 3.12 g/cm³ | — | — | Archimedes |
| Flexural strength (σ_f) | 620 MPa | 480 MPa | 350 MPa | ASTM C1161 |
| Fracture toughness (K_IC) | 5.2 MPa·m⁰·⁵ | 4.8 MPa·m⁰·⁵ | 4.2 MPa·m⁰·⁵ | Indentation |
| Elastic modulus (E) | 380 GPa | 340 GPa | 300 GPa | Resonance |
| Poisson's ratio (ν) | 0.18 | 0.19 | 0.20 | — |
| Thermal conductivity (k) | 45 W/m·K | 28 W/m·K | 22 W/m·K | Laser flash |
| CTE (α) 20-1000°C | 5.8 × 10⁻⁶/K | — | — | Dilatometry |
| CTE (α) 1000-2000°C | 6.5 × 10⁻⁶/K | — | — | Dilatometry |
| Specific heat (c_p) | 520 J/kg·K | 780 J/kg·K | 920 J/kg·K | DSC |
| Oxidation rate (1500°C, air) | <0.1 mg/cm²/h | — | — | TGA |
| Electrical resistivity | 8.5 × 10⁻⁸ Ω·m | 1.2 × 10⁻⁷ Ω·m | 2.1 × 10⁻⁷ Ω·m | 4-point probe |
| Thermal shock ΔT_critical | 650°C | — | — | Quench test |
| Creep rate (1800°C, 50 MPa) | <10⁻⁸ s⁻¹ | — | — | Uniaxial creep |

**Composition rationale:** The 12 vol% ZrB₂ loading is deliberately kept **below the electrical percolation threshold** (~15-18 vol% for ZrB₂ in SiC). This ensures the composite remains electrically insulating (ρ > 10⁶ Ω·m at RT), preserving the all-dielectric architecture of the Aegis-Forge I. At 12 vol%, ZrB₂ forms a discontinuous particulate dispersion within the SiC matrix — sufficient to elevate thermal conductivity and oxidation resistance without creating conductive pathways.

### 2.3 Material Property Derivation (Rule of Mixtures)

**Effective thermal conductivity (Maxwell-Eucken model for particulate composite):**
$$k_{eff} = k_m \frac{2k_m + k_p - 2\phi(k_m - k_p)}{2k_m + k_p + \phi(k_m - k_p)}$$
Where k_m = 120 W/m·K (SiC matrix), k_p = 60 W/m·K (ZrB₂ particulate), φ = 0.12
$$k_{eff} = 120 \times \frac{240 + 60 - 0.24(60)}{240 + 60 + 0.12(60)} = 45.2 \text{ W/m·K} \text{ (matches measured)}$$

**Effective CTE (Turner model for particulate composite):**
$$\alpha_{eff} = \frac{\phi \alpha_p K_p + (1-\phi) \alpha_m K_m}{\phi K_p + (1-\phi) K_m}$$
Where α_p = 6.5×10⁻⁶/K (ZrB₂), α_m = 4.5×10⁻⁶/K (SiC), K = bulk modulus
$$\alpha_{eff} \approx 5.8 \times 10^{-6} \text{/K} \text{ (matches measured)}$$

**Effective elastic modulus (Halpin-Tsai):**
$$E_{eff} = E_m \frac{1 + \zeta \eta \phi}{1 - \eta \phi}, \quad \eta = \frac{E_p/E_m - 1}{E_p/E_m + \zeta}$$
With E_p = 450 GPa (ZrB₂), E_m = 380 GPa (SiC), ζ = 2 (spherical particulates)
$$E_{eff} \approx 382 \text{ GPa} \text{ (matches measured 380 GPa)}$$

### 2.4 Operational Envelope

| Condition | Value | Limit Basis |
|---|---|---|
| Maximum operating temperature | 2200°C | 85% of ZrB₂ melting point (3245°C) |
| Maximum pressure (internal) | 5 bar | Process atmosphere (N₂/Ar) |
| Maximum rotational speed | 500 RPM | Bearing limit, critical speed margin |
| Maximum centrifugal G (at ID) | 84.5 G | ω = 52.36 rad/s, r = 0.3 m |
| Thermal ramp rate (max) | 50°C/min | Thermal shock limit (ΔT_critical = 650°C) |
| Pressure × Temperature product | 11,000 bar·°C | Creep limit at 1800°C |

---
