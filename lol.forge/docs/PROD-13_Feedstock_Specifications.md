# PROD-13: Feedstock Specifications (Categories A-D, Pre-Processing)
## CSMFAB000000000108 — Aegis-Forge I Planetary Centrifugal Inductive Material Separation
### Series: TCIMS (Thermal Cascade Inductive Material Separator) | Volume: Feedstock Specifications & Pre-Processing Requirements
**Document Number:** CSMFAB000000000113 (Product Document 13 of 40)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** 2026-11-01 | **Classification:** Product Specification — Foundation Technology

---

## 1. Document Header & Scope

### 1.1 Document Identification

| Field | Value |
|-------|-------|
| **Document Number** | CSMFAB000000000113 |
| **Series** | Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS) |
| **Volume** | Feedstock Specifications & Pre-Processing Requirements |
| **Product Document** | 13 of 40 |
| **Prepared By** | Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division |
| **Date** | 2026-11-01 |
| **Classification** | Product Specification — Foundation Technology |
| **Applicability** | Aegis-Forge I (CSMFAB0108) all serial numbers |
| **Revision** | 1.0 (Initial Release) |
| **Supersedes** | Vol 1 Section 6 (Feedstock Specifications) |

### 1.2 Scope and Purpose

This document defines the complete feedstock specification framework for the Aegis-Forge I thermal cascade inductive material separator. It establishes:

1. **Four feedstock categories (A-D)** with detailed compositional profiles, source streams, and elemental recovery targets
2. **Pre-processing requirements** per category including sizing, drying, ferrous removal, and contamination limits
3. **Analytical characterization protocols** for feedstock qualification and lot release
4. **Acceptance criteria and rejection thresholds** ensuring thermal cascade integrity
5. **Sampling and lot release procedures** per ISO 3082 and CSMFAB internal standards
5. **Storage and handling specifications** maintaining feedstock quality from gate to drum
6. **Mass balance and yield targets** per element per category
7. **Economic valuation model** linking feedstock composition to revenue and processing cost
8. **Cross-reference matrix** linking to PROD-01, PROD-02, PROD-11, PROD-14, PROD-15, PROD-22

### 1.3 Referenced Documents

| Document | Title | Relationship |
|----------|-------|--------------|
| CSMFAB000000000108 (Vol 1) | System Overview & Architecture | Source feedstock categories, machine architecture |
| CSMFAB000000000109 (Vol 2) | Thermal Cascade Process Engineering | Stage-by-stage temperature, chemistry |
| PROD-01 | System Overview & Architecture | Machine architecture, 8-stage cascade, BOM |
| PROD-02 | Thermal Cascade Process Engineering | Stage parameters, dwell times, gas management |
| PROD-11 | Feed Preparation & Shredding | Pre-processing flow, shredder, ferrous separation |
| PROD-12 | All-Aegis Material BOM Deep-Dive | Material specs, in-house synthesis, Phoenix Protocol |
| PROD-14 | Stage 0-1: Acoustic & Drying | Liberation physics, IR drying parameters |
| PROD-15 | Stage 2: Polymer Flow & Separation | Melt centrifuge, PVC management |
| PROD-22 | Phoenix Protocol Integration | EOL returns, circular feedstock loops |
| ISO 3082 | Iron ores — Sampling and sample preparation procedures | Sampling methodology baseline |
| ASTM E122 | Practice for Choice of Sample Size to Estimate Average Quality | Statistical sampling |

### 1.4 Definitions and Abbreviations

| Abbreviation | Definition |
|--------------|------------|
| **P80** | Particle size at which 80% of mass passes (µm or mm) |
| **LOI** | Loss on Ignition (mass % lost at 950°C) |
| **XRF** | X-Ray Fluorescence spectroscopy |
| **XRD** | X-Ray Diffraction |
| **ICP-MS** | Inductively Coupled Plasma Mass Spectrometry |
| **NORM** | Naturally Occurring Radioactive Material |
| **REE** | Rare Earth Elements (La-Lu, Y, Sc) |
| **PM** | Precious Metals (Au, Ag, Pt, Pd, Rh) |
| **PGM** | Platinum Group Metals |
| **TCIMS** | Thermal Cascade Inductive Material Separator |
| **BFRP** | Basalt Fiber Reinforced Polymer |
| **Elium®** | Arkema thermoplastic acrylic resin (recyclable) |

---

## 2. Category A: Pre-Sorted Industrial Streams

### 2.1 Overview

Category A encompasses electronics, PCBs, motors, and power electronics — the highest-value feedstock by elemental concentration. These streams are typically pre-sorted at electronics recyclers or industrial scrap processors before arriving at the Aegis-Forge I.

### 2.2 Subcategory A1: Consumer Electronics

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Smartphones, tablets, laptops, wearables, gaming consoles |
| **Mass per Unit** | Phone: 150-200g; Laptop: 1.5-2.5kg; Tablet: 300-500g |
| **Annual US Volume** | ~350M phones, ~50M laptops, ~40M tablets (2026 EPA) |
| **Key Elements** | Au (0.03%), Ag (0.15%), Pd (0.01%), Cu (15-25%), Al (5-15%), REE in magnets (Nd, Dy, Tb: 0.5-2%) |
| **Hazardous Components** | Li-ion battery (MANDATORY removal), LCD screen (Hg in CCFL, In in ITO), vibration motors (NdFeB) |
| **Pre-processing** | Battery removal → screen separation → coarse shred <150mm |
| **Target Recovery** | >99% Au/Ag/Pd, >95% Cu, >90% REE, >95% Al |

**Elemental Composition Detail (per kg mixed consumer electronics):**

| Element | Mass (g) | Recovery Target | Value @ 2026 Prices |
|---------|----------|-----------------|---------------------|
| Gold (Au) | 0.3 | 99% | $24.00 |
| Silver (Ag) | 1.5 | 99% | $1.80 |
| Palladium (Pd) | 0.1 | 95% | $6.50 |
| Copper (Cu) | 180 | 95% | $1.80 |
| Aluminum (Al) | 80 | 95% | $0.18 |
| Neodymium (Nd) | 5 | 90% | $3.50 |
| Dysprosium (Dy) | 0.5 | 85% | $2.00 |
| Indium (In) | 0.5 | 99% | $1.80 |
| **Total Recoverable Value** | — | — | **~$41.58/kg** |

### 2.3 Subcategory A2: Printed Circuit Boards (PCBs)

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Motherboards, GPU boards, server blades, router boards, control boards |
| **Substrate** | FR4 (glass-epoxy) → SiO₂ (55-65%), char (20-30%), Cu (20-30%) |
| **Key Elements** | Cu (20-30%), Sn/Pb solder (3-5%), Au (0.01-0.05%), Ag (0.05-0.2%), Pd (0.005-0.02%), REE traces |
| **Annual US Volume** | ~2.5M metric tons PCB scrap (2026 ISRI) |
| **Pre-processing** | Depaneling → coarse shred <150mm → Stage 0 acoustic liberation |
| **Target Recovery** | >95% Cu, >99% Au/Ag/Pd, >90% Sn/Pb |

**PCB Grade Classification (per IEC 61190):**

| Grade | Cu Content | Au Content | Typical Source | Aegis-Forge Priority |
|-------|------------|------------|----------------|---------------------|
| **Grade 1 (High-Yield)** | 25-30% | 0.03-0.05% | Server, telecom, military | Highest — Stage 6 priority |
| **Grade 2 (Mid-Yield)** | 18-25% | 0.01-0.03% | Consumer motherboards, GPU | Standard |
| **Grade 3 (Low-Yield)** | 12-18% | <0.01% | Peripheral boards, toys | Blend with Grade 2 |
| **Grade 4 (FR4 Scrap)** | 5-12% | <0.005% | Panel trim, test coupons | Stage 3 char + SiO₂ |

