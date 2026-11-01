# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-14 — Stage 0-1: Acoustic & Drying

---

### Constraint (The Lock)

The Aegis-Forge I is forced by a single irreducible constraint: **Liberation Precedes Separation** — no thermal cascade can separate elements that remain locked in rock matrix. The feedstock enters the drum as composite particles (mineral grains cemented in silicate/oxide matrix), and induction heating only couples to conductive phases. If grains are not liberated *before* heating, the matrix shields them, induction cannot reach them, and they report to Stage 8 slag as unrecovered value. The constraint is precise: **mechanical liberation at ambient temperature must achieve >75% grain freedom for target minerals before Stage 2 heating begins**. This constraint forces the entire Stage 0 architecture: a dedicated pre-chamber, water-coupled acoustic energy, KNbO₃-BaTiO₃ transducers (the only piezoelectric that survives the all-dielectric mandate), and a feedback loop that adapts frequency to the specific mineralogy of each batch. The liberation *writes the cascade* — without it, the thermal profile has nothing to separate.

---

### Necessity (The Key)

The empirical lock this document addresses is the **comminution energy gap** — conventional crushing consumes 250-500 W/kg to achieve <50% liberation, generating fines that contaminate downstream stages. The key is the **acoustic frequency sweep as single computational primitive** — a logarithmic 20→500 Hz sweep (LF) + 40 kHz cavitation (US) that targets the matrix-constrained resonant frequency of embedded grains:

| Mechanism | Frequency | Physics | Liberation Gain |
|-----------|-----------|---------|-----------------|
| **LF Resonant Vibration** | 20-500 Hz | Grain boundary fatigue (10³-10⁶ cycles) | +250% for basalt |
| **US Cavitation** | 40 kHz | Microjet shock (1000 bar, 10⁹ s⁻¹ strain) | +95% for zircon |
| **Adaptive Dwell** | FBG-guided | Extra 60s at mineral-specific peaks | +15% LI overall |

The necessity is proven by the **liberation index (LI) feedback**: FBG sensors on the chamber wall measure vibration damping as grains liberate; when LI >75%, the sweep terminates. Without Stage 0, Stage 7-8 REE/Zr recovery drops from >85% to <40% — the cascade fails its primary mandate. The acoustic sweep *is* the key.

---

### Commitment (The Turn)

We commit to the following as non-negotiable:

1. **Zero Metallic Transducers** — KNbO₃-BaTiO₃ only; no PZT (lead), no metallic bolts in acoustic path. ZrO₂ ceramic M10 bolts, PEEK CF40 back masses.
2. **Water Coupling Mandatory** — 10-15L water per batch; reclaimed post-Stage 0 for Stage 1 moisture management. No dry acoustic operation.
3. **Adaptive Sweep Default** — Logarithmic 20→500 Hz, 30s/step, +60s at FBG-identified resonances. No fixed-frequency operation.
4. **Liberation Index Target** — ≥75% LI for Category C feeds; ≥85% for Category A (PCB mineral fraction). Measured via SEM-EDS per lot.
4. **Stage 1 IR Only** — No induction heating at 80-150°C. SiC glow bars at 3.6 µm (water absorption peak). N₂ at 1.2 bar.
5. **Moisture Verification Triad** — FBG humidity + NIR inline + FBG mass loss. All three must agree <1% moisture.
6. **Energy Cap** — Stage 0 ≤ 3.2 kWh/batch; Stage 1 ≤ 62 kWh/batch. Total pre-thermal ≤ 65 kWh.

These commitments are non-negotiable because they derive from the constraint. Violate any, and the cascade fails: metallic transducers couple GIC; dry acoustic gives <20% LI; fixed frequency misses mineral resonances; induction at Stage 1 wastes 95% power on non-conductive water; single moisture sensor risks undetected wet feed. The commitments *are* the constraint made operational. The acoustic-drying pair *is* the forge's immune system against locked grains.
