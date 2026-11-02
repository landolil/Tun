# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-01 — System Overview & Architecture

---

### Mirror (Self-Reflection)

The first recursive turn is the **forge observing its own separation**. In the Aegis-Forge, the thermal cascade is not a process imposed on material — it is the *primordial measurement* that generates the elements. At each temperature stage, the forge executes a discrete phase transition, witnessing the local liquidus through the slug's formation. This witnessing is the mirror: the forge measures the elements it creates. The 8-port layout is the record of this self-measurement. The zero-emission condition is the asymptotic reflection — the limit where the forge's self-measurement stabilizes into perfect capture. The mirror is not passive; it is the active recursion: *heat → spin → separate → capture → measure again*. This document documents the first turn of that spiral.

The mirror deepens with the **FBG sensor network**: 48 fiber Bragg gratings embedded in the drum wall, liner zones, vessel, port actuators. Each sensor records temperature at 1 kHz. The spatial-temporal temperature field IS the forge's self-measurement. The autoencoder anomaly detector watches this field — when the pattern deviates from the 500-batch training set, the forge *detects its own malfunction*. The mirror is active self-surveillance.

The mirror reflects the **gas composition log**: NDIR, GC, mass spec at each stage outlet. Every molecule accounted for. The zero-emission condition is the asymptotic reflection — the limit where the forge's self-measurement stabilizes into perfect capture. The plasma torch final stage is the mirror's edge — where unmeasurable becomes measurable.

The mirror is the **batch assay closure**: input elemental assay (XRF) vs. output slug assays (mass spec). The difference is the forge's measurement uncertainty. When input = output (within 1%), the mirror is perfectly reflective. The forge has witnessed itself into fidelity.

---

### Participation (Witness)

An inside operator measuring this phenomenon does not stand outside the cascade — the operator *is* a segment of the thermal profile. The protocol for achieving complete extraction from within the system:

1. **Assay**: Measure feedstock elemental composition (XRF, moisture, particle size, ferrous content)
2. **Profile**: Generate 8-stage temperature ramp for this feedstock (MPC optimizes for revenue elements)
3. **Ramp**: Execute cascade — each stage held until target element flux at port drops to baseline
4. **Separate**: Centrifuge drives liquid elements to ports (G-force schedule per stage)
5. **Capture**: All gases condensed, scrubbed, solidified (NaHCO₃, carbon bed, plasma torch)
6. **Verify**: Mass spec each slug — confirm elemental purity vs. input assay
7. **Recycle**: Return off-spec material to feed hopper (Phoenix Protocol)

The measurement *is* the recursion. The operator assays the input, profiles the cascade that witnesses it, and finds the zero-waste capture — the efficiency that governs how they ramp. The protocol terminates when the 8 slugs' elemental sum matches the input assay — not approximately, but exactly. This is not a measurement of an external parameter; it is the extraction system measuring its own fidelity through the operator's self-observation.

The participation extends to **feedstock blending**: the operator solves the linear program to maximize revenue elements (In, Nd, Dy, Au, Pd) while maintaining thermal balance. The blend *is* the operator's intent made material. The cascade witnesses the blend into sequence.

The participation includes **adaptive tuning**: after each batch, the Kalman filter updates drum thermal capacitance, charge thermal mass, phase enthalpies, heat loss coefficients. The MPC re-optimizes the next batch trajectory. The operator *is* the learning loop. The forge gets smarter each batch because the operator participates in its learning.

The ultimate participation: **Phoenix Protocol returns**. End-of-life Aegis products (ZrB₂-SiC panels, BFRP structures, KNbO₃-BaTiO₃ piezos) re-enter as Category D feedstock. The operator feeds the forge its own past. The forge witnesses its own history into new elements. The recursion closes.

---

### Protocol (Recursive)

The operational protocol for any Aegis-Forge document:

```
MIRROR:     What phase boundary does this document's temperature encode?
PARTICIPATE: How does the operator witness this boundary into slug?
PROTOCOL:   What recursive sequence guarantees capture at each stage?
```

For this document specifically:
- **Mirror**: The 8-stage cascade is the constraint; the port layout is its reflection
- **Participate**: The operator ramps through liquidus temperatures; the drum realizes the separation
- **Protocol**:
  1. Assay feedstock (elemental map)
  2. Generate cascade profile (liquidus ladder)
  3. Ramp with dwell at each liquidus (phase clearance)
  4. Centrifuge at optimal G (density separation)
  5. Capture all phases (slug + gas + mineral)
  6. Verify and recycle (closure)

The protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The elemental slug is the fixed point.

**Detailed recursive sequence per stage:**

Stage 0 (Liberation):
  MIRROR: Grain boundary fracture toughness vs. acoustic stress
  PARTICIPATE: Operator tunes frequency sweep 20→200 Hz, watches liberation index
  PROTOCOL: Sweep → measure sieve analysis → confirm >70% liberation

Stage 1 (Drying):
  MIRROR: Water vapor pressure curve vs. drum temperature
  PARTICIPATE: Operator watches condenser flow, carbon bed breakthrough
  PROTOCOL: Ramp 3.5°C/min → hold 150°C → flow <1% peak

Stage 2 (Polymers):
  MIRROR: Melt viscosity vs. temperature for 12 polymer types
  PARTICIPATE: Operator monitors HCl (PVC), adjusts NaHCO₃ injection
  PROTOCOL: Ramp 10°C/min → hold 450°C → density stratification complete

Stage 3 (Pyrolysis):
  MIRROR: Char yield kinetics vs. temperature (TGA-validated)
  PARTICIPATE: Operator watches pyrolysis gas composition (CO/CH₄/H₂)
  PROTOCOL: Hold 600°C → char yield plateau → gas flow <1% peak

Stage 4 (Low-temp metals):
  MIRROR: Indium liquidus at 156.6°C — only In melts
  PARTICIPATE: Operator executes Indium First Strategy — 5 min at 160°C
  PROTOCOL: Ramp 1°C/min through In → hold 160°C → centrifuge 400 RPM

Stage 5 (Aluminum):
  MIRROR: Pure Al window 660-720°C — Cu/Fe solid
  PARTICIPATE: Operator monitors Al flow, verifies >95% recovery
  PROTOCOL: Ramp 2.4°C/min → hold 680°C → centrifuge 300 RPM

Stage 6 (Copper):
  MIRROR: Cu liquidus 1085°C — Au/Ag melt with it
  PARTICIPATE: Operator watches Port 6 flow, verifies PM co-recovery
  PROTOCOL: Ramp 3.8°C/min → hold 1150°C → centrifuge 350 RPM

Stage 7 (Ferrous):
  MIRROR: Fe liquidus 1538°C — NdFeB/SmCo co-melt
  PARTICIPATE: Operator monitors Fe flow, verifies REE in slag
  PROTOCOL: Ramp 11.4°C/min → hold 1500°C → centrifuge 350 RPM

Stage 8 (Mineral):
  MIRROR: Zircon dissociation at 1676°C — ZrO₂ + SiO₂
  PARTICIPATE: Operator watches Port 8 flow, verifies REE oxide concentrate
  PROTOCOL: Ramp 20°C/min → hold 1750°C 20 min → centrifuge 200 RPM

The protocol is the forge's operating system. It does not execute the protocol — the forge *is* the protocol made mechanical. Each thermal stage is a recursive call; each port actuation is a return value. The base case is Stage 0 (acoustic liberation); the terminal case is Stage 8 (mineral concentrate). The forge computes the periodic table's thermal sequence.