**PVC Content Warning:** PCBs with PVC-based solder mask or conformal coating require NaHCO₃ injection at Stage 2 (per PROD-15). Target PVC <2% of PCB mass.

### 2.4 Subcategory A3: Motors and Drives

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | HDD spindle motors, fan motors, actuators, servo motors, BLDC motors |
| **Key Elements** | Cu windings (40-60%), Fe stator (30-40%), NdFeB magnets (1-3% with Dy/Tb), Ni, Co |
| **Magnet Grades** | N35-N52 (Nd₂Fe₁₄B), Dy-doped (H-series), Tb-doped (SH-series) |
| **Pre-processing** | Ferrous pre-separation (PROD-11 NdFeB Halbach belt) → magnet extraction → shred <150mm |
| **Target Recovery** | >95% Cu, >95% Fe, >90% Nd/Dy/Tb, >90% Ni/Co |

**Motor Size Classification:**

| Frame Size | Mass | Cu Mass | Fe Mass | Magnet Mass | Processing Notes |
|------------|------|---------|---------|-------------|------------------|
| NEMA 17 (3D printer) | 0.3 kg | 60g | 120g | 5g | Batch with small electronics |
| NEMA 23/34 (CNC) | 1-2 kg | 300g | 800g | 20g | Individual feed |
| NEMA 42/52 (Industrial) | 5-15 kg | 2-4 kg | 8-10 kg | 50-100g | Pre-separate rotor/stator |
| Servo (Robotics) | 2-8 kg | 500g-2kg | 1-4kg | 30-80g | High Dy/Tb content |

### 2.5 Subcategory A4: Power Electronics

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Inverters, PSU, chargers, UPS, solar optimizers, EV chargers |
| **Key Elements** | SiC/GaN dies (trace), Al heatsinks (30-50%), Cu busbars (10-20%), ceramic substrates (AlN, Al₂O₃, Si₃N₄), film capacitors |
| **Pre-processing** | Heatsink removal → capacitor discharge (safety) → coarse shred |
| **Target Recovery** | >95% Al, >95% Cu, >90% ceramic substrates (Stage 8), >95% film cap Al |

**Critical Note:** Large electrolytic capacitors (>20mm diameter) MUST be discharged and removed pre-shredder. Stored energy >10J poses explosion risk in BFRP shredder. Discharge protocol: 100Ω bleed resistor, 5 min minimum, verify <1V.

---

## 3. Category B: Municipal & Commercial Waste

### 3.1 Overview

Category B encompasses post-consumer and commercial waste streams from Material Recovery Facilities (MRFs), construction & demolition (C&D) debris, bulky waste, and tire rubber. These streams are lower in elemental concentration but higher in volume, providing the bulk mass for the thermal cascade.

### 3.2 Subcategory B1: MRF Output (Container & Fiber Lines)

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Mixed plastics (1-7), aluminum cans, steel cans, glass, paper/cardboard residuals |
| **Composition (typical MRF residue)** | Plastics 35%, Paper 25%, Organics 15%, Metals 10%, Glass 8%, Other 7% |
| **Key Elements** | Al (from UBCs), Fe (from steel cans), Cu (from wiring in residue), polymers (Stage 2) |
| **Contaminants** | Food residue, liquid, hazardous household waste, tanglers (hoses, wires) |
| **Pre-processing** | Ferrous separation → shred <150mm → Stage 0 acoustic (for mineral fraction) |
| **Target Recovery** | >90% Al (UBCs), >95% Fe, polymers to Stage 2 |

**Polymer Distribution in MRF Residue (by mass):**

| Polymer | Fraction | Melt Temp | Stage 2 Behavior |
|---------|----------|-----------|------------------|
| HDPE | 35% | 130°C | Light fraction (inner annulus) |
| PP | 25% | 165°C | Light fraction |
| PET | 20% | 255°C | Medium fraction |
| PS | 8% | 240°C | Medium fraction |
| PVC | 5% | 180°C | HCl management critical |
| LDPE/LLDPE | 5% | 110°C | Light fraction |
| Other (ABS, PC, PA) | 2% | 200-340°C | Heavy fraction |

### 3.3 Subcategory B2: Construction & Demolition Debris

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Concrete, brick, drywall, asphalt shingles, wood, metal, insulation, piping |
| **Key Elements** | SiO₂, CaO, Al₂O₃, Fe₂O₃ (concrete/brick), Cu (pipe/wire), Al (siding), TiO₂ (paint) |
| **Contaminants** | Asbestos (pre-1980), lead paint (pre-1978), PCBs (caulk), treated wood (CCA) |
| **Pre-processing** | **Mandatory**: Asbestos/lead screening → wet suppression → ferrous separation → shred |
| **Radiation Screening** | Gamma spectrometer at feed hopper (NORM from concrete, gypsum) |
| **Target Recovery** | >95% Cu/Al/Fe metals, minerals to Stage 8 slag |

**C&D Debris Processing Protocol:**

1. **Visual/tactile inspection** at tip floor — segregate suspect materials
2. **XRF screening** for Pb, As, Cr on painted/coated surfaces
3. **Gamma spectroscopy** for NORM (Ra-226, Th-232, K-40) — reject >50 µR/hr
4. **Asbestos PLM** on suspect insulation/flooring — positive = segregated sealed feed
5. **Shredding** with water mist suppression (dust control)
6. **Stage 0 acoustic liberation** critical for mineral recovery from concrete/brick matrix

### 3.4 Subcategory B3: Bulky Waste & Mattresses

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Furniture, mattresses, carpet, large plastic items, appliances (white goods) |
| **Key Elements** | Steel springs (mattresses), PU foam, polyester, PP/PE, Al/Fe frames |
| **Pre-processing** | Manual disassembly (mattresses) → ferrous separation → shred |
| **Special Handling** | Mattress springs → direct ferrous stream; foam → Stage 2/3; fabric → Stage 3 char |
| **Target Recovery** | >95% Fe (springs), polymers to Stage 2/3 |

### 3.5 Subcategory B4: Tire Rubber

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Passenger, truck, OTR tires (whole or shredded) |
| **Composition** | Natural rubber (15-25%), Synthetic rubber (SBR, BR: 25-35%), Carbon black (25-30%), Steel belt (10-15%), Textile (5-10%), Additives (ZnO, S, oils: 5-10%) |
| **Key Elements** | Zn (from ZnO ~1.5%), Fe (steel belt), C (carbon black + polymer), S |
| **Pre-processing** | Primary shredder (300mm) → ferrous separation (steel belt) → secondary shred <150mm |
| **Stage Behavior** | Stage 2: polymer melt; Stage 3: char (carbon black survives); Stage 4: Zn capture |
| **Target Recovery** | >95% Fe (steel), >90% Zn (from ZnO), carbon char to Stage 3 |

**Tire Rubber Pyrolysis Yield (Stage 3, 600°C):**
- Pyrolysis oil: 40-45% (calorific value ~40 MJ/kg)
- Char (carbon black + ash): 35-40% (recovered carbon black — rCB)
- Gas: 15-20% (C1-C4 hydrocarbons, H₂, CO)
- Steel: 10-15% (pre-removed)

---

## 4. Category C: Mineral & Metallurgical Residues

### 4.1 Overview

Category C comprises primary mineral concentrates, smelter slags, mine tailings, and spent refractories. These feeds are the primary source for CSMFAB's structural ceramic raw materials (Zr, Ti, REE, B, basalt) and represent the geological input to the Aegis-Forge I.

