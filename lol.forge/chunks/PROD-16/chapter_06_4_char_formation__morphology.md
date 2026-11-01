## 4. Char Formation & Morphology

### 4.1 Char Properties at Stage 3 Conditions

At 600-700°C, char from pyrolysis of thermosetting polymers exhibits the following properties:

| Property | Range | Measurement Method | Significance |
|----------|-------|-------------------|--------------|
| **Fixed Carbon** | 80-95 wt% | ASTM D3172 (proximate analysis) | Determines calorific value, reduction potential |
| **Volatile Matter** | 5-15 wt% | ASTM D3175 | Residual tars, affects activation |
| **Ash Content** | 5-20 wt% | ASTM D3174 (750°C) | Inorganic fillers (glass, CaCO₃, talc) |
| **Surface Area (BET)** | 200-800 m²/g | N₂ physisorption at 77K | Adsorption capacity, activation potential |
| **Pore Volume** | 0.1-0.5 cm³/g | BJH method (desorption branch) | Accessibility for activation agents |
| **Average Pore Diameter** | 2-50 nm | BJH/DFT | Micropores (<2 nm) dominate surface area |
| **Electrical Resistivity** | 10⁻³-10⁻¹ Ω·m | Four-point probe | Induction coupling in Stage 3 |
| **Thermal Conductivity** | 1-5 W/m·K | Laser flash | Heat transfer in char bed |
| **Bulk Density** | 0.2-0.5 g/cm³ | Tapped density | Bed porosity, gas flow resistance |

### 4.2 Pore Structure Development from Volatile Evolution

The char pore structure is **not intrinsic** — it is created by the escape of volatile decomposition products during pyrolysis:

**Mechanism:**
1. **Primary devolatilization (450-550°C):** Rapid release of H₂O, CO₂, CO, CH₄, light hydrocarbons creates **primary pore network** — interconnected channels following polymer chain orientation
2. **Secondary cracking (550-650°C):** Tar cracking within pores deposits **pyrolytic carbon** on pore walls, narrowing micropores but increasing surface area
3. **Graphitization onset (650-700°C):** Aromatic condensation creates **ordered carbon domains** at pore edges, stabilizing micropore structure

**Pore classification (IUPAC):**
- **Micropores (<2 nm):** 60-80% of surface area — created by crosslinking density, tar deposition
- **Mesopores (2-50 nm):** 20-35% of surface area — created by volatile escape channels
- **Macropores (>50 nm):** <5% of surface area — original polymer particle boundaries, glass fiber channels

**Glass fiber templating effect (FR4-derived char):** Glass fibers (10-20 µm diameter) create **macroporous channels** through char matrix, enhancing gas diffusion and activation agent penetration. This is a unique advantage of PCB-derived char.

### 4.3 BET Surface Area, Iodine Number, Pore Volume

| Feedstock Source | BET (m²/g) | Iodine No. (mg/g) | Pore Vol (cm³/g) | Micropore % | Best Application |
|------------------|------------|-------------------|------------------|-------------|------------------|
| **Epoxy/FR4 char** | 350-600 | 400-650 | 0.15-0.30 | 70% | Activated carbon (Stage 1 adsorption) |
| **Phenolic char** | 500-800 | 600-900 | 0.25-0.45 | 75% | High-performance activated carbon |
| **Rubber char** | 200-400 | 250-450 | 0.10-0.25 | 60% | Carbon black substitute |
| **Cellulosic char** | 250-500 | 300-550 | 0.12-0.28 | 65% | Carburizing agent |
| **Mixed char (typical)** | **300-600** | **350-600** | **0.15-0.35** | **68%** | **General purpose activation** |

**Iodine number correlation:** Iodine number (mg/g) ≈ 0.8-1.1 × BET (m²/g) for these chars. Target >800 mg/g after activation (Section 5).

### 4.4 Char Applications — Immediate and Downstream

| Application | Char Requirement | Processing | Volume Potential |
|-------------|------------------|------------|------------------|
| **Stage 1 organic vapor adsorption** | Activated, >800 m²/g, low ash | In-situ steam activation (Section 5) | 100% of char production |
| **Stage 4 flux/reducing agent** | High fixed carbon (>85%), low S | Size reduction to <1 mm | 20-30% of char |
| **Carbon black substitute** | Narrow PS, low ash, controlled structure | Milling + classification | 10-20% (rubber compounding) |
| **Graphite precursor** | High crystallinity, low ash | Heat treatment >2500°C (external) | 5-10% (high-value) |
| **Carburizing agent** | High C, low S, controlled reactivity | Sizing to 0.5-2 mm | 10-15% (steel heat treat) |
| **Carbon electrode precursor** | High density, graphitizable | Isostatic pressing + graphitization | 5% (electrochemical) |

**Priority allocation for Aegis-Forge I:** 100% → Stage 1 activation → Stage 4 flux → surplus to external markets.

### 4.5 Char Exit — Port 3 Discharge

Char exits the drum through **Port 3** (set-point 650°C, opens at 600°C):

| Parameter | Specification |
|-----------|---------------|
| **Port Location** | Drum OD, 45° from vertical (gravity + centrifugal assist) |
| **Aperture** | 20 mm × 100 mm slot, circumferential |
| **Valve Actuation** | Ti₃AlC₂ thermal actuator (opens at 600°C, closes at 550°C) |
| **Piston/Seat** | ZrO₂ 3Y-TZP ceramic piston, PEEK CF40 spring return |
| **Discharge Rate** | 0.5-1.5 kg/min (centrifugal + gravity driven) |
| **Collection Vessel** | ZrO₂-lined ceramic bin, 50 L capacity, N₂ purged |
| **Cooling** | N₂ quench in bin (prevents char oxidation <400°C) |
| **Weight per Batch** | 8-15% of organic input (typically 10-22 kg from 500 kg feed) |
| **Temperature at Discharge** | 600-650°C (cools to <100°C in bin within 10 min) |

**Post-discharge handling:**
1. Char screened at 1 mm (oversize → regrind)
2. Moisture equilibration (target <5% for activation)
3. Direct feed to activation reactor (Section 5) or Stage 4 flux bin

---
