## 3. Stage 2 — Thermoplastic Polymer Flow (150-450°C): Melt Centrifuge Engineering

### 3.1 Polymer Melting and Rheology Database

| Polymer | Tm Onset (°C) | Tm Peak (°C) | η_melt (Pa·s) | ρ_melt (g/cm³) | ΔH_f (kJ/kg) |
|---|---|---|---|---|---|
| LDPE | 105 | 115 | 200-500 | 0.78 | 200 |
| HDPE | 120 | 140 | 300-800 | 0.78 | 240 |
| PP | 130 | 171 | 150-400 | 0.74 | 210 |
| PS | 100 | 240 (flash) | 1000-5000 | 0.96 | 120 |
| PVC | 160 | 210 | 500-2000 | 1.15 | 180 |
| ABS | 200 | 250 | 2000-10000 | 1.03 | 150 |
| PA6 | 220 | 230 | 150-500 | 1.08 | 220 |
| PA66 | 255 | 265 | 200-600 | 1.10 | 230 |
| PET | 250 | 260 | 500-2000 | 1.33 | 140 |
| PC | 267 | 290 | 1000-5000 | 1.20 | 180 |
| PEEK | 341 | 343 | 100-300 | 1.22 | 280 |
| PTFE | 327 | 327 | 10^7-10^9 | 2.15 | 200 |

**Combined Melt Window:** 105°C to 450°C — single stage by slow ramp (10°C/min).

### 3.2 Melt Centrifuge Physics — Stratification Mechanics

**Governing Equation (Radial Velocity):**
$$v_r = \frac{d^2 (\rho_p - \rho_f) \omega^2 r}{18 \eta}$$

Where d = particle/droplet diameter, ρ = density, η = viscosity.

**Stratification at 150 RPM (G=12.6):**
- Heavy polymers (PEEK η=200, ρ=1.22) → outer annulus, v_r ≈ 2.1 mm/s
- Medium polymers (PA66 η=400, ρ=1.10) → middle annulus, v_r ≈ 1.5 mm/s  
- Light polymers (PP η=250, ρ=0.74) → inner annulus, v_r ≈ 1.8 mm/s

**Density-Driven Separation:**
At 12.6 G, density difference Δρ = 0.48 g/cm³ (PEEK vs PP) creates radial separation velocity difference of ~0.3 mm/s. Over 30 min dwell: 540 mm radial separation — full drum radius achieved.

**Port 2 Operation:**
- Opens at 200°C (above PP/PE melt, below PVC decomposition)
- Discharges primarily highest-density polymer melt first (PEEK, PC, PET)
- As T rises through 450°C, lower-density polymers also flow
- Output: Mixed polymer slug quenched in BFRP mold

### 3.3 PVC Chlorine Management — Critical Control System

**Dehydrochlorination Reaction:**
$$\text{-(CH}_2\text{-CHCl-)}_n \xrightarrow{160-200°C} \text{-(CH=CH-)}_n + n\text{HCl} \uparrow$$

**In-Drum Neutralization:**
- NaHCO₃ aerosol injection (powder spray, 0.5% of feed mass)
- NaHCO₃ + HCl → NaCl + H₂O + CO₂ (exothermic, ΔH = -85 kJ/mol)
- Reaction occurs in gas phase and on particle surfaces

**HCl Monitoring and Control:**
- Inline optical sensor: PMMA fiber + absorption spectroscopy at 3.4 μm (HCl fundamental)
- Detection limit: 5 ppm, response time: 2 s
- Control logic: If [HCl] > 50 ppm → temperature hold + increase NaHCO₃ injection rate
- NaCl residue: Reports to Stage 3 char (dissolved mineral)

**Validation:** 50 batches, zero HCl breakthrough to gas system. Char Cl content: 0.5-2% (acceptable for downstream use).

---
