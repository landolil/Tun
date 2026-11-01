## 4. Char Formation & Morphology

### 4.1 Char Structure Development

During pyrolysis, the carbonaceous residue undergoes structural evolution:

**Stage 1 (450-550°C): Primary Char Formation**
- Amorphous carbon with high heteroatom content (O, H, N)
- Disordered turbostratic structure (randomly oriented graphene-like sheets)
- High volatile matter content (20-40%)
- Low surface area (50-200 m²/g)

**Stage 2 (550-650°C): Char Ordering**
- Progressive dehydrogenation and condensation
- Graphene sheet growth and alignment (La increases from 2→5 nm)
- Volatile matter drops to 5-15%
- Surface area peaks at 600-650°C (200-800 m²/g)

**Stage 3 (650-700°C): Stabilization Soak**
- Continued ordering; heteroatom removal (H, O, N < 5% combined)
- Pore coalescence; micropores → mesopores
- Fixed carbon reaches 80-95%
- Surface area stabilizes at 200-800 m²/g (depending on precursor)

### 4.2 Char Characterization — Standard Proximate/Ultimate Analysis

| Property | Target Range | Test Method | Frequency |
|----------|-------------|-------------|-----------|
| **Fixed Carbon** | 80-95 wt% | ASTM D3172 (proximate) | Every batch |
| **Volatile Matter** | 5-15 wt% | ASTM D3175 | Every batch |
| **Ash Content** | 5-15 wt% | ASTM D3174 (750°C) | Every batch |
| **Moisture** | <2 wt% | ASTM D3173 | Every batch |
| **Total Carbon (Ultimate)** | 85-95 wt% | ASTM D5373 | Daily composite |
| **Hydrogen** | 1-3 wt% | ASTM D5373 | Daily composite |
| **Nitrogen** | 0.5-2 wt% | ASTM D5373 | Daily composite |
| **Sulfur** | 0.2-1 wt% | ASTM D4239 | Daily composite |
| **Oxygen (by difference)** | 2-8 wt% | Calculation | Daily composite |

### 4.3 Physical Morphology & Surface Properties

| Property | Target Range | Significance |
|----------|-------------|--------------|
| **BET Surface Area** | 200-800 m²/g | Adsorption capacity for Stage 1 organics |
| **Micropore Volume** | 0.1-0.4 cm³/g | Iodine number correlation |
| **Mesopore Volume** | 0.3-0.8 cm³/g | Gas diffusion, kinetics |
| **Average Pore Diameter** | 2-5 nm | Transport vs. capacity trade-off |
| **Iodine Number** | >800 mg/g | Standard activated carbon spec |
| **Methylene Blue Number** | >200 mg/g | Mesopore accessibility |
| **Particle Size (D50)** | 0.5-2 mm | Flowability, fluidization |
| **Bulk Density** | 0.3-0.5 g/cm³ | Reactor sizing, transport |
| **True Density** | 1.8-2.1 g/cm³ | Carbon crystallinity indicator |
| **Electrical Resistivity** | 10⁻³-10⁻¹ Ω·m | Electrostatic separation potential |

### 4.4 Char Morphology by Precursor Type

| Precursor | Morphology | BET (m²/g) | Pore Structure | Best Application |
|-----------|------------|------------|----------------|------------------|
| **Phenolic resin** | Spherical, 1-10 µm | 600-800 | Microporous | Stage 1 vapor adsorption |
| **Epoxy (FR4)** | Irregular, fiber-reinforced | 200-400 | Mixed micro/meso | Stage 4 flux, carburizing |
| **Polyurethane foam** | Open-cell replica | 400-600 | Mesoporous | Carbon electrodes |
| **Rubber/elastomer** | Dense, low porosity | 150-300 | Low microporosity | Carbon black substitute |
| **Polyimide** | Fibrous, aligned | 300-500 | Anisotropic | Graphite precursor |
| **Cellulosic** | Tubular, vessel structure | 500-700 | Hierarchical | Activated carbon general |