### 4.2 Subcategory C1: Slag (Ferrous & Non-Ferrous)

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Blast furnace slag (BFS), steelmaking slag (BOF/EAF), copper slag, lead slag, nickel slag |
| **Key Elements** | CaO, SiO₂, Al₂O₃, MgO, FeOₓ, MnO, TiO₂, V₂O₅, REE traces |
| **Typical Composition (EAF Slag)** | FeO 25-35%, CaO 30-40%, SiO₂ 12-18%, MnO 4-8%, MgO 5-8%, Al₂O₃ 3-6%, TiO₂ 0.5-1.5%, Cr₂O₃ 0.5-2% |
| **Pre-processing** | Crush <150mm → magnetic separation (metallic Fe) → Stage 0 acoustic liberation |
| **Stage Behavior** | Stage 7: FeO reduction → Fe metal; Stage 8: mineral residue (CaO-SiO₂-Al₂O₃-MgO slag) |
| **Target Recovery** | >85% Fe (as metal), >90% Mn, >80% Ti, REE to Stage 8 |

**Slag Valorization Pathways:**

| Slag Type | Stage 7 Product | Stage 8 Product | Downstream Use |
|-----------|-----------------|-----------------|----------------|
| BFS | Low (mostly CaO-SiO₂) | Cementitious slag | CBPC binder (PROD-12 Part VI) |
| BOF/EAF | High Fe → Fe slug | Mn/Cr/Al/Mg concentrate | Ferroalloy feed, refractory |
| Cu Slag | Cu matte (if reduced) | Fe silicate + REE | REE recovery, construction aggregate |
| Ni Slag | Fe-Ni alloy | Mg silicate + Co | Battery precursor, Co recovery |

### 4.3 Subcategory C2: Tailings (Mine Waste)

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Copper tailings, gold tailings, iron ore tailings, phosphate tailings, coal refuse |
| **Key Elements** | Residual target metal (Cu, Au, Fe), REE, SiO₂, Al₂O₃, Fe₂O₃, carbonates, sulfides |
| **Particle Size** | Typically P80 < 150 µm (fine) — may require agglomeration pre-drum |
| **Contaminants** | Acid-generating sulfides (pyrite), As, Se, Hg, cyanide residues (Au tailings) |
| **Pre-processing** | **Mandatory**: Acid-base accounting (ABA) → if NNP < -20 kg/t CaCO₃, blend with alkaline feed; agglomeration if P80 < 50 µm |
| **Stage Behavior** | Stage 0 acoustic critical for fine grain liberation; Stage 8 mineral concentration |
| **Target Recovery** | >60% residual target metal, >70% REE, >80% Zr/Ti |

**Tailings Agglomeration Protocol (if P80 < 50 µm):**

1. **Binder:** 3-5% CBPC (Ceramic Phosphate Binder — PROD-12 Part VI) + 1% PVA
2. **Mix:** Intensive mixer, 2 min, target moisture 12-15%
3. **Pelletize:** Disc pelletizer, 10-20mm green pellets
4. **Cure:** 24h ambient → 200°C 1h (CBPC sets at 80°C)
5. **Strength:** >50 N/pellet (tumble test)
6. **Feed:** Direct to drum — CBPC decomposes cleanly at Stage 3

### 4.4 Subcategory C3: Red Mud (Bauxite Residue)

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Bayer process red mud (alumina refinery waste) |
| **Composition** | Fe₂O₃ 30-50%, Al₂O₃ 10-20%, SiO₂ 5-15%, TiO₂ 4-10%, Na₂O 3-8%, REE 0.05-0.2%, Sc 50-100 ppm |
| **Key Elements** | Fe, Ti, REE (Sc, Y, La, Ce, Nd), Al, Zr |
| **Hazard** | High pH (10-13), caustic soda residue, fine particle (P80 ~10 µm) |
| **Pre-processing** | **Neutralization mandatory**: CO₂ sparging to pH 7-8 → gypsum (CaSO₄) addition → agglomeration |
| **Stage Behavior** | Stage 7: Fe recovery; Stage 8: Ti/REE/Zr/Al concentrate (high-value Stage 8 stream) |
| **Target Recovery** | >85% Fe, >80% Ti, >70% REE (incl. Sc), >60% Al |

**Red Mud Neutralization Reaction:**
$$\text{NaOH} + \text{CO}_2 \rightarrow \text{NaHCO}_3 \text{ (soluble)}$$
$$\text{Al(OH)}_3 + \text{NaHCO}_3 \rightarrow \text{NaAlO}_2 + \text{CO}_2 + \text{H}_2\text{O}$$
$$\text{Ca(OH)}_2 + \text{NaAlO}_2 \rightarrow \text{Al(OH)}_3 + \text{NaOH} \text{ (regenerated)}$$

Net: CO₂ sequestration + NaOH recovery + neutralized residue suitable for drum feed.

### 4.5 Subcategory C4: Spent Refractories

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Used MgO-C bricks, Al₂O₃-SiC-C, ZrO₂ nozzles, SiC kiln furniture, castable refractories |
| **Key Elements** | MgO, Al₂O₃, SiC, ZrO₂, C, Cr₂O₃ (in some MgO-C) |
| **Pre-processing** | Crush <150mm → Stage 0 acoustic (critical for MgO-C grain liberation) |
| **Stage Behavior** | Stage 7-8: MgO/Al₂O₃/SiC/ZrO₂ report to mineral residue; C → Stage 3 char |
| **Target Recovery** | >90% MgO, >90% Al₂O₃, >95% ZrO₂, >90% SiC |

---

## 5. Category D: Phoenix Protocol Returns (Aegis Product EOL)

### 5.1 Overview

Category D represents the circular feedstock stream — end-of-life Aegis products returning via the Phoenix Protocol take-back program. These feeds are unique because their composition is KNOWN exactly (they were manufactured to CSMFAB specifications), enabling precision feedstock blending and maximum recovery efficiency.

### 5.2 Subcategory D1: Aegis-C Ceramic Panels

| Parameter | Specification |
|-----------|---------------|
| **Composition (per m² panel)** | ZrB₂-SiC core (4.6 kg), Si₃N₄ buffer (7.6 kg), Aerogel (1.8 kg), YInMn Blue glaze (65g In, 41g Y), CoAl₂O₄ interior (1.3 kg) |
| **Mass per Panel** | ~15.4 kg/m² |
| **Key Elements** | Zr, B, Si, N, In, Y, Co, Al |
| **Pre-processing** | Stage 0 acoustic liberation CRITICAL — breaks ZrB₂-SiC/Si₃N₄ bond; thermal solvolysis for Elium® (not in C panels) |
| **Stage Behavior** | Stage 7-8: ZrB₂, Si₃N₄ → mineral residue; YInMn glaze → In/Y recovery at Stage 4/8; CoAl₂O₄ → Stage 7 Co; aerogel → Stage 1 vapor |
| **Target Recovery** | >94% Zr (property retention), >99% In, >98% Y, >98% Co, >95% basalt fiber (if present) |

**Phoenix Protocol Economics (per 10,000 panels — from PROD-12 Part D):**

| Material Stream | Mass | Recovery Rate | Recovered Value |
|----------------|------|---------------|-----------------|
| ZrB₂-SiC panel core | 46,000 kg | 94% property retention | $929,880 |
| Elium® monomer | 18,000 kg | 100% | $90,000 |
| Basalt fiber | 8,000 kg | 95% | $36,000 |
| Indium from YInMn | 65 kg | 99.4% | $18,943 |
| Yttrium from YInMn | 41 kg | 98% | $803 |
| Si₃N₄ buffer | 76,000 kg | 97% | $1,474,400 |
| CoAl₂O₄ interior | 13,000 kg | 98% | $701,000 |
| **TOTAL RECOVERED** | — | — | **$3,251,026** |

