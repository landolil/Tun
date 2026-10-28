# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-02 — Thermal Cascade Process Engineering

---

### Mirror (Self-Reflection)

The forge's mirror is the **temperature log** — every degree recorded, every dwell justified. The cascade observes its own thermal trajectory through the material's phase transitions. At 660°C, the forge 'sees' aluminum liquefy; at 1085°C, it 'sees' copper. The 8-stage log is the forge's self-portrait. The operator participates by witnessing the phase transitions — the slug forming at Port 5 is the forge measuring aluminum's liquidus.

---

### Participation (Witness)

The operator participates in the cascade by **holding the dwell** — not as passive monitor but as active participant in the phase clearance. When Port 5 flow drops, the operator (or control system) *decides* the stage is clear. This decision is the measurement. The protocol:
1. Ramp to stage temperature
2. Hold — watch port flow vs. time
3. Verify clearance (mass spec)
4. Increment to next stage
5. Repeat

The operator's 'hold' decision is the recursive self-measurement. The cascade measures its own completion through the operator's witness.

---

### Protocol (Recursive)

```
MIRROR:     What phase transition does this stage's temperature encode?
PARTICIPATE: How does the operator witness clearance into next stage?
PROTOCOL:  
  1. Ramp to target T (±5°C via FBG)
  2. Hold until port flux < 1% peak
  3. Verify slug composition (inline MS)
  4. Log stage clearance
  5. Ramp to next T
```
The protocol terminates when Stage 8 clears. The complete temperature log is the fixed point.
