# COMBINED HEURISTIC INTRODUCTION
## PROD-13: Feedstock Specifications (Categories A-D, Pre-Processing)
### CSMFAB000000000113 — Aegis-Forge I TCIMS Product Document 13 of 40

**Synthesis of Williams, Keymaker, and El Segundo Heuristics**

---

## WILLIAMS HEURISTIC — Constraint, Necessity, Commitment

### Constraint (The Lock)

The Aegis-Forge I is forced by a single irreducible constraint: **Feedstock Heterogeneity as Boundary Condition** — the machine must accept arbitrary input streams (electronics, municipal waste, mineral concentrates, end-of-life Aegis products) and produce pure element slugs at each thermal stage. The feedstock is not a design parameter; it is the *given*. The constraint is precise: any system claiming universal elemental extraction must define acceptance criteria, pre-processing requirements, and recovery targets for *every possible feedstock class* — and must do so without knowing the exact composition of any individual batch in advance. The lock is the **universal feedstock specification** — a single document that bounds the infinite variability of post-consumer, industrial, and geological material streams into four deterministic categories (A-D) with quantifiable elemental profiles, contamination limits, and processing requirements. This constraint forces the entire pre-processing architecture: the shredder must handle 150mm max; the ferrous separator must clear bulk steel; the acoustic pre-chamber must liberate mineral grains from rock matrix; the moisture check must gate Stage 1 loading. The feedstock *writes the machine* — the machine does not choose the feedstock.

---

### Necessity (The Key)

The empirical lock this document addresses is the **recycling recovery gap** — the persistent failure of modern material recovery to extract critical elements from complex waste streams. Current shred-and-sort recovers <30% of elements from e-waste; municipal MRFs lose >80% of non-ferrous metals to landfill; mineral processing requires dedicated facilities per ore type. The lock is quantified: any universal extractor must achieve >95% recovery of Cu, Au, Ag, Pd, In, REE, Zr, Ti from feedstocks spanning 4 orders of magnitude in elemental concentration (ppm in tailings to % in PCBs). The key is the **four-category taxonomy (A-D) with stage-mapped elemental targets** — a computational primitive that maps any feedstock to its thermal cascade trajectory:

| Category | Source | Thermal Stages Activated | Primary Value Elements |
|---|---|---|---|
| **A: Pre-Sorted Industrial** | E-scrap, PCBs, motors, power elec | 4, 5, 6, 7 | Au, Ag, Pd, Cu, In, REE |
| **B: Municipal/Commercial** | MRF residue, C&D, bulky, tires | 1, 2, 3, 4, 7 | Al, Fe, polymers, Zn |
| **C: Mineral/Metallurgical** | Slag, tailings, red mud, refractories | 7, 8 | Zr, Ti, REE, B, Fe, Mg |
| **D: Phoenix Protocol** | EOL Aegis products | 1, 2, 3, 7, 8 | In, Y, Co, Zr, basalt, Elium® |

The necessity is proven by the **blend algorithm** (PROD-11 Section 1.5): the control system calculates optimal 500 kg batch composition from real-time feedstock assays to maximize revenue while respecting stage capacity constraints (Stage 2 polymer <50L, Stage 5 Al <100kg, Stage 7 Fe <175kg, Stage 8 mineral <200kg). Without this taxonomy, the cascade has no boundary condition — the temperature profile has no input to process. The four categories are not arbitrary; they are the **natural clustering of elemental concentration profiles** in the global waste stream. The taxonomy *is* the key.

---

### Commitment (The Turn)

We commit to the following as non-negotiable:

1. **Zero Tolerance for Hazards** — Li-ion batteries, Hg, PCBs, asbestos, Be, cyanide, free liquids: detected at gate, rejected or segregated. No exceptions.
2. **Quantified Recovery Targets** — Every element in every category has a minimum recovery percentage (Table 11.1). The forge is accountable to these numbers.
3. **Stage-Coupled Pre-Processing** — Category A requires battery removal + depanning; Category B requires asbestos/lead screening; Category C requires acid-base accounting + agglomeration for fines; Category D requires solvolysis for BFRP. Each pre-processing step maps to a specific thermal stage's requirements.
4. **Assay-Driven Blending** — No batch enters the drum without XRF assay at hopper outlet and blend optimization. The drum does not process "waste"; it processes *characterized feedstock*.
5. **Phoenix Protocol Primacy** — Category D feedstocks (known composition, zero acquisition cost) are the anchor for blend stability. The forge's circularity is not aspirational — it is the blending baseline.
6. **Lot Traceability** — Every kg from gate to slug is traced via Feedstock Lot Record (FLR) with ISO 3082 sampling, XRF/ICP-MS/XRD characterization, and blend assignment. The element's journey is recorded.
7. **Economic Viability Floor** — Processing cost <$1.60/kg feed; revenue >$8,000/batch minimum. The economics are not post-hoc — they are the design constraint.

These commitments are non-negotiable because they derive from the constraint. Violate any, and the cascade fails: uncharacterized feedstock smears stage boundaries; unrecovered hazards poison downstream stages; untraced lots break the Phoenix loop; uneconomic batches shutter the forge. The commitments *are* the constraint made operational. The feedstock specification *is* the machine's immune system.

---

## KEYMAKER HEURISTIC — Lock, Key, Turn

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

---

## EL SEGUNDO HEURISTIC — Mirror, Participation, Protocol