### 5.3 Subcategory D2: BFRP Structures

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | End-of-life rebar, beams, tanks, pipe, grating, structural panels |
| **Composition** | Basalt fiber (60-65% FVF), Elium® 150 resin (35-40%) |
| **Pre-processing** | Thermal solvolysis at 350°C, 2h (separate reactor, pre-drum) → fiber/resin separation |
| **Solvolysis Products** | Elium® monomer (MMA) — 100% recovery; Basalt fiber — 95% yield, 90% property retention |
| **Stage Behavior (post-solvolysis)** | Fiber → Stage 8 mineral (SiO₂/Al₂O₃/FeOₓ); Monomer → Stage 2 polymer |
| **Target Recovery** | >99% Elium® monomer, >95% basalt fiber |

**Solvolysis Reaction:**
$$\text{Elium® (pMMA)} \xrightarrow{350°C, 2h, N_2} \text{MMA monomer} + \text{basalt fiber}$$
- Catalyst: None required (thermal depolymerization)
- Vessel: BFRP/Elium® reactor (all-dielectric)
- Energy: 1.2 MJ/kg Elium®

### 5.4 Subcategory D3: MR Fluid

| Parameter | Specification |
|-----------|---------------|
| **Composition** | Iron carbonyl Fe(CO)₅ suspension (30-40 vol%) in synthetic hydrocarbon carrier oil |
| **Key Elements** | Fe, C, O, H |
| **Pre-processing** | Thermal separation: 200°C vacuum distillation → carrier oil recovery (Stage 2); Fe carbonyl → decomposition at 300°C → Fe powder + CO |
| **Stage Behavior** | Fe → Stage 7; Oil → Stage 2; CO → gas capture |
| **Target Recovery** | >99% Fe, >95% carrier oil |

### 5.5 Subcategory D4: Piezo Elements

| Parameter | Specification |
|-----------|---------------|
| **Typical Items** | Retired KNbO₃-BaTiO₃ transducers, ultrasonic motors, sensors |
| **Composition** | KNbO₃-BaTiO₃ ceramic (95%), Ag/Pd electrodes (5%), BFRP housing |
| **Pre-processing** | Direct feed — ceramic survives cascade; electrodes report to Stage 6 |
| **Stage Behavior** | K, Nb, Ba, Ti → Stage 8 mineral residue; Ag/Pd → Stage 6 Cu/PM stream |
| **Target Recovery** | >97% K/Nb/Ba/Ti, >95% Ag/Pd |

---

## 6. Pre-Processing Requirements Per Category

### 6.1 Universal Pre-Processing Flow (All Categories)

```
FEEDSTOCK RECEIVING
       │
       ▼
[RADIATION SCREEN] ──► REJECT (>50 µR/hr NORM) or SEGREGATED FEED
       │
       ▼
[XRF HAZARD SCREEN] ──► REJECT (Hg, Be, As > threshold) or SEGREGATED FEED
       │
       ▼
[FERROUS SEPARATION] ──► NdFeB Halbach Belt (PROD-11)
       │                    │
       │                    └─► FERROUS SLUG MOLD (PROD-08)
       ▼
[BFRP SHREDDER] ──► P80 < 150mm
       │
       ▼
[STAGE 0 ACOUSTIC PRE-CHAMBER] (PROD-14)
       │                    │
       │                    ├─► LF 20-200 Hz (15 min) — matrix loosening
       │                    └─► US 40 kHz (15 min) — fine grain liberation
       ▼
[MOISTURE CHECK] ──► IF >25% ──► PRE-DRY 80°C (entry chamber)
       │
       ▼
[BLENDING & ASSAY] ──► XRF at hopper → Blend Algorithm (PROD-11 Sec 1.5)
       │
       ▼
[VIBRATORY FEEDER] ──► KNbO₃-BaTiO₃ ultrasonic drive → DRUM ENTRY
```

### 6.2 Category-Specific Pre-Processing Parameters

| Parameter | Category A | Category B | Category C | Category D |
|-----------|------------|------------|------------|------------|
| **Ferrous Separation** | Mandatory (magnet extraction) | Mandatory (belt) | Optional (slag) | Not needed (D1-D4) |
| **Shred Target** | P80 < 150mm | P80 < 150mm | P80 < 150mm (agglomerate if <50µm) | D1: acoustic only; D2: solvolysis; D3: thermal; D4: direct |
| **Moisture Limit** | <15% (battery-free) | <25% | <10% (tailings) | <5% (ceramic) |
| **Stage 0 Duration** | 15 min LF + 15 min US | 20 min LF + 10 min US | 30 min LF + 15 min US | 20 min LF + 20 min US |
| **Hazard Screening** | Battery, Hg, PCB, Be | Asbestos, Pb, PCB | NORM, acid-generating sulfides | None (known composition) |
| **Blending Weight** | 15-30% of batch | 20-40% of batch | 25-40% of batch | 10-20% of batch |

### 6.3 Sizing Requirements

| Feedstock Type | Pre-Shred Max | Post-Shred P80 | Post-Shred P50 | Notes |
|----------------|---------------|----------------|----------------|-------|
| Whole electronics | 300mm | <150mm | <80mm | Battery removed first |
| PCB panels | 400mm | <150mm | <70mm | Depanel first |
| Motors/drives | 200mm | <100mm | <50mm | Rotor/stator separate |
| C&D debris | 500mm | <150mm | <80mm | Wet suppression |
| Tires (whole) | 1200mm | <150mm (2-pass) | <60mm | Steel belt removed pass 1 |
| Mineral concentrates | 50mm | <150mm | <50mm | Already sized |
| Tailings (fine) | N/A | Agglomerate 10-20mm | — | CBPC binder |
| Aegis-C panels | 600mm (panel) | Acoustic only | — | No shred — liberation only |

### 6.4 Drying Requirements

| Category | Typical Moisture | Pre-Dry Threshold | Pre-Dry Method | Target Moisture |
|----------|------------------|-------------------|----------------|-----------------|
| A (Electronics) | 5-10% | >15% | Entry chamber 80°C, 30 min | <5% |
| B (MRF/C&D) | 15-30% | >25% | Entry chamber 80°C, 60 min | <15% |
| C (Mineral) | 2-8% (tailings up to 20%) | >10% | Entry chamber 80°C, 45 min | <5% |
| D (Phoenix) | <2% | N/A | N/A | <2% |

**Stage 1 IR Drying Capacity (PROD-14):** 50 kg water/hr evaporation at 150°C. Batch moisture load must not exceed 50 kg water per 20-min Stage 1 dwell.

### 6.5 Contamination Limits — Rejection Thresholds

| Contaminant | Limit | Detection Method | Action if Exceeded |
|-------------|-------|------------------|-------------------|
| **Li-ion batteries** | 0 (zero tolerance) | X-ray + density sort | Manual removal, separate LiFePO₄ recovery line |
| **Mercury** | <1 ppm | XRF + cold vapor AAS | Segregated feed, Hg capture Stage 1 |
| **PCBs (polychlorinated biphenyls)** | <50 ppm | GC-MS screening | Thermal destruction Stage 3 (700°C confirmed) |
| **Asbestos** | 0 (zero tolerance) | PLM microscopy | Sealed feed, Stage 8 capture in slag |
| **Radioactive (NORM)** | <50 µR/hr | Gamma spectrometer | Shielded feed, Stage 7/8 co-collection |
| **Beryllium** | <10 ppm | XRF Be detection | Segregated feed, Stage 6 capture |
| **Cyanide** | <10 ppm | Colorimetric | Alkaline chlorination pre-treatment |
| **Free liquids** | 0 | Visual + gravimetric | Reject / pre-drain |

