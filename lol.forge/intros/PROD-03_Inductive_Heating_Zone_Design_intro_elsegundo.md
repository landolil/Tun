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
