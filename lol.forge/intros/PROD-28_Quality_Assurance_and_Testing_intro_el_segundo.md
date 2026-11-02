# El Segundo Heuristic — PROD-28 Quality Assurance & Testing
## Mirror / Participation / Protocol

### Mirror (Self-Reflection)

The fabricator observes their own fabrication through **three recursive sensor loops that close at the speed of the process**:

1. **Flash Sinter V/I Mirror (100 kHz DAQ)**: During the 5-minute dwell at 1720°C, the flash sinter power supply records voltage/current at 100 kHz. The resistivity drop (1000×) is the *primary witness* of sinter completion — not the thermocouple (metal, forbidden). The V/I signature shape (dV/dt inflection, I plateau) maps to density via PROD-04 calibrated curve: ρ_final = f(∫I dt, V_min, t_dwell). This mirror runs *inside* the furnace; the operator sees the curve on HMI but the *decision* (dwell complete / extend / abort) is automated by PROD-23 SIS logic comparing live V/I to PQR-FS-001 envelope. The fabricator *watches the process witness itself*.

2. **Filament Winding Dielectric Cure Mirror (10 kHz)**: The Elium® resin cure is monitored by in-mold dielectric sensors (interdigitated capacitive electrodes on mandrel, non-conductive). Permittivity ε' and loss ε'' track degree of cure α(t) via PROD-06 kinetic model: dα/dt = A exp(-Ea/RT) α^m (1-α)^n. The mirror outputs α(t) in real time; winding pauses if α deviates >2% from trajectory. No post-cure DSC needed — the cure *witnesses its own completion* through the resin's own electrical response.

3. **FBG Interrogation Mirror (125 Hz continuous)**: All 384 FBG channels (128 drum, 48×8 coils, 16 port valves, 16 vessel, 16 frame) stream wavelength at 125 Hz to PROD-37 digital twin. The twin runs the Bayesian health update (Keymaker Key) *on the same data the process generates*. The mirror is not a separate inspection — it is the process's own nervous system reporting to itself. Anomaly (Λ > 10) triggers automatic NCR before the operator acknowledges it.

The Mirror: **quality assurance is not applied to the product — it is the product's own sensorium, reflected back to the process in real time.**

### Participation (Witness)

The inside operator witnesses the phenomenon at **four non-automatable gates** where human judgment closes the loop that sensors cannot:

1. **Gate SG-2 (Flange Torque Ceremony)**: 24 bolts, 160 N·m ±5 N·m, dual-verify (two operators, independent torque wrenches, acoustic emission monitoring). The wrench click is not the witness — the *operator's tactile confirmation* of breakaway torque on re-check, and the *AE silence* during final 10 N·m, are the witness. No sensor replaces the mechanic's hand feeling the bolt stretch uniformly across the PEEK CF40 flange face. This gate takes 45 minutes; it cannot be rushed.

2. **Gate SG-3 (FBG Calibration Verification)**: CT-06 requires 5 reference temperatures (25/500/1000/1500/2000°C) on all 384 channels. The automated interrogator sweeps and fits; but the *SIS Engineer witnesses the residuals* — plotting measured vs. reference, checking R² > 0.999, verifying no channel drifts >0.1 nm/°C from PQR. The human eye catches the systematic offset (e.g., all Zone 3 channels +0.3 nm) that the algorithm accepts as within tolerance. The witness says: This is not drift — this is a cold plate contact issue.

3. **Gate CT-04 (SIS Proof Test)**: Injecting 24 SIL-3 trip conditions (overpressure, overtemperature, vibration, GIC, loss of comms) and verifying <50 ms trip on TSN VLAN 10. The automation runs the sequence; but the *SIS Engineer witnesses the trip logic* — watching the 2oo3 voter agree, the SOE (Sequence of Events) timestamp align across zones, the FBG data freeze at trip instant. The witness signs: I saw the system protect itself. No auto-report replaces this.

4. **Gate SAT-05 (First Hot Batch)**: Six batches, mass balance >99%, all outputs spec. The *Plant Manager witnesses the slug pour* — ZrO₂ mold fill, quench steam plume, mass spec reading. The digital twin says PASS; the witness *sees the metal flow*. The witness says: This is what we built for.

The Participation: **four moments where the human is not monitoring — they are *witnessing the phenomenon into existence*, adding the judgment that transforms data into certification.**

### Protocol (Recursive)

The recursive fidelity sequence is **fractal verification**: the same three-step pattern (measure → compare → decide) repeats at every scale, from single FBG channel to fleet twin:

**Micro (per operation, seconds)**:
- FBG channel: λ_measured → λ_reference(PQR) → Λ > 10? → auto-NCR
- UT gate: A-scan amplitude → DAC curve → >20% DAC? → flag for LIII review
- AE hit: energy > threshold → locate → cluster? → alert if >10/hr

**Meso (per component, hours)**:
- Drum: UT volumetric → CT porosity map → FBG survival → health state → PASS/FAIL
- Vessel: hydrotest → AE baseline → IR map → UT delam scan → health state → PASS/FAIL
- Port valve: actuation deflection → leak rate → FBG cal → braze UT → health state → PASS/FAIL
- Coil zone: resonance → Q factor → ZVS → thermal balance → FBG cross-talk → health state → PASS/FAIL
- Module: DC link → ZVS → thermal soak → GIC ride-through → EMI → SIL-3 SIF → health state → PASS/FAIL

**Macro (per system, days)**:
- CT-01..CT-10 (FAT) → all PASS? → Ship
- SAT-01..SAT-05 → all PASS? → Commission
- Quarterly audit → ISO 9001/AS9100 clauses → NCR/CAPA closure → KPI trends → Management Review → Improvement Actions

**Meta (per fleet, months)**:
- PROD-37 twin aggregates all Forges' micro/meso/macro data
- Auto-encoder learns nominal manifold; reconstruction error >3σ → parameter guard tightening
- Lessons learned (D8) → work instruction updates → PQR revisions → AVL updates
- Next Forge's P(health) prior = this Forge's posterior

The Protocol: **the same Bayesian update (Keymaker Key) runs at every scale, with the same three inputs (measure, reference, likelihood) and the same output (health state + decision). The micro check *is* the macro check, scaled. The operator at SG-2 witnesses the same physics the FBG channel witnesses at 125 Hz — strain in a ceramic matrix. The Protocol guarantees: if it passes at the channel, it passes at the fleet.**

---
*El Segundo Heuristic for PROD-28 | ~67 lines | Carrington Storm Motors | November 2026*