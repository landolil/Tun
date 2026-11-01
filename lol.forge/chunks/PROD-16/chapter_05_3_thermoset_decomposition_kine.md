## 3. Thermoset Decomposition Kinetics

### 3.1 Global Pyrolysis Reaction Framework

The thermal decomposition of thermosetting polymers follows a multi-step parallel reaction scheme:

**Simplified global reaction:**
$$\text{Polymer} \xrightarrow{\Delta, 500°C} \text{Char (C)} + \text{Gas (CO, CO}_2\text{, H}_2\text{O, H}_2\text{, CH}_4\text{, C}_x\text{H}_y\text{)} + \text{Tar (condensable)}$$

**General kinetic model (n-th order):**
$$\frac{d\alpha}{dt} = A \exp\left(-\frac{E_a}{RT}\right) (1-\alpha)^n$$

Where $\alpha$ = conversion fraction, $A$ = pre-exponential factor, $E_a$ = activation energy, $n$ = reaction order.

**Multi-component feedstock uses distributed activation energy model (DAEM):**
$$\frac{d\alpha}{dt} = \int_0^\infty f(E_a) A \exp\left(-\frac{E_a}{RT}\right) (1-\alpha) dE_a$$

Where $f(E_a)$ = Gaussian distribution of activation energies for mixed feedstock.

### 3.2 Epoxy Resin Kinetics (Primary Feedstock from PCBs)

Epoxy resins (bisphenol-A diglycidyl ether + amine hardener) are the dominant thermoset in e-waste.

| Parameter | Value | Source |
|-----------|-------|--------|
| **T_onset** | 350-420°C | Halogen content dependent |
| **T_peak (DTG)** | 480-520°C | Main decomposition |
| **Residue at 700°C** | 15-25% | Char + inorganic filler |
| **Char yield (pure epoxy)** | 15-25 wt% | TGA N₂, 10°C/min |
| **Ea (primary)** | 140-180 kJ/mol | Kissinger method |
| **Ea (secondary)** | 200-240 kJ/mol | Char oxidation/condensation |
| **A (primary)** | 10¹²-10¹⁴ s⁻¹ | Model-fitting |
| **Reaction order (n)** | 1.0-1.5 | Non-integer due to diffusion |

**Decomposition steps:**
1. **300-400°C**: Ether linkage cleavage, amine decomposition → H₂O, CO₂, amines
2. **400-550°C**: Aromatic ring cracking, methylene bridge cleavage → CH₄, C₂H₄, CO, CO₂
3. **550-700°C**: Char condensation, graphitization onset, H₂ evolution

**Key gaseous products (per kg epoxy):**
- CO: 80-120 g
- CO₂: 100-150 g
- CH₄: 20-40 g
- H₂: 5-15 g
- H₂O: 30-60 g
- Light hydrocarbons (C₂-C₄): 15-30 g
- Phenolic tar (condensable): 40-80 g

### 3.3 FR4 Substrate (Glass-Epoxy) Kinetics

FR4 is the dominant PCB substrate: woven glass fabric + epoxy resin (typically 60% resin / 40% glass by weight).

| Parameter | Value |
|-----------|-------|
| **Resin content** | 55-65 wt% |
| **Glass fiber (SiO₂)** | 35-45 wt% |
| **T_onset (resin)** | 350-420°C |
| **T_peak weight loss** | 480-520°C |
| **Residue at 700°C** | ~35-45% (glass + char + filler) |
| **Char from resin** | 15-25% of resin mass |
| **Glass transition** | None (inert to 1000°C+) |

**Mass balance per kg FR4:**
- Epoxy resin (600 g) → Char: 90-150 g + Gas: 300-400 g + Tar: 50-80 g
- Glass fiber (400 g) → Inert slag (reports to Stage 7 mineral residue)
- Filler (typically 5-10% CaCO₃/talc) → CaO/MgO slag

**Critical for Stage 3:** Glass fiber skeleton maintains structural integrity of char matrix, preventing sintering/agglomeration. This porous char structure is ideal for activation (Section 5).

### 3.4 Phenolic Resin Kinetics

Phenolic resins (phenol-formaldehyde, novolac/resole) have the highest char yield of common thermosets.

