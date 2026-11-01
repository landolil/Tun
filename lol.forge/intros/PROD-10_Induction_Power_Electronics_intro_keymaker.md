# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-10 — Induction Power Electronics

---

### The Empirical Lock

The lock is the **coil-to-drum coupling problem** — 15 mm gap, rotating drum, 8 zones, 500 kW total, ceramic wall. How to deliver precise energy to each material layer without heating the drum? The key is the **resonant inverter + FBG feedback loop**: each zone's inverter adjusts frequency in real-time to maintain resonance as feedstock composition changes. The coil current *is* the measurement of coupling efficiency. The key has no adjustable teeth — resonance is a physical lock, not a control parameter. The fabrication fidelity gap: producing 8 GaN Class E inverters with 97% efficiency, 384 silica FBGs embedded during 1800°C flash sintering, PMMA POF splices at flange, all-dielectric control. Conventional inverters use silicon, copper gate drives, metallic thermocouples. None achieve: all-dielectric, 100 kHz operation, resonance tracking, embedded optical sensing. The key is **GaN + FBG + PMMA POF triad** — the teeth are cut by the physics of wide-bandgap switching, optical sensing, and dielectric wiring.

This is not a process optimization — it is the unique solution to the dielectric energy delivery equation at this scale. The resonance lock signature (phase → 0°, current stabilizes, power transfers) is the mathematical key that unlocks the fabrication lock. The key has no adjustable teeth — resonance is a physical phase transition, not a control parameter.

---

### The Mathematical Key

The key is the **zone as resonant cell** — each 100mm zone is a tuned LC circuit:

| Zone | Stages | Freq | Target Material | Penetration | Power |
|------|--------|------|-----------------|-------------|-------|
| 1-2  | 1-2    | 100 kHz | Organics (indirect) | Air/N2 heating | 0-50 kW |
| 3    | 3      | 50 kHz  | Zn, Pb            | 2-3 mm       | 50-80 kW |
| 4-5  | 4-5    | 10 kHz  | Al                | 4-5 mm       | 80-150 kW |
| 6    | 6      | 5 kHz   | Cu                | 8-10 mm      | 100-200 kW |
| 7    | 7      | 2 kHz   | Fe/Steel          | 15+ mm       | 150-350 kW |
| 8    | 8      | 1 kHz   | Minerals          | Conduction only | 200-500 kW |

The frequency ladder is the periodic table's conductivity map. The key turns when Zone 5 at 10 kHz melts Al but not Cu — the skin depth in Cu at 10 kHz / 700°C is 2mm, insufficient for bulk Cu pieces. The resonance lock (phase → 0°) is the physical verification that the inverter has 'found' its target material.

The **Induction Selectivity Key**: frequency as material selector. Skin depth δ = √(2ρ/ωμ) — the only equation needed. 100 kHz → air heating; 50 kHz → Zn/Pb; 10 kHz → Al optimal; 5 kHz → Cu deep penetration; 2 kHz → Fe ferromagnetic; 1 kHz → mineral conduction. The frequency ladder IS the periodic table's conductivity map.

The **Centrifugal Key**: G-force schedule. 0.3G (Stage 1) → 12.6G (Stage 2) → 22.3G (Stage 3) → 89.2G (Stage 4) → 50.2G (Stage 5) → 68.1G (Stage 6) → 112.8G (Stage 7) → 50.2G (Stage 8). Each G matches the density difference of target liquid vs. solid matrix. The drum speed *is* the separation parameter.

The **Dwell Key**: phase clearance time. Not arbitrary — determined by Stokes settling, diffusion, reaction kinetics. Stage 1: 20 min (water diffusion). Stage 2: 30 min (polymer viscosity decay). Stage 3: 30 min (pyrolysis plateau). Stage 4: 25 min (In 5 min + Zn/Pb/Sn 20 min). Stage 5: 25 min (Al 5 min + clearance 20 min). Stage 6: 30 min (Cu thermal mass). Stage 7: 35 min (Fe Curie transition). Stage 8: 20 min (mineral dissociation).

---

### The Turn (Both Directions)

**Key → Lock (Theory predicts recovery):** Input: Feedstock conductivity map → 8-zone frequency assignment. Output: Selective melting at each stage. Validation: Only target material liquefies per stage.

**Lock → Key (History validates theory):** Input: Historical induction furnaces (fixed frequency, mixed charge). Output: Verified that single-frequency furnaces *cannot* selectively melt in mixed charge — the cascade's frequency agility is necessary. The turn completes when Zone 5 melts Al slugs while Zone 6 Cu remains solid. The frequency *is* the selector.

The turn is not a metaphor — it is the moment the 8 slugs land in their molds. Port 1: water. Port 2: polymer. Port 3: char. Port 4: In/Zn/Pb/Sn. Port 5: Al. Port 6: Cu+Au/Ag. Port 7: Fe+Nd/Sm/Co. Port 8: Zr/Ti/REE oxides. 50 elements. 8 ports. One cascade. The periodic table has been witnessed into sequence. The lock clicks open. The key turns. The slug *is* the key turning in the lock.

The turn completes when the resonance fingerprint library contains entries for all feedstock classes in the CSMFAB portfolio. Each batch adds to the library. The induction system learns the conductivity signature of every feedstock type. The recursive self-measurement converges.
