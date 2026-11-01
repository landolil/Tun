## 9. Output Streams

### 9.1 Activated Char — Dual Allocation

| Stream | Mass/Batch | Specification | Destination | Cycle |
|--------|------------|---------------|-------------|-------|
| **Stage 1 Adsorbent** | 10-15 kg | BET >800 m²/g, I₂ >800 mg/g, <5% ash, <1 mm | PROD-02 Stage 1 adsorber cartridges (2×50 L) | Char → Stage 1 → Stage 3 (closed loop) |
| **Stage 4 Flux/Reductant** | 3-7 kg | Fixed C >85%, <2% S, <1 mm | PROD-17 metal melting zones | Consumed (oxidizes to CO) |
| **Surplus/Storage** | 0-3 kg | Meets above specs | Buffer inventory / external sale | — |

**Stage 1 adsorption cycle detail:**
- 2 BFRP adsorber cartridges in parallel (50 L each, 15 kg char total)
- Stage 1 exit gas: 200 Nm³ at 150°C, 20 min duration
- Organic loading: 5-15 g/kg char per cycle (VOCs, monomers, residual HCl)
- Breakthrough: <5% of inlet concentration at cycle end
- Spent char: Discharged to Stage 3 feed hopper → re-pyrolyzed → re-activated
- **Cycle life:** 50-100 batches before mechanical attrition requires replacement

**Stage 4 flux function:**
- Replaces metallurgical coke in Pb/Sn/Zn melting
- Reducing power: C + PbO → Pb + CO (prevents Pb oxidation)
- Fluxing: Char ash (CaO, MgO, SiO₂) modifies slag basicity to 1.0-1.2
- Consumption: 2-5 kg/batch (scales with metal oxide content)

### 9.2 Pyrolysis Gas — To PROD-07 Gas Management

| Parameter | Value | Notes |
|-----------|-------|-------|
| **Flow Rate** | 50-150 Nm³/hr (peak) | Variable through 45-min stage |
| **Temperature** | 650°C (exit) → 200°C (after heat recovery) | SiC heat exchanger |
| **Composition (dry)** | CO 15-25%, H₂ 10-18%, CH₄ 8-12%, CO₂ 15-20%, N₂ balance | Mass spec verified |
| **Calorific Value** | 18-22 MJ/Nm³ | Recoverable energy |
| **Tar Content** | <5 g/Nm³ (after in-drum cracking) | Condenses at 200°C |
| **Particulates** | <10 mg/Nm³ (cyclone) | Char fines |
| **HCl** | <10 ppm (NaHCO₃ scrubber) | Residual from Stage 2 |
| **NH₃/HCN** | <5 ppm (from PU/NBR) | Catalytic destruction in PROD-07 |

**Energy recovery in PROD-07:**
- Micro-turbine (GaN inverter driven) → 30-40 kWe
- Or direct combustion → Stage 4 pre-heat (N₂ to 300°C)
- Flare only if excess (emergency)

### 9.3 Mineral Slag — To Stage 7

| Parameter | Value |
|-----------|-------|
| **Mass/Batch** | 40-90 kg (8-18% of feed) |
| **Temperature** | 650-700°C |
| **Form** | Partially sintered agglomerates, 5-50 mm, friable |
| **Composition** | SiO₂ 40-55%, CaO 20-30%, Al₂O₃ 8-15%, MgO 5-12%, REE oxides 0.1-0.3%, TiO₂ 1-4%, ZrO₂ 0.1-0.5% |
| **Basicity (CaO/SiO₂)** | 0.4-0.7 (acidic) — adjusted downstream |
| **Conveyance** | ZrO₂-lined screw conveyor → Stage 7 slag feed bin |

**Slag function in Stage 7:**
- Collects Fe oxide reduction products
- Dissolves REE phosphates/oxides (Ce, La, Y)
- Provides flux for Fe/steel separation
- Final Stage 8 mineral concentrate

### 9.4 Inorganic Residue Mass Balance Table

**Per 500 kg typical e-waste batch (Category A):**

| Component | Input (kg) | Stage 3 Char (kg) | Stage 3 Gas (kg) | Stage 3 Slag (kg) | Stage 3 Losses (kg) | Notes |
|-----------|------------|-------------------|------------------|-------------------|---------------------|-------|
| **Epoxy/FR4 resin** | 30 | 6 (char) | 18 (gas) | 6 (glass fiber) | 0 | 20% char yield |
| **Phenolic resin** | 10 | 5.5 (char) | 4 (gas) | 0.5 (filler) | 0 | 55% char yield |
| **Rubber** | 15 | 4.5 (char) | 9 (gas) | 1.5 (ZnO, sulfur) | 0 | 30% char yield |
| **Polyester/PU** | 5 | 1 (char) | 3.5 (gas) | 0.5 (filler) | 0 | 20% char yield |
| **Cellulosic** | 10 | 2.5 (char) | 7 (gas) | 0.5 (ash) | 0 | 25% char yield |
| **CaCO₃ filler** | 25 | 0 | 11 (CO₂) | 14 (CaO) | 0 | Calcination |
| **Talc filler** | 10 | 0 | 1.5 (H₂O) | 8.5 (enstatite) | 0 | Dehydroxylation |
| **Glass fiber** | 20 | 0 | 0 | 20 | 0 | Inert to Stage 7 |
| **HCl salts (NaCl)** | 2 | 0 | 0 | 2 | 0 | Stage 4 flux |
| **Metal fines** | 8 | 0 | 0 | 8 | 0 | To metal stages |
| **Other inorganics** | 5 | 0 | 1 | 4 | 0 | TiO₂, ZnO, etc. |
| **TOTAL** | **140** | **19.5** | **55** | **65.5** | **0** | **Mass closure: 100%** |

**Char + Gas + Slag = 140 kg** (organic + inorganic decomposed)
**Unreacted inert (glass, metals) = 28 kg** → Stage 7/8

**Stage 3 mass balance closure: 99.5-100.5%** (measurement uncertainty ±0.5%)

---
