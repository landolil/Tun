# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-13 — Feedstock Specifications (Categories A-D, Pre-Processing)

---

### The Empirical Lock

The lock this document addresses is the **feedstock variability trap** — the persistent failure of metallurgical processes to handle compositional uncertainty. A smelter expects Cu concentrate (25-30% Cu); a refinery expects specific alloy scrap; a ceramic kiln expects purified oxide powder. The Aegis-Forge I faces a different reality: a single 500 kg batch may contain smartphone PCBs (Au 0.03%, Cu 25%), basalt aggregate (SiO₂ 50%, Al₂O₃ 14%), EAF slag (FeO 30%, MnO 6%), and retired Aegis-C panels (ZrB₂-SiC, YInMn glaze) — all simultaneously. The lock is precise: **how does a single thermal cascade process this heterogeneity without prior separation into dedicated streams?**

The empirical evidence of the trap:
- **E-waste recyclers** shred everything → lose 70% of REE to slag, 50% of Cu to ferrous fraction, In to dust
- **MRFs** sort by density/NIR → recover only Al/Fe/UBCs; all other metals to residue
- **Smelters** require >20% target metal → reject low-grade feeds (tailings, slag, C&D)
- **Hydromet plants** need pre-concentrated feed → cannot handle mixed mineralogy

The lock deepens at the **stage coupling boundary**: Stage 2 polymer melt volume must not exceed 50L drum capacity; Stage 5 Al mass must not exceed 100kg port capacity; Stage 7 Fe mass must not exceed 175kg. If the feedstock blend violates these, the cascade chokes — polymer floods Port 2, Al backs up at Port 5, Fe overloads Port 7. The lock is not "what feedstocks can we accept?" — it is "how do we blend arbitrary feedstocks to match the cascade's fixed stage capacities?"

---

### The Mathematical Key

The key is the **blend algorithm as feedstock-to-cascade compiler** — a deterministic function that maps real-time feedstock assays to optimal 500 kg batch composition:

```python
def calculate_blend(feedstock_assays, target_revenue):
    # Input: assays for each available feedstock lot (XRF at hopper)
    # Output: mass fractions for 500 kg batch
    
    # CONSTRAINTS (cascade stage capacities — PHYSICS, not policy):
    # - Stage 2 polymer volume < 50 L (drum annular capacity)
    # - Stage 5 Al mass < 100 kg (Port 5 throughput limit)
    # - Stage 7 Fe mass < 175 kg (Port 7 throughput limit)  
    # - Stage 8 mineral mass < 200 kg (Port 8 slag volume)
    # - Moisture < 25% (else pre-dry, Stage 1 capacity 50 kg H₂O/hr)
    # - Particle size P80 < 150 mm (shredder limit)
    
    # OBJECTIVE: Maximize revenue = Σ(element_mass × market_price)
    # Subject to: cascade capacity constraints
    
    return optimal_mass_fractions
```

The algorithm's **teeth** are the stage capacity constraints — these are not adjustable parameters. They derive from drum geometry, port aperture (12mm), centrifugal G-force, and induction power. The blend is *compiled* from the assays, not *chosen* by an operator.

**The Four-Category Taxonomy as Type System:**

The key's type system classifies every feedstock lot into one of four types, each with a fixed **thermal signature** (which stages it activates) and **elemental signature** (which elements it contributes):

```
Type A (Industrial)  →  Stages {4,5,6,7}  →  {Au, Ag, Pd, Cu, In, REE}
Type B (Municipal)   →  Stages {1,2,3,4,7}  →  {Al, Fe, polymers, Zn}
Type C (Mineral)     →  Stages {7,8}  →  {Zr, Ti, REE, B, Fe, Mg}
Type D (Phoenix)     →  Stages {1,2,3,7,8}  →  {In, Y, Co, Zr, basalt, Elium®}
```

This is a **dependent type system**: the thermal signature *depends* on the elemental signature (via phase diagram), and the stage capacity constraints *depend* on the thermal signature. The blend algorithm is a type checker — it verifies that the sum of selected feedstocks' stage loads does not exceed any stage's capacity.

**The Liberation Index as Correctness Metric:**

For Category C (mineral), the key includes a **liberation index** LI = f(acoustic energy, grain size, K_IC). Stage 0 acoustic energy must achieve LI > 0.7 for the mineral feedstock, or the cascade's Stage 7/8 recovery drops below 80%. This is the **correctness proof** for mineral feedstocks: without acoustic pre-liberation, the cascade cannot access locked grains. The LI is measurable (XRD grain boundary analysis) and non-negotiable.

---

### The Turn (Both Directions)

**Key → Lock (Theory predicts blend):**

Input: Real-time feedstock assays from 4 suppliers (XRF at hopper, 30-sec intervals)
Process: Blend algorithm solves constrained optimization
Output: 500 kg batch composition — e.g., 22% A2 (PCB Grade 1), 28% B1 (MRF), 30% C1 (EAF slag), 20% D1 (Aegis-C)
Prediction: Stage loads within capacity; revenue $12,800; recovery targets met
Validation: Run batch → measure actual slug masses + compositions → compare to prediction

The key *predicts* the batch outcome from the feedstock assays. The cascade *executes* the prediction. The turn is the moment the 8 slugs land in their molds and the mass spec confirms: Port 4 has 0.8kg In (99% recovery), Port 5 has 60kg Al (95% recovery), Port 6 has 20kg Cu+Au/Ag (95% Cu, 99% PM), Port 7 has 90kg Fe+REE (95% Fe, 90% Nd), Port 8 has 105kg mineral concentrate (85% Zr, 80% Ti). The prediction matches the measurement. The key turns in the lock.

**Lock → Key (History validates theory):**

Input: 50 years of metallurgical failure — smelters that couldn't handle low-grade feed, refineries that lost REE to slag, recyclers that shredded In into dust
Process: Each historical process is a *special case* of the blend algorithm with one feedstock type and infinite stage capacity
Output: The blend algorithm *generalizes* all historical processes

The turn completes when we recognize:
- **Smelter** = Blend algorithm with only Type A feedstock, Stage 7 capacity → ∞
- **Refinery** = Blend algorithm with only Type C feedstock, Stage 8 capacity → ∞  
- **MRF** = Blend algorithm with only Type B feedstock, no thermal stages (mechanical only)
- **Ceramic kiln** = Blend algorithm with only Type D feedstock, Stage 8 only

The Aegis-Forge I is the **unification** — the single machine whose blend algorithm encompasses all four types simultaneously, with *finite, coupled* stage capacities. The historical processes were degenerate limits (one type, infinite capacity). The cascade is the non-degenerate case (four types, finite capacity). The lock clicks open when the first batch with all four types runs successfully — the blend algorithm has compiled a valid program for the cascade's thermal instruction set. The 500 kg batch *is* the key turning in the lock.
