## 7. Drum Material Circularity

### 7.1 ZrB₂-SiC Drum Life Cycle

```
NEW DRUM (Gen 1)
    │
    ├─→ 500 batches (90-min cycle each = 750 hr operation)
    │     └─→ FBG monitoring: wall thickness, thermal gradient, seal integrity
    │
    ├─→ End-of-Life Criteria:
    │     • Wall thinning >15% (ultrasonic)
    │     • Seal leak rate >10⁻⁶ mbar·L/s
    │     • FBG drift >±5°C uncorrectable
    │     • Crack detection (acoustic emission >threshold)
    │
    └─→ RETIREMENT → Phoenix Depot
          │
          ├─→ Crush → Ball Mill (3-5 μm)
          │
          ├─→ Hydrometallurgical Zr Recovery:
          │     H₂SO₄ leach (95°C, 4h) → Zr⁴⁺ in solution
          │     NH₄OH co-precipitation (with Y³⁺ from REE stream)
          │     → Zr-Y hydroxide gel → 120°C dry → 1200°C calcine (4h)
          │     → 3Y-TZP ZrO₂ powder (97% TD target)
          │
          ├─→ Carbothermal ZrB₂ Synthesis:
          │     ZrO₂ + B₂O₃ + 5C → ZrB₂ + 5CO (1800°C, 2h, Ar)
          │     OR SHS: Zr + 2B → ZrB₂ (1h, self-propagating)
          │
          └─→ Flash Sinter → NEW DRUM (Gen 2)
                (Same ZrB₂-SiC spec as PROD-04)
```

### 7.2 Drum Generation Mass Balance

| Generation | ZrB₂ Source | SiC Source | Yield | Cumulative Drums |
|------------|-------------|------------|-------|------------------|
| **Gen 1** | Commercial (external) | Commercial | 100% | 1 |
| **Gen 2-5** | Stage 8 ZrO₂ + Stage 3 B₂O₃/C | Stage 3 char | 99% | 5 |
| **Gen 6-15** | Stage 8 ZrO₂ (recycled) + Stage 3 B₂O₃/C | Stage 3 char + recycled drum crush | 98% | 15 |
| **Gen 16-31** | 100% recycled ZrB₂ + Stage 3 B₂O₃/C | 100% recycled SiC | 97% | 31 |

**Key Result:** 1 initial drum → 31 drum generations → 15,500 batches → 775,000 kg processed over facility lifetime. The Forge makes its own body from the waste it processes.

### 7.3 Quality Gates for Recycled Drum Material

| Parameter | Spec (Gen 1) | Spec (Gen 2+) | Test Method |
|-----------|--------------|---------------|-------------|
| **Density** | >5.9 g/cm³ | >5.85 g/cm³ | Archimedes |
| **B/Zr ratio** | 2.00±0.02 | 2.00±0.03 | ICP-OES |
| **Oxygen** | <0.5 wt% | <0.7 wt% | LECO |
| **Grain size** | 2-5 μm | 2-6 μm | SEM |
| **Flexural strength** | >450 MPa | >420 MPa | 4-pt bend |
| **Thermal shock** | 5 cycles 2200→25°C | 3 cycles | Quench test |

### 7.4 Drum Recycling Process Flow (Detailed)

