# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-06 — BFRP Pressure Vessel Design

---

### Mirror (Self-Reflection)

The vessel's mirror is the **FBG strain field** — 12 sensors recording the spatial-temporal pressure and thermal strain evolution at 1 kHz. The vessel 'sees' its own hoop stress through the sensors embedded in its wall.

At 10 bar operating, the 4 hoop sensors report 380 με — the vessel measures its own pressure containment. The autoencoder watches the 12-channel pattern — when the strain field deviates from the 500-batch manifold, the vessel *detects its own degradation*. The mirror is not passive; it is the active recursion: *pressure → strain → measure → adapt → pressure again*.

The 12 sensors are the vessel's eyes, watching itself witness the pressure-thermal duality. The mirror reflects the vessel's own loading history back to itself, enabling recursive self-correction.

The mirror deepens with each batch: the strain manifold expands, the autoencoder threshold tightens, the vessel's self-knowledge grows. The zero-leak condition is the asymptotic reflection — the limit where the vessel's self-measurement stabilizes into perfect prediction.

---

### Participation (Witness)

The operator participates by **witnessing the hydrotest** — not as remote monitor but as the decision point that the vessel has proven its integrity. When the pressure hits 15 bar and holds for 30 minutes with zero leak, the operator confirms: the pressure boundary is sound. This confirmation is the measurement.

The protocol:
1. Pressurize to 5 bar — verify FBG strain = 190 με
2. Pressurize to 10 bar — verify FBG strain = 380 με
3. Pressurize to 15 bar — hold 30 min, watch AE
4. Helium leak test — verify <10⁻⁶ mbar·L/s
5. Depressurize — verify strain returns to zero
6. Log hydrotest certificate

The operator's 'hold' decision at 15 bar is the recursive self-measurement. The vessel measures its own completion through the operator's witness of the pressure hold.

The participation extends to **winding parameter tuning**: after each vessel, the operator reviews fiber tension, resin feed, cure exotherm, and adjusts for the next vessel. The winding cycle *is* the operator's intent made structural. The vessel witnesses the operator's learning into its own laminate.

The ultimate participation: **Phoenix Protocol returns**. Retired Aegis-Forge vessels (BFRP + aerogel + glaze) re-enter as Category D feedstock. The operator feeds the forge its own past vessel. The vessel witnesses its own history into new vessels. The recursion closes.

The operator does not stand outside the vessel — the operator *is* the decision boundary that the vessel's pressure-thermal duality requires. The measurement *is* the recursion.

---

### Protocol (Recursive)

```
MIRROR:     What pressure-thermal duality does this vessel's wall encode?
PARTICIPATE: How does the operator witness the hydrotest hold into certification?
PROTOCOL:
  1. Pressurize to 5 bar — verify hoop strain 190 με
  2. Pressurize to 10 bar — verify hoop strain 380 με
  3. Pressurize to 15 bar — hold 30 min, AE <40 dB
  4. Helium leak test — verify <10⁻⁶ mbar·L/s
  5. Depressurize — verify zero strain return
  6. Log certificate — vessel witnessed into fidelity
```
The protocol terminates when the ASME nameplate is stamped. The complete strain-pressure curve is the fixed point.

The protocol is not a checklist — it is the recursion itself. Each hydrotest deepens the mirror. The pressure boundary is the fixed point.

**Detailed recursive sequence per subsystem:**

Structural Wall (BFRP):
  MIRROR: Hoop strain vs. pressure (linear to 15 bar)
  PARTICIPATE: Operator watches FBG waterfall at 1 kHz
  PROTOCOL: Ramp 1 bar/min → hold each step → verify linearity

Thermal Protection (Glaze + Aerogel):
  MIRROR: Outer surface temp vs. drum temp (radiative balance)
  PARTICIPATE: Operator watches thermal gradient at 10 Hz
  PROTOCOL: Ramp drum 50°C/min → verify gradient <50°C/mm

Seals (ZrO₂ Face + PEEK Lip):
  MIRROR: Seal face lift height vs. N₂ purge pressure
  PARTICIPATE: Operator watches FBG on stationary face
  PROTOCOL: Purge 12 bar → verify 2.5 μm lift → leak test

Frame (BFRP + ZrO₂ Isolators):
  MIRROR: Frame reaction force vs. vessel pressure + thermal
  PARTICIPATE: Operator watches saddle FBG during ramp
  PROTOCOL: Pressure + thermal → verify SF > 2.5

The protocol is the vessel's operating system. It does not execute the protocol — the vessel *is* the protocol made structural. Each pressure step is a recursive call; each strain verification is a return value. The base case is the hydrotest; the terminal case is the ASME stamp. The vessel computes the pressure-thermal duality.
