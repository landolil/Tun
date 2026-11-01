## 2. Stage 3 Overview — The Pyrolysis Window

### 2.1 Stage Parameters

| Parameter | Value | Basis |
|-----------|-------|-------|
| **Temperature Range** | 450-700°C | Thermoset decomposition onset to char stabilization |
| **Duration** | 45 minutes | Sufficient for complete pyrolysis + char stabilization |
| **Drum Speed** | 150 RPM (G=12.6 at r=0.25m) | Same as Stage 2 — maintains char bed integrity |
| **Atmosphere** | N₂ + CO₂ (from Stage 2 gas capture) | Oxygen-starved pyrolysis; CO₂ enhances char gasification |
| **Induction Power** | 80 kW peak (100 kHz) | Zone 3 coil bank; heats conductive char/ash bed |
| **Feed Moisture** | <1% (from Stage 1) | Prevents steam dilution of pyrolysis gas |
| **Feed Composition** | Thermosets + Stage 2 char/filler | ~150 kg organic from 500 kg batch |
| **Char Yield** | 20-30% of thermoset feed | 12-22.5 kg per batch (typical) |

### 2.2 Target Materials & Decomposition Temperatures

| Material | Decomposition Onset (°C) | Peak Weight Loss (°C) | Char Yield (wt%) | Primary Source in Feedstock |
|----------|-------------------------|----------------------|------------------|----------------------------|
| **Epoxy resin** | 350-420 | 480-520 | 15-25 | FR4 PCB substrate, adhesives |
| **FR4 (glass-epoxy)** | 350-420 | 480-520 | 40-50 | PCB boards (glass fiber remains) |
| **Phenolic resin** | 400-450 | 500-580 | 50-60 | Laminates, brake pads, molding compounds |
| **Polyurethane foam** | 250-350 | 400-480 | 15-25 | Furniture, automotive seating, insulation |
| **Rubber/elastomer** | 300-400 | 450-520 | 25-40 | Tires, seals, gaskets, hoses |
| **Melamine formaldehyde** | 350-400 | 500-550 | 35-45 | Laminates, dinnerware, coatings |
| **Urea formaldehyde** | 300-380 | 450-520 | 25-35 | Adhesives, particleboard, molding |
| **Cellulosic (paper/wood)** | 300-350 | 350-400 | 20-30 | Packaging, insulation, textiles |
| **Polyester resin** | 350-420 | 450-520 | 15-25 | FRP panels, button, coatings |
| **Polyimide** | 500-550 | 580-650 | 50-60 | High-temp wire insulation, aerospace |

### 2.3 Stage 3 in the Cascade Context

```
THERMAL CASCADE — STAGE 3 POSITION

Stage 0: Acoustic Liberation (Ambient) → Liberated grains
    │
    ▼
Stage 1: IR Drying (80-150°C) → Dry feedstock (<1% H₂O)
    │
    ▼
Stage 2: Polymer Melt Centrifuge (150-450°C) → Thermoplastics removed
    │    ├── Light fraction (PP/PE) → Port 2A
    │    ├── Heavy fraction (PET/PVC/PS) → Port 2B
    │    └── Char/filler from filtration → Stage 3 feed
    │
    ▼
Stage 3: PYROLYSIS & CHAR (450-700°C) ← THIS DOCUMENT
    │    ├── Activated char → Port 3 (Stage 4 flux, Stage 1 adsorber)
    │    ├── Pyrolysis gas → PROD-07 gas system (CO, CH₄, H₂ fuel)
    │    ├── Inorganic slag (glass fiber, fillers) → Stage 7
    │    └── REE-bearing minerals → Stage 7/8
    │
    ▼
Stage 4: Low-Temp Metals (420-900°C) → In, Sn, Pb, Zn separation
    │
    ▼
Stage 5: Aluminum Window (660-720°C) → Clean Al separation
    │
    ▼
... Stages 6-8 ...
```

### 2.4 Feed Composition by Feedstock Category (from PROD-13)

| Feedstock Category | Thermoset Content | Char/Filler from Stage 2 | Typical Batch (500 kg) |
|--------------------|-------------------|-------------------------|------------------------|
| **A: E-Waste** | 25-35% | 5-10 kg | 125-175 kg thermoset, 5-10 kg Stage 2 residue |
| **B: Auto Shredder Residue** | 15-25% | 8-15 kg | 75-125 kg thermoset, 8-15 kg Stage 2 residue |
| **C: Municipal Plastics** | 5-15% | 2-5 kg | 25-75 kg thermoset, 2-5 kg Stage 2 residue |
| **D: Industrial Off-Cuts** | 10-20% | 1-3 kg | 50-100 kg thermoset, 1-3 kg Stage 2 residue |

**Total organic feed to Stage 3:** 30-200 kg per batch (highly category-dependent)
**Total char/filler feed from Stage 2:** 3-15 kg per batch (filtration solids)

---

## 3. Thermoset Decomposition Kinetics

### 3.1 Fundamental Pyrolysis Chemistry

Unlike thermoplastics, thermosetting polymers **do not melt** — they undergo irreversible thermal decomposition (pyrolysis) via random chain scission, depolymerization, and crosslinking reactions.

**Simplified global pyrolysis reaction:**

$$\text{Polymer} \xrightarrow{\Delta, 500^\circ\text{C}} \text{Char (C)} + \text{Gas (CO, CO}_2\text{, H}_2\text{O, H}_2\text{, CH}_4\text{, BTX, tars)}$$

**Competing reaction pathways:**

1. **Dehydration/Dehydrogenation** (char-forming): 
   $$\text{-CH}_2\text{-CHR-} \rightarrow \text{-CH=CH-} + \text{H}_2 \quad (\text{char} \uparrow)$$

