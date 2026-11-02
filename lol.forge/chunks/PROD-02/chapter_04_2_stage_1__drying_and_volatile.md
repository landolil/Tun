## 2. Stage 1 — Drying and Volatiles Removal (80-150°C): Complete Engineering

### 2.1 Target Materials and Phase Transition Thermodynamics

| Material | Phase Transition | T (°C) | ΔH (kJ/kg) | Kinetics |
|---|---|---|---|---|
| Free water | Vaporization | 100 | 2257 | Diffusion-limited |
| Gypsum (CaSO₄·2H₂O) | Dehydration (2-step) | 107, 120 | 450 total | Nucleation-growth |
| Borax (Na₂B₄O₇·10H₂O) | Dehydration | 100-140 | 1200 | Interface-controlled |
| Kaolin | Dehydroxylation (partial) | 150 | 500 | Diffusion |
| Methanol/Ethanol | Vaporization | 65/78 | 1100/840 | Rapid |
| Acetone | Vaporization | 56 | 520 | Rapid |
| Terpineol (PCB flux) | Vaporization | 218 (starts 150) | 400 | Slow |

### 2.2 IR Heating Engineering — SiC Glow Bars

**Why not induction?** At 80-150°C, target materials are non-conductive (water, hydrated minerals, organics). Induction coupling efficiency <1%.

**SiC Glow Bar Design:**
- Material: SiC resistive elements (CSMFAB000000000002-type)
- Surface temperature: 800-900°C
- Emitted IR peak: ~3.6 μm (Wien's law: λ_max = 2898/T = 3.6 μm at 800K)
- Water absorption peaks: 3.0 μm and 6.3 μm — excellent spectral match
- Power: 32 kW average for 50 kg at 30% moisture over 20 min

**Energy Balance (50 kg charge, 30% moisture = 15 kg water):**
- Latent heat: 15 kg × 2257 kJ/kg = 33.86 MJ
- Sensible heat (20→100°C): 15 kg × 4.18 kJ/kg·K × 80 K = 5.02 MJ
- Hydrated minerals (est. 5 kg): ~6 MJ
- **Total: ~45 MJ = 12.5 kWh**
- With heat losses (aerogel insulation, 2 kW): ~15 kWh per batch

### 2.3 Drum Dynamics During Stage 1

- Rotation: 5-10 RPM (G = 0.04-0.14) — gentle tumbling for uniform exposure
- Atmosphere: N₂ at 1.2 bar absolute (prevents H₂/organic explosive mixtures)
- Pressure control: Cascade controller maintains 1.2 ±0.1 bar
- Oxygen monitor: ZrO₂ lambda sensor + optical O₂ <10 ppm target

### 2.4 Water and Volatile Recovery System

**Port 1 (150°C set-point) → Condenser:**
- Condenser: BFRP shell-and-tube, PEX-a cooling circuit at 10°C
- Condensation efficiency: >99.9% for water
- Condensate analysis: ICP-MS for metal content (Zn, Pb, Cu typical <1 ppm)
- Reuse: Purified water → process cooling makeup or discharge

**Organic Vapor Treatment:**
- Activated carbon bed: Char from Stage 3 (recycled in-process, elegant closed cycle)
- Bed sizing: 5 kg char, 30 min residence, >99.9% VOC capture
- Regeneration: Thermal swing (200°C N₂ purge) every 50 batches

---