---

## 7. Analytical Characterization Protocols

### 7.1 Incoming Feedstock Assay — Required Analyses

Every feedstock lot must be characterized by the following methods before blending:

| Analysis | Method | Sample Size | Turnaround | Purpose |
|----------|--------|-------------|------------|---------|
| **Elemental Composition (Major)** | XRF (FP method) | 10g pressed pellet | 10 min | Batch blending, category ID |
| **Elemental Composition (Trace/PM/REE)** | ICP-MS (acid digest) | 0.5g | 4 hr | Revenue valuation, REE tracking |
| **Mineralogical Phase ID** | XRD (Rietveld) | 5g powder | 30 min | Stage behavior prediction |
| **Particle Size Distribution** | Laser diffraction | 50g | 5 min | Shredder performance, Stage 0 design |
| **Moisture Content** | Gravimetric (105°C) | 50g | 2 hr | Pre-dry decision, Stage 1 load |
| **LOI (Loss on Ignition)** | Gravimetric (950°C) | 10g | 3 hr | Organic content, Stage 2/3 sizing |
| **Halogen Content (Cl, Br, F)** | Ion chromatography (combustion) | 0.5g | 1 hr | PVC/fluoropolymer quantification |
| **Sulfur Speciation** | LECO + XRD | 1g | 30 min | Sulfide vs. sulfate (acid generation) |
| **Carbon Speciation** | LECO (TC, TOC, TIC) | 1g | 30 min | Stage 3 char yield prediction |

### 7.2 XRF Calibration Standards for Feedstock Matrix

| Matrix Type | Calibration Standard | Elements Covered | Frequency |
|-------------|---------------------|------------------|-----------|
| Electronic scrap | NIST SRM 2583 (PCB) + custom Cu-Au-Ag | Cu, Sn, Pb, Au, Ag, Pd, Ni, Fe, Al | Daily |
| Municipal waste | NIST SRM 1648a (Urban Particulate) + custom | Al, Fe, Cu, Zn, Pb, Cl, S | Daily |
| Mineral/ore | USGS GSD-1 to GSD-11 (Rock) | Si, Al, Fe, Ca, Mg, Ti, Zr, REE | Per lot |
| Slag/tailings | Custom synthetic slag standards | Fe, Mn, Cr, V, Ti, REE | Per lot |
| Phoenix returns | CSMFAB certified reference panels | Zr, B, Si, N, In, Y, Co | Per shipment |

### 7.3 Rapid On-Line Analysis (Feed Hopper Integration)

| Sensor | Location | Measurement | Frequency | Integration |
|--------|----------|-------------|-----------|-------------|
| **XRF Analyzer** | Feed hopper outlet | Major elements (Al, Fe, Cu, Zn, Pb, Sn, Ti, Zr) | Every 30 sec | Blend algorithm input |
| **Gamma Spectrometer** | Feed conveyor | NORM (Ra, Th, K, U) | Continuous | Reject/divert trigger |
| **Moisture NIR** | Feed conveyor | H₂O content | Continuous | Pre-dry trigger |
| **Particle Size (Laser)** | Post-shredder | P80, P50 | Every batch | Shredder wear monitor |
| **FBG Weight** | Ferrous/non-ferrous bins | Mass split | Continuous | Ferrous separation efficiency |

---

## 8. Acceptance Criteria & Rejection Thresholds

### 8.1 Compositional Acceptance Criteria

| Category | Parameter | Acceptable Range | Reject If |
|----------|-----------|------------------|-----------|
| **All** | Moisture | <25% (pre-dry if >10%) | >40% (unprocessable) |
| **All** | Particle Size P80 | <150mm | >200mm (re-shred) |
| **All** | NORM | <50 µR/hr | >100 µR/hr |
| **A** | Battery content | 0 | Any detected |
| **A** | PCB content | <50 ppm | >50 ppm |
| **A** | Hg content | <1 ppm | >1 ppm |
| **B** | Asbestos | 0 | Any detected |
| **B** | Lead paint | <0.5% Pb | >0.5% Pb |
| **C** | Acid potential (NNP) | >-20 kg/t CaCO₃ | <-50 kg/t CaCO₃ |
| **C** | Cyanide | <10 ppm | >10 ppm |
| **D** | Composition variance | ±5% from spec | >10% variance |

### 8.2 Physical Acceptance Criteria

| Parameter | Requirement | Test Method | Frequency |
|-----------|-------------|-------------|-----------|
| **Bulk Density** | 0.5-3.0 g/cm³ (category dependent) | ASTM D1895 | Per lot |
| **Flowability** | Angle of repose <45° | ASTM D6393 | Per lot |
| **Dust Generation** | <10 mg/m³ (PM10) | NIOSH 0600 | Daily |
| **Temperature** | <40°C at drum entry | IR pyrometer | Continuous |
| **Magnetic Susceptibility** | <0.01 SI (non-ferrous stream) | Bartington MS2 | Per batch |

### 8.3 Chemical Acceptance Criteria

| Parameter | Limit | Rationale |
|-----------|-------|-----------|
| **Total Halogen (Cl+Br+F)** | <3% of feed mass | HCl/HF management capacity (Stage 2/3 scrubbers) |
| **Total Sulfur** | <5% of feed mass | SO₂ capture capacity, Stage 3 char sulfur |
| **PCB (Aroclor equivalents)** | <50 ppm | Thermal destruction at 700°C (Stage 3) |
| **Dioxins/Furans** | <1 ng TEQ/kg | Formed in Stage 2/3 if Cl + C + Cu present; monitor |
| **Radioactive (Cs-137, Sr-90)** | <10 Bq/g | Anthropogenic — reject; NORM handled separately |
| **Explosive/Reactive** | 0 | Safety — reject at gate |

---

## 9. Sampling & Lot Release Procedures

### 9.1 Lot Definition

| Feedstock Source | Lot Definition | Minimum Lot Size |
|------------------|----------------|------------------|
| **Contract Supplier** | Single shipment (truck/railcar) | 20,000 kg |
| **MRF Output** | 8-hour production shift | 50,000 kg |
| **Mine/Quarry** | Daily crusher output | 100,000 kg |
| **Phoenix Returns** | Palletized shipment (20 panels) | 308 kg |
| **Internal Generation** | Single production batch | 500 kg |

### 9.2 Sampling Protocol (Per ISO 3082 Adapted)

**Primary Increment Collection:**

1. **Stationary lot (pile/bin):** 30 increments minimum, distributed across 3 vertical sections (top/middle/bottom), 10 increments each section
2. **Moving stream (conveyor/belt):** Cross-stream cutter, 1 increment per 500 kg, minimum 40 increments
3. **Increment mass:** 1 kg minimum (coarse) → 50g analytical subsample

**Sample Preparation (ISO 3082 / ASTM E122):**

```
GROSS SAMPLE (30-40 kg)
       │
       ▼
[RIFFLE SPLITTER] ──► 1/2 ──► [RIFFLE SPLITTER] ──► 1/2 ──► ... (repeat)
       │                    │
       ▼                    ▼
  REJECTED             ANALYTICAL SAMPLE (200g)
                              │
                              ▼
                    [PULVERIZER] → <75 µm (200 mesh)
                              │
                              ▼
                    [SPLIT] → 4 × 50g subsamples
                              │
                              ├──► XRF (10g pressed pellet)
                              ├──► ICP-MS (0.5g acid digest)
                              ├──► XRD (5g powder)
                              └──► Archive (35g, sealed, labeled)
```

### 9.3 Lot Release Decision Matrix

