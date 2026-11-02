## 9. Energy Balance

### 9.1 Energy Requirements

| Component | Energy (kWh/batch) | Notes |
|---|---|---|
| **Sensible Heat (100 kg Al, 450→680°C)** | 28 kWh | c_p avg 1.1 kJ/kg·K, ΔT=230K |
| **Latent Heat — Al (100 kg)** | 11 kWh | L_f = 397 kJ/kg |
| **Sensible Heat (minerals, 150 kg, 450→720°C)** | 18 kWh | c_p avg 0.8 kJ/kg·K, ΔT=270K |
| **Flux Heating (12 kg, 25→680°C)** | 2 kWh | c_p ~1.2 kJ/kg·K + fusion |
| **Mg Oxidation Exotherm** | -3 kWh | 2Mg + O₂ → 2MgO, ΔH = -602 kJ/mol |
| **Al Oxidation Exotherm (trace)** | -1 kWh | 4Al + 3O₂ → 2Al₂O₃, limited by O₂ |
| **Induction Losses (coil, coupling)** | 25 kWh | 100 kW × 30 min × 0.5 efficiency factor |
| **Rotation (300 RPM, 30 min)** | 3 kWh | Motor + bearing losses |
| **N₂ Compression** | 4 kWh | 1.5 bar, 500 L/min |
| **Flux Injection System** | 1 kWh | Pneumatic conveying |
| **XRF/POF/FBG Sensors** | 0.5 kWh | Instrumentation power |
| **Heat Losses (radiation, conduction)** | 12 kWh | Drum wall, aerogel gap, vessel |
| **TOTAL STAGE 5 ENERGY** | **100 kWh/batch** | **= 0.20 kWh/kg feed** |

### 9.2 Energy Recovery and Integration

| Recovery Stream | Energy Recovered | Use |
|---|---|---|
| **Stage 4 Off-gas/Char Heat** | ~45 kWh | Pre-heats Stage 5 feed (already in drum) |
| **Al Slug Sensible Heat (680→200°C)** | ~20 kWh | Pre-heats Stage 1-2 air, facility heat |
| **Dross Re-melt Heat** | ~5 kWh | Integrated in rotary furnace |
| **Induction Waste Heat (cold plates)** | ~35 kWh | Facility heating / ORC |
| **Flux Sensible Heat (recycle)** | ~3 kWh | Pre-heats fresh flux |

**Net Stage 5 Energy (with recovery):** ~100 - 65 = **35 kWh/batch net input**
**Full Cascade Net Energy:** ~350 kWh/batch (all stages)

### 9.3 Exergy Analysis

| Stream | Exergy (kWh) | Quality |
|---|---|---|
| Induction electricity | 100 | High (work potential) |
| Al chemical exergy | 320 | Very high (Al is energy-intensive to produce) |
| Dross/flux chemical | 15 | Medium |
| **Total Exergy Input** | **435 kWh** | — |
| **Product Exergy (Al slugs)** | **320 kWh** | Chemical + physical |
| **Exergy Efficiency** | **74%** | Good for thermal-metal process |

### 9.4 Exergy Destruction Breakdown

| Process | Exergy Destroyed (kWh) | % of Total | Cause |
|---|---|---|---|
| Induction heating (Joule + hysteresis) | 15 | 35% | Resistive losses, non-ideal coupling |
| Heat transfer (drum wall → melt) | 8 | 19% | Finite ΔT (50°C avg) |
| Mg oxidation (chemical irreversibility) | 6 | 14% | Finite ΔG vs equilibrium |
| Al oxidation (trace) | 3 | 7% | Finite ΔG |
| Gas compression (N₂) | 2 | 5% | Compressor inefficiency |
| Rotation (mechanical) | 2 | 5% | Bearing friction, windage |
| Sensors/control | 1 | 2% | Electronics |
| **Total** | **37** | **87%** | — |

**Improvement Opportunities:**
- Induction: Optimize coil geometry, increase frequency → 10% reduction
- Heat transfer: Reduce drum wall thickness, improve contact → 5% reduction
- Mg oxidation: Optimize flux chemistry → 3% reduction

---
