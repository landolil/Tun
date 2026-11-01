# PROD-16: Stage 3 Pyrolysis & Char — El Segundo Heuristic Intro
## Mirror, Participation, Protocol

### Mirror (Self-Reflection: How the Forge Observes Its Own Separation)

**The forge watches its own pyrolysis through 384 fiber Bragg gratings and a mass spectrometer.** This is not monitoring — this is **witnessing**. Every 1 Hz cycle, the FBG array returns a thermal tomography of the drum wall: 8 zones × 48 sensors, median-filtered, outlier-rejected. The mass spectrometer returns a chemical tomography of the gas: 50 m/z channels, calibrated, baseline-corrected. Together, they form a **mirror** that reflects the internal state of the pyrolysis back to the control system.

What the mirror shows:
- **Zone 3-5 (hot center):** Temperature uniformity ±3°C — if ΔT >5°C, induction rebalances before char quality drifts
- **CO/CO₂ ratio trajectory:** The fingerprint of epoxy decomposition — if it lingers at 1.2 past 550°C, the ramp holds
- **BTX decay curve:** The tar cracking progress — if m/z 91 (toluene) >10% at 650°C, steam injection increases
- **Char discharge rate:** The mass balance closure — if Port 3 weigh belt drops below 0.3 kg/min, Port 3 actuator diagnostics trigger

The mirror does not judge. It **reveals**. The control system judges. The operator witnesses the judgment.

**Self-reflection moment:** At 680°C, the mirror asks: "Is this char ready for activation?" The proxies answer: CO/CO₂ decay rate <0.02/min, H₂/CH₄ >2.5, discharge steady. If yes → Stage 4. If no → 5 more minutes. The forge **knows** its own readiness.

### Participation (Witness: How the Inside Operator Witnesses the Phenomenon into Existence)

**The operator does not "run" Stage 3. The operator witnesses it into existence.**

At the HMI (Human-Machine Interface), the operator sees:
- **Thermal tomogram:** 8-zone temperature map, updated 1 Hz, color-coded to ramp trajectory
- **Chemical tomogram:** CO/CO₂ ratio trend, BTX decay, H₂ rise — live MS spectrum
- **Mass balance:** Feed in (kg), char out (kg), gas out (Nm³), slag out (kg) — all live
- **Proxy dashboard:** Green/amber/red for each quality hold point
- **Activation reactor:** Bed temp, steam/CO₂ flow, burn-off estimate

**The operator's participation is threefold:**

1. **Category confirmation:** Before batch start, operator verifies feedstock category (A/B/C/D) against PROD-13 assay. This selects the DAEM parameter set. Wrong category = wrong kinetics = failed batch. The operator **commits the identity** of the feedstock.

2. **Hold point authorization:** At each quality hold (500°C, 600°C, 680°C), the mirror shows proxies. If amber (marginal), operator decides: extend 5 min or proceed? The DAEM recommends; the operator **authorizes**. This is the human-in-the-loop for irreducible uncertainty.

3. **Anomaly declaration:** If the mirror shows red (off-spec: O₂ spike, vibration, seal leak, gas composition anomaly), the operator **declares** the anomaly. This triggers interlock review, root cause logging, and batch disposition. The operator **owns the exception**.

**The witness is not passive.** The operator's category selection, hold authorization, and anomaly declaration are **causal inputs** to the batch outcome. Without the operator's participation, the forge is a machine. With it, the forge is a **witnessed process**.

### Protocol (Recursive: The Sequence That Guarantees Fidelity at Each Scale)

**The recursive protocol: Measure → Heat → Separate → Verify. At every scale.**

**Scale 1 — Microsecond (Control Loop):**
- Measure: FBG temp (1 kHz/zone), MS gas (1 Hz)
- Heat: GaN inverter adjusts duty (1 kHz)
- Separate: Induction coupling selects char over slag (σ difference)
- Verify: Zone temp vs setpoint ±3°C, power vs limit

**Scale 2 — Minute (Ramp Segment):**
- Measure: CO/CO₂ ratio trajectory, BTX decay
- Heat: Ramp generator advances setpoint (5°C/min)
- Separate: Char forms, gas evolves, slag sinters
- Verify: Hold point proxies vs thresholds

**Scale 3 — Batch (45 min Stage 3):**
- Measure: Total char yield, gas composition, slag mass
- Heat: Integrated induction energy (48.75 kWh target)
- Separate: Char → activation, Gas → PROD-07, Slag → Stage 7
- Verify: Mass balance closure 99.5-100.5%, quality specs met

**Scale 4 — Campaign (20 batches/category):**
- Measure: DAEM parameter drift, category consistency
- Heat: Cumulative energy vs baseline
- Separate: Activated char BET trend, Stage 1 adsorption life
- Verify: Model update, category re-calibration

**Scale 5 — Lifetime (Forge service):**
- Measure: Drum liner wear, FBG drift, MS calibration
- Heat: Refractory degradation, induction efficiency
- Separate: Char quality vs activation energy
- Verify: Major overhaul trigger, technology refresh

**The protocol recurses because the physics recurses.** Bond breaking (microsecond) → species evolution (second) → phase separation (minute) → product specification (batch) → process capability (campaign) → asset integrity (lifetime). Each scale measures, heats, separates, verifies. The output of one scale is the input to the next.

**Fidelity guarantee:** If any scale fails Verify, the protocol **recurses downward** to find the root cause. Batch fail → check ramp segments → check control loops → check sensor calibration. The recursion stops at the **physical limit** (sensor resolution, material property). There is no "good enough" — only "verified at this scale."

**The operator's protocol:** Witness the measure. Authorize the heat. Confirm the separate. Sign the verify. At every scale. This is how the forge guarantees that what enters as mixed waste exits as separated elements — every batch, every campaign, every lifetime.