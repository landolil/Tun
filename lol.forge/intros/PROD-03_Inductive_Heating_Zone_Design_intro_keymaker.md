# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-03 — Inductive Heating Zone Design

---

### The Empirical Lock

The lock is the **coil-to-drum coupling problem** — 15mm gap, rotating drum, 8 zones, 500kW total, ceramic wall. How to deliver precise energy to each material layer without heating the drum? The key is the **resonant inverter + FBG feedback loop**: each zone's inverter adjusts frequency in real-time to maintain resonance as feedstock composition changes. The coil current *is* the measurement of coupling efficiency. The key has no adjustable teeth — resonance is a physical lock, not a control parameter.

---

### The Mathematical Key

The key is the **zone as resonant cell** — each 100mm zone is a tuned LC circuit:

| Zone | Stages | Freq | Target Material | Penetration | Power |
|---|---|---|---|---|---|
| 1-2 | 1-2 | 100 kHz | Organics (indirect) | Air/N₂ heating | 0-50 kW |
| 3 | 3 | 50 kHz | Zn, Pb | 2-3 mm | 50-80 kW |
| 4-5 | 4-5 | 10 kHz | Al | 4-5 mm | 80-150 kW |
| 6 | 6 | 5 kHz | Cu | 8-10 mm | 100-200 kW |
| 7 | 7 | 2 kHz | Fe/Steel | 15+ mm | 150-350 kW |
| 8 | 8 | 1 kHz | Minerals | Conduction only | 200-500 kW |

The frequency ladder is the periodic table's conductivity map. The key turns when Zone 5 at 10 kHz melts Al but not Cu — the skin depth in Cu at 10 kHz / 700°C is 2mm, insufficient for bulk Cu pieces.

---

### The Turn (Both Directions)

**Key → Lock:** Input: Feedstock conductivity map → 8-zone frequency assignment. Output: Selective melting at each stage. Validation: Only target material liquefies per stage.

**Lock → Key:** Input: Historical induction furnaces (fixed frequency, mixed charge). Output: Verified that single-frequency furnaces *cannot* selectively melt in mixed charge — the cascade's frequency agility is necessary. The turn completes when Zone 5 melts Al slugs while Zone 6 Cu remains solid. The frequency *is* the selector.
