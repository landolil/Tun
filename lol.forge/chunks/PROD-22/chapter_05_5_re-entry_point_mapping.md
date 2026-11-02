## 5. Re-Entry Point Mapping

### 5.1 Stage-by-Stage Re-Entry Matrix

| Stage | Re-Entry Materials | Feed Port | Condition Required | Upstream Doc |
|-------|-------------------|-----------|-------------------|--------------|
| **Stage 0 (AMLS)** | PCBs, mixed electronics, cables | Feed hopper | <150mm, discharged, no batteries | PROD-05, 11 |
| **Stage 1 (Drying)** | Wet polymer fractions, solvolysis wash water | Feed hopper | <5% moisture target | PROD-14 |
| **Stage 2 (Polymer)** | Elium® monomer, polymer blends | Feed hopper | Purified, no halogen | PROD-15 |
| **Stage 3 (Pyrolysis)** | Carbon char, activated carbon, BFRP dust | Feed hopper | Sized <50mm, dry | PROD-16 |
| **Stage 4 (Low-T Metals)** | In from YInMn, Sn/Pb from solder, Zn | Feed hopper | Oxidized fractions pre-reduced | PROD-17 |
| **Stage 5 (Al Window)** | Al from structural, heat exchangers | Feed hopper | Free of Fe/Steel attachments | PROD-18 |
| **Stage 6 (Cu/PM)** | Cu windings, AgNW, PM fractions | Feed hopper | Insulation stripped, no Fe | PROD-19 |
| **Stage 7 (Fe/REE)** | Fe structural, SmCo/NdFeB magnets | Feed hopper | Demagnetized, sized | PROD-20 |
| **Stage 8 (Mineral/Zr)** | ZrB₂-SiC, ZrO₂, Si₃N₄, REE oxides | Feed hopper | Crushed 3-5 μm, acid-leached | PROD-21 |

### 5.2 Blend Ratios — Virgin + Recycled Feed

The Forge operates on a **dynamic blend** to maintain slag chemistry and thermal stability:

| Feedstock Type | Blend Ratio (Mass) | Adjustment Logic |
|----------------|-------------------|------------------|
| Virgin e-waste (Cat A-C) | 50-70% | Baseline cascade feed |
| EOL Aegis products (Cat D1) | 20-30% | High-purity known composition |
| Structural BFRP (Cat D2) | 5-10% | Carbon + fiber supplement |
| Ceramic cores (Cat D3) | 3-8% | Zr/REE boost for Stage 8 |
| Mineral fractions (Cat D4) | 2-5% | Critical mineral spike |
| Electronics (Cat D5) | 5-10% | Cu/PM supplement for Stage 6 |
| Energy storage (Cat D6) | 1-3% | Li/Fe/P to Stage 3/7 |

**Blend Control:** Inline LIBS at shredder exit (PROD-11) measures elemental composition in real-time. MFC adjusts virgin feed rate to maintain target blend ±2%.

### 5.3 Re-Entry Quality Gates

Each re-entry stream passes through a **Quality Gate** before Forge admission:

| Gate | Location | Tests | Pass Criteria | Fail Action |
|------|----------|-------|---------------|-------------|
| **Gate 0** | Depot exit | Radiation, SoC, LIBS fingerprint | All pass | Quarantine, re-sort |
| **Gate 1** | Forge receiving | Weigh, dimension, moisture, LIBS | ±2% mass, <5% H₂O | Reject to depot |
| **Gate 2** | Pre-Stage 0 | PCB count, battery count, size | 0 batteries, <150mm | Manual remove |
| **Gate 3** | Pre-Stage 3 | Char carbon content, volatile matter | C >80%, VM <10% | Adjust blend |
| **Gate 4** | Pre-Stage 4 | In content, oxidation state | In >500 ppm, In⁰ >90% | Pre-reduce |
| **Gate 5** | Pre-Stage 5 | Al purity, Fe contamination | Al >99.5%, Fe <0.1% | Eddy current sort |
| **Gate 6** | Pre-Stage 6 | Cu purity, PM content | Cu >99.5%, PM <500 ppm | Adjust flux |
| **Gate 7** | Pre-Stage 7 | Fe grade, REE magnet presence | Fe >95%, magnet ID'd | Mag separate |
| **Gate 8** | Pre-Stage 8 | ZrO₂ content, REE oxide grade | ZrO₂ >60%, REE >20% | Re-crush/leach |

---
