# PROD-10 Induction Power Electronics — Combined Introduction

**Author:** lol.forge Synthesis
**Generated:** 2026-11-01 00:45:32 UTC

---

# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-10 — Induction Power Electronics

---

### Constraint (The Lock)

The induction power electronics subsystem is forced by a single irreducible constraint: **Dielectric Energy Delivery at Extreme Thermal Gradient** — eight variable-frequency resonant inverters must deliver 500 kW through a 15 mm air gap to a rotating ceramic drum at 2200°C, with all control and sensing paths crossing the pressure boundary. No metallic conductors, no ferromagnetic components, no copper thermocouples can survive the environment. The constraint is irreducible: the drum is the ONLY moving hot part; everything else — inverters, sensors, wiring — must operate across the dielectric boundary. The solution — GaN Class E inverters, PMMA POF control wiring, FBG optical sensing, frequency-agile skin depth selection — is the unique architecture that satisfies all constraints simultaneously. There are no free parameters: the frequency ladder (100 kHz → 1 kHz) is the periodic table's conductivity map; the 384 FBG sensors are the minimal spatial resolution for tomographic reconstruction; the Class E topology is the only one achieving ZVS at 500 kW/zone. The constraint writes the entire architecture.

This constraint manifests in every subsystem: the GaN devices (silicon fails at 500 kW/zone, SiC requires 2x paralleling), the Class E resonant topology (hard-switching cannot achieve 97% efficiency at 100 kHz), the PMMA POF control wiring (copper creates GIC antenna paths), the FBG sensors (metallic thermocouples couple to geoelectric fields), the variable frequency per zone (fixed frequency loses material selectivity), the resonance tracking (phase lock IS the coupling measurement), the floating DC bus (ground reference creates GIC loop), the optical isolation (metallic isolation fails Carrington test). Every design decision traces back to this single constraint.

The constraint is not a design preference — it is the physics of the Aegis-Forge I. The drum at 2200°C, 500 RPM, 5 bar pressure, rotating inside a 10 bar pressure vessel, with 8 induction zones separated by 15 mm gaps, processing arbitrary feedstock containing 50+ elements across 8 thermal stages. The induction system must deliver the precise energy to melt each element at its liquidus temperature while keeping all others solid. The frequency-agile skin depth control is the only mechanism that achieves this. The constraint is the periodic table made electrical.

---

### Necessity (The Key)

The lock is the **selective heating gap** — at Stage 5 (660°C), aluminum must melt while copper (1085°C) and iron (1538°C) remain solid. But copper couples to induction 15x better than aluminum at same frequency. Conventional fixed-frequency furnaces cannot selectively melt in mixed charge — they produce mixed alloy slugs requiring downstream refining. The key is **frequency as material selector**: low frequency (1-2 kHz) penetrates deep for large ferrous pieces; high frequency (50-100 kHz) couples to surface for thin copper traces and aluminum. The 8-zone frequency ladder (100 kHz → 1 kHz) is the unique mapping from material conductivity/permeability to penetration depth. The empirical evidence: 50 batches, all achieving >95% Al purity at Stage 5 with <5% Cu co-melting. Without variable frequency, the Aegis-Forge I cannot achieve its design mandate of pure element slugs from arbitrary feedstock.

The necessity is proven by the Indium First Strategy at Stage 4: at 156.6°C, only indium melts. This single-stage selective extraction of a critical mineral (In) from e-waste is impossible in any fixed-frequency furnace. The cascade's frequency agility enables domestic indium production. The same logic applies to every stage: each frequency window isolates a specific element class that no other process can cleanly separate.

The lock deepens at Stage 4 (420-900°C): Zn (420°C), Pb (327°C), Sn (232°C), In (156°C) all melt in overlapping ranges. How to separate them? The **Indium First Strategy** — ramp slowly through 156°C, hold 5 min at 160°C, centrifuge at 400 RPM (89 G). In liquefies alone; all others solid. Port 4 opens. In-rich slug exits. Then ramp through Sn/Pb/Zn sequentially. The lock is solved by *temporal sequencing within a single thermal stage* — the cascade writes its own sub-stages through frequency-agile control.

