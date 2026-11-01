## 8. Output Streams

### 8.1 Primary Product Streams

| Stream | Exit Port | Mass/Batch (Typical) | Composition | Temperature | Destination |
|--------|-----------|---------------------|-------------|-------------|-------------|
| **Activated Char** | Port 3 (700°C set) | 14-22 kg | C: 85-95%, Ash: 5-15%, SA: >800 m²/g | 200°C (after cool) | Stage 4 flux, Stage 1 adsorber, carbon electrodes |
| **Pyrolysis Gas** | Gas manifold | 105-130 kg | CO: 20%, H₂: 13%, CH₄: 8%, CO₂: 15%, H₂O: 8%, BTX: 3% | 500-700°C | PROD-07 Gas Capture (cyclone → scrubber → compressor) |
| **Inorganic Slag/Residue** | Port 3 (with char) | 35-60 kg | SiO₂: 50%, CaO: 15%, Al₂O₃: 12%, MgO: 8%, Glass fiber: 30% | 200°C | Stage 7 ferrous cascade (mineral feed) |
| **Zircon/Monazite Concentrate** | Port 3 (in slag) | 2-10 kg | ZrSiO₄: 60%, (Ce,La,Nd)PO₄: 20%, YPO₄: 5% | 200°C | Stage 8 mineral residue |
| **Condensate (Quench Scrubber)** | PROD-07 | 5-15 kg | H₂O, tars, HBr, dissolved salts | 40°C | PROD-07 water treatment |

### 8.2 Activated Char — Dual Internal Use Streams

**Stream A: Stage 4 Flux Additive (60-70% of char production)**
- Function: Carbon reductant in Stage 4 metal separation
- Spec: Fixed C >85%, Ash <10%, Size 0.5-2 mm, Low reactivity (partially activated)
- Dose: 5-10 kg per Stage 4 batch (reduces metal oxides, controls slag basicity)
- **Closed loop:** Stage 3 char → Stage 4 metal reduction → Stage 7 slag carbon

**Stream B: Stage 1 Organic Vapor Adsorption (30-40% of char production)**
- Function: Activated carbon for Stage 1/2 gas cleaning
- Spec: Iodine number >950 mg/g, BET >900 m²/g, Hardness >90
- Cycle: 50 batches adsorption → thermal regeneration (600°C, steam) → reuse
- Lifetime: 10-15 regeneration cycles before replacement
- **Closed loop:** Stage 3 char → Stage 1 adsorption → regeneration → Stage 1 adsorption

### 8.3 Pyrolysis Gas — Fuel & Chemical Feed

**Gas treatment train (to PROD-07):**
1. **Cyclone separator** (in-drum) — removes char fines >10 µm (recycled to char)
2. **Quench scrubber** (150°C, water) — condenses tars, H₂O, HBr
3. **NaHCO₃ scrubber** — neutralizes residual HBr, HCl, SO₂
4. **Compressor** (2-stage, 5 bar) — storage or direct feed

**End uses:**
| Use | Gas Spec | Volume (per batch) | Energy Recovery |
|-----|----------|-------------------|-----------------|
| **Plasma torch fuel** (PROD-07) | Raw syngas, 18-22 MJ/Nm³ | 80-120 Nm³ | 1.5-2.5 GJ |
| **Stage 1 IR pre-heat** | Cleaned, H₂O <1% | 20-30 Nm³ | 0.4-0.6 GJ |
| **Char activation steam** | H₂/CO for steam reforming | 10-20 Nm³ | Internal |
| **Emergency flare** | Any off-spec | — | Safety |

**Syngas composition after cleaning (typical):**
- CO: 22%, H₂: 18%, CH₄: 5%, CO₂: 12%, N₂: 40% (dilution), H₂O: <1%
- LHV: 4.5-5.5 MJ/Nm³ (N₂-diluted) / 18-22 MJ/Nm³ (N₂-free)

### 8.4 Inorganic Slag — Stage 7 Feedstock

**Slag characterization for Stage 7 ferrous cascade:**

| Property | Value | Significance for Stage 7 |
|----------|-------|--------------------------|
| **Basicity (CaO/SiO₂)** | 0.2-0.3 | Acidic slag; Stage 7 adds CaO to reach 1.0-1.2 |
| **Liquidus Temperature** | 1250-1350°C | Fully liquid in Stage 7 (1200-1600°C) |
| **FeO Content** | 1-3% | Low; Stage 7 adds Fe from scrap |
| **ZnO + PbO** | 1-5% | Volatilizes in Stage 7; captured in fume |
| **ZrO₂ Content** | 0.5-2% | Refractory; concentrates in Stage 8 residue |
| **Unburned Carbon** | 2-8% | Reducing agent in Stage 7 slag |

