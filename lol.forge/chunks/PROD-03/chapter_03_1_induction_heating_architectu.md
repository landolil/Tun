## 1. Induction Heating Architecture — The Invisible Sorter

The induction system is the **thermal engine** of the Aegis-Forge I. It does not merely heat the drum — it selectively couples to specific material classes at each stage, creating the differential heating that enables the thermal cascade separation. The induction system is forced by a single irreducible constraint: **Maxwell's Equations in a Rotating Ceramic Drum** — eddy current heating requires conductive material, hysteresis heating requires ferromagnetic material, and neither works on ceramics. The coils *must* couple only to the feedstock inside, through a 15 mm air gap + 3 mm alumina insulation + 35 mm ZrB₂-SiC drum wall.

This constraint writes the entire architecture: 8 independently controlled zones, frequency ladder (100 kHz → 1 kHz), GaN resonant inverters, FBG optical feedback, water-cooled copper tube conductors. There are no free parameters — the frequency, power, and zone geometry are the unique solution to coupling energy into a rotating, stratified, multi-material charge through a ceramic wall.

### 1.1 Design Philosophy: Frequency as Material Selector

The key insight is **frequency as material selector**: at Stage 5 (660°C), aluminum must melt while copper (1085°C) and iron (1538°C) remain solid. But copper couples to induction 15× better than aluminum at the same frequency. The solution: **low frequency (1-2 kHz) penetrates deep for large ferrous pieces; high frequency (50-100 kHz) couples to surface for thin copper traces and aluminum**. The 8-zone frequency ladder is the unique mapping from material conductivity/permeability to skin depth.

**Skin Depth Equation (The Design Equation):**
$$\delta = \sqrt{\frac{2\rho}{\omega\mu}} = \sqrt{\frac{\rho}{\pi f \mu}}$$

Where ρ = electrical resistivity, ω = angular frequency, f = frequency, μ = magnetic permeability.

| Material | ρ at operating T (Ω·m) | μ/μ₀ | f (kHz) | δ (mm) | Purpose |
|---|---|---|---|---|---|
| Air/N₂ | ∞ | 1 | 100 | N/A | Indirect heating |
| Zn (500°C) | 6.5×10⁻⁸ | 1 | 50 | 1.1 | Surface coupling |
| Pb (500°C) | 2.2×10⁻⁷ | 1 | 50 | 2.1 | Surface coupling |
| Al (700°C) | 3.5×10⁻⁸ | 1 | 10 | 2.1 | Optimal penetration |
| Cu (1100°C) | 3.2×10⁻⁸ | 1 | 5 | 1.3 | Deep penetration |
| Fe (1200°C) | 1.2×10⁻⁷ | 1 (paramag) | 2 | 2.5 | Eddy current |
| Fe (700°C) | 1.0×10⁻⁷ | 500 | 2 | 0.11 | Hysteresis dominant |
| Minerals (1800°C) | 10⁻³-10⁻¹ | 1 | 1 | Conduction | Bulk heating |

The frequency ladder IS the periodic table's conductivity map made mechanical.

---
