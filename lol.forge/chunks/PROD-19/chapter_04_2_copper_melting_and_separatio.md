## 2. Copper Melting and Separation Physics

### 2.1 Thermophysical Properties at Stage 6 Conditions

| Property | Value at 1150°C | Temperature Dependence | Significance |
|---|---|---|---|
| **Melting Point** | 1084.62°C | Fixed | Stage entry threshold |
| **Density (liquid)** | 8.02 g/cm³ | ρ = 8.96 - 0.0008(T-20) | Centrifugal separation driver |
| **Density (solid)** | 8.96 g/cm³ (20°C) | — | Solid Cu particles sink in melt |
| **Viscosity** | 3.8 mPa·s | η = 4.3·exp(-0.0025T) | Film drainage rate |
| **Surface Tension** | 1.28 N/m | σ = 1.35 - 0.0003(T-Tₘ) | Meniscus shape, droplet formation |
| **Thermal Conductivity** | 320 W/m·K | k = 400 - 0.08(T-20) | Induction heating uniformity |
| **Electrical Resistivity** | 1.15×10⁻⁷ Ω·m | ρₑ = 1.68×10⁻⁸[1+0.0039(T-20)] | Induction coupling, skin depth |
| **Specific Heat** | 0.42 J/g·K | cₚ = 0.385 + 0.0001(T-20) | Energy requirement |
| **Latent Heat of Fusion** | 205 J/g | Fixed | Superheat management |
| **Thermal Expansion** | 1.9×10⁻⁵/K | α = 1.7×10⁻⁵ + 0.02×10⁻⁵(T-20) | Mold stress, solidification shrinkage |

### 2.2 Induction Heating Physics — Zone 6 (5 kHz)

**Skin Depth Calculation:**
```
δ = √(2ρₑ / ωμ) = √(2 × 1.15×10⁻⁷ / (2π × 5000 × 4π×10⁻⁷)) = 4.2 mm
```
- At 1150°C, Cu resistivity increases ~3× → skin depth ~7.3 mm
- Drum wall thickness (ZrB₂-SiC): 25 mm → adequate penetration to center
- 5 kHz selected for balance: deep enough for bulk heating, high enough for power density

**Power Coupling Efficiency:**
```
P = (π² B² f² d² σ) / (8 ρₑ) × V_eff
```
Where B = magnetic flux density, f = frequency, d = characteristic dimension, σ = conductivity
- Target: 250 kW into ~80 kg Cu charge
- Heating rate: 250,000 W / (80,000 g × 0.42 J/g·K) = 7.4 K/s theoretical
- Practical: 2-3 K/s with losses → 6-10 min to 1150°C from 720°C

**Resonant Tank Design (from PROD-10):**
- GS66516T GaN HEMT half-bridge Class E
- Switched capacitor bank + varactor for 4.5-5.5 kHz tuning
- ZVS maintained across full power range
- Efficiency: 98.7% at 200 kW (PROD-10 Table 2.4)

### 2.3 Centrifugal Separation — Copper Film Dynamics

**Film Thickness and Drainage Velocity:**
```
h_film = (3μQ / ρg_eff)^(1/3)  [Nusselt film condensation model adapted]
g_eff = ω²r = (250 × 2π/60)² × 0.3 = 206 m/s² = 21.0 G
```
- At 250 RPM, r=300mm: g_eff = 206 m/s²
- Cu film thickness on drum wall: ~1.2 mm
- Drainage velocity: v = (ρg_eff h²) / (3μ) = 0.28 m/s
- Transit time to Port 6 (280 mm radius): t = 0.28/0.28 = 1 second
- **Rapid drainage prevents PM segregation during transit**

**Centrifugal Density Stratification Operator:**
```
C[ρ, ω, r, t] = r_eq = √(r₀² + (2μ/ρω²) ln(ρ_liquid/ρ_particle))
```
For solid particles in molten Cu:
- Fe particles (ρ=7.87): r_eq = 285 mm (slightly inward of Cu film)
- Ni particles (ρ=8.90): r_eq = 298 mm (near Cu film)
- Mineral particles (ρ=3-4): r_eq < 200 mm (well inward, remain in drum)
- **PM atoms in Cu melt: no separation (dissolved); PM oxides/particles: r_eq = 290-300 mm**

### 2.4 Melting Sequence and Temperature Control

| Step | Temperature | Duration | Action | Control |
|---|---|---|---|---|
| **Ramp 1** | 720 → 1085°C | 15 min | Heat solid Cu particles to MP | PID ±5°C, FBG feedback |
| **Solidus Dwell** | 1084-1090°C | 3 min | Ensure complete melting | FBG + resonance tracking |
| **Superheat Ramp** | 1090 → 1150°C | 5 min | Achieve fluidity for drainage | Power ramp 150→250 kW |
| **Process Dwell** | 1150°C | 30 min | Cu drainage, PM dissolution, anode casting | Cascade PID, POF level |
| **Transition** | 1150 → 1200°C | 5 min | Prepare for Stage 7 | Power taper, atmosphere switch |

**Temperature Uniformity Requirement:** ±5°C axial, ±3°C radial
- 384 FBG sensors (48 per zone × 8 zones) + 8 POF level sensors
- Zone 6 has dedicated PID with 1 kHz update (PROD-10)
- Resonance tracking maintains ZVS during impedance changes as Cu melts

---