**Mass flow to Stage 7:**
- 35-60 kg slag/batch from Stage 3
- Combined with Stage 4 dross, Stage 5 dross, Stage 6 slag
- **Total mineral feed to Stage 7: 150-300 kg/batch**

---

## 9. Throughput & Quality

### 9.1 Throughput Capacity

| Metric | Value | Notes |
|--------|-------|-------|
| **Organic Feed/Batch** | 30-200 kg | Category dependent (A=highest, D=lowest) |
| **Char Production** | 8-25 kg (raw) → 6-18 kg (activated) | 20-30% yield from thermosets |
| **Gas Production** | 100-170 kg | 70-85% of organic mass |
| **Slag/Residue** | 35-75 kg | Inorganics + glass fiber + fillers |
| **Cycle Time** | 45 min (Stage 3) + 10 min transfer = 55 min | |
| **Daily Throughput** | 1.5-8 metric tons organic (20-26 batches/day) | 24/7 operation |
| **Annual Capacity** | 500-2,500 tons organic | Single drum |

### 9.2 Quality Specifications — Activated Char

| Parameter | Minimum | Target | Maximum | Test Method | Frequency |
|-----------|---------|--------|---------|-------------|-----------|
| **Iodine Number** | 800 mg/g | 950 mg/g | — | ASTM D4607 | Every batch |
| **BET Surface Area** | 800 m²/g | 950 m²/g | — | ASTM D6556 | Every batch |
| **Fixed Carbon** | 80% | 90% | — | ASTM D3172 | Every batch |
| **Volatile Matter** | — | 8% | 15% | ASTM D3175 | Every batch |
| **Ash Content** | — | 8% | 15% | ASTM D3174 | Every batch |
| **Moisture** | — | 2% | 5% | ASTM D2867 | Every batch |
| **Hardness Number** | 90 | 95 | — | ASTM D3802 | Every batch |
| **Methylene Blue** | 200 mg/g | 250 mg/g | — | ASTM D5290 | Weekly |
| **pH (water extract)** | 6.5 | 7.5 | 9.0 | ASTM D3838 | Weekly |
| **PAH (total)** | — | <5 mg/kg | 10 mg/kg | EPA 8270 | Monthly |
| **Dioxins/Furans** | — | <0.1 ng TEQ/kg | 1 ng TEQ/kg | EPA 1613 | Quarterly |
| **Particle Size (D50)** | 0.5 mm | 1.0 mm | 2.0 mm | Sieving | Every batch |
| **Bulk Density** | 0.3 g/cm³ | 0.4 g/cm³ | 0.5 g/cm³ | ASTM D2854 | Every batch |

### 9.3 Quality Specifications — Pyrolysis Gas (at drum exit)

| Parameter | Target | Maximum | Test Method |
|-----------|--------|---------|-------------|
| **Tar Content** | <0.5 g/Nm³ | 1 g/Nm³ | Gravimetric (tar trap) |
| **PAH (naphthalene)** | <10 mg/Nm³ | 50 mg/Nm³ | GC-MS |
| **HBr** | <50 ppm | 200 ppm | Ion chromatography |
| **HCl** | <10 ppm | 50 ppm | Ion chromatography |
| **NH₃** | <5 ppm | 20 ppm | FTIR |
| **HCN** | <1 ppm | 5 ppm | FTIR |
| **Particulate (char fines)** | <50 mg/Nm³ | 100 mg/Nm³ | Gravimetric (filter) |
| **H₂S** | <1 ppm | 5 ppm | GC-SCD |

### 9.4 Quality Control Sampling Plan

| Sample Point | Frequency | Tests | Acceptance Criteria |
|--------------|-----------|-------|---------------------|
| **Port 3 char discharge** | Every batch | Proximate, iodine, BET, size | All specs met |
| **Gas manifold (online)** | Continuous (MS/FTIR) | CO, CO₂, CH₄, H₂, H₂O, BTX, HBr | CO/CO₂ >1.5, HBr <2000 ppm |
| **Quench scrubber condensate** | Every batch | pH, TOC, Br⁻, Cl⁻, tar | pH 5-8, TOC <500 mg/L |
| **Slag composite** | Daily | XRF (Si, Ca, Al, Mg, Fe, Zn, Pb, Zr) | Zr >5000 ppm, Fe <3% |
| **Activated char (post-activation)** | Every batch | Iodine, BET, hardness, PAH | Iodine >800, PAH <10 mg/kg |

---

## 10. Energy Balance

### 10.1 Stage 3 Energy Consumption

