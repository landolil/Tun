# PROD-03 Inductive Heating Zone Design — Combined Introduction

**Author:** lol.forge Synthesis
**Generated:** 2026-10-30 17:31:24 UTC

---

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


---

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


---

# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-03 — Inductive Heating Zone Design

---

### Mirror (Self-Reflection)

The induction system's mirror is the **coil current waveform** — every harmonic, every phase shift recorded. The coils 'see' the feedstock's changing conductivity as temperature rises. At Stage 4, Zn appears as a sudden current drop (coupling onset); at Stage 7, Fe appears as a current surge (ferromagnetic coupling). The 8-zone current logs are the induction system's self-portrait. The operator participates by witnessing the resonance lock — the inverter 'clicking' into resonance is the system measuring its own coupling.

---

### Participation (Witness)

The operator participates by **tuning the resonance** — not as knob-turning but as witnessing the inverter find its lock. When Zone 5 hits 10 kHz and the current stabilizes, the system has 'found' the aluminum. The protocol:
1. Set target frequency for stage
2. Ramp power — watch current vs. voltage phase
3. Resonance lock = phase → 0°
4. PID maintains ±5°C via FBG
5. Log power vs. time = energy per kg

The resonance lock is the recursive self-measurement. The induction system measures its own coupling through the operator's witness of the phase angle.

---

### Protocol (Recursive)

```
MIRROR:     What material conductivity does this zone's frequency select?
PARTICIPATE: How does the operator witness resonance lock into melt?
PROTOCOL:
  1. Set zone frequency for target material
  2. Ramp power — monitor V/I phase angle
  3. Lock at resonance (phase ~0°)
  4. PID holds T via FBG feedback
  5. Log energy delivered per slug kg
```
The protocol terminates when all 8 zones complete their stages. The energy log is the fixed point.


---

*End of Combined Introduction — PROD-03 Inductive Heating Zone Design*