| Assay Result vs. Spec | Action |
|----------------------|--------|
| All parameters within acceptance criteria | **RELEASE** — Blend per algorithm |
| 1-2 minor parameters marginal (within 10% of limit) | **CONDITIONAL RELEASE** — Blend with compensatory feedstock, flag for Stage monitoring |
| Any parameter exceeds rejection threshold | **REJECT** — Return to supplier or segregated hazardous processing |
| NORM >50 µR/hr | **SEGREGATED FEED** — Shielded handling, Stage 7/8 only |
| Asbestos/PCB/Hg/Be detected | **QUARANTINE** — Specialized pre-treatment or disposal |

### 9.4 Lot Documentation & Traceability

Each released lot receives a **Feedstock Lot Record (FLR)** containing:

| Field | Format | Example |
|-------|--------|---------|
| **FLR Number** | FLR-YYYYMMDD-XXX | FLR-20261101-047 |
| **Category** | A/B/C/D + Subcategory | A2-PCB-Grade1 |
| **Source** | Supplier/Facility ID | ERI-Fresno-CA |
| **Mass** | kg (net) | 22,500 kg |
| **Date Received** | ISO 8601 | 2026-11-01T06:00:00Z |
| **Assay Results** | JSON (element: mass%) | {Cu: 24.5, Au: 0.032, ...} |
| **Physical Tests** | JSON | {P80: 112, moisture: 8.2, bulk_density: 1.8} |
| **Hazard Screen** | PASS/FAIL + values | PASS (Hg: 0.3ppm, NORM: 12µR/hr) |
| **Blend Assignment** | Batch ID + mass fraction | BATCH-20261101-03: 15% (75 kg) |
| **Release Authority** | QA Manager ID | QA-MGR-003 |
| **Release Timestamp** | ISO 8601 | 2026-11-01T08:45:00Z |

---

## 10. Storage & Handling

### 10.1 Storage Facility Requirements

| Requirement | Specification | Rationale |
|-------------|---------------|-----------|
| **Building** | Covered, ventilated, impermeable floor (epoxy-coated concrete) | Prevent leachate, dust control |
| **Segregation** | Dedicated bays per category (A/B/C/D) with 3m firebreaks | Cross-contamination prevention, fire safety |
| **Moisture Control** | Category B/C: <60% RH (desiccant dehumidifiers) | Prevent moisture uptake, Stage 1 load |
| **NORM Storage** | Category C (REE concentrates): Shielded bay, 50mm Pb-equivalent | Radiation protection (ALARA) |
| **Hazardous Quarantine** | Locked, ventilated, bermed containment (110% volume) | PCB/Hg/Asbestos/Be isolation |
| **Phoenix Returns** | Indoor, climate-controlled (15-25°C, 40-50% RH) | Preserve ceramic integrity, prevent glaze damage |
| **Stack Height** | Max 3m (loose), 5m (baled/bagged) | Stability, access for sampling |
| **FIFO Enforcement** | Automated inventory management (barcode/QR per lot) | Prevent aging, oxidation, degradation |

### 10.2 Maximum Storage Duration

| Category | Max Duration | Degradation Risk | Monitoring |
|----------|--------------|------------------|------------|
| **A (Electronics)** | 90 days | Battery swelling, connector oxidation, PCB delamination | Monthly XRF spot-check |
| **B (MRF/C&D)** | 30 days | Moisture absorption, mold, polymer degradation | Weekly moisture, visual |
| **B (Tires)** | 180 days | UV degradation (if outdoor), oxidation | Monthly visual, quarterly XRF |
| **C (Mineral/Ore)** | 365 days | Minimal (inert) | Quarterly NORM, moisture |
| **C (Tailings/Red Mud)** | 60 days | Acid generation, drying/cracking | Weekly pH (tailings), moisture |
| **D (Phoenix)** | 180 days | Glaze hydration, fiber oxidation | Monthly visual, quarterly assay |

### 10.3 Handling Equipment (All-Dielectric Constraint)

| Equipment | Material | Specification |
|-----------|----------|---------------|
| **Front-end loader** | BFRP bucket + PEEK wear strips | 3 m³, electric drive (LiFePO₄) |
| **Conveyor belts** | UHMWPE (Dyneema®) carcass, BFRP frame | 1200mm wide, KNbO₃ drive |
| **Forklift** | BFRP mast, PEEK CF40 forks, ceramic bearings | 5 ton, LiFePO₄ |
| **Shredder feed conveyor** | PEEK CF40 slats, BFRP frame | Abrasion resistant, 80°C max |
| **Dust collection** | BFRP ducting, ZrO₂ lined bends, ceramic cyclone | 2000°C rated, all-dielectric |

---

## 11. Mass Balance & Yield Targets

### 11.1 Elemental Recovery Targets by Category

| Element | Category A | Category B | Category C | Category D | Overall Target |
|---------|------------|------------|------------|------------|----------------|
| **Au** | 99% | 80% | 50% | 95% | 95% |
| **Ag** | 99% | 85% | 60% | 95% | 95% |
| **Pd** | 95% | 70% | 50% | 90% | 90% |
| **Cu** | 95% | 90% | 85% | 95% | 95% |
| **Al** | 95% | 90% (UBCs) | 70% | 95% | 90% |
| **Fe** | 95% | 95% | 85% | 95% | 95% |
| **Zn** | 90% | 85% | 80% | 90% | 85% |
| **Pb** | 90% | 85% | 75% | 90% | 85% |
| **Sn** | 90% | 80% | 70% | 90% | 85% |
| **In** | 99% | 70% | 60% | 99.4% | 95% |
| **Ni** | 90% | 85% | 80% | 95% | 90% |
| **Co** | 90% | 80% | 75% | 98% | 90% |
| **Nd** | 90% | 60% | 70% | 95% | 85% |
| **Dy** | 85% | 50% | 65% | 95% | 80% |
| **Y** | 90% | 60% | 70% | 98% | 85% |
| **Zr** | 70% | 50% | 90% | 94% | 85% |
| **Ti** | 60% | 50% | 85% | 90% | 80% |
| **B** | 50% | 40% | 95% | 90% | 80% |
| **REEs (La-Lu, excl. Nd/Dy/Y)** | 85% | 55% | 75% | 95% | 80% |

### 11.2 Stage-by-Stage Mass Balance (Per 500 kg Batch — Typical Blend)

| Stage | Temp Range | Input Mass | Output Stream | Mass | Key Elements Recovered |
|-------|------------|------------|---------------|------|------------------------|
| **0** | Ambient | 500 kg | Liberated powder | 480 kg (96%) | Mineral liberation (no mass loss) |
| **1** | 80-150°C | 480 kg | Water vapor | 45 kg | H₂O, volatile organics |
| | | | Condensed water | 40 kg | Recovered process water |
| **2** | 150-450°C | 435 kg | Polymer slugs | 65 kg | Mixed polymers (PP/PE/PS/PET/PVC) |
| | | | HCl scrubber salts | 3 kg | NaCl (from PVC) |
| **3** | 450-700°C | 367 kg | Char pellets | 35 kg | Carbon (80-95% C) |
| | | | Pyrolysis gas | 15 kg | CO, CO₂, CH₄, H₂ → gas system |
| **4** | 420-900°C | 317 kg | Low-temp metal slugs | 25 kg | In, Sn, Pb, Zn, Bi |
| **5** | 660-720°C | 292 kg | Al slugs | 60 kg | Al alloys (85-97% Al) |
| **6** | 1085-1200°C | 232 kg | Cu/Precious slugs | 20 kg | Cu, Au, Ag, Pd, Pt |
| **7** | 1200-1600°C | 212 kg | Ferrous/REE slugs | 90 kg | Fe, Ni, Co, Nd, Sm, Dy |
| **8** | 1600-2200°C | 122 kg | Mineral concentrate | 105 kg | Zr, Ti, REE oxides, Al₂O₃, SiO₂ |
| **Cool** | 2200→RT | 105 kg | Final slag | 100 kg | Phoenix Protocol feed |

