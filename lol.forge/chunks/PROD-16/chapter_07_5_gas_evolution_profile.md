## 5. Gas Evolution Profile

### 5.1 Pyrolysis Gas Composition

The pyrolysis gas (syngas) evolved during Stage 3 is a **combustible mixture** routed to the gas management system (PROD-07). Composition varies with feedstock but typical ranges per kg of thermoset feed:

| Gas Species | Typical Range (g/kg feed) | Vol % (dry basis) | Source | Condensation Temp |
|-------------|---------------------------|-------------------|--------|-------------------|
| **CO** | 80-180 | 15-25% | Ether/ester cleavage, ring cracking | -191°C (non-condensing) |
| **CO₂** | 100-200 | 15-20% | Carboxyl decarboxylation, oxidation | -78°C (sublimes) |
| **CH₄** | 20-60 | 8-12% | Methyl/methylene cracking | -161°C (non-condensing) |
| **H₂** | 10-30 | 10-18% | Aromatic condensation, dehydrogenation | -253°C (non-condensing) |
| **H₂O** | 30-80 | 5-15% (wet) | Hydroxyl condensation, dehydration | 100°C (condenses in trap) |
| **C₂H₄** | 5-15 | 1-3% | Ethylene from aliphatic chains | -104°C |
| **C₂H₆** | 2-8 | 0.5-2% | Ethane from side chains | -89°C |
| **C₃H₆** | 1-5 | 0.3-1% | Propylene | -48°C |
| **BTX (benzene, toluene, xylene)** | 10-40 | 1-3% | Aromatic ring retention | 80-140°C (condensable tar) |
| **Phenolics** | 5-20 | 0.5-1% | Phenolic resin, lignin | 180-200°C (heavy tar) |
| **NH₃** | 0-5 | 0-0.5% | Amine hardeners (epoxy), PU | -33°C |
| **HCN** | 0-3 | 0-0.2% | NBR rubber, PU | 26°C |
| **H₂S** | 0-2 | 0-0.1% | Sulfur-vulcanized rubber | -60°C |
| **HCl** | 0-10 | 0-0.5% | Residual PVC (should be <1% at Stage 3) | -85°C |

**Total gas yield:** 350-650 g/kg thermoset feed (35-65 wt%)
**Calorific value:** 18-22 MJ/Nm³ (comparable to town gas / low-Btu syngas)
**Tar content (condensable >150°C):** 15-60 g/kg feed — managed by tar cracking (Section 5.4)

### 5.2 Mass Spec Timing Profile Through 450-700°C Ramp

Real-time gas composition monitoring via **online mass spectrometer** (PMMA POF + electron ionization, 1 Hz sampling) enables dynamic control:

| Temp Range | Time (min) | Dominant Reactions | Key Gas Evolution Peaks | Control Action |
|------------|------------|-------------------|------------------------|----------------|
| **450-500°C** | 0-10 | Epoxy ether cleavage, amine decomp | H₂O↑, CO₂↑, amines | Verify NaHCO₃ feeder off (PVC done) |
| **500-550°C** | 10-20 | **PEAK FR4/epoxy decomp** | CO↑↑, CO₂↑↑, CH₄↑, phenolics↑ | **Critical: hold ramp if CO >25%** |
| **550-600°C** | 20-30 | Phenolic condensation, rubber decomp | H₂↑, CH₄↑, BTX↑, H₂S (rubber) | Monitor H₂S for NBR content |
| **600-650°C** | 30-40 | Char condensation, tar cracking | H₂↑↑, CO↑, tar↓ (cracking) | Verify tar <5 g/Nm³ |
| **650-700°C** | 40-45 | Graphitization onset, final volatiles | H₂ (tail), CO (tail) | **End Stage 3: gas flow <5% peak** |

**Mass spec control thresholds:**
- **CO >30 vol%** → Reduce induction power (incomplete cracking)
- **H₂ >25 vol%** → Increase N₂ dilution (explosion limit margin)
- **BTX >5 vol%** → Extend dwell 5 min (tar cracking incomplete)
- **H₂S detected** → Log NBR content for Stage 4 slag chemistry

### 5.3 Calorific Value and Gas Management Routing

| Parameter | Value | Notes |
|-----------|-------|-------|
| **LHV (dry)** | 18-22 MJ/Nm³ | Varies with H₂/CO ratio |
| **LHV (wet, 10% H₂O)** | 16-20 MJ/Nm³ | As-delivered to PROD-07 |
| **Flow rate** | 50-150 Nm³/hr (peak) | Per 500 kg batch |
| **Total energy/batch** | 150-300 MJ | Recoverable in PROD-07 |

**Routing to PROD-07 Gas Capture System:**
1. **Hot gas exit (650°C)** → Ceramic cyclone (ZrO₂) for char fines removal (>10 µm)
2. **Heat recovery** → SiC heat exchanger (pre-heats Stage 4 N₂ to 300°C)
3. **Tar condensation** → 200°C condenser (ZrO₂ tubes) → tar to Stage 3 char feed
4. **Scrubbing** → NaHCO₃ spray (residual HCl) → activated carbon bed (Stage 3 char!)
5. **Compression** → 2 bar storage → GaN inverter micro-turbine (PROD-10) or flare

**Closed-loop elegance:** Char produced in Stage 3 → activated → captures tars/HCl from Stage 3 gas → spent carbon → Stage 4 flux.

### 5.4 Tar Cracking, PAH Formation, and Dust Explosion Prevention

**Tar management is the critical operability challenge in Stage 3.**

**Tar formation pathway:**
```
Primary vapors (500°C) → Heavy aromatics (3-5 rings) → Condense at 150-250°C → Tar aerosols
```

**PAH (Polycyclic Aromatic Hydrocarbon) risk:** Benzo[a]pyrene, naphthalene, phenanthrene form at 500-650°C via radical recombination. Regulatory limit: **<0.1 ng TEQ/Nm³** (EU IED).

**Cracking strategy (in-drum, no catalyst):**
| Measure | Mechanism | Temperature | Effectiveness |
|---------|-----------|-------------|---------------|
| **Thermal cracking** | Pyrolysis of tar precursors >600°C | 650-700°C | >95% destruction |
| **Steam injection (5% vol)** | Steam reforming: C₁₀H₈ + 10H₂O → 10CO + 14H₂ | 650°C | +90% cracking, +H₂ yield |
| **Residence time** | 30 min dwell at >600°C | 600-700°C | Ensures complete cracking |
| **No metal catalysts** | Avoids coking, sintering, cost | N/A | All-ceramic compatible |

**Dust explosion prevention:**
- **Atmosphere:** N₂ + CO₂, O₂ <2% (verified by zirconia O₂ sensor)
- **Dust concentration:** <10 g/m³ (char is granular, not fines — cyclone removes fines)
- **Ignition sources:** None (all-dielectric, no arcs, induction is non-contact)
- **Static dissipation:** Carbon fiber in BFRP provides conductive path to ground
- **Explosion vent:** ZrO₂ rupture disc (2 bar) on gas exit duct
- **Flame arrestor:** Ceramic mesh (SiC, 1 mm pores) on all gas exits

**Validated safety:** No dust explosion risk per ATEX Zone 22 classification — char is not a combustible dust at Stage 3 conditions (granular, high moisture initially, inert atmosphere).

---