| Component | Power | Duration | Energy/Batch | % of Total |
|-----------|-------|----------|--------------|------------|
| **Induction Heating (100 kHz, Zone 3)** | 60 kW avg | 0.75 hr | 45 kWh | 48% |
| **Resistive Assist (SiC glow bars, Zone 4)** | 30 kW avg | 0.5 hr | 15 kWh | 16% |
| **Drum Drive (KNbO₃ ultrasonic motor)** | 15 kW | 0.75 hr | 11.25 kWh | 12% |
| **N₂/CO₂ Supply (compression)** | 10 kW | 0.75 hr | 7.5 kWh | 8% |
| **Gas System (blowers, compressor)** | 20 kW | 0.75 hr | 15 kWh | 16% |
| **Activating Gas (steam generation)** | 25 kW | 0.4 hr | 10 kWh | 11% |
| **Cooling (char quench, gas quench)** | 15 kW | 0.3 hr | 4.5 kWh | 5% |
| **Instrumentation & Control** | 5 kW | 0.75 hr | 3.75 kWh | 4% |
| **TOTAL INPUT** | — | — | **112 kWh/batch** | 100% |

**Per ton organic feed (at 100 kg/batch):** 1,120 kWh/ton

### 10.2 Energy Recovery

| Recovery Stream | Energy Recovered | Method | COP/η |
|-----------------|------------------|--------|-------|
| **Pyrolysis gas calorific value** | 750-1000 kWh/batch | PROD-07 plasma torch / boiler | η 85% (combustion) |
| **Char sensible heat (200°C)** | 15 kWh/batch | Heat exchanger → N₂ pre-heat | η 80% |
| **Gas sensible heat (500→150°C)** | 120 kWh/batch | Quench scrubber → Stage 1 pre-heat | η 75% |
| **Drum wall cooling (PEX-a)** | 25 kWh/batch | AMLS thermal battery (PROD-03) | η 90% |
| **Activation gas (CO/H₂ from activation)** | 30 kWh/batch | Recycled to gas system | η 85% |

**Net energy after recovery:** 112 - (640 + 15 + 90 + 22 + 25) = **-680 kWh/batch (NET PRODUCER)**

**Stage 3 is ENERGY POSITIVE:** Pyrolysis gas energy exceeds total electrical input by 6×.

### 10.3 Thermodynamic Analysis

**Endothermic Pyrolysis (net):**
- Epoxy decomposition: +150 kJ/kg polymer
- Phenolic decomposition: +80 kJ/kg polymer
- Weighted average (mixed feed): **+120 kJ/kg organic feed**

**Exothermic Char Activation (steam/CO₂):**
- C + H₂O → CO + H₂: +131 kJ/mol C = +10.9 MJ/kg C
- C + CO₂ → 2CO: +172 kJ/mol C = +14.3 MJ/kg C
- **Activation consumes 25-30% of char mass but produces fuel gas**

**Gas Combustion (exothermic):**
- CO + ½O₂ → CO₂: -283 kJ/mol
- H₂ + ½O₂ → H₂O: -242 kJ/mol
- CH₄ + 2O₂ → CO₂ + 2H₂O: -802 kJ/mol
- **Net gas combustion: 18-22 MJ/Nm³**

**Overall Stage 3 Energy Balance (per 100 kg organic feed):**

| Energy Flow | Value (MJ) | Value (kWh) |
|-------------|------------|-------------|
| Electrical input (induction, drive, gas) | 403 | 112 |
| Pyrolysis endotherm (net) | 12 | 3.3 |
| Char activation endotherm | 250 | 69 |
| **Total input** | **665** | **185** |
| Pyrolysis gas combustion | 3,600 | 1,000 |
| Char combustion (if used as fuel) | 3,000 | 833 |
| **Total output** | **6,600** | **1,833** |
| **Net energy surplus** | **5,935** | **1,648** |

**Conclusion:** Stage 3 is a major net energy producer. The pyrolysis gas alone provides 9× the electrical energy input. This energy powers the entire thermal cascade (Stages 4-8) via the PROD-07 gas system.

### 10.4 Comparison to Alternative Processing

| Process | Energy Input (kWh/ton) | Energy Output (kWh/ton) | Net |
|---------|------------------------|-------------------------|-----|
| **Aegis-Forge Stage 3** | 1,120 (electrical) | 18,300 (gas + char) | **+17,180** |
| Conventional incineration | 500 (fans, pumps) | 2,500 (steam) | +2,000 |
| Rotary kiln pyrolysis | 800 | 3,000 | +2,200 |
| Landfill (with gas capture) | 50 | 500 (CH₄) | +450 |

**Aegis-Forge advantage:** Inductive heating + oxygen-starved pyrolysis + gas utilization = 8× better net energy than conventional thermal treatment.