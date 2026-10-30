## 1. Inductive Heating System — Overview & Architecture

The Aegis-Forge I induction system is the **thermal engine** of the thermal cascade. It must deliver precisely controlled energy to a rotating, stratified, multi-material charge through a 15 mm ceramic air gap, across eight independent axial zones, at power levels from 0 to 500 kW per zone, with frequencies spanning 100 kHz to 1 kHz. This is not a conventional induction furnace — it is a **frequency-agile, resonance-tracking, optically-monitored, all-dielectric heating system** designed for selective material coupling in a Carrington-immune environment.

### 1.1 System Requirements — The Irreducible Constraints

**Constraint 1: Zero Structural Metals in Hot Zone.** The drum is ZrB₂-SiC ceramic. The vessel is BFRP composite. The only copper in the machine is the induction coil winding — and it must be isolated from the process chamber by 15 mm air gap + alumina insulation. No metallic thermocouples, no metallic control wiring, no metallic structural elements within the pressure boundary.

**Constraint 2: Selective Heating by Frequency.** At Stage 5 (660°C), aluminum must melt while copper (1085°C) and iron (1538°C) remain solid. But copper couples to induction 15× better than aluminum at the same frequency. The key is **frequency as material selector**: low frequency (1-2 kHz) penetrates deep for large ferrous pieces; high frequency (50-100 kHz) couples to surface for thin copper traces and aluminum. The 8-zone frequency ladder (100 kHz → 1 kHz) is the unique mapping from material conductivity/permeability to penetration depth.

**Constraint 3: Rotating Drum, Fixed Coils.** The drum rotates at 0-500 RPM. The coils are stationary. The 15 mm gap must accommodate thermal expansion (drum OD grows ~2 mm at 2200°C), mechanical runout, and manufacturing tolerances. The coils must not contact the drum — ever.

**Constraint 4: 500 kW Total, 8 Independent Zones.** Each 100 mm axial zone has its own resonant inverter, its own FBG temperature feedback, its own PID loop. Zones must operate independently — Zone 5 at 10 kHz melting Al while Zone 6 at 5 kHz prepares for Cu. Total installed power: 500 kW from 3-phase 480V supply.

**Constraint 5: All-Dielectric Sensing.** Temperature feedback via 384 FBG (Fiber Bragg Grating) sensors on PMMA optical fiber. No metallic thermocouples. Pressure via FBG strain sensors. Gas composition via optical absorption. All signals cross the pressure boundary via optical feedthroughs — no conductive paths for GIC.

### 1.2 Coil Bank Architecture

```
AEGIS-FORGE I — INDUCTION COIL BANK (8 ZONES)

    FEED END                                    DISCHARGE END
    ┌─────────────────────────────────────────────────────────────┐
    │  ZONE 1 (0-100mm)   │  ZONE 2 (100-200mm)  │  ZONE 3       │
    │  100 kHz, 0-50 kW   │  100 kHz, 0-50 kW    │  50 kHz       │
    │  Stages 1-2         │  Stages 1-2          │  Stage 3      │
    ├─────────────────────┼──────────────────────┼───────────────┤
    │  ZONE 4 (300-400mm) │  ZONE 5 (400-500mm)  │  ZONE 6       │
    │  10 kHz, 80-150 kW  │  10 kHz, 80-150 kW   │  5 kHz        │
    │  Stages 3-5         │  Stages 4-6          │  Stage 6      │
    ├─────────────────────┼──────────────────────┼───────────────┤
    │  ZONE 7 (600-700mm) │  ZONE 8 (700-800mm)  │               │
    │  2 kHz, 150-350 kW  │  1 kHz, 200-500 kW   │               │
    │  Stages 6-7         │  Stages 7-8          │               │
    └─────────────────────┴──────────────────────┴───────────────┘

    DRUM (rotating) ← 15 mm gap → COILS (stationary)
```

**Zone-to-Stage Mapping:** Each zone spans stages where its frequency is optimal. Overlap zones (e.g., Zone 4-5 at 10 kHz) handle transition stages. The frequency ladder is not arbitrary — it is the **periodic table's conductivity map**.

### 1.3 Frequency Ladder — The Material Selector

| Zone | Stages | Frequency | Target Material | Skin Depth (at T) | Power Range |
|---|---|---|---|---|---|
| 1-2 | 1-2 | 100 kHz | Organics (indirect air/N₂ heating) | Air: N/A | 0-50 kW |
| 3 | 3 | 50 kHz | Zn, Pb (conductors begin coupling) | Zn: 0.35 mm | 50-80 kW |
| 4-5 | 4-5 | 10 kHz | Al (optimal eddy coupling) | Al: 0.9 mm | 80-150 kW |
| 6 | 6 | 5 kHz | Cu (deep penetration) | Cu: 1.0 mm | 100-200 kW |
| 7 | 7 | 2 kHz | Fe/Steel (ferromagnetic coupling) | Fe: 0.3 mm (μ_r=100) | 150-350 kW |
| 8 | 8 | 1 kHz | Refractory minerals (conduction only) | SiC: 2.2 mm | 200-500 kW |

**Skin Depth Physics:** δ = √(2ρ/ωμ). At 10 kHz: Al (ρ=4.5×10⁻⁸) → δ=0.9 mm; Cu (ρ=2.5×10⁻⁸) → δ=0.7 mm. The key insight: **at 10 kHz, Al couples well but Cu skin depth is only 0.7 mm — insufficient for bulk Cu pieces (>5 mm). Cu waits for 5 kHz (Zone 6) where δ=1.0 mm.** This is the frequency-selective melting mechanism.

### 1.4 Power Profile Per Zone

| Zone | Axial Position | Active Stages | Peak Power | Duty Cycle | Energy/Stage |
|---|---|---|---|---|---|
| 1 | 0-100 mm | 1-2 | 50 kW | 30% | 15 kWh |
| 2 | 100-200 mm | 1-2 | 50 kW | 30% | 15 kWh |
| 3 | 200-300 mm | 2-3 | 80 kW | 50% | 40 kWh |
| 4 | 300-400 mm | 3-5 | 150 kW | 70% | 105 kWh |
| 5 | 400-500 mm | 4-6 | 200 kW | 80% | 160 kWh |
| 6 | 500-600 mm | 5-7 | 350 kW | 90% | 315 kWh |
| 7 | 600-700 mm | 6-7 | 500 kW | 95% | 475 kWh |
| 8 | 700-800 mm | 7-8 | 500 kW | 100% | 500 kWh |

Total per batch: ~1,625 kWh (matches 800-1200 kWh/ton for 500 kg feedstock with losses).


---
