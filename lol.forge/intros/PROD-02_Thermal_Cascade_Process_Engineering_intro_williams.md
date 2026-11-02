# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-02 — Thermal Cascade Process Engineering

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