## Carrington Storm Motors Magnet Spec Alignment
## 9. Carrington Storm Motors Magnet Spec Alignment -- Chilean Fe/REE to Motor Grade Mapping

Carrington Storm Motors (CSM) requires specific magnet grades for its product lines: Aegis exosuit actuators, Charlemagne fleet leg motors, MR fluid valves, and grid-hardened infrastructure. This chapter maps Chilean magnetic mineral output (Fe3O4, REE oxides) to CSM magnet specifications derived from CSMMagEco2026 V2.0 and CSMMagTech2026 V2.0.

### 9.1 CSM Magnet Requirements -- Product Line Specifications

| CSM Product Line | Magnet Type | Grade | Annual Qty (kg) | Operating Temp | GIC Resilience | Key Spec Source |
|------------------|-------------|-------|-----------------|----------------|----------------|-----------------|
| Aegis Embark MR Valves | SmCo | SmCo5 (20 MGOe @ 200C) | 500 | 150-200C | High (no REE supply risk) | CSMMagEco2026 2.1 |
| Charlemagne Leg Actuators | SmCo | Sm2Co17 (28 MGOe @ 150C) | 2,000 | 100-150C | High | CSMMagEco2026 2.1 |
| Aegis Motor AMLS (CSMFAB020) | Fe16N2 | Niron Fe16N2 (27 MGOe) | 800 | <100C | **Maximum (zero REE)** | CSMMagTech2026 3.1 |
| Grid-Hardened Transformers | Fe-Co | Fe50Co50 (soft magnetic) | 5,000 | <80C | Maximum (no PM) | CSMMagTech2026 3.1 |
| Acoustic Transducer Bias | MXene-NdFeB | NdFeB+MXene (50 MGOe @ 175C) | 300 | 150-175C | Enhanced (Drexel 2025) | CSMMagTech2026 2.3 |
| Robot Self-Destruct (MECH002) | SmCo | Radiation-hard SmCo | 100 | Space | Maximum | CSMMagTech2026 3.1 |

Total annual magnet demand: ~8,700 kg. REE content: SmCo (Sm 25%, Co 75%), NdFeB (Nd 29%, Dy 3-6%, Tb 0.5-1%). Fe16N2 and Fe-Co require ZERO rare earths.

### 9.2 Chilean Feedstock to CSM Magnet Mapping

| Chilean Source | Primary Output | CSM Magnet Pathway | Conversion Steps | Yield |
|----------------|----------------|-------------------|------------------|-------|
| CAP IOA (Fe3O4) | 99.2% Fe3O4 | **Fe16N2 (Niron)** | Fe3O4 -> H2 reduction -> alpha-Fe -> NH3 nitridation -> Fe16N2 | 72% Fe to Fe16N2 |
| CAP IOA (Fe3O4) | 99.2% Fe3O4 | **Fe-Co (soft)** | Fe3O4 -> H2 reduction -> Fe powder -> Co alloying -> Fe50Co50 | 85% Fe to FeCo |
| CAP IOA (REE) | Nd, Pr, Dy, Tb, Y oxides | **NdFeB / SmCo** | REE oxides -> metal (Ca reduction) -> strip casting -> HDDR -> sintered magnet | 60% REE to magnet |
| Candelaria (REE) | Dy, Tb, Y (xenotime) | **NdFeB doping** | Dy/Tb oxide -> Dy/Tb metal -> grain boundary diffusion (GBD) | 80% HREE to GBD |
| Sierra Moreno (REE) | Dy, Tb, Y (xenotime) | **SmCo / NdFeB GBD** | Same as above | 85% HREE to GBD |
| Codelco Porphyry (Fe) | 99.2% Fe3O4 | **Fe16N2 / Fe-Co** | Same as CAP IOA | 72%/85% |

