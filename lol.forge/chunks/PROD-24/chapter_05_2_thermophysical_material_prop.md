## 2. Thermophysical Material Properties Database (50+ Materials)

### 2.1 Property Tables — Core BOM Materials (PROD-12)

All properties referenced to PROD-12 All-Aegis Material BOM. Temperature-dependent correlations use piecewise-cubic Hermite interpolation for monotonicity preservation.

#### 2.1.1 ZrB₂-SiC Drum Composite (12 vol% ZrB₂, 88 vol% SiC)

| Property | Correlation | Range | Source |
|----------|-------------|-------|--------|
| **Density (ρ)** | 3120 kg/m³ | 20-2200°C | PROD-04, Archimedes |
| **Thermal conductivity (k)** | $k = 45 - 0.0115(T-20)$ | 20-2200°C | PROD-04, Laser flash |
| **Specific heat (c_p)** | $c_p = 520 + 0.2(T-20)$ | 20-2200°C | PROD-04, DSC |
| **CTE (α)** | $5.8\times10^{-6}$ (20-1000°C), $6.5\times10^{-6}$ (1000-2200°C) | 20-2200°C | PROD-04, Dilatometry |
| **Elastic modulus (E)** | $E = 380 - 0.04(T-20)$ GPa | 20-2200°C | PROD-04, Resonance |
| **Flexural strength (σ_f)** | $620 - 0.123(T-20)$ MPa | 20-2200°C | PROD-04, ASTM C1161 |
| **Fracture toughness (K_IC)** | $5.2 - 0.0005(T-20)$ MPa·m⁰·⁵ | 20-2200°C | PROD-04, Indentation |
| **Emissivity (ε)** | 0.85 (ZrO₂ surface scale) | 20-2200°C | PROD-04, PROD-13 |

#### 2.1.2 BFRP/Elium® Vessel ([±18°/90°]₄)

| Property | Correlation | Range | Source |
|----------|-------------|-------|--------|
| **Density (ρ)** | 1950 kg/m³ | 20-200°C | PROD-06 |
| **Thermal conductivity (k)** | $0.45 + 0.00035(T-20)$ W/m·K | 20-200°C | PROD-06, Laser flash |
| **Specific heat (c_p)** | $1100 + 1.5(T-20)$ J/kg·K | 20-200°C | PROD-06, DSC |
| **CTE hoop (α₁)** | $6.2\times10^{-6}$ /K | 20-200°C | PROD-06, Dilatometry |
| **CTE axial (α₂)** | $8.8\times10^{-6}$ /K | 20-200°C | PROD-06, Dilatometry |
| **Hoop tensile strength (σ_hoop)** | $1100 - 2.25(T-20)$ MPa | 20-200°C | PROD-06, ASTM D3039 |
| **Hoop compressive (σ_hoop,c)** | $900 - 2.25(T-20)$ MPa | 20-200°C | PROD-06, ASTM D6641 |
| **Hoop modulus (E_hoop)** | $65 - 0.1(T-20)$ GPa | 20-200°C | PROD-06 |
| **ILSS** | $65 - 0.15(T-20)$ MPa | 20-200°C | PROD-06 |

#### 2.1.3 Polyimide-Silica Hybrid Aerogel (50 mm gap)

| Property | Value | Range | Source |
|----------|-------|-------|--------|
| **Density (ρ)** | 0.12 g/cm³ | 20-500°C | PROD-06, FOLLOW-09 |
| **Thermal conductivity (k)** | $\lambda = 0.010 + 1.2\times10^{-5}(T-20)$ W/m·K | 20-500°C | PROD-06, Guarded hot plate |
| **Specific heat (c_p)** | 1000 J/kg·K | 20-500°C | Est. |
| **Emissivity (ε)** | 0.95 (IR-opacified) | 20-500°C | PROD-06 |
| **Compressive strength** | 0.8 MPa | 20-500°C | FOLLOW-09 |

#### 2.1.4 YInMn Blue Glaze (Exterior)

| Property | Value | Range | Source |
|----------|-------|-------|--------|
| **Solar Reflectance Index (SRI)** | 115 | - | PROD-06, FOLLOW-13 |
| **Emissivity (ε_IR)** | 0.92 | 20-300°C | PROD-06 |
| **Solar absorptivity (α_sol)** | 0.08 | 300-2500 nm | PROD-06 |
| **Thermal conductivity (k)** | 1.5 W/m·K | 20-300°C | Est. |
| **Thickness** | 0.3 mm | - | PROD-06 |

#### 2.1.5 Ti₃AlC₂ MAX Phase (Port Valves)

| Property | Correlation | Range | Source |
|----------|-------------|-------|--------|
| **Density (ρ)** | 4.2 g/cm³ | - | PROD-09, FOLLOW-04 |
| **Thermal conductivity (k)** | 45 W/m·K | 20-1000°C | FOLLOW-04 |
| **CTE (α)** | $9.5\times10^{-6}$ /K | 20-1000°C | FOLLOW-04 |
| **Elastic modulus (E)** | 240 GPa | 20-1000°C | FOLLOW-04 |
| **Yield strength (σ_y)** | 300 MPa (800°C) | 20-1000°C | FOLLOW-04 |
| **Electrical resistivity** | 0.5 μΩ·m | 20-1000°C | PROD-09 |

#### 2.1.6 3Y-TZP ZrO₂ (Molds, Port 8, Bearings)