```
RETIRED DRUM (500 batches)
         │
         ▼
Phoenix Depot Receiving
         │
         ▼
Non-Destructive Evaluation:
  • Ultrasonic wall thickness map (200 points)
  • FBG thermal history replay
  • Acoustic emission scan (crack map)
  • Helium leak test (all ports, seals)
         │
         ▼
Segregation Decision:
  ├─→ PRIME (wall >85%, no cracks) → Direct re-SPS (Gen +1)
  ├─→ STANDARD (wall 70-85%, minor cracks) → Crush → Hydromet (Gen +1)
  └─→ SCRAP (wall <70%, major cracks) → Crush → Hydromet (Gen +1, lower yield)
         │
         ▼ (for STANDARD/SCRAP)
Crushing Circuit:
  • Jaw crusher (50 mm) → Cone crusher (5 mm) → Ball mill (3-5 μm)
  • Argon atmosphere, -40°C dew point (prevent oxidation)
  • Throughput: 500 kg/hr per line
         │
         ▼
Hydrometallurgical Zr Recovery:
  • Reactor: BFRP/Elium®, 2000L, H₂SO₄ 2M, 95°C, 4h, stir 200 RPM
  • Leach efficiency: 96% Zr, 94% Y, 92% Si (reports to silica stream)
  • Solid residue: SiC (unleached) → filter → dry → SiC recycle stream
  • Filtrate: Zr⁴⁺, Y³⁺, Fe³⁺, Al³⁺, Ti⁴⁺ in solution
         │
         ▼
Selective Precipitation:
  1. pH 2.5 (NH₄OH): Fe³⁺, Al³⁺ → hydroxide (waste → Stage 7 slag)
  2. pH 5.5: Ti⁴⁺ → TiO₂·xH₂O (filter → Stage 8 TiO₂ stream)
  3. pH 8.0: Zr⁴⁺ + Y³⁺ → Zr-Y hydroxide gel (co-precipitate)
  4. pH 10.5: Residual REE → REE hydroxide (FOLLOW-15)
         │
         ▼
Gel Processing:
  • Filter press (BFRP plates, PEEK CF40 cloth) → 35% solids
  • Wash: 3× DI water (counter-current) → Cl⁻ <50 ppm, SO₄²⁻ <100 ppm
  • Dry: 120°C, 4h, N₂ atmosphere → free-flowing powder
  • Calcination: 1200°C, 4h, air → 3Y-TZP crystalline (97% theoretical)
         │
         ▼
Carbothermal ZrB₂ Synthesis (FOLLOW-32):
  • Mix: 3Y-TZP + B₂O₃ + 5C (molar 1:1:5) + 2% B₄C sintering aid
  • Press: 100 MPa → green density 55% TD
  • Furnace: Induction, 1800°C, 2h, Ar, graphite susceptor
  • Conversion: 98.5% → ZrB₂ + 5CO (gas captured → PROD-07)
  • Mill: 3-5 μm, narrow distribution (D90/D10 <2.5)
         │
         ▼
Flash Sintering (PROD-04 / FOLLOW-01):
  • 3Y-TZP + ZrB₂ composite → 1800°C, 300 V/cm, 5 min
  • 97% TD, 0.5 μm grain, ZrB₂ percolation network
  • Result: NEW DRUM (Gen N+1)
```

### 7.5 Drum Recycling Energy & Emissions

| Process Step | Energy (kWh/kg ZrB₂) | CO₂e (kg/kg) | Notes |
|--------------|---------------------|--------------|-------|
| Crushing & milling | 8 | 0.5 | Argon atmosphere |
| H₂SO₄ leach (95°C, 4h) | 12 | 0.8 | Steam heat recovery 60% |
| Precipitation & wash | 3 | 0.2 | Counter-current water |
| Calcination (1200°C, 4h) | 25 | 1.5 | NG-fired, 85% efficiency |
| Carbothermal (1800°C, 2h) | 45 | 2.8 | Induction, Ar, CO capture |
| Flash sinter (1800°C, 5 min) | 18 | 1.1 | 300 V/cm, 5 min |
| **TOTAL** | **111 kWh/kg** | **6.9 kg CO₂e/kg** | **vs. 280 kWh/kg virgin** |

**Carbon Advantage:** Recycled drum ZrB₂ = 6.9 kg CO₂e/kg vs. virgin 45 kg CO₂e/kg → **85% reduction**. At 500 kg/drum × 31 generations = 15,500 kg ZrB₂ saved per initial drum = **590 tCO₂e avoided per drum lineage**.

---
