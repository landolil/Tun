## 10. Throughput & Quality

### 10.1 Char Yield and Quality Specifications

| Quality Parameter | Target | Minimum | Maximum | Test Method | Frequency |
|-------------------|--------|---------|---------|-------------|-----------|
| **Char Yield (wt% of thermoset feed)** | 20-25% | 15% | 30% | Mass balance | Every batch |
| **Fixed Carbon (db)** | 85% | 80% | 95% | ASTM D3172 | Every batch |
| **Volatile Matter (db)** | 10% | 5% | 15% | ASTM D3175 | Every batch |
| **Ash Content (db)** | 10% | 5% | 20% | ASTM D3174 | Every batch |
| **BET Surface Area (raw)** | 400 m²/g | 300 m²/g | 600 m²/g | N₂ physisorption | Daily composite |
| **BET Surface Area (activated)** | 900 m²/g | 800 m²/g | 1100 m²/g | N₂ physisorption | Every activation batch |
| **Iodine Number (activated)** | 850 mg/g | 800 mg/g | 1000 mg/g | ASTM D4607 | Every activation batch |
| **Pore Volume (activated)** | 0.45 cm³/g | 0.35 cm³/g | 0.55 cm³/g | BJH desorption | Weekly |
| **Moisture (as-received)** | 3% | 1% | 5% | ASTM D3173 | Every batch |
| **pH (water extract)** | 9-10 | 8 | 11 | ASTM D3838 | Weekly |
| **Sulfur Content** | 0.5% | 0.1% | 1.0% | ASTM D4239 | Weekly |
| **Chlorine Content** | 50 ppm | 10 ppm | 200 ppm | ASTM D4208 | Weekly |
| **Particle Size (activated)** | <1 mm (95%) | — | <2 mm (100%) | Sieve analysis | Every batch |
| **Bulk Density** | 0.35 g/cm³ | 0.25 g/cm³ | 0.45 g/cm³ | Tapped density | Daily |

**Feedstock category impact on char quality:**

| Category | Thermoset % | Char Yield | Fixed C | Ash | Activation Response |
|----------|-------------|------------|---------|-----|---------------------|
| **A: E-Waste** | 20-30% | 22% | 88% | 12% | Excellent (high phenolic) |
| **B: Auto Shredder** | 15-25% | 18% | 82% | 18% | Good (rubber char) |
| **C: Municipal Plastics** | 5-15% | 25% | 90% | 8% | Excellent (low filler) |
| **D: Industrial Off-Cuts** | 2-8% | 28% | 92% | 5% | Excellent (pure thermoset) |

### 10.2 Gas Quality Specifications

| Parameter | Target | Limit | Test Method | Frequency |
|-----------|--------|-------|-------------|-----------|
| **Calorific Value (dry)** | 20 MJ/Nm³ | >18 MJ/Nm³ | Bomb calorimeter | Daily composite |
| **Tar (condensable >150°C)** | <3 g/Nm³ | <5 g/Nm³ | Gravimetric (cooled probe) | Every batch |
| **PAH (Benzo[a]pyrene eq.)** | <0.05 ng TEQ/Nm³ | <0.1 ng TEQ/Nm³ | GC-MS | Quarterly |
| **Particulates (PM2.5)** | <5 mg/Nm³ | <10 mg/Nm³ | Gravimetric | Daily |
| **HCl** | <5 ppm | <10 ppm | Ion chromatography | Continuous (POF) |
| **NH₃** | <2 ppm | <5 ppm | Chemiluminescence | Daily |
| **HCN** | <1 ppm | <2 ppm | GC-FID | Weekly |
| **H₂S** | <1 ppm | <5 ppm | GC-SCD | Weekly (if NBR present) |
| **O₂ (in drum)** | <1% | <2% | Zirconia probe | Continuous |

### 10.3 Slag Quality Specifications

| Parameter | Target | Range | Test Method | Frequency |
|-----------|--------|-------|-------------|-----------|
| **Mass/Batch** | 65 kg | 40-90 kg | Weigh belt | Every batch |
| **SiO₂** | 48% | 40-55% | XRF | Daily composite |
| **CaO** | 25% | 20-30% | XRF | Daily composite |
| **Al₂O₃** | 12% | 8-15% | XRF | Daily composite |
| **MgO** | 8% | 5-12% | XRF | Daily composite |
| **REE Oxides** | 0.2% | 0.1-0.3% | ICP-MS | Weekly |
| **TiO₂** | 2.5% | 1-4% | XRF | Weekly |
| **ZrO₂** | 0.3% | 0.1-0.5% | XRF | Weekly |
| **Basicity (CaO/SiO₂)** | 0.5 | 0.4-0.7 | Calculated | Daily |
| **Particle Size** | 5-50 mm | <100 mm max | Visual/sieve | Every batch |

### 10.4 Sampling Protocol

| Stream | Sample Point | Method | Frequency | Sample Size | Prep |
|--------|--------------|--------|-----------|-------------|------|
| **Raw Char** | Port 3 discharge | Cross-cut (5 increments) | Every batch | 500 g | Riffle split → 100 g analysis |
| **Activated Char** | Activation reactor discharge | Cross-cut | Every batch | 500 g | Riffle split → 100 g analysis |
| **Pyrolysis Gas** | Gas exit (post-cyclone) | Slip stream to analyzer | Continuous | N/A | Online MS + GC |
| **Slag** | Screw conveyor discharge | Cross-cut (3 increments) | Every batch | 1 kg | Crush → riffle split → 200 g |
| **Condensate** | Tar condenser outlet | Grab | Every batch | 500 mL | Direct analysis |

**Analytical laboratory requirements (on-site):**
- Proximate analyzer (moisture, ash, VM, FC) — 15 min/batch
- BET surface area (3-station) — 30 min/sample
- XRF (slag composition) — 10 min/sample
- GC-MS (gas, tar, PAH) — 45 min/sample
- ICP-MS (REE, critical minerals) — 60 min/sample (batch weekly)

**QC/QA:**
- Duplicate samples: 10% of batches
- Reference materials: NIST SRM 2685 (coal char), NIST SRM 2691 (coal fly ash)
- Round-robin: Quarterly with external lab
- Data management: All results in PROD-37 Digital Twin, blockchain-anchored

### 10.5 Throughput Capacity

| Metric | Value | Notes |
|--------|-------|-------|
| **Batch Size** | 500 kg feed | Standard |
| **Stage 3 Duration** | 45 min | 30 min dwell + 15 min ramp |
| **Char Production** | 15-25 kg/batch | 20-30% of thermoset |
| **Gas Production** | 50-150 Nm³/batch | 18-22 MJ/Nm³ |
| **Slag Production** | 40-90 kg/batch | 8-18% of feed |
| **Daily Throughput (20 batches)** | 10 ton feed | 300-500 kg char, 1000-3000 Nm³ gas |
| **Annual (330 days)** | 16,500 ton feed | 5,000-8,000 ton char |
| **Bottleneck** | Stage 3 dwell (45 min) | Limits to 32 batches/day theoretical |

**Scale-up note:** Stage 3 dwell time is kinetics-limited (epoxy/FR4 decomposition). Parallel drums or longer drum (increased residence time) are the only scale-up paths — cannot reduce dwell below 30 min without char quality loss.

---
