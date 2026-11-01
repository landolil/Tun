## 2. Feedstock Categories A-D — Input Specification

The Aegis-Forge I accepts four fundamentally distinct feedstock categories. Each category has different pre-processing requirements, thermal behavior, and downstream routing. The feed preparation system must handle all four without cross-contamination.

### 2.1 Category A — Electronics and PCBs

**Composition:**
- Printed circuit boards: FR4 glass-epoxy laminate (SiO2 reinforcement → slag, Cu traces → Stage 6, Sn/Pb solder → Stage 4, Au/Ag/Pd traces → Stage 6)
- Smartphones, tablets, laptops: Al chassis (Stage 5), Li-ion batteries (pre-removed), rare earth magnets (NdFeB → Stage 7 recovery)
- Motors and drives: Cu windings (Stage 6), Fe stators (Stage 7), rare earth rotor magnets (Stage 7)

**Pre-processing requirements:**
- Battery removal (manual or automated vision sort) — Li-ion cells are explosion hazard in shredder
- PCB depopulation optional — whole boards shredded; components liberate in Stage 0 acoustic
- Ferrous pre-separation critical: motor stators, transformer cores removed at 1.2T belt
- Target particle size: <50 mm for PCB fragments (enhances Stage 0 liberation)

**Mass fraction (typical mixed e-waste):** 15-25% of input

### 2.2 Category B — Structural Metals and Alloys

**Composition:**
- Aluminum extrusions, castings: 6061, 2024, A356 die-cast (Stage 5, 660-720°C)
- Copper pipe, wire, busbar: 99.9% Cu (Stage 6, 1085-1200°C)
- Steel and iron scrap: rebar, plate, structural (Stage 7, 1200-1600°C)
- Zinc die-cast: Zamak 3, 5 (Stage 4, 420°C)
- Mixed assemblies: Al/steel riveted, Cu/Al bimetal lugs

**Pre-processing requirements:**
- Ferrous pre-separation removes >90% of steel/iron mass at magnet belt
- Non-ferrous metals pass to shredder — size reduction critical for thermal ramp rate
- Large castings (engine blocks, transmission cases) require primary crushing before shredder
- Target particle size: <100 mm for structural metals (faster induction coupling)

**Mass fraction (typical industrial scrap):** 30-50% of input

### 2.3 Category C — Rock, Ore, and Mineral Concentrates

**Composition:**
- Basalt rock aggregate: SiO2 45-55%, Al2O3 12-17%, FeOx 9-15% (basalt fiber feedstock)
- Zircon sand concentrate: ZrSiO4 → ZrO2 extraction (Stage 8, 1676°C dissociation)
- Rare earth oxide concentrate: Monazite (Ce,La,Nd,Th), bastnäsite (Stage 7/8 RE recovery)
- Ilmenite sand: FeTiO3 → TiO2 extraction (Stage 7 Fe + Stage 8 Ti)
- Borax ore: Na2B4O7 → B2O3 for ZrB2 synthesis (Stage 8)

**Pre-processing requirements:**
- No ferrous pre-separation needed (minerals are non-magnetic except ilmenite)
- Primary crushing to <150 mm typically done at mine/quarry
- Acoustic pre-chamber (Stage 0) critical: liberates mineral grains from rock matrix
- Moisture check essential: ore concentrates often >10% free moisture
- Target particle size: <75 mm for mineral concentrates (optimizes Stage 0 liberation)

**Mass fraction (mineral feedstock runs):** 20-40% of input

### 2.4 Category D — Phoenix Protocol Returns (Aegis Product EOL)

**Composition:**
- Retired Aegis-C panels: ZrB2-SiC ceramic + aerogel + YInMn Blue glaze (Stage 8 mineral recovery)
- End-of-life BFRP structural components: Basalt/Elium® composite (pyrolysis → Stage 3 char + Stage 1 vapor)
- Spent MR fluid: Iron carbonyl suspension in carrier oil (Stage 7 Fe recovery, Stage 3 organics)
- Old KNbO3-BaTiO3 piezo elements: K, Nb, Ba, Ti recovery (Stage 8 mineral)

**Pre-processing requirements:**
- Known composition — no sorting surprises, but material is already ceramic/composite
- Shredder must handle ZrB2-SiC (hardness ~25 GPa) — BFRP blade wear accelerated
- BFRP components pyrolyze cleanly in Stage 3 (Elium® depolymerizes at 350°C)
- No ferrous pre-separation needed (Aegis products are zero-metal by design)
- Target particle size: <50 mm for ceramic panels (enhances Stage 8 dissociation)

**Mass fraction (closed-loop operation):** 5-15% of input

---

### 2.5 Feedstock Summary Table

| Parameter | Category A (Electronics) | Category B (Structural Metals) | Category C (Minerals) | Category D (Phoenix Returns) |
|-----------|-------------------------|--------------------------------|----------------------|------------------------------|
| **Typical Mass %** | 15-25% | 30-50% | 20-40% | 5-15% |
| **Ferrous Content** | 10-20% (motors, frames) | 40-70% (steel/iron) | 0-15% (ilmenite) | 0% (by design) |
| **Target Particle Size** | <50 mm | <100 mm | <75 mm | <50 mm |
| **Moisture Typical** | <5% | <2% | 5-15% | <1% |
| **Pre-dry Trigger** | >25% | >25% | >25% | >25% |
| **Stage 0 Liberation** | Critical (PCB delam) | Moderate | Critical (grain boundary) | Moderate |
| **Hazard Items** | Li-ion batteries | Large castings, pressure vessels | None | None |
| **Downstream Stages** | 3, 4, 5, 6, 7 | 4, 5, 6, 7 | 0, 1, 8 | 3, 8 |

---
