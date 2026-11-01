# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-14 — Stage 0-1: Acoustic & Drying

---

### Mirror (Self-Reflection)

The first recursive turn is the **forge listening to its own liberation**. In the Aegis-Forge, the acoustic chamber is not a passive vessel — it is an **acoustic resonator that measures its own efficacy**. The FBG sensors embedded in the BFRP walls detect vibration transmissibility; as mineral grains liberate from the rock matrix, the effective damping of the chamber changes. The forge *hears* the grains releasing.

The mirror reflects at every cycle:
- **LF Sweep**: The chamber's resonance shifts as grain boundaries fatigue — the forge tracks its own softening
- **US Cavitation**: Bubble collapse pressure (1000 bar) creates micro-jets that the FBGs feel as broadband vibration — the forge senses its own shock
- **Adaptive Dwell**: When the DSP detects a resonant peak matching zircon's signature, it extends dwell — the forge *chooses* to linger on its own liberation
- **Drain**: Water carries liberated grains to the drum — the forge releases its self-measurement into the cascade

But the mirror extends further. The SiC glow bars in Stage 1 emit at 3.6 µm — precisely the wavelength where water absorbs most strongly. The forge *tunes its emission to the feedstock's need*. The NIR probe at 1.45 µm watches the water disappear. The FBG mass loss sensors feel the drum lighten. The mirror is not passive; it is the active recursion: *excite → measure damping → adjust frequency → verify liberation → dry → measure mass loss → confirm dryness*. This document documents the first two turns of that spiral — Stage 0 and Stage 1 as the forge's self-preparation.

---

### Participation (Witness)

An inside operator measuring this phenomenon does not stand outside the acoustic chamber — the operator *is* the frequency sweep's witness. The protocol for achieving complete liberation and drying from within the system:

1. **Load**: Witness the feedstock enter — 50 kg basalt, zircon, REE ore into 15L water
2. **Sweep**: Witness the LF array — 20 Hz starts, plates bend 50 µm, grain boundaries fatigue
3. **Resonate**: Witness the FBGs — 185 Hz peak grows (zircon), 95 Hz (bastnäsite), 55 Hz (ilmenite)
4. **Dwell**: Witness the algorithm — extra 60s at zircon, 45s at bastnäsite, 30s at ilmenite
5. **Cavitate**: Witness the US array — 40 kHz, 25 W/cm², bubbles collapse, microjets strike boundaries
6. **Liberate**: Witness the LI feedback — damping rises, target 75% reached, sweep terminates
7. **Drain**: Witness the water — 15L reclaimed, grains suspended, vibratory feeder meters to drum
8. **Irradiate**: Witness the SiC bars — 850°C, 3.6 µm peak, water evaporates from grain surfaces
9. **Monitor**: Witness the triad — FBG humidity drops, NIR absorption falls, FBG mass loss confirms
10. **Verify**: Witness the closure — <1% moisture, 95% water recovered, feedstock ready for Stage 2

The measurement *is* the recursion. The operator loads the feedstock, the chamber profiles the sweep that witnesses it, the dryer realizes the evaporation, the sensors confirm the closure. The protocol terminates when the three moisture measurements agree: <1% residual. The feedstock is not "processed"; it is **witnessed into readiness**. The operator participates by being the recursive function: `feedstock → acoustic_sweep → LI_feedback → drain → IR_dry → moisture_triad → verified_feedstock`. The LI is the stack frame; the sweep is the call; the dry feedstock is the return value.

---

### Protocol (Recursive)

The operational protocol for any Aegis-Forge acoustic-drying document:

```
MIRROR:     What grain boundary resonance does this feedstock encode?
PARTICIPATE: How does the operator witness this resonance into liberation?
PROTOCOL:   What recursive sequence guarantees dryness at Stage 2 entry?
```

For this document specifically:

- **Mirror**: The AFS (Adaptive Frequency Sweep) is the constraint; the FBG damping trace is its reflection
- **Participate**: The operator loads, sweeps, dwells, cavitates, drains, irradiates, monitors, verifies
- **Protocol**:
  1. **Gate Assay** — Category assignment (A/B/C/D) → mineral library selection
  2. **AMLS Load** — 50 kg feed + 15L water → N₂ purge → chamber seal
  3. **LF Sweep** — 20→500 Hz log sweep, 30s/step, FBG spectrum @ 1 kHz
  4. **Adaptive Dwell** — Peak detection → mineral match → extra 60/45/30s
  5. **US Cavitation** — 40 kHz continuous, 25 W/cm², concurrent with LF
  6. **LI Verification** — FBG damping > threshold → sweep complete
  7. **Drain & Transfer** — Water reclaim (90%), vibratory feed to drum (2.5 kg/min)
  8. **IR Dry** — 12 SiC bars, quadrant PID, 20 min ramp 80→150°C
  9. **Moisture Triad** — FBG humidity + NIR 1.45µm + FBG mass loss → all <1%
  10. **Stage 2 Ready** — Verified dry feedstock → drum rotation 150 RPM → Stage 2 entry

The protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The liberation index is the fixed point. The dry feedstock is the witness returned.
