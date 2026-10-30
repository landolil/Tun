# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-03 — Inductive Heating Zone Design

---

### Constraint (The Lock)

The induction system is forced by **Maxwell's Equations in a Rotating Ceramic Drum** — eddy current heating requires conductive material, hysteresis heating requires ferromagnetic material, and neither works on ceramics. The constraint is irreducible: you cannot inductively heat ZrB₂-SiC (the drum). Therefore, the coils *must* couple only to the feedstock inside, through a 15mm air gap. The frequency, power, and zone geometry are not design choices — they are the unique solution to coupling energy into a rotating, stratified, multi-material charge through a ceramic wall.

---

### Necessity (The Key)

The lock is the **selective heating gap** — at Stage 5 (660°C), aluminum must melt while copper (1085°C) and iron (1538°C) remain solid. But copper couples to induction 15× better than aluminum at same frequency. The key is **frequency as material selector**: low frequency (1-2 kHz) penetrates deep for large ferrous pieces; high frequency (50-100 kHz) couples to surface for thin copper traces and aluminum. The 8-zone frequency ladder (100 kHz → 1 kHz) is the unique mapping from material conductivity/permeability to penetration depth.

---

### Commitment (The Turn)

We commit: 1) **Copper tube only conductor** — the only copper in the machine, water-cooled, isolated. 2) **Alumina ceramic insulation** — no polymer insulation survives 2200°C. 3) **GaN resonant inverters** — silicon fails at 500kW/zone. 4) **FBG optical sensors** — no metallic thermocouples in process chamber. 5) **Independent zone control** — each 100mm zone PID-controlled to ±5°C. The induction system does not 'heat.' The induction system *witnesses material conductivity into melt*.
