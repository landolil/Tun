## 2. Iron Melting and Carbon/Silicon/Manganese Control

### 2.1 Thermophysical Properties at Stage 7 Conditions

| Property | Value at 1580°C | Temperature Dependence | Significance |
|---|---|---|---|
| **Melting Point (Pure Fe)** | 1538°C | Fixed | Stage entry threshold |
| **Melting Point (Cast Iron, 4% C)** | 1150-1200°C | Tₘ = 1538 - 90×C% | Early melt fraction |
| **Density (liquid Fe)** | 7.0 g/cm³ | ρ = 7.87 - 0.001(T-20) | Centrifugal separation driver |
| **Density (solid Fe)** | 7.87 g/cm³ (20°C) | — | Solid particles sink |
| **Viscosity** | 5.5 mPa·s | η = 6.2·exp(-0.0022T) | Film drainage rate |
| **Surface Tension** | 1.85 N/m | σ = 1.95 - 0.0004(T-Tₘ) | Meniscus, droplet formation |
| **Thermal Conductivity** | 35 W/m·K | k = 73 - 0.025(T-20) | Induction heating uniformity |
| **Electrical Resistivity** | 1.2×10⁻⁷ Ω·m | ρₑ = 9.7×10⁻⁸[1+0.005(T-20)] | Induction coupling |
| **Magnetic Permeability** | 1 (non-magnetic >770°C) | μᵣ drops at Curie 770°C | Ferromagnetic coupling lost above 770°C |
| **Specific Heat** | 0.82 J/g·K | cₚ = 0.45 + 0.0003(T-20) | Energy requirement |
| **Latent Heat of Fusion** | 247 J/g | Fixed | Superheat management |

### 2.2 Induction Heating Physics — Zone 7 (2 kHz)

**Ferromagnetic Coupling Advantage:**
Below Curie temperature (770°C for Fe), ferromagnetic materials concentrate magnetic flux, increasing effective permeability μᵣ from 1 to 100-1000. This gives 2-10× power density vs non-ferrous metals at same frequency.

**Skin Depth Calculation:**
```
δ = √(2ρₑ / ωμ) = √(2 × 1.2×10⁻⁷ / (2π × 2000 × 4π×10⁻⁷)) = 8.5 mm
```
- At 1580°C, Fe resistivity increases ~3× → skin depth ~14.7 mm
- Drum wall thickness (ZrB₂-SiC): 25 mm → adequate penetration
- 2 kHz selected for: deep penetration, ferromagnetic coupling below 770°C, eddy current above

**Power Coupling Efficiency (Ferromagnetic Phase):**
```
P = (π² B² f² d² σ μᵣ) / (8 ρₑ) × V_eff
```
- Below 770°C: μᵣ ≈ 200 → 5× power density boost
- Above 770°C: μᵣ = 1 → eddy current only
- Target: 400 kW into ~120 kg Fe charge
- Heating rate (ferromagnetic): 400,000 × 5 / (120,000 g × 0.82 J/g·K) = 20 K/s theoretical
- Heating rate (non-magnetic): 4 K/s theoretical
- Practical: 5-8 K/s average → 8-12 min to 1580°C from 1200°C

**Resonant Tank Design (from PROD-10):**
- GS66516T GaN HEMT half-bridge Class E
- Switched capacitor bank + varactor for 1.8-2.2 kHz tuning
- ZVS maintained across full power range
- Efficiency: 98.8% at 350 kW (PROD-10 Table 2.4)

### 2.3 Carbon, Silicon, Manganese Control

**Target Fe Bullion Composition:**
| Element | Target Range | Control Method |
|---|---|---|
| **Carbon (C)** | 2.0-4.0% | CO/CO₂ gas injection ratio; decarburization by FeO in slag |
| **Silicon (Si)** | 1.0-2.0% | SiO₂ reduction by C in melt; slag basicity control |
| **Manganese (Mn)** | 0.5-1.0% | MnO reduction by C; partitions to slag at high basicity |
| **Phosphorus (P)** | <0.05% | Oxidizes to P₂O₅ → slag at high basicity |
| **Sulfur (S)** | <0.03% | Forms FeS → slag at high basicity; CaO addition |

**Carbon Control via Gas Injection:**
```
C (in Fe) + CO₂ (gas) ⇌ 2CO (gas)        ΔG° = +172 kJ/mol at 1580°C
C (in Fe) + FeO (slag) ⇌ CO (gas) + Fe   ΔG° = -15 kJ/mol at 1580°C
```
- CO/CO₂ ratio controls carbon activity: a_C = K × p_CO²/p_CO₂
- Target p_CO/p_CO₂ ≈ 10 for C=3% at 1580°C
- **Gas injection system:** PEEK CF40 lance through Port 7 vicinity
- **CO supply:** From pyrolysis gas (PROD-07 Train A) + supplemental
- **CO₂ supply:** From PROD-07 PSA capture

**Silicon Control via Slag Basicity:**
```
2FeO (slag) + Si (in Fe) ⇌ 2Fe + SiO₂ (slag)   Distribution ratio L_Si = (%SiO₂)/[%Si]²
```
- L_Si increases with basicity B = CaO/SiO₂
- Target B = 1.2 → L_Si ≈ 50 → [%Si] = √(%SiO₂/50)
- With %SiO₂ = 35% in slag → [%Si] ≈ 0.8% (within 1-2% target with adjustment)

**Manganese Control:**
```
MnO (slag) + C (in Fe) ⇌ Mn (in Fe) + CO (gas)
```
- Mn partitions to slag at high oxygen potential
- FeO reduction by C lowers oxygen potential → Mn stays in metal
- Target: 0.5-1.0% Mn (beneficial for cast iron strength)

### 2.4 Centrifugal Separation — Iron Film Dynamics

**Film Thickness and Drainage Velocity:**
```
g_eff = ω²r = (200 × 2π/60)² × 0.3 = 132 m/s² = 13.5 G
h_film = (3μQ / ρg_eff)^(1/3)
```
- At 200 RPM, r=300mm: g_eff = 132 m/s²
- Fe film thickness on drum wall: ~1.5 mm
- Drainage velocity: v = (ρg_eff h²) / (3μ) = 0.18 m/s
- Transit time to Port 7 (280 mm radius): t = 0.28/0.18 = 1.6 seconds

**Centrifugal Density Stratification — REE Partitioning:**
```
C[ρ, ω, r, t] = r_eq = √(r₀² + (2μ/ρω²) ln(ρ_liquid/ρ_particle))
```
For particles in molten Fe:
- Fe₃C particles (ρ=7.66): r_eq = 282 mm (near Fe film)
- REE oxide particles (ρ=7.5): r_eq = 280 mm (co-mingle with Fe)
- Slag liquid (ρ=2.8): r_eq = 195 mm (well inward)
- **NdFeB/SmCo droplets (ρ=7.5-8.0): r_eq = 275-285 mm** → report with Fe stream

---
