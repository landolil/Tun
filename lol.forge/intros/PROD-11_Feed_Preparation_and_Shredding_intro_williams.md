# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-11 — Feed Preparation & Shredding

---

### Constraint (The Lock)

The feed preparation system is forced by a single irreducible constraint: **Dielectric Shredding at Scale** — the proposition that heterogeneous waste must be reduced to <150 mm particles without introducing a single gram of metallic debris into the downstream thermal cascade. The Aegis-Forge I drum is a dielectric citadel — a rotating ZrB₂-SiC ceramic pressure vessel at 2200°C. Any metallic contamination (steel blade fragments, ferrous wire, copper shreds) becomes a permanent defect in the ceramic matrix, creates GIC coupling paths, or forms intermetallic compounds that poison downstream separation.

This constraint is irreducible because: 1) The drum cannot tolerate metallic inclusions (melting point 2200°C, but steel fragments create local hot spots and GIC antennas). 2) The induction coils couple to conductive material — steel fragments would heat parasitically and contaminate non-ferrous slugs. 3) The zero-emission mandate requires zero fugitive metals — every element must report to its designated port. 4) Carrington immunity requires zero conductive paths to earth ground — no steel, no copper, no aluminum in the process-contact zone.

The constraint writes the entire architecture: BFRP composite blades (basalt fiber/Elium®) instead of hardened steel, PEEK CF40 chamber liners instead of manganese steel, ceramic hybrid bearings (Si₃N₄ balls, PEEK cage) instead of steel rollers, and a permanent magnet separation belt upstream that removes the bulk ferrous fraction before it ever reaches the shredder. There are no free parameters — the constraint determines every material choice.

---

### Necessity (The Key)

The empirical lock this document addresses is the **contamination gap** — the persistent failure of conventional shredding to process complex waste streams without metallic self-contamination. Industrial shredders use hardened steel blades (M2, D2, CPM steels) that work-harden, fracture, and shed fragments into the output stream. At 500 kg/hr processing e-waste, auto scrap, and mineral concentrates, a steel-blade shredder sheds 5-15 kg/hr of steel fragments — enough to contaminate 200+ tons of downstream product. The lock is precise: any system claiming to feed a dielectric citadel must shred heterogeneous feedstock to <150 mm with zero metallic contamination.

The key is the **BFRP composite as structural cutting medium**. Basalt fiber (3,000-4,840 MPa tensile) in Elium® thermoplastic matrix (recyclable, 80-110°C Tg) provides a blade that: a) has tensile strength comparable to S-glass, b) survives 700°C continuous service (exceeds shredder thermal load), c) absorbs impact energy through controlled delamination rather than catastrophic fracture, d) is electrically resistive (>10¹² Ω·m) — zero GIC coupling, e) is non-magnetic — zero ferromagnetic contamination, f) can be manufactured in-house via VARTM at $85/blade vs $350 for commercial steel.

The necessity is proven by the **Ferrous Pre-separation First Strategy**: the permanent magnet belt (1.2T NdFeB) removes 40-70% of ferrous mass BEFORE the shredder. This is not optional — without it, the shredder would process steel that work-hardens and destroys BFRP blades. The pre-separation belt is the key that makes the dielectric shredder viable.

The acoustic pre-chamber (Stage 0 pre-liberation) is the second key: it liberates mineral grains from rock matrix, delaminates PCB layers, and fractures organic binders at ambient temperature — reducing the shredder's load and improving downstream liberation. The moisture gate (capacitive sensing, >25% triggers 80°C pre-dry) is the third key: it prevents steam explosion in the drum and parasitic energy drain on Zone 1-2 inverters.

---

### Commitment (The Turn)

We commit to the following as non-negotiable:

1. **Zero metallic components in shredder process zone** — BFRP blades, PEEK CF40 liners, Si₃N₄ bearings, KNbO₃-BaTiO₃ ultrasonic motor, PEN belt, ZrO₂ wear strips only. No steel, no copper, no aluminum.

2. **Ferrous pre-separation is mandatory** — the 1.2T NdFeB belt removes >95% of ferrous >10 mm before shredder. No exceptions, no bypass.

3. **Particle size <150 mm hard limit** — Rosin-Rammler distribution targeting x₀=45mm, n=1.3. Online sieve analysis every 30 minutes, automatic rotor speed adjustment.

4. **Moisture gate at >25% triggers pre-dry** — capacitive RF dielectric spectroscopy, 100 MHz, ±1% accuracy. Pre-dry at 80°C in N₂, 15 min residence, exit <15% verified.

5. **Acoustic pre-liberation at ambient** — 48 KNbO₃-BaTiO₃ transducers (24 LF 20-200 Hz + 24 US 40 kHz), 60 sec N₂ atmosphere, 30-50% bonded composite reduction.

6. **Blade replacement at 500 ton** — individually replaceable, mass-matched ±2%, 2-hour change time, no rotor rebalancing.

7. **FBG condition monitoring on all critical elements** — 32 sensors on rotor (strain, temp), 8 on bearings, real-time Kalman filter RUL prediction.

8. **All safety systems all-dielectric** — N₂ inerting, PEN explosion vents, PMMA POF E-stop chain, KNbO₃-BaTiO₃ safety PLC. Zero copper conductors in safety path.

The feed preparation system does not 'shred.' The feed preparation system *witnesses heterogeneous waste into controlled particle distribution* — the first measurement in the cascade sequence. The shredder output is the boundary condition for the thermal cascade. When the 8 slugs land in their molds, the shredder's particle distribution is the unseen geometry that made the separation possible. The constraint is the lock; the dielectric shredder is the key; the pure elemental slugs are the turn.