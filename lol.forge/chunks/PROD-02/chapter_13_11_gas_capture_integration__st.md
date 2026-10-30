## 11. Gas Capture Integration — Stage-by-Stage Zero-Emission Architecture

All process gases are captured in a closed-loop system (detailed in CSMFAB000000000111). Zero stack emissions — every molecule is accounted for.

### 11.1 Stage-by-Stage Gas Treatment Trains

| Stage | Gas Stream | Primary Components | Treatment Train | Capture Efficiency |
|---|---|---|---|---|
| 0 | Acoustic exhaust | N₂, dust | Cyclone + HEPA | 99.9% particulate |
| 1 | Port 1 vapor | H₂O (95%), VOCs (5%) | BFRP condenser (10°C) → Activated carbon (Stage 3 char) | >99.5% H₂O, >95% VOC |
| 2 | Port 2 vapor | Polymer decomp, HCl | NaHCO₃ scrubber → Carbon bed | >99% HCl, >90% organics |
| 3 | Port 3 pyrolysis gas | CO, CH₄, H₂, CO₂, HBr, BTX | Cyclone → Quench → NaHCO₃ → Compressor → Plasma torch | >95% combustible, >99% HBr |
| 4 | Port 4 metal vapor | Zn, Pb, Cd, In vapor | Condensation traps (400°C → 150°C staged) | >99.9% metal capture |
| 5 | Port 5 Al vapor | Minimal (Al low vp) | Al₂O₃ filter | >99.9% |
| 6 | Port 6 Cu vapor | Minimal | Cu₂O filter | >99.9% |
| 7 | Port 7 Fe vapor | Minimal | Fe₂O₃ filter | >99.9% |
| 8 | Port 8 mineral vapor | SiO, refractory oxides | High-temp ceramic candle filter (1200°C) | >99.5% |

### 11.2 Stage 1-2: Water & Organic Vapor Train (Train A+B)

**Train A — Moisture Condenser (Stage 1 outlet, Port 1):**
- BFRP shell-and-tube heat exchanger
- Cooling: PEX-a circuit, 10°C chilled water (CSMFAB000000000012)
- Condensation efficiency: >99.5% at 10°C dew point
- Liquid water: ICP-MS analyzed, reused or discharged
- Non-condensables (N₂ + trace VOCs) → Train B

**Train B — Organic Vapor Condensation (Stage 2 outlet):**
- Activated carbon bed: 200 L, 50 kg carbon (from Stage 3 char!)
- Elegant closed cycle: char from Stage 3 used to adsorb Stage 1/2 organics
- Capture: >95% for C₃+ hydrocarbons
- Regeneration: Thermal swing at 200°C during Stage 3 char production
- Breakthrough monitoring: PID detector at bed outlet

### 11.3 Stage 3: Pyrolysis Gas Recovery (Train C)

**Train C — Pyrolysis Gas Recovery (Stage 3 outlet, Port 3):**
1. Cyclone separator — removes char fines (>10 μm, returned to char bin)
2. Quench scrubber (150°C) — condenses tars, water, heavy organics
3. NaHCO₃ scrubber — neutralizes HBr (from FR4), residual HCl
4. Gas composition after scrubbing: CO 20%, H₂ 15%, CH₄ 8%, CO₂ 18%, N₂ balance
5. Compressor → storage sphere OR direct feed to plasma torch
6. Calorific value: ~20 MJ/m³ — recoverable energy for process heat

### 11.4 Stage 4-5: Metal Vapor Condensation (Train D+E)

**Train D — Acid Gas Scrubber (Stages 2-4):**
- HCl (from PVC), HBr (from FR4), HF (from fluoropolymers), SO₂ (from sulfates)
- Dual-stage: Venturi scrubber (95% removal) → Packed tower (99.9% removal)
- Reagent: NaOH/Na₂CO₃ solution, pH controlled at 8.5
- Products: NaCl, NaBr, NaF, Na₂SO₄ brines → crystallizer → solid salts

**Train E — Metal Vapor Condenser (Stages 4-5 outlets, Ports 4-5):**
- Staged condensation traps:
  - Trap 1 (400°C): Zn (bp 907°C), Cd (bp 767°C) — condense as liquid
  - Trap 2 (250°C): Pb (bp 1749°C, but low vp at 250°C), In (bp 2072°C)
  - Trap 3 (100°C): Hg (if present), residual organics
- Collection efficiency: >99.9% for target metals
- Condensate: Metal-rich liquid → electrorefining

### 11.5 Stage 6-8: High-Temperature Filtration

**Stages 6-7:** Minimal gas evolution (inert atmosphere maintained). Trace metal vapor captured by:
- Ceramic candle filters (Al₂O₃, 0.5 μm pore) at 800°C
- Periodic pulse-jet cleaning (N₂ back-pulse)
- Collected dust → returned to appropriate stage port

**Stage 8:** Silica vapor (SiO), refractory oxide fume
- High-temp ceramic filtration: SiC candles at 1200°C
- Capture efficiency: >99.5%
- Collected fume: High-purity SiO₂ + ZrO₂ → recycle to Stage 8 feed

### 11.6 Final Gas Treatment — CO₂ Capture & N₂ Recovery

**CO₂ Separation (from Train C pyrolysis gas + combustion):**
- Amine absorption (30% MEA) at 40°C, strip at 120°C
- CO₂ purity: >99% — sequestration or reuse as inert atmosphere
- Capture rate: 85-90% of CO₂ in pyrolysis gas

**N₂ Recovery:**
- Membrane separation (95% N₂ purity) from purge streams
- Recycled to drum atmosphere supply
- Makeup N₂: <5% of total consumption

### 11.7 Plasma Torch Polisher — Final Gas Treatment

Any residual organics, toxics, tars → **5000°C plasma torch** (CSMFAB000000000111):
- DC transferred arc, Ar/H₂ plasma gas
- Complete mineralization: organics → CO₂ + H₂O; metals → oxides
- Syngas output (CO + H₂) if operated sub-stoichiometric
- Slag output: Inert vitrified ceramic, TCLP-passing
- Power: 150 kW, treats 500 Nm³/h

---

