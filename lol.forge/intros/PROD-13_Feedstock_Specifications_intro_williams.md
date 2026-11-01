# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-13 — Feedstock Specifications (Categories A-D, Pre-Processing)

---

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
4. **Phoenix Protocol Primacy** — Category D feedstocks (known composition, zero acquisition cost) are the anchor for blend stability. The forge's circularity is not aspirational — it is the blending baseline.
5. **Lot Traceability** — Every kg from gate to slug is traced via Feedstock Lot Record (FLR) with ISO 3082 sampling, XRF/ICP-MS/XRD characterization, and blend assignment. The element's journey is recorded.
6. **Economic Viability Floor** — Processing cost <$1.60/kg feed; revenue >$8,000/batch minimum. The economics are not post-hoc — they are the design constraint.

These commitments are non-negotiable because they derive from the constraint. Violate any, and the cascade fails: uncharacterized feedstock smears stage boundaries; unrecovered hazards poison downstream stages; untraced lots break the Phoenix loop; uneconomic batches shutter the forge. The commitments *are* the constraint made operational. The feedstock specification *is* the machine's immune system.
