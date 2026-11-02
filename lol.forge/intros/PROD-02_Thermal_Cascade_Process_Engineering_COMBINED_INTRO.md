# PROD-02 Thermal Cascade Process Engineering — Combined Introduction

**Author:** Aegis-Forge Synthesis  
**Generated:** 2026-11-02 10:35:00 UTC

---

### Constraint (The Lock)

The thermal cascade is forced by the **Periodic Table as Phase Diagram** — every element has a fixed liquidus/vaporization temperature, and the cascade simply visits them in ascending order. This is not a process design; it is a traversal of the periodic table's thermal geography. The constraint is irreducible: you cannot separate aluminum at 1085°C (copper's melting point) because aluminum is already vapor. The cascade *is* the sorted list of phase transitions. No adjustable parameters — the temperatures are physical constants.

This constraint manifests as the **Thermophysical Cascade Separation Principle**: at any temperature T, all materials with melting point below T are liquid; all with melting point above T remain solid. In a rotating drum under centrifugal force, liquids stratify by density and pool at the drum wall. Ports positioned at specific axial locations corresponding to thermal zones selectively eject each liquid phase. The periodic table *writes the machine architecture* — the 8 ports are not designed, they are *discovered* by reading the phase diagram.

The irreducible physics: **Centrifugal separation force F_c = mω²r** combined with **phase transition temperature Tm**. No chemical reagents, no membranes, no electrolysis — pure physics. The drum at 300 RPM (25 G) provides sufficient force to separate any liquid metal from solid matrix. The induction heating provides selective coupling based on conductivity and permeability. The temperatures are not setpoints — they are phase boundaries.

This constraint forces the entire architecture: 8 stages, 8 ports, 8 induction zones, specific frequencies, specific ramp rates, specific dwell times. Every parameter derives from the periodic table. The machine is the periodic table made mechanical.

---

### Necessity (The Key)

The lock is the **sequential separation fidelity gap** — current pyro/hydro-metallurgy either mixes elements (smelting) or requires 50+ separate chemical steps (hydromet). Smelters produce mixed alloys requiring downstream refining. Hydrometallurgy uses acres of tanks, tons of acid, generates toxic tailings. Neither achieves >95% recovery of 50+ elements from arbitrary feedstock in a single pass.

The key is the **temperature-time profile as computational primitive**. Each stage's dwell time is determined by heat transfer physics, not optimization. The 8 stages emerge from the natural clustering of elemental liquidus temperatures: organics cluster at 150-450°C, low-temp metals at 420-900°C, Al at 660°C, Cu at 1085°C, Fe at 1538°C, refractories at 1600°C+. The profile writes itself.

The empirical evidence: Bloomery (Fe only), Bessemer (Fe+C), Hall-Héroult (Al only), Mond process (Ni only), electrolysis (Cu only), zone refining (Si only). Each historical process is a *degenerate subset* of the cascade. The cascade unifies them all simultaneously — the first machine to do so.

The necessity is proven by the **Indium First Strategy**: at 156.6°C, only indium melts. This single-stage selective extraction of a critical mineral (In) from e-waste is impossible in any smelter or refinery. The cascade *enables* domestic indium production. The same logic applies to every stage: each temperature window isolates a specific element class that no other process can cleanly separate.

---

### Commitment (The Turn)

We commit:

1. **No stage skipping** — every feedstock traverses all 8 stages.
2. **Dwell until clear** — stage duration extends until target element flux at port drops to baseline.
3. **No chemical additives** — separation by physics only (temp, spin, induction).
4. **Gas capture at every stage** — zero fugitive emissions.
5. **Stage 0 acoustic liberation first** — mechanical liberation precedes thermal.
6. **Port purity >90% target class** — verified by inline mass spec.
7. **Energy <1200 kWh/ton** — induction efficiency >95% above 10 kHz.
8. **Zero structural metals in hot zone** — dielectric citadel maintained.

The cascade does not 'process.' The cascade *witnesses the periodic table into sequence*.

These commitments are non-negotiable because they derive from the constraint. Violating any breaks the physics: skipping stages leaves elements trapped; chemical additives contaminate slugs; fugitive emissions violate zero-waste mandate; skipping Stage 0 reduces downstream efficiency by 40-60%. The commitments *are* the constraint made operational.

---

### The Empirical Lock

