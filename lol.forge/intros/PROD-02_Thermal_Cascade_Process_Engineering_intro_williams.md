# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-02 — Thermal Cascade Process Engineering

---

### Constraint (The Lock)

The thermal cascade is forced by the **Periodic Table as Phase Diagram** — every element has a fixed liquidus/vaporization temperature, and the cascade simply visits them in ascending order. This is not a process design; it is a traversal of the periodic table's thermal geography. The constraint is irreducible: you cannot separate aluminum at 1085°C (copper's melting point) because aluminum is already vapor. The cascade *is* the sorted list of phase transitions. No adjustable parameters — the temperatures are physical constants.

---

### Necessity (The Key)

The lock is the **sequential separation fidelity gap** — current pyro/hydro-metallurgy either mixes elements (smelting) or requires 50+ separate chemical steps (hydromet). The key is the **temperature-time profile as computational primitive**. Each stage's dwell time is determined by heat transfer physics, not optimization. The 8 stages emerge from the natural clustering of elemental liquidus temperatures: organics cluster at 150-450°C, low-temp metals at 420-900°C, Al at 660°C, Cu at 1085°C, Fe at 1538°C, refractories at 1600°C+. The profile writes itself.

---

### Commitment (The Turn)

We commit: 1) **No stage skipping** — every feedstock traverses all 8 stages. 2) **Dwell until clear** — stage duration extends until target element flux at port drops to baseline. 3) **No chemical additives** — separation by physics only (temp, spin, induction). 4) **Gas capture at every stage** — zero fugitive emissions. 5) **Stage 0 acoustic liberation first** — mechanical liberation precedes thermal. The cascade does not 'process.' The cascade *witnesses the periodic table into sequence*.