| Parameter | Value |
|-----------|-------|
| **T_onset** | 380-450°C |
| **T_peak** | 500-580°C |
| **Char yield** | 50-60 wt% (highest of common thermosets) |
| **Ea** | 160-200 kJ/mol |
| **A** | 10¹³-10¹⁵ s⁻¹ |
| **Carbon content of char** | 90-95% |

**Decomposition pathway:**
- 300-450°C: Methylene bridge cleavage → CH₄, H₂O, CO
- 450-600°C: Aromatic condensation, ether linkage cleavage → CO, CO₂, H₂
- 600-700°C: Graphitic domain growth, H₂ evolution

**Phenolic char properties:** Highly microporous, excellent for activated carbon precursor. Used in Stage 1 gas adsorption after activation.

### 3.5 Rubber/Elastomer Kinetics

| Rubber Type | T_onset (°C) | T_peak (°C) | Char Yield | Key Products |
|-------------|--------------|-------------|------------|--------------|
| **SBR** (styrene-butadiene) | 350-400 | 450-500 | 25-35% | Styrene, butadiene oligomers, H₂S |
| **NR** (natural rubber) | 300-350 | 400-450 | 20-30% | Isoprene, terpenes |
| **NBR** (nitrile) | 350-420 | 480-530 | 30-40% | HCN, acrylonitrile fragments |
| **EPDM** | 380-430 | 480-520 | 25-35% | Ethylene, propylene |
| **Silicone** | 450-500 | 550-600 | 40-50% | Siloxanes, SiO₂ residue |

**Sulfur vulcanization effect:** Crosslinked network increases char yield by 5-10% vs. unvulcanized. Sulfur reports to Stage 4/5 slag as metal sulfides.

### 3.6 Polyester and Polyurethane Kinetics

| Parameter | Polyester (UPR) | Polyurethane (PU) |
|-----------|-----------------|-------------------|
| **T_onset** | 320-380°C | 250-320°C (soft segment) |
| **T_peak** | 420-480°C | 350-450°C (hard segment) |
| **Char yield** | 15-25% | 20-35% |
| **Ea** | 130-170 kJ/mol | 110-150 kJ/mol |
| **Key gases** | CO₂, H₂O, maleic anhydride | CO₂, amines, isocyanates |

**PU note:** Two-stage decomposition — soft segment (polyol) first at lower temp, hard segment (diisocyanate) at higher temp. Isocyanate-derived N-compounds require NOx monitoring in gas system (PROD-07).

### 3.7 Cellulosic Material Kinetics

| Component | T_onset (°C) | T_peak (°C) | Char Yield | Notes |
|-----------|--------------|-------------|------------|-------|
| **Cellulose** | 300-350 | 350-400 | 15-25% | Levoglucosan pathway |
| **Hemicellulose** | 220-300 | 280-320 | 10-20% | Lower temp, more volatiles |
| **Lignin** | 280-500 | 350-450 | 35-50% | Broad, high char, phenolic |
| **Paper/Cardboard** | 300-350 | 350-400 | 20-30% | Mixed cellulose/lignin |

**Total cellulosic char yield:** 20-30% of dry mass. High potassium content catalyzes char gasification — affects activation behavior.

### 3.8 Kinetic Summary Table for Stage 3 Control

| Material | Mass Fraction | Char Yield | Ea (kJ/mol) | T_peak (°C) | Gas Yield | Control Priority |
|----------|---------------|------------|-------------|-------------|-----------|------------------|
| Epoxy (FR4) | 30-40% | 15-25% | 160±20 | 500 | 60-70% | PRIMARY — largest mass |
| Phenolic | 10-15% | 50-60% | 180±20 | 540 | 30-40% | HIGH — high char value |
| Rubber | 15-20% | 25-40% | 150±25 | 480 | 50-65% | MEDIUM |
| Polyester/PU | 5-10% | 20-35% | 140±20 | 450 | 55-70% | MEDIUM |
| Cellulosic | 10-15% | 20-30% | 130±20 | 370 | 65-75% | LOW — early decomposition |

**Control implication:** Ramp rate through 450-550°C must be ≤5°C/min to allow complete epoxy/FR4 decomposition before Stage 4 metal melting begins. Faster ramp → incomplete char formation → carbon contamination in metal fractions.

---