**Mixed feedstock char** (typical Aegis-Forge input): Blended morphology, BET 300-600 m²/g, suitable for all internal applications.

### 4.5 In-Situ Char Activation Protocol (Steam/CO₂)

**Objective:** Boost surface area from 300-600 m²/g → >800 m²/g for Stage 1 organic vapor adsorption.

**Activation Reactions:**

$$\text{C} + \text{H}_2\text{O} \rightarrow \text{CO} + \text{H}_2 \quad (\Delta H = +131 \text{ kJ/mol})$$
$$\text{C} + \text{CO}_2 \rightarrow 2\text{CO} \quad (\Delta H = +172 \text{ kJ/mol})$$

**Activation Protocol (performed in-drum after 650-700°C soak):**

| Parameter | Steam Activation | CO₂ Activation | Combined (Recommended) |
|-----------|------------------|----------------|------------------------|
| **Temperature** | 800-900°C | 850-950°C | 850°C |
| **Activating Agent** | Steam (1.5 kg/kg char) | CO₂ (3 kg/kg char) | Steam + CO₂ (1:2 molar) |
| **Duration** | 20-30 min | 30-45 min | 25 min |
| **Surface Area Gain** | 2-3× | 1.5-2.5× | **3-4×** |
| **Char Yield Loss** | 20-35% | 15-25% | 25-30% |
| **Iodine Number** | 900-1100 | 800-1000 | **950-1200** |

**Process Sequence:**
1. Complete 45-min pyrolysis at 450-700°C (char at ~400 m²/g)
2. Ramp to 850°C at 20°C/min (induction + resistive assist)
3. Inject steam (from PEX-a boiler, 150°C) + CO₂ (from Stage 2 capture) at 1.5:3 molar ratio
4. Hold 25 min at 850°C with continuous gas flow (N₂ carrier at 200 L/min)
5. Quench: stop activation gas, N₂ purge 10 min, cool to 200°C
6. Discharge activated char via Port 3 to ZrO₂ collection bin

**Mass Balance (per 20 kg raw char):**
- Raw char in: 20 kg (400 m²/g)
- Activation gas: 30 kg steam + 60 kg CO₂
- Activated char out: 14-15 kg (950 m²/g, iodine number >950)
- Activation gas out: CO, H₂, CO₂ → PROD-07 gas system (fuel value recovered)

### 4.6 Activated Char Quality Specifications (for Stage 1 Adsorption)

| Parameter | Minimum | Target | Test Method |
|-----------|---------|--------|-------------|
| **Iodine Number** | 800 mg/g | 950 mg/g | ASTM D4607 |
| **BET Surface Area** | 800 m²/g | 950 m²/g | ASTM D6556 |
| **Ash Content** | — | <10% | ASTM D2866 |
| **Moisture** | — | <3% | ASTM D2867 |
| **Hardness Number** | 90 | 95 | ASTM D3802 |
| **pH (water extract)** | 6.5 | 7.5 | ASTM D3838 |
| **PAH Content** | — | <10 mg/kg | EPA 8270 (GC-MS) |

---

## 5. Gas Evolution Profile

### 5.1 Real-Time Evolved Gas Analysis (TG-FTIR / Mass Spec)

**Stage 3 gas evolution is monitored continuously via:**
- **Port 3 gas exit** → heated line (180°C) → online mass spectrometer (quadrupole, 1-200 amu)
- **In-drum FTIR** (ZrO₂ window, 4000-600 cm⁻¹) for speciation
- **GC-FID/TCD** batch validation (every 10 batches)

### 5.2 Gas Composition vs. Temperature (Typical Mixed Feedstock)