| Property | Correlation | Range | Source |
|----------|-------------|-------|--------|
| **Density (ρ)** | 6.05 g/cm³ | - | PROD-08, FOLLOW-01 |
| **Thermal conductivity (k)** | $2.5 - 0.0003(T-20)$ W/m·K | 20-2200°C | FOLLOW-01 |
| **CTE (α)** | $10.5\times10^{-6}$ /K | 20-1200°C | FOLLOW-01 |
| **Flexural strength** | 1200 MPa (RT), 800 MPa (1200°C) | 20-1200°C | FOLLOW-07 |
| **Fracture toughness (K_IC)** | 6-10 MPa·m⁰·⁵ (transformation toughened) | 20-1200°C | FOLLOW-01 |

#### 2.1.7 PEEK CF40 (Seals, Springs)

| Property | Value | Range | Source |
|----------|-------|-------|--------|
| **Density (ρ)** | 1.40 g/cm³ | - | PROD-09, FOLLOW-08 |
| **Thermal conductivity (k)** | 0.65 W/m·K | 20-300°C | FOLLOW-08 |
| **CTE (α)** | $25\times10^{-6}$ /K (30% CF) | 20-300°C | FOLLOW-08 |
| **Tensile strength** | 180 MPa | 20-300°C | FOLLOW-08 |
| **Continuous use temp** | 250°C (300°C peak) | - | FOLLOW-08 |

#### 2.1.8 Si₃N₄ (Liner Zone A)

| Property | Correlation | Range | Source |
|----------|-------------|-------|--------|
| **Density (ρ)** | 3.20 g/cm³ | - | PROD-04 |
| **Thermal conductivity (k)** | $30 - 0.008(T-20)$ W/m·K | 20-1400°C | PROD-04 |
| **CTE (α)** | $3.2\times10^{-6}$ /K | 20-1000°C | PROD-04 |
| **Flexural strength** | 850 MPa (RT), 700 MPa (1200°C) | 20-1400°C | PROD-04 |

#### 2.1.9 PEEK CF40 (Port Valve Springs)

| Property | Value | Range | Source |
|----------|-------|-------|--------|
| **Density (ρ)** | 1.40 g/cm³ | - | PROD-09 |
| **Modulus (E)** | 18 GPa | 20-300°C | FOLLOW-08 |
| **Yield strength** | 95 MPa | 20-300°C | FOLLOW-08 |

### 2.2 Process Materials — Feedstock & Intermediates

#### 2.2.1 Feedstock Categories (PROD-13)

| Category | Composition | ρ (kg/m³) | k (W/m·K) | c_p (J/kg·K) | Notes |
|----------|-------------|-----------|-----------|--------------|-------|
| **A (E-waste PCB)** | Cu 20%, FR4 40%, PM 0.1%, Ceramics 25%, Plastics 15% | 2800 | 1.2 (bulk) | 650 | High Cu |
| **B (Mixed e-waste)** | Plastics 50%, Metals 25%, Ceramics 15%, Other 10% | 1800 | 0.8 | 900 | High PVC |
| **C (Auto shredder)** | Fe 60%, Al 15%, Cu 5%, Plastics 10%, Glass 10% | 3500 | 15 (bulk) | 550 | Ferrous heavy |
| **D (Municipal)** | Organics 40%, Plastics 20%, Metals 10%, Inert 30% | 1200 | 0.5 | 1200 | High moisture |

#### 2.2.2 Stage Intermediates

| Material | Stage | ρ (kg/m³) | k (W/m·K) | c_p (J/kg·K) | Phase Transitions |
|----------|-------|-----------|-----------|--------------|-------------------|
| **Polymer melt** | 2 | 950 | 0.25 | 2200 | T_melt 130-280°C, ΔH = 150 kJ/kg |
| **Char (pyrolysis)** | 3 | 350 | 0.15 | 1200 | Fixed C >80%, SSA 200-800 m²/g |
| **Activated char** | 3 | 450 | 0.18 | 1100 | SSA >800 m²/g |
| **In/Sn/Pb/Zn melt** | 4 | 7000 (avg) | 35 | 300 | T_melt 157/232/327/420°C |
| **Al melt** | 5 | 2380 | 90 | 1180 | T_melt 660°C, ΔH = 397 kJ/kg |
| **Cu melt** | 6 | 8000 | 180 | 500 | T_melt 1085°C, ΔH = 205 kJ/kg |
| **Fe melt** | 7 | 7000 | 35 | 820 | T_melt 1538°C, ΔH = 247 kJ/kg |
| **Slag (CaO-SiO₂-MgO-Al₂O₃)** | 7-8 | 2800 | 1.5 | 1200 | Liquidus 1350-1550°C |
| **ZrSiO₄ (zircon)** | 8 | 4600 | 3.5 | 750 | Dissoc. 1676°C, ΔH = 280 kJ/mol |
| **3Y-TZP** | 8 | 6050 | 2.5 | 550 | Flash sinter 1800°C |
| **ZrB₂ precursor** | 8 | 3500 | 15 | 800 | Carbothermal 1800°C |

### 2.3 Gas Properties (Process Atmospheres)

| Gas | ρ (kg/m³) @ 1000°C, 1.5 bar | c_p (J/kg·K) | k (W/m·K) | μ (Pa·s) |
|-----|----------------------------|--------------|-----------|----------|
| **N₂** | 0.52 | 1170 | 0.075 | 4.2×10⁻⁵ |
| **Ar** | 0.86 | 520 | 0.045 | 5.1×10⁻⁵ |
| **H₂** | 0.04 | 14500 | 0.32 | 1.8×10⁻⁵ |
| **CO** | 0.54 | 1150 | 0.070 | 4.0×10⁻⁵ |
| **CO₂** | 0.82 | 1250 | 0.065 | 3.8×10⁻⁵ |
| **He** | 0.07 | 5200 | 0.26 | 3.5×10⁻⁵ |

---
