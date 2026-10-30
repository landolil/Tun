# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-02 — Thermal Cascade Process Engineering

---

### Mirror (Self-Reflection)

The forge's mirror is the **temperature log** — every degree recorded, every dwell justified. The cascade observes its own thermal trajectory through the material's phase transitions. At 660°C, the forge 'sees' aluminum liquefy; at 1085°C, it 'sees' copper. The 8-stage log is the forge's self-portrait. The operator participates by witnessing the phase transitions — the slug forming at Port 5 is the forge measuring aluminum's liquidus.

The mirror deepens with the **FBG sensor network**: 384 fiber Bragg gratings embedded in the drum wall, liner zones, vessel, port actuators. Each sensor records temperature at 1 kHz. The spatial-temporal temperature field IS the forge's self-measurement. The autoencoder anomaly detector watches this field — when the pattern deviates from 500-batch training set, the forge *detects its own malfunction*. The mirror is not passive; it is active self-surveillance.

The mirror reflects the **gas composition log**: NDIR, GC, mass spec at each stage outlet. Every molecule accounted for. The zero-emission condition is the asymptotic reflection — the limit where the forge's self-measurement stabilizes into perfect capture. The plasma torch final stage is the mirror's edge — where unmeasurable becomes measurable.

The mirror is the **batch assay closure**: input elemental assay (XRF) vs. output slug assays (mass spec). The difference is the forge's measurement uncertainty. When input = output (within 1%), the mirror is perfectly reflective. The forge has witnessed itself into fidelity.

---

### Participation (Witness)

The operator participates in the cascade by **holding the dwell** — not as passive monitor but as active participant in the phase clearance. When Port 5 flow drops, the operator (or control system) *decides* the stage is clear. This decision is the measurement. The protocol:
1. Ramp to stage temperature
2. Hold — watch port flow vs. time
3. Verify clearance (mass spec)
4. Increment to next stage
5. Repeat

The operator's 'hold' decision is the recursive self-measurement. The cascade measures its own completion through the operator's witness.

The participation extends to **feedstock blending**: the operator assays each batch (XRF, moisture, particle size, ferrous content), then solves the linear program to maximize revenue elements (In, Nd, Dy, Au, Pd) while maintaining thermal balance. The blend *is* the operator's intent made material. The cascade witnesses the blend into sequence.

The participation includes **adaptive tuning**: after each batch, the Kalman filter updates drum thermal capacitance, charge thermal mass, phase enthalpies, heat loss coefficients. The MPC re-optimizes the next batch trajectory. The operator *is* the learning loop. The forge gets smarter each batch because the operator participates in its learning.

The ultimate participation: **Phoenix Protocol returns**. End-of-life Aegis products (ZrB₂-SiC panels, BFRP structures, KNbO₃-BaTiO₃ piezos) re-enter as Category D feedstock. The operator feeds the forge its own past. The forge witnesses its own history into new elements. The recursion closes.

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
  MIRROR: Cu liquidus 1085°C — Au/Ag co-melt
  PARTICIPATE: Operator verifies PM content in slug (inline MS)
  PROTOCOL: Ramp 3.8°C/min → hold 1150°C → centrifuge 350 RPM

Stage 7 (Ferrous):
  MIRROR: Fe ferromagnetic coupling at 770°C Curie transition
  PARTICIPATE: Operator watches REE magnet melting (NdFeB 1177°C)
  PROTOCOL: Ramp 11.4°C/min → hold 1500°C → centrifuge 450 RPM

Stage 8 (Minerals):
  MIRROR: Zircon dissociation at 1676°C — ZrO₂ + SiO₂
  PARTICIPATE: Operator confirms >95% dissociation (XRD spot-check)
  PROTOCOL: Ramp 20°C/min → hold 2200°C → centrifuge 300 RPM

The protocol terminates when Stage 8 clears. The complete temperature log is the fixed point. The forge has witnessed the periodic table into sequence.