Critical path: **Fe16N2 from Chilean Fe3O4 is the primary CSM magnet supply chain**. Niron Magnetics (Minneapolis) produces Fe16N2 at 27 MGOe (2025 demo). Chilean Fe3O4 at 99.2% purity (Aegis-Forge) meets Niron feedstock spec without additional purification.

### 9.3 Quantitative Supply-Demand Balance (2027 Target)

Assumptions: Antofagasta Magnetic Hub (10 units) at 70% capacity = 12.3 Mt/yr Fe3O4. Niron Fe16N2 plant capacity 1,500 t/yr (2026) scaling to 5,000 t/yr (2028). CSM demand 800 kg/yr Fe16N2.

| Material | Chilean Production (t/yr) | CSM Demand (t/yr) | Surplus/Deficit | Strategic Action |
|----------|---------------------------|-------------------|-----------------|------------------|
| Fe3O4 (99.2%) | 12,300,000 | 1.1 (for 800 kg Fe16N2) | **Massive surplus** | Export to Niron, EU CRMA projects |
| Fe-Co (soft mag) | 10,400,000 (potential) | 5.0 | Massive surplus | Grid transformer cores, inductors |
| Nd oxide | 800 (from IOA apatite) | 0.35 (for NdFeB) | Surplus | Domestic NdFeB (Noveon/MP Materials) |
| **Dy oxide** | **120** (from xenotime) | **0.025** (NdFeB doping) | **Surplus** | **Strategic reserve / export** |
| **Tb oxide** | **18** | **0.003** | **Surplus** | **Critical strategic reserve** |
| **Y oxide** | **400** | **0.05** | **Surplus** | **Phosphors, Fe16N2 doping** |
| Sm oxide | 150 | 0.02 (SmCo) | Surplus | SmCo (Electron Energy Corp) |
| Co metal | 500 (byproduct) | 0.1 (SmCo) | Surplus | SmCo, alloys |

Chile produces **100x to 10,000x** the REE required for CSM internal demand. The surplus positions Tardigradia as a **global HREE supplier** (Dy, Tb, Y) — the only non-Chinese hard-rock xenotime source with existing mining infrastructure.

### 9.4 GIC Resilience -- Magnet Performance During Carrington Event

Geomagnetically Induced Currents (GIC) during Carrington-class CME (dB/dt > 5,000 nT/min) induce eddy currents in motor windings and shift magnet operating points. CSMMag research defines resilience tiers:

| Magnet Type | Coercivity Hci (kOe) | Operating Point Shift (Carrington) | Demag Risk | CSM Verdict |
|-------------|---------------------|-----------------------------------|------------|-------------|
| NdFeB (std) | 12-15 | -15% to -25% Br | **HIGH** | Avoid in grid-tied motors |
| NdFeB+MXene | 14-17 (+12%) | -10% to -18% Br | Moderate | Acceptable with derating |
| SmCo5 | 18-22 | -3% to -5% Br | **LOW** | Preferred for high-temp |
| Sm2Co17 | 20-25 | -2% to -4% Br | **VERY LOW** | Preferred for actuators |
| **Fe16N2** | **10-12 (theoretical)** | **-1% to -2% Br (est.)** | **NEGLIGIBLE** | **PRIMARY CHOICE** |
| Fe-Co (soft) | N/A (no remanence) | N/A | **NONE** | Transformers, inductors |

Fe16N2 theoretical advantage: No rare earth sublattice to couple with external field. Magnetization is from Fe-Fe exchange in alpha-Fe lattice with N interstitials — fundamentally different physics from RE-TM magnets. Carrington event external field (max ~200 A/m at surface) is << Fe16N2 coercivity (~800 A/m). **Fe16N2 is the only magnet class with inherent Carrington immunity.**

### 9.5 Supply Chain Architecture -- Mine to Motor



All pathways are **DFARS 2027 compliant** (US domestic or allied processing). Chilean Fe3O4 and REE oxides enter US supply chain as raw materials — no Chinese processing touchpoints.

---

