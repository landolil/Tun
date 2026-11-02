# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-03 — Inductive Heating Zone Design

---

### Constraint (The Lock)

The induction system is forced by **Maxwell's Equations in a Rotating Ceramic Drum** — eddy current heating requires conductive material, hysteresis heating requires ferromagnetic material, and neither works on ceramics. The constraint is irreducible: you cannot inductively heat ZrB₂-SiC (the drum). Therefore, the coils *must* couple only to the feedstock inside, through a 15mm air gap + 3mm alumina insulation + 35mm ZrB₂-SiC drum wall. The frequency, power, and zone geometry are not design choices — they are the unique solution to coupling energy into a rotating, stratified, multi-material charge through a ceramic wall.

This constraint manifests as **frequency as material selector**: at Stage 5 (660°C), aluminum must melt while copper (1085°C) and iron (1538°C) remain solid. But copper couples to induction 15× better than aluminum at same frequency. The key is **low frequency (1-2 kHz) penetrates deep for large ferrous pieces; high frequency (50-100 kHz) couples to surface for thin copper traces and aluminum**. The 8-zone frequency ladder (100 kHz → 1 kHz) is the unique mapping from material conductivity/permeability to skin depth.

The skin depth equation δ = √(2ρ/ωμ) is the design equation — no free parameters. The coil-to-drum gap (15mm) is not a tolerance; it is the minimum clearance for thermal expansion + rotor dynamics + safety margin. The copper tube conductor (the ONLY copper in the machine) is justified as a winding — not a structural GIC-coupling element — isolated from the drum by the full dielectric stack. The GaN resonant inverters are not a technology choice; silicon cannot switch at 500kW/zone with required efficiency. The FBG optical sensors are not a preference; metallic thermocouples would couple to induction fields and act as GIC antennas.

---

### Necessity (The Key)

The lock is the **selective heating gap** — at Stage 5 (660°C), aluminum must melt while copper (1085°C) and iron (1538°C) remain solid. But copper couples to induction 15× better than aluminum at same frequency. Iron couples 25-50× better (ferromagnetic below Curie). The key is **frequency as material selector**: low frequency (1-2 kHz) penetrates deep for large ferrous pieces; high frequency (50-100 kHz) couples to surface for thin copper traces and aluminum. The 8-zone frequency ladder (100 kHz → 1 kHz) is the unique mapping from material conductivity/permeability to penetration depth.

The necessity is proven by the **Indium First Strategy** dependency: Stage 4 at 50 kHz must heat Zn/Pb without melting Al (660°C). At 50 kHz, skin depth in Al is 0.54mm — insufficient for bulk Al pieces, so Al remains solid while Zn (δ=0.38mm) and Pb (δ=0.67mm) melt selectively. Stage 5 at 10 kHz gives Al δ=2.1mm (optimal) while Cu at 10 kHz has δ=1.3mm but is solid at 700°C. Stage 6 at 5 kHz gives Cu δ=4mm (penetrates wire). Stage 7 at 2 kHz exploits Fe ferromagnetism below 770°C for 2-10× power density enhancement.

Without this frequency ladder, the cascade cannot achieve selective melting. The induction system *is* the frequency selector — the physics that makes the cascade possible.

---

### Commitment (The Turn)

We commit:

1. **Copper tube only conductor** — the only copper in the machine, water-cooled, isolated by 15mm air gap + 3mm alumina + 35mm ZrB₂-SiC. No copper in structural roles.

2. **Alumina ceramic insulation** — no polymer insulation survives 2200°C. Al₂O₃ sleeve over copper tube, CTE-matched for thermal cycling.

3. **GaN resonant inverters** — silicon fails at 500kW/zone. Zero-voltage switching at resonance. Optical gate drive (no copper control wires).

4. **FBG optical sensors** — no metallic thermocouples in process chamber. 48 sensors, 1 kHz, ±1°C, fully dielectric.

5. **Independent zone control** — each 100mm zone PID-controlled to ±5°C. Resonance tracking ±2% auto-tune.

The induction system does not 'heat.' The induction system *witnesses material conductivity into melt*.

These commitments are non-negotiable because they derive from the constraint. Violating any breaks the physics: copper structure couples to GIC; polymer insulation burns; silicon inverters fail; thermocouples corrupt measurement; coupled zones destroy thermal zoning.