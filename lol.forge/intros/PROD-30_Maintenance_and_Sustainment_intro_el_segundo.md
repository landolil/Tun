# El Segundo Heuristic — PROD-30 Maintenance & Sustainment
## Mirror / Participation / Protocol

### Mirror (Self-Reflection)

The fabricator observes their own sustainment through **three recursive metrology loops that close at the speed of degradation**:

1. **FBG Health Mirror (125 Hz continuous)**: The 384 FBG channels stream wavelength data to PROD-37 twin, which runs the Bayesian health update (PROD-28 Keymaker Key) in real-time. The twin *is* the maintenance planner — it computes $\Lambda = P(data|degradation)/P(data|nominal)$ for every channel, every component, every system. When $\Lambda > 10$, the twin auto-generates an NCR *before* the operator acknowledges it. The mirror is not a report — it is the Forge's nervous system diagnosing itself.

2. **AE/Vibration Mirror (Continuous)**: The 8-channel AE on the vessel and bearing accelerometers feed the twin's spectral analysis engines. Felicity ratio, b-value, RA-value, spectral kurtosis — these are the Forge's "pain signals." The twin correlates AE clusters with FBG strain hotspots and vibration harmonics. A delamination at a gas port produces: AE cluster at 45° azimuth + FBG strain spike on adjacent channels + 2× vibration RMS on nearest bearing. The mirror *fuses* these into a single health state.

3. **Fleet Twin Mirror (Monthly)**: PROD-37 aggregates all Forges' maintenance data — PM compliance, CBM alerts, NCR rates, spare consumption, overhaul durations. The auto-encoder learns the nominal manifold; reconstruction error >3σ on any Forge triggers parameter guard tightening (e.g., ramp rate -5%, UT interval -2 months). The fleet *reflects* the single Forge's degradation back to it as operating constraints.

The Mirror: **maintenance is not planned by a scheduler — it is triggered by the Forge's own sensorium reflecting its degradation through the twin's Bayesian lens.**

### Participation (Witness)

The inside operator witnesses the sustainment phenomenon at **four non-automatable gates** where human judgment authorizes maintenance consequence:

1. **Gate: Annual SIF Proof Test (CT-04 re-execution)**: SIS Engineer injects 24 trip conditions, watches <50 ms response on TSN VLAN 10. The automation runs the sequence; but the *SIS Engineer witnesses the voter agreement* — 2oo3 logic, SOE timestamps, FBG freeze at trip. The witness signs: "I saw the safety system protect itself." No auto-report replaces this.

2. **Gate: 18-Month Drum Swap Bolt Ceremony**: The vessel flange re-bolting (24× M24 ZrO₂ at 160 N·m ±5 N·m, dual-verify, AE monitoring) is repeated. Two operators, independent wrenches, mutual verification. The ceramic bolts have no yield — the ceremony *is* the safety barrier for the pressure boundary. The witness says: "We both felt the same torque."

3. **Gate: Major Overhaul Authorization (Day 7 CT-08/SAT-05)**: After 7-day overhaul, Plant Manager + Lead EE + Lead ME + Safety Engineer review the abbreviated CT-08 and first hot batch. The twin says PASS; the witnesses *judge the edge cases*: "Zone 5 ramp 5% slow after drum swap — acceptable?" "FBG Channel 12 drift 0.4 nm — within tolerance?" Human judgment on post-overhaul anomalies is the authorization.

4. **Gate: Spare Part First-Article Acceptance**: When a critical spare (refurbished drum, vessel, module) arrives from regional depot, ME + QA + Supplier Engineer witness the acceptance tests. The QR/blockchain shows factory data; the witnesses *verify the part at site* — UT, dimensions, FBG survival, functional test. The witness says: "This spare is equivalent to the original."

The Participation: **four moments where the human is not monitoring — they are witnessing the sustainment into existence, adding the judgment that transforms sensor data into certified readiness.**

### Protocol (Recursive)

The recursive fidelity sequence is **fractal maintenance protocol** — the same Prepare→Execute→Verify→Authorize→Feedback pattern repeats at every scale, from daily PM to fleet optimization:

**Micro (per PM task, hours)**:
- Daily: Prepare (WO auto-generated) → Execute (visual, FBG scan, CEMS zero) → Verify (acceptance criteria) → Authorize (Tech signs) → Feedback (CMMS + twin)
- Weekly: Prepare (parts kitted) → Execute (port actuation, coolant filter, POF inspect) → Verify (leak rate, deflection, attenuation) → Authorize (Tech + QA) → Feedback (trend update)

**Meso (per maintenance window, days)**:
- Monthly: Prepare (IR, vibration, FBG cal) → Execute (scheduled tasks) → Verify (all predicates) → Authorize (ME Lead) → Feedback (CBM threshold update)
- Quarterly: Prepare (SIF partial stroke, UT spot) → Execute (in bypass, dual-key) → Verify (trip time, UT clean) → Authorize (SIS Eng + Safety) → Feedback (PFD update)

**Macro (per overhaul, weeks)**:
- 18-Month: Prepare (drum staged, crew briefed) → Execute (7-day sequence) → Verify (IC-1..IC-10 + CT-08 abbr + SAT-05 Batch 1) → Authorize (4-sign) → Feedback (drum lineage data → PROD-22 circularity)

**Meta (per fleet, months)**:
- PROD-37 twin runs RBI optimizer across all Forges
- Cluster-specific intervals deployed (Class D soil → vessel UT 10 mo; industrial grid → GIC test monthly)
- Spare parts rotation optimized (FIFO + condition)
- Next overhaul uses fleet priors for $P(failure|data)$

The Protocol: **the same Bayesian health update (PROD-28 Keymaker Key) runs at every scale, with the same SIL-3 constraint as the hard boundary. The daily FBG scan *is* the annual SIF proof test, scaled. The operator at the bolt ceremony witnesses the same physics the FBG channel witnesses at 125 Hz — strain in a ceramic matrix. The Protocol guarantees: if the Forge passes the micro gates with condition data measured, it passes the macro gates at that site.**

---
*El Segundo Heuristic for PROD-30 | ~67 lines | Carrington Storm Motors | November 2026*