2. **Depolymerization** (volatile-forming):
   $$\text{-[Monomer]-}_n \rightarrow n \text{ Monomer} \quad (\text{gas} \uparrow)$$

3. **Fragmentation/Random Scission** (mixed):
   $$\text{-CH}_2\text{-CHR-} \rightarrow \text{Radicals} \rightarrow \text{Light gases + tar} \quad (\text{gas} \uparrow, \text{char} \uparrow)$$

4. **Crosslinking/Repolymerization** (char-enhancing):
   $$\text{Radical} + \text{Radical} \rightarrow \text{Crosslink} \quad (\text{char} \uparrow\uparrow)$$

**Net char yield** depends on the balance between pathways 1/4 (char-forming) vs 2/3 (volatile-forming). Phenolics and polyimides favor crosslinking → high char yield. Epoxies and polyurethanes favor fragmentation → moderate char yield.

### 3.2 Kinetic Models

**Distributed Activation Energy Model (DAEM) — Most accurate for complex feeds:**

$$\frac{d\alpha}{dt} = \int_0^\infty k_0(E) \exp\left(-\frac{E}{RT}\right) (1-\alpha) f(E) dE$$

Where $\alpha$ = conversion fraction, $k_0(E)$ = pre-exponential factor, $f(E)$ = activation energy distribution (typically Gaussian).

**Simplified n-th order model (for control system):**

$$\frac{d\alpha}{dt} = A \exp\left(-\frac{E_a}{RT}\right) (1-\alpha)^n$$

| Material | Reaction Order (n) | Eₐ (kJ/mol) | A (s⁻¹) | Char Yield at 700°C |
|----------|-------------------|-------------|---------|---------------------|
| Epoxy (bisphenol-A) | 1.2 | 180-220 | 1×10¹⁴ | 0.20 |
| Phenolic (novolac) | 0.8 | 150-180 | 5×10¹² | 0.55 |
| Polyurethane (flexible) | 1.5 | 120-160 | 2×10¹¹ | 0.20 |
| Rubber (SBR) | 1.3 | 160-200 | 1×10¹³ | 0.35 |
| Polyester (unsaturated) | 1.1 | 170-210 | 5×10¹³ | 0.20 |
| Polyimide (Kapton-type) | 0.7 | 200-250 | 1×10¹⁵ | 0.55 |
| Cellulose | 1.0 | 180-220 | 1×10¹⁴ | 0.25 |

**FR4 PCB substrate (composite):**
- Epoxy matrix: 180-220 kJ/mol, char yield ~20% of matrix
- Glass fiber: inert (no weight loss)
- Inorganic fillers (CaCO₃, Al(OH)₃): decompose at specific temperatures
- **Net residue at 700°C: ~20% of original FR4 mass** (glass fiber + fillers + epoxy char)

### 3.3 Temperature Ramp Profile (Critical for Char Quality)

**Ramp Rate Through Critical Zones:**

| Zone | Temperature Range | Ramp Rate | Duration | Purpose |
|------|------------------|-----------|----------|---------|
| **Ramp 1** | 450→550°C | **5°C/min** | 20 min | Control epoxy/phenolic decomposition; minimize tar |
| **Ramp 2** | 550→650°C | 10°C/min | 10 min | Complete decomposition; begin char ordering |
| **Soak** | 650-700°C | 0°C/min (hold) | 15 min | Char stabilization, surface area development |
| **Total** | | | **45 min** | |

**Why 5°C/min through 450-550°C?**
- Epoxy decomposition peak: 480-520°C
- Fast ramp (>10°C/min) → thermal gradients → incomplete decomposition → high tar yield
- Slow ramp (<3°C/min) → excessive residence → char over-oxidation → lower surface area
- **5°C/min validated** in Vol 2 and PROD-02 as optimal for max BET surface area + min PAH

### 3.4 Thermal Degradation Kinetics — Detailed Arrhenius Parameters

| Polymer | T_d,onset (°C) | T_d,peak (°C) | Eₐ (kJ/mol) | log₁₀A (s⁻¹) | Char Residue @700°C | Notes |
|---------|----------------|---------------|-------------|--------------|---------------------|-------|
| **Epoxy (DGEBA)** | 350 | 490 | 195 | 14.2 | 18% | FR4 matrix |
| **Epoxy (novolac)** | 380 | 510 | 210 | 14.8 | 22% | High-temp epoxy |
| **Phenolic (resol)** | 400 | 520 | 165 | 12.5 | 55% | Highest char yield |
| **Phenolic (novolac)** | 380 | 500 | 155 | 12.0 | 52% | Brake pads |
| **Polyurethane (rigid)** | 250 | 420 | 140 | 11.5 | 25% | Insulation foam |
| **Polyurethane (flexible)** | 280 | 450 | 130 | 11.0 | 18% | Foam seating |
| **Rubber (NR/SBR)** | 300 | 470 | 175 | 13.0 | 35% | Tires, seals |
| **Polyester (UP resin)** | 350 | 480 | 185 | 13.8 | 20% | FRP panels |
| **Melamine formaldehyde** | 350 | 510 | 180 | 13.2 | 40% | Laminates |
| **Urea formaldehyde** | 300 | 480 | 160 | 12.8 | 30% | Adhesives |
| **Polyimide (Kapton)** | 500 | 600 | 230 | 15.2 | 55% | Wire insulation |

**Key Insight:** The 450-550°C window captures >90% of total weight loss for all common thermosets. The 15-minute soak at 650-700°C ensures complete devolatilization and char stabilization.