| Temperature (°C) | CO (%) | CO₂ (%) | CH₄ (%) | H₂ (%) | H₂O (%) | BTX (%) | Tars (%) | HBr (ppm) |
|------------------|--------|---------|---------|--------|---------|---------|----------|-----------|
| 450 | 5 | 25 | 2 | 5 | 40 | 1 | 3 | 500 |
| 500 | 15 | 20 | 5 | 10 | 25 | 2 | 3 | 800 |
| 550 | 22 | 15 | 8 | 14 | 15 | 4 | 2 | 1200 |
| 600 | 25 | 12 | 10 | 15 | 10 | 5 | 1 | 1500 |
| 650 | 25 | 10 | 10 | 15 | 8 | 4 | 0.5 | 1800 |
| 700 | 22 | 10 | 8 | 14 | 6 | 2 | 0.2 | 2000 |

**Key Observations:**
- **CO peaks at 600-650°C** — Boudouard reaction (C + CO₂ → 2CO) active
- **H₂ increases steadily** — dehydrogenation, water-gas shift (CO + H₂O → CO₂ + H₂)
- **CH₄ peaks at 600°C** — methyl group cleavage from polymer side chains
- **BTX peaks at 600-650°C** — aromatic ring condensation from phenolic/epoxy
- **Tars decline sharply above 600°C** — thermal cracking to light gases
- **HBr from FR4** tracks epoxy decomposition; captured by NaHCO₃ in gas train

### 5.3 Total Gas Yield & Calorific Value

**Per kg thermoset feed (typical):**
- Gas yield: 0.7-0.85 kg/kg feed (70-85% of organic mass)
- Average composition (N₂-free basis): CO 20%, CO₂ 15%, CH₄ 8%, H₂ 13%, H₂O 8%, BTX 3%, tars 1%
- **Calorific value: 18-22 MJ/Nm³** (comparable to town gas / low-Btu syngas)
- **Energy content: 12-15 MJ/kg feed** (vs. 25-30 MJ/kg for coal)

**Per 500 kg batch (Category A e-waste, 150 kg thermoset):**
- Total gas: 105-128 kg (≈ 150-180 Nm³ at STP)
- Recoverable energy: 2.7-3.6 GJ/batch (750-1000 kWh/batch)
- **Routed to PROD-07:** Cyclone → quench scrubber → NaHCO₃ scrubber → compressor → plasma torch feed or storage

### 5.4 Gas Evolution Kinetics — Mass Spec Timing

**Mass spec monitoring provides real-time decomposition tracking:**

| m/z | Species | Peak Temperature | Significance |
|-----|---------|------------------|--------------|
| 18 | H₂O⁺ | 450-500°C | Dehydration, moisture |
| 28 | CO⁺ / N₂⁺ | 550-650°C | Primary pyrolysis gas |
| 44 | CO₂⁺ | 450-550°C | Decarboxylation |
| 16 | CH₄⁺ | 550-600°C | Methyl cleavage |
| 2 | H₂⁺ | 600-700°C | Dehydrogenation |
| 78 | C₆H₆⁺ (benzene) | 600-650°C | Aromatic formation |
| 91 | C₇H₇⁺ (tropylium) | 620-660°C | Toluene/xylene marker |
| 80/82 | HBr⁺ | 480-520°C | FR4 bromine release |

**Control Application:** CO/CO₂ ratio >1.5 indicates active Boudouard → char gasification occurring; adjust activation steam rate. H₂/CO ratio tracks water-gas shift equilibrium.

### 5.5 Tar & PAH Management

**Tar (heavy organics >C₆):**
- Peak at 550-600°C: 2-3% of gas mass
- Cracking above 650°C: thermal + catalytic (char surface)
- **Target at drum exit: <0.5% of gas mass**

**PAH (Polycyclic Aromatic Hydrocarbons):**
- Naphthalene (2-ring): peaks 600°C, <50 ppmv
- Phenanthrene (3-ring): peaks 650°C, <10 ppmv
- Pyrene (4-ring): peaks 680°C, <2 ppmv
- **Total PAH at drum exit: <0.1 mg/Nm³** (EU IED compliant)
- **Destruction:** >700°C soak + catalytic char surface + plasma torch (PROD-07) ensures complete destruction