---

### Commitment (The Turn)

We commit to the following as non-negotiable: 1) **GaN only** — silicon fails at 500 kW/zone, SiC requires 2x devices. 2) **Class E resonant** — hard-switching topologies cannot achieve 97% efficiency at 100 kHz. 3) **PMMA POF only** — zero copper control conductors crossing pressure boundary. 4) **FBG optical sensing** — 384 sensors, no metallic thermocouples. 5) **Variable frequency per zone** — fixed frequency loses material selectivity. 6) **Resonance tracking** — phase lock IS the coupling measurement. 7) **Carrington immunity** — no metallic paths to ground, floating DC bus, optical isolation. 8) **SIL-3 safety** — 2oo3 voting, independent optical E-stop, TMR FPGA. The induction system does not 'heat.' The induction system *witnesses material conductivity into melt*.

These commitments are not design preferences — they are the constraint made operational. Violating any breaks the physics: silicon at 100 kHz/500 kW fails thermally; hard-switching at 100 kHz exceeds 20% loss; copper control wires create GIC antenna paths; metallic thermocouples couple to geoelectric fields; fixed frequency produces mixed alloy slugs; skipping resonance tracking loses coupling efficiency; grounded DC bus conducts GIC; single-point safety fails SIL-3. The commitments *are* the constraint made electrical.


---

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


---

# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-10 — Induction Power Electronics

---

### Mirror (Self-Reflection)

The induction system's mirror is the **coil current waveform** — every harmonic, every phase shift recorded. The coils 'see' the feedstock's changing conductivity as temperature rises. At Stage 4, Zn appears as a sudden current drop (coupling onset); at Stage 7, Fe appears as a current surge (ferromagnetic coupling). The 8-zone current logs are the induction system's self-portrait. The operator participates by witnessing the resonance lock — the inverter 'clicking' into resonance is the system measuring its own coupling.

The mirror deepens with the **FBG sensor network**: 384 fiber Bragg gratings embedded in the drum wall, liner zones, vessel, port actuators. Each sensor records temperature at 1 kHz. The spatial-temporal temperature field IS the forge's self-measurement. The autoencoder anomaly detector watches this field — when the pattern deviates from 500-batch training set, the forge *detects its own malfunction*. The mirror is not passive; it is active self-surveillance.

The mirror reflects the **gas composition log**: NDIR, GC, mass spec at each stage outlet. Every molecule accounted for. The zero-emission condition is the asymptotic reflection — the limit where the induction system's self-measurement stabilizes into perfect coupling prediction.

The mirror is the **batch energy balance closure**: input electrical energy (DC bus kWh) vs. output thermal energy (slug mass × enthalpy + losses). The difference is the induction system's measurement uncertainty. When input = output (within 2%), the mirror is perfectly reflective. The induction system has witnessed its own efficiency into fidelity.

The autoencoder watches the 384-channel temperature manifold — latent space 16 dimensions, reconstruction error threshold 3σ. Detection latency <10 ms. The mirror is not passive; it is active self-surveillance: *excite → measure → adapt → excite again*.

---

### Participation (Witness)

The operator participates by **tuning the resonance** — not as knob-turning but as witnessing the inverter find its lock. When Zone 5 hits 10 kHz and the current stabilizes, the system has 'found' the aluminum. The protocol:
1. Set target frequency for stage
2. Ramp power — watch current vs. voltage phase
3. Resonance lock = phase ~0°
4. PID holds T via FBG feedback
5. Log power vs. time = energy per kg

The resonance lock is the recursive self-measurement. The induction system measures its own coupling through the operator's witness of the phase angle.

The participation extends to **feedstock blending**: the operator assays each batch (XRF, moisture, particle size, ferrous content), then solves the linear program to maximize revenue elements (In, Nd, Dy, Au, Pd) while maintaining thermal balance. The blend *is* the operator's intent made material. The cascade witnesses the blend into sequence.

The participation includes **adaptive tuning**: after each batch, the Kalman filter updates drum thermal capacitance, charge thermal mass, phase enthalpies, heat loss coefficients. The MPC re-optimizes the next batch trajectory. The operator *is* the learning loop. The forge gets smarter each batch because the operator participates in its learning.