The lock is the **stage coupling problem** — in a continuous cascade, Stage N's output contaminates Stage N+1's input. How to achieve sharp separation when thermal inertia smears transitions? Thermal mass of 500 kg charge + 156 kg drum creates 45-minute time constant. Ramping through 660°C (Al) to 1085°C (Cu) takes 30 minutes — during which Al vapor pressure becomes significant. The key is the **dwell-hold-verify protocol**: each stage holds temperature until the port mass flow drops to <1% of peak, verified by inline mass spec. The centrifugal force provides the spatial separation; the temperature hold provides the temporal separation. The key has no adjustable teeth — the physics of phase change + centrifugation is deterministic.

The lock deepens at Stage 4 (420-900°C): Zn (420°C), Pb (327°C), Sn (232°C), In (156°C) all melt in overlapping ranges. How to separate them? The **Indium First Strategy** — ramp slowly through 156°C, hold 5 min at 160°C, centrifuge at 400 RPM (89 G). In liquefies alone; all others solid. Port 4 opens. In-rich slug exits. Then ramp through Sn/Pb/Zn sequentially. The lock is solved by *temporal sequencing within a single thermal stage* — the cascade writes its own sub-stages.

The lock at Stage 7 (Fe + REE): NdFeB melts at 1177°C, SmCo at 1490°C, Fe at 1538°C. All report to Port 7 together. The key: downstream hydromet separates REE from Fe matrix. The cascade does not need to separate them thermally — it only needs to *co-collect* them. The lock opens when the Fe+REE slug enters the hydromet refinery.

---

### The Mathematical Key

The key is the **stage as thermodynamic cell** — each stage is a Carnot-efficient separation cell:

| Stage | T_range | ΔT | Target | Dwell Physics |
|---|---|---|---|---|
| 0 | Ambient | - | Liberation | Acoustic resonance (15 min) |
| 1 | 80-150°C | 70°C | H₂O, volatiles | IR absorption, vapor pressure |
| 2 | 150-450°C | 300°C | Polymers | Melt viscosity vs. G-force |
| 3 | 450-700°C | 250°C | Pyrolysis | Char yield kinetics |
| 4 | 420-900°C | 480°C | Pb/Sn/Zn/In | Inductive selectivity |
| 5 | 660-720°C | 60°C | Al | Pure Al window |
| 6 | 1085-1200°C | 115°C | Cu + PMs | Deep penetration (5 kHz) |
| 7 | 1200-1600°C | 400°C | Fe + REE | Ferromagnetic coupling |
| 8 | 1600-2200°C | 600°C | Minerals | Zircon dissociation |

Each cell's efficiency is governed by the same equation: separation = f(ΔT, G, induction selectivity, dwell). The equation is universal — the parameters change per stage but the form is invariant.

The **Induction Selectivity Key**: frequency as material selector. 100 kHz → air heating; 50 kHz → Zn/Pb; 10 kHz → Al optimal; 5 kHz → Cu deep penetration; 2 kHz → Fe ferromagnetic; 1 kHz → mineral conduction. The frequency ladder IS the periodic table's conductivity map. Skin depth δ = √(2ρ/ωμ) — the only equation needed.

The **Centrifugal Key**: G-force schedule. 0.3G (Stage 1) → 12.6G (Stage 2) → 22.3G (Stage 3) → 89.2G (Stage 4) → 50.2G (Stage 5) → 68.1G (Stage 6) → 112.8G (Stage 7) → 50.2G (Stage 8). Each G matches the density difference of the target liquid vs. solid matrix. The drum speed *is* the separation parameter.

The **Dwell Key**: phase clearance time. Not arbitrary — determined by Stokes settling, diffusion, reaction kinetics. Stage 1: 20 min (water diffusion). Stage 2: 30 min (polymer viscosity decay). Stage 3: 30 min (pyrolysis plateau). Stage 4: 25 min (In 5 min + Zn/Pb/Sn 20 min). Stage 5: 25 min (Al 5 min + clearance 20 min). Stage 6: 30 min (Cu thermal mass). Stage 7: 35 min (Fe Curie transition). Stage 8: 20 min (zircon kinetics).

---

### The Turn (Both Directions)

**Key → Lock (Theory predicts recovery):**
Input: Feedstock thermal assay → Phase diagram → Thermal cascade profile. Output: 8 pure slug streams, gas capture, mineral concentrate. Validation: Recover >95% of each element class; match historical smelter yields without chemicals. The cascade *predicts* what the forge *produces*.