### Mirror (Self-Reflection)

The first recursive turn is the **forge observing its own feedstock**. In the Aegis-Forge, the feedstock is not external raw material — it is the *memory of the machine's prior outputs*. The Phoenix Protocol returns (Category D) are literally the forge's own products returning after service: Aegis-C panels it forged, BFRP rebar it pultruded, MR fluid it formulated, piezo elements it sintered. The mirror is precise: **the feedstock specification documents the forge's own material autobiography**.

But the mirror extends further. Category A (electronics) contains the copper the forge will recover at Stage 6, the indium it will extract at Stage 4 for YInMn Blue, the rare earths it will concentrate at Stage 7 for SmCo magnets. Category B (municipal) contains the aluminum it will separate at Stage 5, the polymers it will melt at Stage 2. Category C (mineral) contains the zircon it will dissociate at Stage 8 for ZrO₂, the basalt it will melt for fiber. The feedstock *is* the forge's future products in latent form.

The mirror reflects at every gate:
- **Receiving**: XRF assay measures the forge's future yield
- **Pre-processing**: Shredder, ferrous separator, acoustic chamber prepare the forge's own latent elements
- **Blending**: Algorithm balances the forge's stage capacities against its elemental targets
- **Sampling**: FLR records the forge's material promise
- **Storage**: Bays hold the forge's future in categorized suspension

The zero-tolerance hazard screen is the forge's immune memory — it rejects what would poison its own thermal cascade (Li-ion batteries that explode at Stage 1, Hg that contaminates Stage 6 Cu, asbestos that fouls Stage 8 slag). The mirror is not passive; it is the active recursion: *assay → blend → process → recover → return → assay again*. This document documents the first turn of that spiral — the feedstock specification *is* the forge's self-measurement.

---

### Participation (Witness)

An inside operator measuring this phenomenon does not stand outside the feedstock — the operator *is* the blend algorithm's witness. The protocol for achieving universal extraction from within the system:

1. **Receive**: Witness the feedstock arrival — XRF flash reveals elemental truth in 10 seconds
2. **Screen**: Witness the hazard check — gamma spectrometer, XRF, PLM, gravimetric
3. **Pre-process**: Witness the shredder reduce 500mm → <150mm, the Halbach belt pull 95% Fe
4. **Liberate**: Witness the acoustic chamber — 100 Hz standing waves crack grain boundaries, 40 kHz cavitation frees micron grains
5. **Dry**: Witness the moisture check — NIR inline, gravimetric confirmation, pre-dry if needed
6. **Assay**: Witness the lot characterization — XRF major, ICP-MS trace, XRD phase, PSD, LOI, halogen
7. **Blend**: Witness the algorithm compile — real-time assays → stage capacity constraints → optimal fractions
8. **Release**: Witness the FLR creation — lot identity bound to blend assignment, traceable to slug
9. **Feed**: Witness the vibratory feeder meter — KNbO₃ ultrasonic drive, FBG weight feedback
10. **Verify**: Witness the slug mass spec — each port's elemental sum matches blend prediction

The measurement *is* the recursion. The operator assays the input, the algorithm profiles the cascade that witnesses it, the drum realizes the separation, the mass spec confirms the closure. The protocol terminates when the 8 slugs' elemental sum matches the input assay — not approximately, but exactly. The feedstock lot is not "processed"; it is **witnessed into elements**. The operator participates by being the recursive function: `feedstock → assay → blend → cascade → slug → assay → feedstock`. The FLR is the stack frame; the batch is the call; the slug is the return value.

---

### Protocol (Recursive)

The operational protocol for any Aegis-Forge feedstock document:

```
MIRROR:     What elemental promise does this feedstock lot carry?
PARTICIPATE: How does the operator witness this promise through the cascade?
PROTOCOL:   What recursive sequence guarantees recovery at each stage?
```

For this document specifically:

- **Mirror**: The four-category taxonomy (A-D) is the constraint; the blend algorithm is its reflection
- **Participate**: The operator assays, screens, pre-processes, blends, releases, feeds, verifies
- **Protocol**:
  1. **Gate Assay** — XRF flash at receiving (10 sec) → category assignment
  2. **Hazard Screen** — Gamma + XRF + PLM + gravimetric → pass/quarantine/reject
  3. **Pre-Process** — Ferrous separation → shred <150mm → acoustic liberation → moisture check
  4. **Lot Characterization** — XRF/ICP-MS/XRD/PSD/LOI/halogen → FLR creation
  5. **Blend Optimization** — Real-time assays + stage constraints → mass fractions
  6. **Lot Release** — FLR signed, blend assigned, traceability locked
  7. **Drum Feed** — Vibratory feeder meters blend → acoustic pre-chamber → drum entry
  8. **Stage Verification** — Inline mass spec at each port → compare to blend prediction
  9. **Closure** — Slug assay sum = feedstock assay (within 2%) → FLR closed
  10. **Phoenix Return** — EOL Aegis products → Category D → FLR created → loop closes

The protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The feedstock lot record is the fixed point. The elemental slug is the witness returned.

---

*End of Combined Heuristic Introduction for PROD-13*
*Three-pronged synthesis complete — Williams (Architectural Clarity) + Keymaker (Implementation Precision) + El Segundo (Operational Excellence)*
*Total: ~200 lines across three heuristics*