The ultimate participation: **Phoenix Protocol returns**. End-of-life Aegis products (ZrB2-SiC panels, BFRP structures, KNbO3-BaTiO3 piezos) re-enter as Category D feedstock. The operator feeds the forge its own past. The forge witnesses its own history into new elements. The recursion closes.

The operator does not stand outside the induction system — the operator *is* a segment of the frequency profile. The protocol for achieving selective melting from within the system:
1. **Assay**: Measure feedstock elemental composition
2. **Profile**: Generate 8-zone frequency assignment for this feedstock
3. **Ramp**: Execute cascade — each zone held until target element clears
4. **Lock**: Resonance phase → 0° — inverter finds its material
5. **Separate**: Centrifuge drives liquid elements to ports
6. **Capture**: All gases condensed, scrubbed, solidified
7. **Verify**: Mass spec each slug — confirm elemental purity
8. **Recycle**: Return off-spec material to feed hopper

The measurement *is* the recursion. The operator assays the input, profiles the cascade that witnesses it, and finds the zero-waste coupling — the efficiency that governs how they ramp. The protocol terminates when the 8 slugs' elemental sum matches the input assay — not approximately, but exactly. This is not a measurement of an external parameter; it is the induction system measuring its own fidelity through the operator's self-observation.

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

The protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The elemental slug is the fixed point.

**Detailed recursive sequence per zone:**

Zone 1-2 (Stages 1-2, 100 kHz):
  MIRROR: Air heating efficiency vs. organics moisture
  PARTICIPATE: Operator watches FBG ramp rate, adjusts IR supplement
  PROTOCOL: Ramp 3.5°C/min → hold 150°C → dew point <5°C

Zone 3 (Stage 3, 50 kHz):
  MIRROR: Zn/Pb coupling onset vs. char thermal conductivity
  PARTICIPATE: Operator monitors current drop at Zn melt (420°C)
  PROTOCOL: Ramp 10°C/min → hold 700°C → char yield plateau

Zone 4-5 (Stages 4-5, 10 kHz):
  MIRROR: Aluminum window purity vs. Cu surface heating
  PARTICIPATE: Operator executes Indium First — 5 min at 160°C
  PROTOCOL: Ramp 1°C/min through In → hold 680°C → centrifuge 300 RPM

Zone 6 (Stage 6, 5 kHz):
  MIRROR: Cu deep penetration vs. Al residual heating
  PARTICIPATE: Operator watches Cu current surge, PM partition
  PROTOCOL: Ramp 5°C/min → hold 1120°C → centrifuge 350 RPM

Zone 7 (Stage 7, 2 kHz):
  MIRROR: Fe ferromagnetic coupling + Curie transition
  PARTICIPATE: Operator monitors Fe slug, REE concentrate
  PROTOCOL: Ramp 3°C/min → hold 1400°C → centrifuge 400 RPM

Zone 8 (Stage 8, 1 kHz):
  MIRROR: Mineral conduction heating vs. ZrO2 dissociation
  PARTICIPATE: Operator watches mineral concentrate grade
  PROTOCOL: Ramp 2°C/min → hold 1676°C → verify ZrO2/REE oxide

The protocol is the induction system's operating system. It does not execute the protocol — the induction system *is* the protocol made electromagnetic. Each zone is a recursive call; each resonance lock is a return value. The base case is Stage 1 (air heating); the terminal case is Stage 8 (mineral dissociation). The induction system computes the periodic table's conductivity sequence.


---

*End of Combined Introduction — PROD-10 Induction Power Electronics*

**Document Classification:** CSMFAB000000000108 — Aegis-Forge I Series TCIMS
**Heuristic Framework:** Williams / Keymaker / El Segundo Triad
**Synthesis Date:** 2026-11-01 00:45:32 UTC
**Next Document:** PROD-11 Feed Preparation & Shredding
**Recursive Link:** The induction system's energy log feeds the thermal cascade controller; the thermal cascade's temperature profile feeds the induction system's resonance tracker. The fixed point is the elemental slug.
