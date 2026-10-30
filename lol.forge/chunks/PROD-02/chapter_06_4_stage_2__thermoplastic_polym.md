## 4. Stage 2 — Thermoplastic Polymer Flow (150-450°C)

### 4.1 Target Materials and Melting Characteristics

| Polymer | Melting/Flow Onset (°C) | Melt Density (g/cm³) | Melt Viscosity at 250°C (Pa·s) | Example Sources |
|---|---|---|---|---|
| LDPE | 105-115 | 0.78 | 200 | Film, bags, coatings |
| HDPE | 120-140 | 0.78 | 300 | Pipe, bottles, containers |
| PP | 130-171 | 0.74 | 150 | Automotive, packaging |
| PS | 100-240 (flash) | 1.05 | 500 | Electronics housings |
| PVC | 160-210 | 1.20 | 1000 | Wire insulation, pipes |
| ABS | 200-250 | 1.08 | 800 | Electronics, dashboards |
| PA6 (Nylon 6) | 220-230 | 1.05 | 600 | Connectors, mechanical parts |
| PA66 (Nylon 66) | 255-265 | 1.08 | 900 | Engine parts |
| PET/PETE | 250-260 | 1.15 | 1200 | Bottles, film |
| PC | 267-290 | 1.15 | 2000 | Lenses, covers |
| PEEK (CSM off-cuts) | 341 | 1.22 | 5000 | Reclaimed internal scrap |
| PTFE | 327 | 1.50 | 10000 | Wire insulation, gaskets |

**Combined melt window:** 105°C to 450°C — achievable in single stage by controlled ramp (10°C/min).

### 4.2 Melt Centrifuge Physics

As polymers melt they become viscous fluids (η = 10²-10⁴ Pa·s). Centrifugal force drives molten polymer outward through the stationary solid matrix.

**Centrifugal pressure gradient:**
$$\frac{dP}{dr} = \rho \omega^2 r$$

At 150 RPM (ω = 15.7 rad/s), r = 0.3 m, ρ = 1000 kg/m³:
$$\Delta P_{centrifugal} = \frac{1}{2} \rho \omega^2 (r_o^2 - r_i^2) = \frac{1}{2} \times 1000 \times 15.7^2 \times (0.3^2 - 0.05^2) = 6.9 \text{ kPa}$$

**Stokes settling velocity for polymer droplets in solid matrix:**
$$v = \frac{2}{9} \frac{(\rho_{melt} - \rho_{solid}) g_{eff} r_{drop}^2}{\eta}$$

With G = 12.6, Δρ ≈ 0.3 g/cm³, r_drop ≈ 1 mm, η = 300 Pa·s:
v ≈ 2.2 × 10⁻⁵ m/s → 8 cm/hour (slow, but sufficient over 30 min dwell)

**Density stratification at G = 12.6 (150 RPM):**

| Polymer | Melt Density | Radial Position (at equilibrium) |
|---|---|---|
| PP, LDPE | 0.74-0.78 | Inner annulus (r ≈ 0.15-0.20 m) |
| PS, ABS, PA6 | 1.05-1.08 | Middle annulus (r ≈ 0.20-0.25 m) |
| PET, PC, PEEK | 1.15-1.22 | Outer annulus (r ≈ 0.25-0.30 m) |

Port 2 at drum OD (opens at 200°C): primarily discharges highest-density polymer melt first (PEEK, PC). As temperature rises through 450°C, lower-density polymers also flow.

**Output:** Mixed polymer slug exiting Port 2, quenched in BFRP mold. This "mixed polymer block" is a downstream input for:
- Elium® reformulation (MMA-compatible melt blending)
- BFRP matrix additive (modified impact resistance)
- Future CSM product: polymer filament for 3D printing

### 4.3 PVC Warning — Chlorine Management

PVC releases HCl vapor at 160-200°C during dehydrochlorination. This is a toxic acid gas requiring active management.

**Critical process control:**
- Stage 2 atmosphere: mildly basic N₂ with NaHCO₃ aerosol injection (powder spray system at drum inlet)
- Neutralization reaction: NaHCO₃ + HCl → NaCl (salt) + H₂O + CO₂ (occurs in-drum at 160-210°C)
- NaCl residue: exits as dissolved mineral in Stage 3 char stream
- Residual HCl monitoring: inline optical HCl sensor (PMMA fiber + absorption spectroscopy at 1.76 μm)
- **Hold trigger:** If HCl concentration > 50 ppm → drum temperature hold until HCl level drops
- NaHCO₃ consumption: ~1.1 kg per kg PVC (stoichiometric + 10% excess)

**PVC content estimate:** Typical e-waste feedstock contains 5-15% PVC by weight. For 500 kg batch: 25-75 kg PVC → 27-82 kg NaHCO₃ consumed per batch.

### 4.4 Induction Heating in Stage 2

- Frequency: 100 kHz (Zones 1-2)
- Power: 0-50 kW/zone (indirect heating via air/N₂ convection — polymers are dielectric)
- SiC glow bars remain active as supplementary heat source
- Target: uniform bulk heating, no hot spots that could cause degradation

### 4.5 Stage 2 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 150→450°C ramp | ±5°C | FBG Zone 1-3 |
| Drum rotation | 150 RPM | ±5 RPM | Optical encoder |
| N₂ pressure | 1.2 bar | ±0.1 bar | Pressure transducer |
| NaHCO₃ injection | 2 g/s (adaptive) | ±0.5 g/s | Mass flow controller |
| HCl concentration | <50 ppm | Alarm >50 ppm | Optical sensor |
| Port 2 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |

---

