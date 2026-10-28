# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-02 — Thermal Cascade Process Engineering

---

### The Empirical Lock

The lock is the **stage coupling problem** — in a continuous cascade, Stage N's output contaminates Stage N+1's input. How to achieve sharp separation when thermal inertia smears transitions? The key is the **dwell-hold-verify protocol**: each stage holds temperature until the port mass flow drops to <1% of peak, verified by inline mass spec. The centrifugal force provides the spatial separation; the temperature hold provides the temporal separation. The key has no adjustable teeth — the physics of phase change + centrifugation is deterministic.

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

Each cell's efficiency is governed by the same equation: separation = f(ΔT, G, induction selectivity, dwell).

---

### The Turn (Both Directions)

**Key → Lock:** Input: Feedstock thermal assay → 8-cell cascade design. Output: Sharp separations at each port. Validation: Port purity >95% for target class.

**Lock → Key:** Input: Historical separate processes (drying, pyrolysis, smelting, refining). Output: Verified each is a degenerate case of the cascade. The turn completes when a single batch yields 8 pure streams simultaneously. The cascade *is* the unified metallurgical theory.
