## 7. Selective Heating Physics — Conductivity/Permeability as Material Selector

The fundamental sorting mechanism of the Aegis-Forge I is the frequency-dependent coupling of the induction field to different material classes.

### 7.1 Coupling Coefficient Derivation

The power absorbed by a material in an alternating magnetic field:

$$P_{abs} = \frac{\pi^2 B_{peak}^2 d^2 f^2 V}{6 \rho} \quad \text{(non-magnetic, } \delta \gg d\text{)}$$

$$P_{abs} = \frac{\pi B_{peak}^2 f V}{\mu} \quad \text{(magnetic, } \delta \ll d\text{)}$$

Where $V$ = volume of material, $d$ = characteristic dimension.

### 7.2 Selective Heating Matrix

| Material Class | ρ (nΩ·m) | μ<sub>r</sub> | Coupling at 100 kHz | Coupling at 10 kHz | Coupling at 1 kHz |
|----------------|----------|--------------|---------------------|-------------------|------------------|
| Copper | 16.8 | 1 | Very High | High | Moderate |
| Aluminum | 26.5 | 1 | High | Moderate | Low |
| Zinc (liq) | 120 | 1 | Moderate | Low | Very Low |
| Lead (liq) | 450 | 1 | Low | Very Low | Negligible |
| Iron (ferro) | 97 | 5000 | Extreme | Very High | High |
| Steel | 720 | 200 | High | Moderate | Low |
| Ceramics | 10¹² | 1 | None | None | None |
| Polymers | 10¹⁵ | 1 | None | None | None |
| BFRP | 10¹⁰ | 1 | None | None | None |

**Design rule:** At Z7 (2 kHz), ferrous materials heat 50× more than aluminum. At Z5 (10 kHz), aluminum heats 15× more than zinc. At Z1–Z2 (100 kHz), only very thin conductive foils couple — bulk plastics and organics do not heat directly.

### 7.3 Thermal-EM Coupling in Mixed Charge

In a real feedstock batch, materials are mixed. The induction field creates a **thermal gradient** within the charge:

1. **Ferrous pieces** heat first and hottest (hysteresis + eddy)
2. **Non-ferrous conductors** (Cu, Al) heat second (eddy only)
3. **Resistive metals** (Zn, Pb, Sn) heat third
4. **Dielectrics** (ceramics, plastics, glass) heat only by conduction from hot neighbors

This natural sorting is enhanced by the drum rotation — as materials liquefy at different temperatures, centrifugal force segregates them radially before port ejection.

---
