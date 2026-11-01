## 3. Frequency Ladder & Zone Mapping — Physics-Based Design

The frequency ladder (100 kHz → 1 kHz) is not arbitrary — it is derived from the skin depth equation and the magnetic properties of target materials at each stage temperature.

### 3.1 Skin Depth and Frequency Selection

Skin depth determines how deeply the magnetic field penetrates the material:

$$\delta = \sqrt{\frac{2\rho}{\omega \mu}}$$

Where $\rho$ = electrical resistivity (Ω·m), $\omega = 2\pi f$ = angular frequency, $\mu = \mu_0 \mu_r$ = magnetic permeability.

For uniform heating of a material of thickness $d$, we require $\delta \geq d/2$. For selective surface heating (e.g., thin foils), $\delta \ll d$.

### 3.2 Material Property Tables at Operating Temperatures

#### Electrical Resistivity (ρ) vs Temperature

| Material | ρ @ 20°C (nΩ·m) | ρ @ 500°C (nΩ·m) | ρ @ 1000°C (nΩ·m) | ρ @ 1500°C (nΩ·m) |
|----------|-----------------|------------------|-------------------|-------------------|
| Aluminum | 26.5 | 78 | — (liquid) | — |
| Copper | 16.8 | 45 | 85 | — (liquid) |
| Iron (ferritic) | 97 | 320 | 580 | 920 |
| Nickel | 69 | 210 | 380 | — |
| Zinc | 59 | 120 (liq) | — | — |
| Lead | 208 | 450 (liq) | — | — |
| Tin | 115 | 240 (liq) | — | — |
| Indium | 84 | 180 (liq) | — | — |
| Steel (304 SS) | 720 | 1100 | 1350 | 1500 |

#### Relative Permeability (μ<sub>r</sub>) vs Temperature

| Material | μ<sub>r</sub> @ 20°C | μ<sub>r</sub> @ 500°C | μ<sub>r</sub> @ 770°C (Curie) | μ<sub>r</sub> @ 1000°C |
|----------|---------------------|----------------------|-------------------------------|------------------------|
| Iron (pure) | 5000 | 200 | 1 (paramagnetic) | 1 |
| Nickel | 600 | 50 | 1 (Curie 354°C) | 1 |
| Cobalt | 250 | 20 | 1 (Curie 1115°C) | 1 |
| Ferrite (MnZn) | 2000 | 100 | 1 | 1 |
| Non-ferrous (Al, Cu, Zn, Pb) | 1 | 1 | 1 | 1 |

### 3.3 Skin Depth Calculations at Zone Frequencies

| Zone | Freq (kHz) | Material | ρ (nΩ·m) | μ<sub>r</sub> | δ (mm) | Target Thickness |
|------|------------|----------|----------|--------------|--------|------------------|
| Z1–Z2 | 100 | Air/N₂ (indirect) | — | 1 | — | — |
| Z3 | 50 | Zn (liq) | 120 | 1 | 7.8 | 150 mm charge |
| Z3 | 50 | Pb (liq) | 450 | 1 | 15.1 | 150 mm charge |
| Z4 | 10 | Al (solid) | 78 | 1 | 14.0 | 10–50 mm pieces |
| Z5 | 10 | Al (liq) | 280 | 1 | 26.6 | 50 mm pool depth |
| Z6 | 5 | Cu (solid) | 85 | 1 | 20.7 | 20 mm wire bundles |
| Z6 | 5 | Cu (liq) | 220 | 1 | 33.3 | 50 mm pool |
| Z7 | 2 | Fe (solid) | 580 | 1 | 17.1 | 30 mm plate/slab |
| Z7 | 2 | Fe (liq) | 920 | 1 | 21.5 | 50 mm pool |
| Z8 | 1 | Silicates | 10⁹ | 1 | >1000 | Full penetration |

**Key insight:** At Z7 (2 kHz), ferromagnetic materials have lost permeability (above Curie), so heating relies on eddy currents only. The lower frequency ensures deeper penetration into large ferrous pieces. At Z8 (1 kHz), the refractory minerals are essentially insulators — heating is purely by thermal conduction from the drum wall and susceptor materials.

### 3.4 Ampere-Turns and B-Field Requirements

The magnetic field strength $H = N I / l_e$ (ampere-turns per meter) must produce sufficient flux density $B = \mu H$ for the target power. For a 100 mm axial zone with 8-turn coil:

| Zone | Target Power | I<sub>rms</sub> (per turn) | N | NI (A-t) | B<sub>peak</sub> (mT) |
|------|--------------|---------------------------|---|----------|---------------------|
| Z1 | 50 kW | 125 A | 8 | 1000 | 12.6 |
| Z3 | 80 kW | 160 A | 8 | 1280 | 16.1 |
| Z5 | 150 kW | 220 A | 8 | 1760 | 22.1 |
| Z7 | 350 kW | 330 A | 8 | 2640 | 33.1 |
| Z8 | 500 kW | 395 A | 8 | 3160 | 39.6 |

---
