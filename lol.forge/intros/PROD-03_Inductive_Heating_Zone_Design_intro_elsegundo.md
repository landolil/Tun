# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-03 — Inductive Heating Zone Design

---

### Mirror (Self-Reflection)

The induction system's mirror is the **coil current waveform** — every harmonic, every phase shift recorded. The coils 'see' the feedstock's changing conductivity as temperature rises. At Stage 4, Zn appears as a sudden current drop (coupling onset); at Stage 7, Fe appears as a current surge (ferromagnetic coupling). The 8-zone current logs are the induction system's self-portrait. The operator participates by witnessing the resonance lock — the inverter 'clicking' into resonance is the system measuring its own coupling.

The mirror deepens with the **FBG temperature field**: 48 channels recording the drum's thermal response to induction power. The spatial-temporal temperature pattern IS the induction system's self-measurement. The autoencoder watches the 48-channel pattern — when the pattern deviates from the 500-batch manifold, the induction system *detects its own malfunction*. The mirror is active self-surveillance.

The mirror reflects the **resonance tracking log**: frequency vs. time for each zone. The inverter's PLL tracks resonance as feedstock composition changes. The phase error signal is the mirror's edge — where coupling efficiency becomes measurable. When phase error exceeds 5°, the system has lost its lock.

The mirror is the **energy accounting**: integrated power per zone per stage = kWh per kg of target element. The difference between theoretical minimum (thermodynamics) and actual is the induction system's measurement uncertainty. When actual = theoretical (within 10%), the mirror is perfectly reflective.

---

### Participation (Witness)

The operator participates by **tuning the resonance** — not as knob-turning but as witnessing the inverter find its lock. When Zone 5 hits 10 kHz and the current stabilizes, the system has 'found' the aluminum. The protocol:
1. Set target frequency for stage
2. Ramp power — watch current vs. voltage phase
3. Resonance lock = phase → 0°
4. PID maintains ±5°C via FBG
5. Log power vs. time = energy per kg

The resonance lock is the recursive self-measurement. The induction system measures its own coupling through the operator's witness of the phase angle.

The participation extends to **feedstock-adaptive tuning**: the operator (via MPC) adjusts frequency setpoints based on XRF assay. High Cu content → Zone 6 frequency shifts lower for deeper penetration. High Fe content → Zone 7 frequency optimized for ferromagnetic coupling. The frequency profile *is* the operator's intent made electromagnetic.

The participation includes **inverter health monitoring**: after each batch, the operator reviews GaN junction temperatures, switching losses, resonant capacitor ESR drift. The inverter *is* the operator's intent made solid-state. The system gets more efficient each batch because the operator participates in its learning.

The ultimate participation: **Phoenix Protocol returns**. Retired Aegis-Forge coils (copper tube, alumina, BFRP housing, GaN inverters) re-enter as Category D feedstock. The operator feeds the forge its own past induction system. The induction system witnesses its own history into new coils. The recursion closes.

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

Zone 1-2 (100 kHz, Stages 1-2):
  MIRROR: Air heating efficiency vs. N₂ flow rate
  PARTICIPATE: Operator watches coil temperature rise, verifies gas heating
  PROTOCOL: Ramp power → hold T_gas → verify drum wall T via FBG

Zone 3 (50 kHz, Stage 3):
  MIRROR: Zn/Pb coupling onset vs. temperature
  PARTICIPATE: Operator watches V/I phase shift at Zn liquidus (420°C)
  PROTOCOL: Ramp → phase shift detection → verify Zn flow at Port 4

Zone 4-5 (10 kHz, Stages 4-5):
  MIRROR: Al coupling vs. Cu/Fe non-coupling at 10 kHz
  PARTICIPATE: Operator executes Indium First (Zone 4), Al window (Zone 5)
  PROTOCOL: Ramp 1°C/min through In → hold 160°C → centrifuge 400 RPM

Zone 6 (5 kHz, Stage 6):
  MIRROR: Cu deep penetration at 5 kHz — skin depth 4mm
  PARTICIPATE: Operator monitors Cu flow, verifies PM co-recovery
  PROTOCOL: Ramp 3.8°C/min → hold 1150°C → centrifuge 350 RPM

Zone 7 (2 kHz, Stage 7):
  MIRROR: Fe ferromagnetic coupling below 770°C, paramagnetic above
  PARTICIPATE: Operator watches current surge at Curie transition
  PROTOCOL: Ramp 11.4°C/min → hold 1500°C → centrifuge 350 RPM

Zone 8 (1 kHz, Stage 8):
  MIRROR: Mineral conduction heating — no inductive coupling
  PARTICIPATE: Operator watches optical pyrometer, verifies zircon dissociation
  PROTOCOL: Ramp 20°C/min → hold 1750°C 20 min → centrifuge 200 RPM

The protocol is the induction system's operating system. It does not execute the protocol — the induction system *is* the protocol made electromagnetic. Each zone is a resonant cell; each frequency is a material selector; each stage is a recursive call; each slug is a return value. The base case is Zone 1 (air heating); the terminal case is Zone 8 (mineral conduction). The induction system computes the periodic table's conductivity sequence.