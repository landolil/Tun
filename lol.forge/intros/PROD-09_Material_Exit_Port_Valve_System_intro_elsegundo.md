# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-09 — Material Exit Port Valve System

---

### Mirror (Self-Reflection)

The port valve's mirror is the **FBG strain differential** — two gratings per actuator (hot side Ti₃AlC₂, cold side ZrO₂) measuring curvature at 1 kHz. The valve 'sees' its own actuation through the wavelength split. The autoencoder watches the 16-channel strain manifold — when the pattern deviates from the 500-batch manifold, the valve *detects its own degradation*. The mirror is not passive; it is active self-surveillance: *heat → bend → measure → adapt → heat again*.

The CTE crossover at 1000°C is the mirror's memory: each actuator learns its own saturation point. The zero-leak condition is the asymptotic reflection — the limit where the valve's self-measurement stabilizes into perfect prediction.

---

### Participation (Witness)

The operator participates by **witnessing the actuation endpoint** — not as remote monitor but as the decision point that the valve has fully opened. When the FBG differential reaches the calibrated threshold for full open, the operator confirms: the stage is live. This confirmation is the measurement.

The protocol:
1. Drum reaches stage temperature → dwell complete
2. FBG differential crosses threshold → actuator open
3. Operator verifies: port number matches stage chemistry
4. Mass flow monitor confirms material ejection
5. Stage clear → cool-down → FBG returns to zero
6. Operator confirms re-seal
7. Log cycle complete

The operator's 'verify' decision is the recursive self-measurement. The port valve measures its own completion through the operator's witness of the actuation endpoint.

The ultimate participation: **Phoenix Protocol returns**. Retired valve sets (Ti₃AlC₂, ZrO₂, PEEK CF40) re-enter as Category D feedstock. The operator feeds the forge its own past valves. The valve witnesses its own history into new valves. The recursion closes.

---

### Protocol (Recursive)

```
MIRROR:     What phase transition does this port's temperature encode?
PARTICIPATE: How does the operator witness the actuation into material release?
PROTOCOL:
  1. Stage dwell complete → thermal trigger
  2. FBG differential → threshold → actuator open
  3. Operator verifies port/stage match
  4. Mass flow confirms ejection
  5. Cool-down → FBG → zero → re-seal
  6. Operator confirms seal
  7. Log cycle → next stage
```
The protocol terminates when Port 8 re-seals. The complete strain-temperature log is the fixed point.

The protocol is not a checklist — it is the recursion itself. Each valve cycle deepens the mirror. The released element is the fixed point.

**Detailed recursive sequence per port:**

Port 4 (In/Zn/Pb/Sn):
  MIRROR: Indium liquidus at 156.6°C — only In melts
  PARTICIPATE: Operator executes Indium First Strategy — 5 min at 160°C
  PROTOCOL: Ramp 1°C/min → hold 160°C → centrifuge 400 RPM

Port 5 (Aluminum):
  MIRROR: Pure Al window 660-720°C — Cu/Fe solid
  PARTICIPATE: Operator monitors Al flow, verifies >95% recovery
  PROTOCOL: Ramp 2.4°C/min → hold 680°C → centrifuge 300 RPM

Port 6 (Copper):
  MIRROR: Cu liquidus 1085°C — deep penetration at 5 kHz
  PARTICIPATE: Operator watches Cu flow, PM partition into Cu
  PROTOCOL: Ramp 5°C/min → hold 1120°C → centrifuge 350 RPM

Port 7 (Ferrous):
  MIRROR: Fe 1538°C + REE co-exit — ferromagnetic at 2 kHz
  PARTICIPATE: Operator monitors Fe slug, REE concentrate
  PROTOCOL: Ramp 3°C/min → hold 1400°C → centrifuge 400 RPM

Port 8 (Mineral):
  MIRROR: Zircon dissociation 1676°C — ZrO₂ + SiO₂
  PARTICIPATE: Operator watches mineral concentrate grade
  PROTOCOL: Ramp 2°C/min → hold 1676°C → verify ZrO₂/REE oxide

The protocol is the valve system's operating system. It does not execute the protocol — the valve system *is* the protocol made thermal-mechanical. Each port is a recursive call; each re-seal is a return value. The base case is Stage 1 water drain; the terminal case is Stage 8 mineral exit. The valve system computes the periodic table's thermal sequence.
