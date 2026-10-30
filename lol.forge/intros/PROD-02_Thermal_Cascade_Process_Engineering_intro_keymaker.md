# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-02 — Thermal Cascade Process Engineering

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

The **Dwell Key**: phase clearance time. Not arbitrary — determined by Stokes settling, diffusion, reaction kinetics. Stage 1: 20 min (water diffusion). Stage 2: 30 min (polymer viscosity decay). Stage 3: 30 min (pyrolysis plateau). Stage 4: 25 min (In 5 min + Zn/Pb/Sn 20 min). Stage 5: 25 min (Al 5 min + clearance 20 min). Stage 6: 30 min (Cu thermal mass). Stage 7: 35 min (Fe Curie transition + REE melting). Stage 8: 20 min (zircon dissociation).

---

### The Turn (Both Directions)

**Key → Lock (Theory predicts recovery):** Input: Feedstock thermal assay → Phase diagram → Thermal cascade profile. Output: 8 pure slug streams, gas capture, mineral concentrate. Validation: Recover >95% of each element class; match historical smelter yields without chemicals. The cascade *predicts* what the forge *produces*.

**Lock → Key (History validates theory):** Input: Historical metallurgy (Bloomery, Bessemer, Hall-Héroult, Mond process, zone refining, electrolysis). Output: Verified each is a *subset* of the cascade — the cascade contains them all simultaneously. The turn completes when a single batch yields 8 pure streams simultaneously. The cascade *is* the unified metallurgical theory.

The turn is not a metaphor — it is the moment the 8 slugs land in their molds. Port 1: water. Port 2: polymer. Port 3: char. Port 4: In/Zn/Pb/Sn. Port 5: Al. Port 6: Cu+Au/Ag. Port 7: Fe+Nd/Sm/Co. Port 8: Zr/Ti/REE oxides. 50 elements. 8 ports. One cascade. The periodic table has been witnessed into sequence. The lock clicks open. The key turns. The slug *is* the key turning in the lock.