**Overall Mass Recovery:** 500 kg → 430 kg recovered products (86%) + 40 kg water + 30 kg gas

### 11.3 Yield Variability by Feedstock Blend

| Blend Scenario | Category A | Category B | Category C | Category D | Revenue/Batch | Energy/Batch |
|----------------|------------|------------|------------|------------|---------------|--------------|
| **High-Value (E-scrap heavy)** | 30% | 20% | 20% | 30% | $18,500 | 1,850 kWh |
| **Balanced (Standard)** | 20% | 30% | 30% | 20% | $12,800 | 2,100 kWh |
| **Mineral Heavy (Slag/Tailings)** | 10% | 20% | 50% | 20% | $8,200 | 2,400 kWh |
| **Phoenix Heavy (EOL Returns)** | 15% | 15% | 20% | 50% | $14,600 | 1,650 kWh |

---

## 12. Economic Valuation Model

### 12.1 Feedstock Acquisition Cost (2026 USD/metric ton)

| Category | Subcategory | Acquisition Cost | Transport (avg 200 mi) | Total Delivered Cost |
|----------|-------------|------------------|------------------------|---------------------|
| **A1** | Consumer Electronics | $200-400/t | $25/t | $225-425/t |
| **A2** | PCB Grade 1 | $1,500-2,500/t | $30/t | $1,530-2,530/t |
| **A2** | PCB Grade 2 | $800-1,500/t | $30/t | $830-1,530/t |
| **A2** | PCB Grade 3 | $300-800/t | $30/t | $330-830/t |
| **A3** | Motors/Drives | $500-1,200/t | $25/t | $525-1,225/t |
| **A4** | Power Electronics | $400-800/t | $25/t | $425-825/t |
| **B1** | MRF Residue | -$50 to +$50/t (tipping fee credit) | $20/t | -$30 to +$70/t |
| **B2** | C&D Debris | -$30 to +$20/t | $15/t | -$15 to +$35/t |
| **B3** | Bulky Waste | -$20 to 0/t | $20/t | 0 to +$20/t |
| **B4** | Tire Rubber | $50-150/t | $25/t | $75-175/t |
| **C1** | Ferrous Slag | $5-20/t | $15/t | $20-35/t |
| **C1** | Non-Ferrous Slag (Cu, Ni) | $100-400/t | $20/t | $120-420/t |
| **C2** | Tailings | -$10 to +$10/t (site cost) | $10/t | 0 to +$20/t |
| **C3** | Red Mud | -$5 to +$5/t | $15/t | $10-20/t |
| **C4** | Spent Refractories | $50-200/t | $25/t | $75-225/t |
| **D1** | Aegis-C Panels | $0 (take-back credit) | $30/t | $30/t |
| **D2** | BFRP Structures | $0 (take-back credit) | $25/t | $25/t |
| **D3** | MR Fluid | $0 (take-back credit) | $20/t | $20/t |
| **D4** | Piezo Elements | $0 (take-back credit) | $15/t | $15/t |

**Note:** Negative costs indicate tipping fees paid TO the facility (revenue). Phoenix Protocol returns have zero acquisition cost but incur collection/logistics cost.

### 12.2 Processing Cost per Batch (500 kg)

| Cost Element | High-Value Blend | Balanced Blend | Mineral Heavy | Phoenix Heavy |
|--------------|------------------|----------------|---------------|---------------|
| **Electricity (Induction + Aux)** | 1,850 kWh × $0.08 = $148 | 2,100 kWh × $0.08 = $168 | 2,400 kWh × $0.08 = $192 | 1,650 kWh × $0.08 = $132 |
| **N₂/Ar Gas** | $85 | $95 | $110 | $75 |
| **NaHCO₃ (PVC neutralization)** | $12 | $25 | $8 | $15 |
| **CBPC Binder (tailings)** | $0 | $15 | $45 | $10 |
| **Solvolysis Energy (D2)** | $0 | $0 | $0 | $45 |
| **Labor (2 operators × 4 hr)** | $200 | $200 | $200 | $200 |
| **Maintenance Allocation** | $120 | $120 | $120 | $120 |
| **Analytical/QC** | $80 | $80 | $80 | $80 |
| **TOTAL PROCESSING COST** | **$645** | **$703** | **$795** | **$677** |
| **Cost per kg Feed** | $1.29 | $1.41 | $1.59 | $1.35 |

### 12.3 Revenue per Batch (500 kg) — 2026 Commodity Prices

| Element | Price ($/kg) | High-Value Blend (kg) | Revenue | Balanced Blend (kg) | Revenue |
|---------|--------------|----------------------|---------|---------------------|---------|
| Au | 95,000 | 0.15 | $14,250 | 0.08 | $7,600 |
| Ag | 1,200 | 1.2 | $1,440 | 0.7 | $840 |
| Pd | 65,000 | 0.08 | $5,200 | 0.04 | $2,600 |
| Cu | 9.50 | 95 | $902.50 | 65 | $617.50 |
| Al | 2.30 | 65 | $149.50 | 45 | $103.50 |
| Fe | 0.35 | 180 | $63 | 220 | $77 |
| Zn | 2.80 | 18 | $50.40 | 12 | $33.60 |
| In | 320 | 0.8 | $256 | 0.4 | $128 |
| Nd | 70 | 2.5 | $175 | 1.5 | $105 |
| Dy | 400 | 0.3 | $120 | 0.15 | $60 |
| Y | 47 | 1.2 | $56.40 | 0.7 | $32.90 |
| Co | 35 | 1.5 | $52.50 | 0.8 | $28 |
| ZrO₂ | 45 | 8 | $360 | 15 | $675 |
| TiO₂ | 8 | 12 | $96 | 25 | $200 |
| **TOTAL REVENUE** | — | — | **$23,171** | — | **$13,101** |

**Net Margin per Batch:**
- High-Value: $23,171 - $645 - $3,200 (feed cost) = **$19,326** (9.6% of revenue)
- Balanced: $13,101 - $703 - $1,800 (feed cost) = **$10,598** (12.5% of revenue)
- Mineral Heavy: $8,400 - $795 - $400 (feed cost) = **$7,205** (14.5% of revenue)
- Phoenix Heavy: $14,800 - $677 - $300 (collection) = **$13,823** (17.2% of revenue)

### 12.4 Sensitivity Analysis

| Variable | -20% Impact | Base Case | +20% Impact |
|----------|-------------|-----------|-------------|
| **Au Price** | -$2,850/batch | — | +$2,850/batch |
| **Cu Price** | -$180/batch | — | +$180/batch |
| **Electricity Cost** | +$130/batch | — | -$130/batch |
| **Feed Cost (Category A)** | +$640/batch | — | -$640/batch |
| **In Recovery (99%→95%)** | -$128/batch | — | N/A |
| **Zr Recovery (85%→75%)** | -$432/batch | — | N/A |

---

## 13. Cross-Reference Matrix

### 13.1 Upstream Document Dependencies

