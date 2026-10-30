## 5. Stage 3 — Pyrolysis and Carbon Char Formation (450-700°C)

### 5.1 Thermoset and Organic Decomposition Chemistry

At temperatures above 450°C, thermosetting polymers and residual organics undergo thermal decomposition (pyrolysis). Unlike thermoplastics, these materials do not melt — they decompose irreversibly.

**Simplified global pyrolysis reaction:**
$$\text{Polymer} \xrightarrow{\Delta, 500^\circ\text{C}} \text{Char (C)} + \text{Gas (CO, CO}_2\text{, H}_2\text{O, H}_2\text{, CH}_4\text{, BTX)}$$

**Carbon yields from pyrolysis (by weight of original polymer):**

| Material | Char Yield (%) | Primary Decomposition Range (°C) | Notes |
|---|---|---|---|
| Epoxy resin | 15-25 | 350-500 | FR4 PCB substrate base |
| FR4 (glass-epoxy) | 40-50 | 350-520 | Glass fiber mass remains |
| Rubber/elastomer | 25-40 | 300-500 | Tires, seals, gaskets |
| Phenolic resin | 50-60 | 400-600 | High carbon yield |
| Cellulosic (paper/wood) | 20-30 | 300-400 | Packaging, insulation |
| Polyurethane foam | 15-25 | 250-450 | Furniture, automotive |
| Melamine formaldehyde | 35-45 | 350-550 | Laminates, dinnerware |
| Urea formaldehyde | 25-35 | 300-500 | Adhesives, particleboard |

**FR4 PCB substrate detailed decomposition:**
- Onset: 350-420°C (depends on halogen content from brominated flame retardants)
- Peak weight loss rate: 480-520°C (main epoxy decomposition)
- Residue at 700°C: ~20% (SiO₂ glass fibers + inorganic fillers + carbon char)
- Bromine release: as HBr (captured in Stage 2 NaHCO₃ system) + organobromines (destroyed in plasma torch)

### 5.2 Char Collection — The Valuable Carbonaceous Product

At 600-700°C, char from pyrolysis exits **Port 3** (700°C set-point, opens at 680°C):

**Char properties:**
- Carbon content: 80-95% C (high after partial oxidation/volatilization)
- Ash content: 5-15% (inorganic fillers, glass fiber residue)
- Surface area: 200-800 m²/g (activated carbon-like porosity from volatile evolution)
- Pore volume: 0.5-1.2 cm³/g
- Specific resistance: 10⁻³ to 10⁻¹ Ω·m (conductive enough for electrostatic separation if needed)
- Particle size: 0.1-5 mm (granular, friable)

**Practical applications (immediate CSM internal use):**
1. **Activated carbon for organic vapor adsorption** — used immediately in Stage 1 gas treatment (closed cycle!)
2. **Carbon black substitute** for rubber compounding (BFRP matrix toughening)
3. **Graphite precursor** for further purification → battery anode material
4. **Carburizing agent** for steel (reduces iron oxide in Stage 7 slag)
5. **Carbon electrodes** for electrochemical processes (electrorefining cells)

**Char mass balance (typical 500 kg mixed feedstock):**
- Organic input: ~150 kg (30% of feed)
- Char yield: 8-15% of organic input = 12-22.5 kg
- Gas yield: 85-92% of organic input = 127-138 kg (routed to gas management)

**Port 3 discharge:** Dry, granular, collected in ZrO₂-lined ceramic bin. Weight logged per batch.

### 5.3 Combustion Gas Management

**Atmosphere control:** Maintain <2% O₂ in drum (N₂ sweep at 300 L/min maintains this). Operate in partial pyrolysis mode → higher char yield, lower gas yield.

**Pyrolysis gas composition (typical, N₂ atmosphere):**
- CO: 15-25% (by volume)
- CH₄: 5-10%
- H₂: 10-15%
- CO₂: 10-20%
- H₂O: 5-10%
- BTX (benzene, toluene, xylene): 2-5%
- Tar/heavy organics: 1-3%
- HBr (from FR4): 500-2000 ppm

**Calorific value:** ~18-22 MJ/m³ (comparable to town gas). Recoverable energy routed to gas management system (CSMFAB000000000111).

**Gas treatment train (Stage 3 outlet):**
1. Cyclone separator — removes char fines (>10 μm)
2. Quench scrubber (150°C) — condenses tars, water
3. NaHCO₃ scrubber — neutralizes HBr, residual HCl
4. Compressor → storage or direct feed to plasma torch (Document 111)

### 5.4 Induction Heating in Stage 3

- Frequency: 50 kHz (Zone 3)
- Power: 50-80 kW
- Target: Zn, Pb particles beginning to couple inductively (pre-heat for Stage 4)
- SiC glow bars: OFF (induction sufficient above 450°C)

### 5.5 Stage 3 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 450→660°C ramp | ±5°C | FBG Zone 3-4 |
| Drum rotation | 200 RPM | ±5 RPM | Optical encoder |
| N₂ pressure | 1.5 bar | ±0.1 bar | Pressure transducer |
| O₂ concentration | <2% | Alarm >3% | Zirconia probe |
| Port 3 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |
| Pyrolysis gas temp | 500-700°C | ±20°C | Thermocouple (ex-drum) |

---

