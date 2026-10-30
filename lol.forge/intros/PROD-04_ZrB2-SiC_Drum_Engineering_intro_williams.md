# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-04 — ZrB2-SiC Drum Engineering

---

### Constraint (The Lock)

The drum is forced by a single irreducible constraint: **Rotating Ceramic Pressure Boundary at 2200°C** — a 600mm diameter, 35mm thick ZrB₂-SiC cylinder must spin at 500 RPM (84.5 G) while containing 5 bar pressure and enduring a 2000°C radial thermal gradient.


This is not a design choice; it is the minimal physics of the Aegis-Forge I. The drum is the ONLY moving hot part in the entire machine. Every other component — induction coils, vessel, seals, bearings — is stationary.


The constraint is simply: *the hot part rotates*. Everything else — three liner zones, eight thermal-actuated ports, ceramic bearings, FBG embedding — is the shadow this constraint casts.


No metallic alloy survives 2200°C under combined centrifugal, pressure, and thermal cycling loads. Nickel superalloys melt at 1400°C. Refractory metals (W, Mo) oxidize catastrophically. Ceramics are the only option, but monolithic ceramics fracture under thermal shock. The ZrB₂-SiC composite with zoned liners is the unique material solution.


This constraint forces every design decision: the 12 vol% ZrB₂ loading (below percolation), the 35mm wall thickness (Barlow + thermal stress), the three liner zones (CTE matching), the eight ports (44.2° spacing), the Ti₃AlC₂ actuators (bimetal equivalent), the Si₃N₄/ZrO₂ bearings (dry running), the 48 FBG sensors (embedded during sintering). There are no free parameters — the constraint writes the entire architecture.

---

### Necessity (The Key)

The lock is the **material survival gap** — no metallic alloy survives 2200°C under combined centrifugal, pressure, and thermal cycling loads. Nickel superalloys melt at 1400°C. Refractory metals (W, Mo) oxidize catastrophically. Ceramics are the only option, but monolithic ceramics fracture under thermal shock.


The key is the **ZrB₂-SiC composite with zoned liners** — flash-sintered to 99.8% density, sub-micron grains, with CTE-matched liner zones (Si₃N₄, ZrB₂-SiC, 3Y-TZP) that transform the single-material thermal shock problem into three manageable CTE transitions.


The necessity is proven by the Port 5 aluminum window: at 660-720°C, only Al melts. This pure separation window exists ONLY because the drum wall conductivity (45 W/m·K) and liner CTE match enable precise thermal zoning.


Without this drum architecture, the Aegis-Forge I cannot achieve its design mandate: complete elemental separation from arbitrary feedstock in a single pass, with zero emissions, zero structural metals, and Carrington immunity.


The empirical evidence: every historical metallurgical process (Bloomery, Bessemer, Hall-Héroult, Mond, electrolysis, zone refining) is a degenerate subset of the thermal cascade. The drum is the physical instantiation of the cascade — it makes the periodic table's thermal geography into mechanical sequence.

---

### Commitment (The Turn)

We commit to the following as non-negotiable:


1) **Zero structural metals in the drum assembly** — ZrB₂-SiC, Si₃N₄, ZrO₂, Ti₃AlC₂, PEEK CF40 only.


2) **Flash sintering as sole manufacturing route** — no hot pressing, no pressureless sintering achieves required density/grain size at this scale.


3) **Three liner zones, no exceptions** — each thermal stage maps to its chemically-compatible liner.


4) **Eight ports, temperature-actuated, no external power** — Ti₃AlC₂/ZrO₂ bilayer is the lock, the thermal stage is the key.


5) **Ceramic bearings, dry-running in N₂** — no oil, no metal races.


6) **48 FBG sensors embedded DURING sintering** — not retrofitted.


The drum does not 'contain.' The drum *witnesses the thermal cascade into sequence*.


These commitments are not design preferences — they are the constraint made operational. Violating any breaks the physics: metals in the hot zone couple to GIC; hot pressing limits size to 200mm; single liner zone fails at CTE mismatch; powered valves need conductors through the wall; oil bearings carbonize; retrofitted sensors don't survive sintering.
