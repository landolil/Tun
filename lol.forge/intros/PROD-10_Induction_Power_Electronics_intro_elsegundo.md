# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-10 — Induction Power Electronics

---

### Mirror (Self-Reflection)

The first recursive turn is the **power electronics observing its own power delivery**. In the Aegis-Forge I, the induction field is not a process imposed on material — it is the *primordial measurement* that generates the elements. At each frequency zone, the inverter executes a discrete resonant cycle, witnessing the local material response through the switch voltage zero-crossing. This witnessing is the mirror: the power electronics measures the coupling it creates. The 8-zone frequency ladder is the record of this self-measurement. The ZVS condition (dv/dt = 0 at turn-on) is the asymptotic reflection — the limit where the inverter's self-measurement stabilizes into lossless energy transfer. The mirror is not passive; it is the active recursion: *switch → resonate → measure zero-crossing → adjust varactor → switch again*. This document documents the first turn of that spiral.

The FBG sensor network is the extended mirror: 384 optical fibers embedded in the drum wall, each a witness to the temperature field the inverter creates. The interrogator's VCSEL sweep (650-850 nm, 1 kHz) is the measurement beam that does not perturb the measured — it is pure optical observation of the thermal field. The WDM+TDM multiplexing is the recursion: 8 wavelengths × 6 spatial channels = 48 sensors per zone, each reporting 125 Hz. The mirror does not merely reflect; it *generates* the control signal that shapes the next resonant cycle. The thermal PID outer loop (100 ms) and the resonance tracker inner loop (10 ms) are the two time-scales of the mirror's self-observation. The forge measures the elements it creates by measuring the power that creates them.

---

### Participation (Witness)

An inside operator measuring this phenomenon does not stand outside the power electronics — the operator *is* a segment of the resonant cycle. The protocol for achieving selective heating from within the system:

1. **Profile**: Measure feedstock elemental composition → generate frequency ladder
2. **Tune**: Command each inverter to its zone's target frequency (varactor bias + cap bank)
3. **Track**: Resonance tracker locks ZVS (inner loop, 100 Hz) — operator witnesses zero-crossing
4. **Ramp**: Thermal PID ramps power to hit zone setpoint (outer loop, 10 Hz) — operator witnesses temperature
5. **Separate**: Drum rotates, centrifuge drives liquid elements to ports — operator witnesses segregation
6. **Verify**: FBG sensors report zone temperatures; mass spec confirms slug purity — operator witnesses fidelity
7. **Recycle**: Off-spec material returns to feed hopper — operator witnesses closure

The measurement *is* the recursion. The operator profiles the frequency ladder that witnesses the feedstock, tunes the inverters that witness the material response, and finds the zero-waste capture — the efficiency that governs how they ramp. The protocol terminates when the 8 slugs' elemental sum matches the input assay — not approximately, but exactly. This is not a measurement of an external parameter; it is the power electronics measuring its own fidelity through the operator's self-observation.

The operator's participation is not optional — the resonance tracker *requires* the thermal PID's power command to know which frequency to track; the thermal PID *requires* the FBG's temperature report to know how much power to command; the FBG *requires* the VCSEL's sweep to know what wavelength to reflect. Each loop is a witness to the others. The operator is the recursive closure that makes the witnessing complete.

---

### Protocol (Recursive)

The operational protocol for any Aegis-Forge power electronics document:

```
MIRROR:     What frequency does this zone's target material encode?
PARTICIPATE: How does the operator witness the zero-crossing into ZVS?
PROTOCOL:   What recursive sequence guarantees selective heating at each stage?
```

For this document specifically:

- **Mirror**: The 8-zone frequency ladder is the constraint; the ZVS condition is its reflection
- **Participate**: The operator tunes the varactor bias that realizes the resonance; the tracker maintains it
- **Protocol**:
  1. Assay feedstock (elemental map → frequency ladder)
  2. Generate resonant tank parameters (L<sub>r</sub>, C<sub>shunt</sub>, cap bank per zone)
  3. Power-up sequence: Z1→Z8 at 10% power, verify ZVS
  4. Ramp with dual-loop: thermal PID (100 ms) + resonance tracker (10 ms)
  5. Dwell at each thermal setpoint until port flux drops to baseline (phase clearance)
  6. Verify slug purity via inline mass spec
  7. Recycle off-spec to feed hopper (closure)

The protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The resonant zero-crossing is the fixed point. The slug *is* the protocol's termination condition.