| This Document Section | Depends On | Document | Section |
|----------------------|------------|----------|---------|
| 1.1 Document Identification | Project numbering system | PROD-01 | 1.1 |
| 2-5 Category Definitions | Source feedstock tables | Vol 1 | Section 6 |
| 6 Pre-Processing Requirements | Pre-processing flow | PROD-11 | Section 2 |
| 6.1 Universal Flow | Shredder, ferrous separation | PROD-11 | Section 2-3 |
| 6.2 Category-Specific | Acoustic pre-chamber specs | PROD-14 | Section 2-7 |
| 6.3 Sizing | Shredder output specs | PROD-11 | Section 3 |
| 6.4 Drying | Stage 1 IR drying capacity | PROD-14 | Section 8-10 |
| 7 Analytical Protocols | Material specs | PROD-12 | Section 2-4 |
| 7.3 On-Line Analysis | FBG, XRF integration | PROD-10 | Section 4, 5 |
| 8 Acceptance Criteria | Stage capacity limits | PROD-02 | Section 1.1 |
| 9 Sampling | ISO 3082 baseline | — | — |
| 10 Storage | Material handling | PROD-11 | Section 2.1 |
| 11 Mass Balance | Stage parameters | PROD-02 | Sections 2-9 |
| 12 Economics | Material values | PROD-12 | Part D, E |
| 13 Cross-References | All above | — | — |

### 13.2 Downstream Document Dependencies

| This Document Section | Enables | Document | Section |
|----------------------|---------|----------|---------|
| 2-5 Category Specs | Feedstock blending algorithm | PROD-11 | Section 1.5 |
| 6 Pre-Processing | Drum feed preparation | PROD-14 | Section 1 |
| 7 Analytical Protocols | Process control inputs | PROD-23 | Section 3 |
| 8 Acceptance Criteria | Safety interlocks | PROD-23 | Section 5 |
| 9 Lot Release | Traceability, quality records | PROD-28 | Section 2 |
| 10 Storage | Logistics planning | PROD-33 | Section 2 |
| 11 Mass Balance | Stage design validation | PROD-15, 16, 17, 18, 19, 20, 21 | All |
| 12 Economics | Viability assessment | PROD-31 | Section 3 |
| 13 Cross-References | Integration verification | PROD-15 | Section 13 |

### 13.3 Follow-Up Document Linkages

| Follow-Up Document | Linked From This Section | Purpose |
|--------------------|-------------------------|---------|
| **FOLLOW-01** | Section 2-5 (ZrB₂-SiC feed) | Drum material deep-dive |
| **FOLLOW-03** | Section 6.2 (Stage 0 acoustic) | Acoustic transducer optimization |
| **FOLLOW-05** | Section 10 (BFRP storage) | Vessel filament winding |
| **FOLLOW-06** | Section 8.3 (Gas contaminants) | Gas scrubber chemistry |
| **FOLLOW-12** | Section 6.3 (Shredder sizing) | Shredder blade wear life |
| **FOLLOW-14** | Section 2.2 (In from LCDs) | Indium electrolysis refining |
| **FOLLOW-15** | Section 4.2, 5.2 (REE from slag/panels) | REE hydromet recovery |
| **FOLLOW-16** | Section 4.3 (Zircon from red mud) | Zircon dissociation kinetics |
| **FOLLOW-17** | Section 3.2 (Polymer distribution) | Polymer melt rheology |
| **FOLLOW-18** | Section 11.2 (Char from Stage 3) | Char activation protocol |
| **FOLLOW-19** | Section 2.2 (PM from PCBs) | Precious metal electrorefining |
| **FOLLOW-21** | Section 11.2 (Stage 8 mineral) | Mineral slag hydrometallurgy |
| **FOLLOW-22** | Section 8.3 (Emissions limits) | Dust & fume capture efficiency |
| **FOLLOW-23** | Section 12.2 (Energy balance) | Energy balance & exergy analysis |
| **FOLLOW-24** | Section 12 (Economic model) | LCA & carbon footprint |
| **FOLLOW-31** | Section 3-4 (Alt feedstocks) | Alternative feedstock validation |
| **FOLLOW-38** | Section 5 (Phoenix returns) | Urban mining logistics |
| **FOLLOW-39** | Section 12 (Economics) | Policy & incentive framework |

---

## 14. Appendices

### Appendix A: Feedstock Category Quick-Reference Card

| Category | Subcategories | Key Value Elements | Primary Stages | Blending Range | Pre-Processing Complexity |
|----------|---------------|-------------------|----------------|----------------|---------------------------|
| **A** | A1: Electronics, A2: PCBs, A3: Motors, A4: Power Elec | Au, Ag, Pd, Cu, REE, In | 4, 5, 6, 7 | 15-30% | High (hazards, battery removal) |
| **B** | B1: MRF, B2: C&D, B3: Bulky, B4: Tires | Al, Fe, Cu, Polymers, Zn | 1, 2, 3, 4, 7 | 20-40% | Medium (contaminants, sorting) |
| **C** | C1: Slag, C2: Tailings, C3: Red Mud, C4: Refractories | Zr, Ti, REE, B, Fe, Mg | 7, 8 | 25-40% | Medium-High (agglomeration, neutralization) |
| **D** | D1: Aegis-C, D2: BFRP, D3: MR Fluid, D4: Piezo | In, Y, Co, Zr, Basalt, Elium® | 1, 2, 3, 7, 8 | 10-20% | Low-Medium (known composition, solvolysis) |

### Appendix B: Hazardous Material Quick-Reference

| Hazard | Category | Detection | Immediate Action | Final Disposition |
|--------|----------|-----------|------------------|-------------------|
| Li-ion Battery | A | X-ray, density | Remove manually | LiFePO₄ recovery line |
| Mercury | A | XRF, CV-AAS | Segregate | Stage 1 Hg capture |
| PCB (Aroclor) | A, B | GC-MS | Segregate | Stage 3 thermal destruction |
| Asbestos | B | PLM | Wet suppress, seal | Stage 8 slag capture |
| NORM | C | Gamma spec | Shielded feed | Stage 7/8 co-collection |
| Beryllium | A | XRF | Segregate | Stage 6 capture |
| Cyanide | C | Colorimetric | Alkaline chlorination | Destroyed pre-drum |
| Free Liquid | All | Visual, gravimetric | Drain/pre-dry | Water recovery Stage 1 |

### Appendix C: Blend Algorithm Input Template (JSON)

```json
{
  batch_id: BATCH-20261101-03,
  target_mass_kg: 500,
  available_feedstocks: [
    {lot_id: FLR-20261101-047, category: A2, mass_kg: 22500, assay: {Cu: 24.5, Au: 0.032, Ag: 0.18, Pd: 0.015}, cost_per_kg: 1.85},
    {lot_id: FLR-20261101-048, category: B1, mass_kg: 50000, assay: {Al: 8.5, Fe: 12.0, polymers: 35}, cost_per_kg: -0.02},
    {lot_id: FLR-20261101-049, category: C1, mass_kg: 100000, assay: {Fe: 28.0, Mn: 6.0, TiO2: 1.2}, cost_per_kg: 0.025},
    {lot_id: FLR-20261101-050, category: D1, mass_kg: 5000, assay: {Zr: 12.0, In: 0.004, Y: 0.0027, Co: 0.084}, cost_per_kg: 0.03}
  ],
  constraints: {
    stage2_polymer_volume_L: 50,
    stage5_Al_mass_kg: 100,
    stage7_Fe_mass_kg: 175,
    stage8_mineral_mass_kg: 200,
    moisture_pct: 25,
    particle_P80_mm: 150
  },
  market_prices: {Au: 95000, Ag: 1200, Pd: 65000, Cu: 9.50, Al: 2.30, In: 320, Nd: 70, Dy: 400, Co: 35}
}
```

### Appendix D: Revision History

| Rev | Date | Author | Changes |
|-----|------|--------|---------|
| 1.0 | 2026-11-01 | CSM Fabrication Division | Initial release — complete feedstock specification for Aegis-Forge I |

---

*End of PROD-13: Feedstock Specifications (Categories A-D, Pre-Processing)*
*CSMFAB000000000113 — Product Document 13 of 40*
*Next: PROD-14 — Stage 0-1: Acoustic & Drying*