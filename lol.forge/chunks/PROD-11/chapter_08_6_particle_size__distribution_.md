## 6. Particle Size & Distribution — Rosin-Rammler Analysis

### 6.1 Why Particle Size Controls the Cascade

The thermal cascade's separation efficiency depends critically on feed particle size distribution. The physics:

1. **Induction heating penetration:** Skin depth δ = √(2ρ/ωμ). For copper at 5 kHz (Zone 6): δ = 0.93 mm. Particles >2δ (≈2 mm) heat from surface inward — thermal lag. Particles <δ heat uniformly — instantaneous melting.

2. **Centrifugal separation:** Stokes settling velocity in centrifugal field:
   $$v = \frac{2}{9} \frac{r_p^2 (\rho_p - \rho_f) \omega^2 r}{\mu}$$
   At 300 RPM (25 G), 100 mm particle: v ≈ 0.3 m/s — traverses 15 mm gap in 50 ms. 10 mm particle: v ≈ 0.003 m/s — 5 seconds. **Particle size directly controls separation time.**

3. **Acoustic liberation (Stage 0):** Stress wave wavelength must match particle dimension for resonance. 100 Hz LF wave (λ=55 m in rock) liberates 50-200 mm rock fragments. 40 kHz US (λ=0.14 m in water) liberates 100-500 µm mineral grains.

4. **Gas capture & slag formation:** Fine particles (<1 mm) entrain in off-gas, require cyclone capture. Coarse particles (>150 mm) create voids in slag, reduce thermal conductivity.

**Target distribution:** The shredder must produce a **Rosin-Rammler distribution** with:
- Maximum size: 150 mm (hard limit — drum port aperture = 12 mm, but feed gate handles 150 mm)
- Characteristic size (x₀): 40-60 mm (optimal for Stage 0 liberation + induction coupling)
- Spread parameter (n): 1.2-1.5 (moderately narrow — avoids excessive fines)

### 6.2 Rosin-Rammler Distribution Model

The cumulative mass fraction passing size x:

$$F(x) = 1 - \exp\left[-\left(\frac{x}{x_0}\right)^n\right]$$

Where:
- $x_0$ = characteristic size (63.2% passing)
- $n$ = spread parameter (uniformity index)

**Shredder output targets by feedstock category:**

| Category | x₀ (mm) | n | P50 (mm) | P80 (mm) | P95 (mm) | Max (mm) |
|----------|---------|---|----------|----------|----------|----------|
| A (Electronics) | 35 | 1.4 | 30 | 55 | 85 | 100 |
| B (Structural Metals) | 55 | 1.3 | 47 | 82 | 115 | 150 |
| C (Minerals) | 45 | 1.2 | 38 | 70 | 105 | 120 |
| D (Phoenix Returns) | 30 | 1.5 | 26 | 45 | 68 | 80 |
| **Blended (typical)** | **45** | **1.3** | **38** | **75** | **105** | **150** |

**Distribution curves (blended feed):**

```
CUMULATIVE PASSING (%)
100 ┤                                                    ╭──
 95 ┤                                                 ╭─╯
 90 ┤                                               ╭─╯
 80 ┤                                             ╭─╯
 70 ┤                                           ╭─╯
 63 ┤──────────────────────────────────────────╯  (x₀ = 45 mm)
 60 ┤                                         ╭╯
 50 ┤                                       ╭╯
 40 ┤                                     ╭╯
 30 ┤                                   ╭╯
 20 ┤                                 ╭╯
 10 ┤                               ╭╯
  5 ┤                             ╭╯
  0 ┼─────────────────────────────╯
     0    20    40    60    80   100  120  140  150
           PARTICLE SIZE (mm)
```

### 6.3 Sieve Analysis Protocol (In-Process QC)

**Online measurement:** Vibrating sieve tower (BFRP frame, ZrO2 mesh) with 6 size fractions, sampled every 30 minutes.

| Sieve Size (mm) | Tyler Mesh | Target % Retained (Blended) | Action Limit |
|-----------------|------------|-----------------------------|--------------|
| 150 | — | 0% | >0.5% → blade inspection |
| 100 | — | 5-8% | >12% → reduce rotor speed |
| 75 | — | 18-22% | — |
| 50 | 10 | 25-30% | — |
| 25 | 20 | 20-25% | — |
| 12.5 | 35 | 12-15% | — |
| 6.3 | 60 | 5-8% | — |
| Pan (<6.3) | — | 5-8% | >12% → check screen integrity |

**Real-time feedback to shredder control:**
```
IF P95 > 120 mm:
    INCREASE rotor speed by 10 RPM (max 150 RPM)
    DECREASE feed rate by 15%
ELIF P50 < 25 mm (excessive fines):
    DECREASE rotor speed by 10 RPM (min 80 RPM)
    INCREASE feed rate by 10%
ELIF Fines (>Pan) > 10%:
    CHECK blade wear — schedule replacement
    VERIFY liner thickness
```

### 6.4 Liberation Size vs. Thermal Stage

Each thermal stage has an optimal particle size for complete separation within the stage dwell time:

| Stage | Temp Range | Target Material | Optimal Size | Rationale |
|-------|------------|-----------------|--------------|-----------|
| 0 (Acoustic) | Ambient | Mineral grains | 10-50 mm | Stress wave resonance |
| 1 (Drying) | 80-150°C | Moisture | <50 mm | Thermal penetration |
| 2 (Polymers) | 150-450°C | Plastics | <30 mm | Melt flow, density strat. |
| 3 (Pyrolysis) | 450-700°C | Organics | <25 mm | Char permeability |
| 4 (Zn/Pb/Sn) | 420-900°C | Low-temp metals | <40 mm | Induction coupling δ=2mm |
| 5 (Al) | 660-720°C | Aluminum | <35 mm | δ=1.5mm at 10 kHz |
| 6 (Cu) | 1085-1200°C | Copper | <20 mm | δ=1mm at 5 kHz |
| 7 (Fe) | 1200-1600°C | Steel | <25 mm | Hysteresis heating |
| 8 (Minerals) | 1600-2200°C | Oxides | <50 mm | Conduction only |

**Key insight:** The shredder's Rosin-Rammler distribution (x₀=45mm, n=1.3) produces a **broad distribution** that feeds all stages simultaneously. The drum's rotational mixing and staged temperature zones naturally sort particles by size-density-temperature coupling — no pre-sorting needed beyond the <150 mm max.

### 6.5 Fines Management (<6.3 mm)

Fines (dust, shredder wear particles, liberated mineral grains) are captured by:
1. **BFRP cyclone separator** at shredder exhaust (95% capture >10 µm)
2. **HEPA filtration** (PM2.5 capture, PEN filter media)
3. **Fines hopper** → pneumatic convey (UHMWPE pipe) → Stage 1 feed (drying) or direct to Stage 8 mineral slag

Fines composition by category:
- Category A: Cu-rich (PCB dust), precious metals → Stage 6 recovery
- Category B: Al/Fe oxide fines → Stage 5/7 recovery
- Category C: Mineral grains → Stage 8 (pre-liberated, high value)
- Category D: ZrB2-SiC, BFRP char → Stage 3/8

**No fines wasted** — every size fraction has a thermal stage destination.


---