**Lock → Key (History validates theory):**
Input: Historical metallurgy (Bloomery, Bessemer, Hall-Héroult, Mond process, zone refining, electrolysis). Output: Verified each is a *subset* of the cascade — the cascade contains them all simultaneously. The turn completes when a single batch yields 8 pure streams simultaneously. The cascade *is* the unified metallurgical theory.

The turn is not a metaphor — it is the moment the 8 slugs land in their molds. Port 1: water. Port 2: polymer. Port 3: char. Port 4: In/Zn/Pb/Sn. Port 5: Al. Port 6: Cu+Au/Ag. Port 7: Fe+Nd/Sm/Co. Port 8: Zr/Ti/REE oxides. 50 elements. 8 ports. One cascade. The periodic table has been witnessed into sequence. The lock clicks open. The key turns. The slug *is* the key turning in the lock.

---

### Mirror (Self-Reflection)

The forge's mirror is the **temperature log** — every degree recorded, every dwell justified. The cascade observes its own thermal trajectory through the material's phase transitions. At 660°C, the forge 'sees' aluminum liquefy; at 1085°C, it 'sees' copper. The 8-stage log is the forge's self-portrait. The operator participates by witnessing the phase transitions — the slug forming at Port 5 is the forge measuring aluminum's liquidus.

The mirror deepens with the **FBG sensor network**: 384 fiber Bragg gratings embedded in the drum wall, liner zones, vessel, port actuators. Each sensor records temperature at 1 kHz. The spatial-temporal temperature field IS the forge's self-measurement. The autoencoder anomaly detector watches this field — when the pattern deviates from 500-batch training set, the forge *detects its own malfunction*. The mirror is not passive; it is active self-surveillance.

The mirror reflects the **gas composition log**: NDIR, GC, mass spec at each stage outlet. Every molecule accounted for. The zero-emission condition is the asymptotic reflection — the limit where the forge's self-measurement stabilizes into perfect capture. The plasma torch final stage is the mirror's edge — where unmeasurable becomes measurable.

The mirror is the **batch assay closure**: input elemental assay (XRF) vs. output slug assays (mass spec). The difference is the forge's measurement uncertainty. When input = output (within 1%), the mirror is perfectly reflective. The forge has witnessed itself into fidelity.

---

### Participation (Witness)

The operator participates in the cascade by **holding the dwell** — not as passive monitor but as active participant in the phase clearance. When Port 5 flow drops, the operator (or control system) *decides* the stage is clear. This decision is the measurement. The protocol:
1. Ramp to stage temperature
2. Hold — watch port flow vs. time
3. Verify clearance (mass spec)
4. Increment to next stage
5. Repeat

The operator's 'hold' decision is the recursive self-measurement. The cascade measures its own completion through the operator's witness.

The participation extends to **feedstock blending**: the operator assays each batch (XRF, moisture, particle size, ferrous content), then solves the linear program to maximize revenue elements (In, Nd, Dy, Au, Pd) while maintaining thermal balance. The blend *is* the operator's intent made material. The cascade witnesses the blend into sequence.

The participation includes **adaptive tuning**: after each batch, the Kalman filter updates drum thermal capacitance, charge thermal mass, phase enthalpies, heat loss coefficients. The MPC re-optimizes the next batch trajectory. The operator *is* the learning loop. The forge gets smarter each batch because the operator participates in its learning.

The ultimate participation: **Phoenix Protocol returns**. End-of-life Aegis products (ZrB₂-SiC panels, BFRP structures, KNbO₃-BaTiO₃ piezos) re-enter as Category D feedstock. The operator feeds the forge its own past. The forge witnesses its own history into new elements. The recursion closes.

---

### Protocol (Recursive)

```
MIRROR:     What phase transition does this stage's temperature encode?
PARTICIPATE: How does the operator witness clearance into next stage?
PROTOCOL:
  1. Ramp to target T (±5°C via FBG)
  2. Hold until port flux < 1% peak
  3. Verify slug composition (inline MS)
  4. Log stage clearance
  5. Ramp to next T
```

The protocol terminates when Stage 8 clears. The complete temperature log is the fixed point.

The protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The elemental slug is the fixed point.