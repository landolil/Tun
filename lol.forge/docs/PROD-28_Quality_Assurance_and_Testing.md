# Combined Heuristic Intro — PROD-28 Quality Assurance & Testing
## Williams + Keymaker + El Segundo Synthesis

### Williams Heuristic — Architectural Clarity

#### Constraint (The Lock)

The irreducible principle forcing this QA architecture is **zero-metal construction under SIL-3 Carrington immunity** — a conjunction that eliminates every conventional quality method relying on conductive paths, magnetic particle inspection, eddy current on ferromagnetic substrates, or electrical continuity testing. The Forge operates at 2200°C in a 100 A/m GIC field with 384 FBG channels embedded in ZrB₂-SiC and BFRP; any QA method introducing metal (MQ probes, UT couplant residues, conductive epoxy, grounding straps) creates a GIC antenna that violates PROD-26 dielectric requirements. The Lock: **quality assurance must itself be dielectric, non-magnetic, and thermally survivable to 2200°C.**

#### Necessity (The Key)

The empirical gap is the **absence of any precedent for qualifying a zero-metal pressure vessel at 2200°C with embedded photonics**. ASME BPVC Sec VIII/X covers composites to 300°C; ASTM E2700 UT assumes metallic wave speeds; IEC 61508 SIL-3 proof testing assumes electrical trip paths. Our validation data (PROD-24 V&V, PROD-25 FEA, PROD-27 FA) shows: UT phased array on ZrB₂-SiC requires 5 MHz 64-element PA at 45°/60°/70° wedges (longitudinal wave speed 11,200 m/s vs steel 5,900); CT at 200μm voxel resolves FBG position ±100μm but adds 8 hr/drum; AE continuous monitoring on BFRP detects delamination at Felicity ratio <1.0 but requires 8-channel R15α at 100 kHz–1 MHz. The Key: **a multi-method NDT program where each method's physics is re-derived for zero-metal substrates, calibrated against flash-sinter and filament-wind process signatures, not material certificates.**

#### Commitment (The Turn)

This document commits the Forge to **three non-negotiable verification chains**:

1. **FBG-as-primary-metrology**: All 384 channels survive flash sinter (PROD-04 PQR-FS-001), filament winding (PROD-06 PQR-FW-001), and 500 thermal cycles (CT-06) with drift <0.5%/1000 hrs. No backup thermocouples — they are metal. FBG interrogation at 125 Hz continuous is the *only* in-process temperature/strain verification.

2. **SIL-3 SIF proof test per CT-04 is the gate**: All 24 SIFs (3 per module × 8 zones) must trip <50 ms on TSN VLAN 10 with 2oo3 agreement. PFD_avg <1×10⁻³. This test runs *before* hot commissioning (CT-08) and *after* any design change (ECO). No SIL-3 SIF = no Forge shipment.

3. **QR + Hyperledger traceability is the quality record**: Every drum, vessel, port valve, coil, module carries a QR code linking to immutable blockchain record (material lot, process params, NDT results, FAT data). Paper travelers are supplementary. The digital twin (PROD-37) ingests this chain at 10 Hz; any gap triggers automatic NCR.

These commitments cascade: PROD-29 commissioning inherits CT-04/CT-06/CT-08 pass data; PROD-30 PM schedules inherit NDT intervals; PROD-31 economics inherits scrap/rework rates from NCR log; PROD-32 permitting inherits audit evidence. The Turn: **quality is not a phase — it is the continuous witnessing of the Forge's own fabrication fidelity, recorded in light through glass fiber, verified by proof test, anchored in blockchain.**

---

### Keymaker Heuristic — Implementation Precision

#### The Empirical Lock

The fabrication fidelity gap is **dimensional stability of ZrB₂-SiC at 2200°C with embedded FBGs through 500 thermal cycles** — a regime where no NDT standard exists. Flash sintering (PROD-04) produces drums at 99.8% density but with residual stress gradients: ID compressive 120 MPa, OD tensile 80 MPa (FEA PROD-25). During thermal ramp (50°C/min to 2200°C), CTE mismatch (ZrB₂ 7.5, SiC 4.5, FBG silica 0.55 ×10⁻⁶/K) generates shear at FBG/matrix interface. Accelerated testing (PROD-27 FA) shows: 3% FBG channels fail by cycle 200 (debond); UT phased array detects debond as 15% amplitude drop at 5 MHz but cannot size <0.2 mm; CT at 200 μm voxel sees debond >0.5 mm but misses sub-voxel. The Lock: **no single NDT method closes the gap between theoretical FBG survival (100%) and empirical (97% at 500 cycles) — the gap is the debond nucleation zone below UT resolution and CT voxel.**

#### The Mathematical Key

The single computational primitive is the **recursive Bayesian update of component health state** using multi-source likelihood fusion:

```
P(health | data) ∝ P(data | health) × P(health)
```

Where:
- **data** = {UT amplitude map, CT porosity field, AE hit rate/location, FBG wavelength drift, IR ΔT field, vibration spectrum}
- **health** = {intact, debond_nucleation, debond_growth, FBG_degradation, delamination, matrix_cracking}
- **P(data | health)** = likelihood models calibrated per method per material (ZrB₂-SiC, BFRP, Ti₃AlC₂, ZrO₂)
- **P(health)** = prior from process signature (flash V/I, winding tension, braze cycle, cold plate leak)

The Key executes at three scales:
1. **Micro (per channel)**: FBG drift >0.5%/1000 hrs → update P(FBG_degradation)
2. **Meso (per component)**: AE cluster + UT indication + IR hotspot → update P(delamination)
3. **Macro (per system)**: CT-04 SIF proof + CT-06 FBG cal + CT-08 thermal cycle → update P(system_ready)

The atomic computation is **likelihood ratio test**: Λ = P(data | H₁) / P(data | H₀) where H₁ = degradation, H₀ = nominal. Threshold Λ > 10 triggers NCR auto-generation. This runs in PROD-37 digital twin at 10 Hz on 384-channel state vector.

#### The Turn (Both Directions)

**Theory→History Validation**: The Bayesian model predicted 3% FBG failure by cycle 200 (using Weibull β=2.3 from PROD-04 flash sinter statistics). FA drums (PROD-27) showed 2.8% failure at cycle 180 — within prediction interval. UT amplitude drop at debond sites matched FEA-predicted 15% (COHZONE model, PROD-25). CT voxel limit (0.5 mm) matched observed missed debond size. History confirms theory.

**History→Theory Correction**: FA vessel hydrotest (CT-02) revealed aerogel density gradient (0.11–0.13 g/cm³ radial) not captured in winding simulation. AE Felicity ratio dropped to 0.95 at 8.0 bar (predicted 1.05). Updated P(data | delamination) for BFRP now includes aerogel density field as covariate. Next PQR-FW-002 will mandate gamma densitometry mapping at 5 mm resolution.

The Turn: **the mathematical key is not static — it learns from every Forge's CT-04, CT-06, CT-08, and in-service data, tightening likelihood models fleet-wide via PROD-37.** The Lock (sub-voxel debond) is managed not by better resolution but by probabilistic fusion: UT sees the symptom, AE hears the event, FBG feels the strain, IR sees the heat — together they witness what no single method can.

---

### El Segundo Heuristic — Operational Excellence

#### Mirror (Self-Reflection)

The fabricator observes their own fabrication through **three recursive sensor loops that close at the speed of the process**:

1. **Flash Sinter V/I Mirror (100 kHz DAQ)**: During the 5-minute dwell at 1720°C, the flash sinter power supply records voltage/current at 100 kHz. The resistivity drop (1000×) is the *primary witness* of sinter completion — not the thermocouple (metal, forbidden). The V/I signature shape (dV/dt inflection, I plateau) maps to density via PROD-04 calibrated curve: ρ_final = f(∫I dt, V_min, t_dwell). This mirror runs *inside* the furnace; the operator sees the curve on HMI but the *decision* (dwell complete / extend / abort) is automated by PROD-23 SIS logic comparing live V/I to PQR-FS-001 envelope. The fabricator *watches the process witness itself*.

2. **Filament Winding Dielectric Cure Mirror (10 kHz)**: The Elium® resin cure is monitored by in-mold dielectric sensors (interdigitated capacitive electrodes on mandrel, non-conductive). Permittivity ε' and loss ε'' track degree of cure α(t) via PROD-06 kinetic model: dα/dt = A exp(-Ea/RT) α^m (1-α)^n. The mirror outputs α(t) in real time; winding pauses if α deviates >2% from trajectory. No post-cure DSC needed — the cure *witnesses its own completion* through the resin's own electrical response.

3. **FBG Interrogation Mirror (125 Hz continuous)**: All 384 FBG channels (128 drum, 48×8 coils, 16 port valves, 16 vessel, 16 frame) stream wavelength at 125 Hz to PROD-37 digital twin. The twin runs the Bayesian health update (Keymaker Key) *on the same data the process generates*. The mirror is not a separate inspection — it is the process's own nervous system reporting to itself. Anomaly (Λ > 10) triggers automatic NCR before the operator acknowledges it.

The Mirror: **quality assurance is not applied to the product — it is the product's own sensorium, reflected back to the process in real time.**

#### Participation (Witness)

The inside operator witnesses the phenomenon at **four non-automatable gates** where human judgment closes the loop that sensors cannot:

1. **Gate SG-2 (Flange Torque Ceremony)**: 24 bolts, 160 N·m ±5 N·m, dual-verify (two operators, independent torque wrenches, acoustic emission monitoring). The wrench click is not the witness — the *operator's tactile confirmation* of breakaway torque on re-check, and the *AE silence* during final 10 N·m, are the witness. No sensor replaces the mechanic's hand feeling the bolt stretch uniformly across the PEEK CF40 flange face. This gate takes 45 minutes; it cannot be rushed.

2. **Gate SG-3 (FBG Calibration Verification)**: CT-06 requires 5 reference temperatures (25/500/1000/1500/2000°C) on all 384 channels. The automated interrogator sweeps and fits; but the *SIS Engineer witnesses the residuals* — plotting measured vs. reference, checking R² > 0.999, verifying no channel drifts >0.1 nm/°C from PQR. The human eye catches the systematic offset (e.g., all Zone 3 channels +0.3 nm) that the algorithm accepts as "within tolerance." The witness says: "This is not drift — this is a cold plate contact issue."

3. **Gate CT-04 (SIS Proof Test)**: Injecting 24 SIL-3 trip conditions (overpressure, overtemperature, vibration, GIC, loss of comms) and verifying <50 ms trip on TSN VLAN 10. The automation runs the sequence; but the *SIS Engineer witnesses the trip logic* — watching the 2oo3 voter agree, the SOE (Sequence of Events) timestamp align across zones, the FBG data freeze at trip instant. The witness signs: "I saw the system protect itself." No auto-report replaces this.

4. **Gate SAT-05 (First Hot Batch)**: Six batches, mass balance >99%, all outputs spec. The *Plant Manager witnesses the slug pour* — ZrO₂ mold fill, quench steam plume, mass spec reading. The digital twin says PASS; the witness *sees the metal flow*. The witness says: "This is what we built for."

The Participation: **four moments where the human is not monitoring — they are *witnessing the phenomenon into existence*, adding the judgment that transforms data into certification.**

#### Protocol (Recursive)

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

*Synthesis: The Lock (Williams) is the zero-metal/SIL-3 conjunction. The Key (Keymaker) is recursive Bayesian health fusion across UT/AE/FBG/IR. The Witness (El Segundo) is the operator at four gates where human judgment certifies what sensors measure. Together they form the QA architecture: the Forge witnesses its own fabrication through light in glass fiber, validated by proof test, certified by human witness, recorded in blockchain, learned by fleet twin. Quality is not a department — it is the Forge's nervous system.*

*Combined Heuristic Intro for PROD-28 | ~200 lines | Carrington Storm Motors | November 2026*# Combined Heuristic Intro — PROD-28 Quality Assurance & Testing
## Williams + Keymaker + El Segundo Synthesis

### Williams Heuristic — Architectural Clarity

#### Constraint (The Lock)

The irreducible principle forcing this QA architecture is **zero-metal construction under SIL-3 Carrington immunity** — a conjunction that eliminates every conventional quality method relying on conductive paths, magnetic particle inspection, eddy current on ferromagnetic substrates, or electrical continuity testing. The Forge operates at 2200°C in a 100 A/m GIC field with 384 FBG channels embedded in ZrB₂-SiC and BFRP; any QA method introducing metal (MQ probes, UT couplant residues, conductive epoxy, grounding straps) creates a GIC antenna that violates PROD-26 dielectric requirements. The Lock: **quality assurance must itself be dielectric, non-magnetic, and thermally survivable to 2200°C.**

#### Necessity (The Key)

The empirical gap is the **absence of any precedent for qualifying a zero-metal pressure vessel at 2200°C with embedded photonics**. ASME BPVC Sec VIII/X covers composites to 300°C; ASTM E2700 UT assumes metallic wave speeds; IEC 61508 SIL-3 proof testing assumes electrical trip paths. Our validation data (PROD-24 V&V, PROD-25 FEA, PROD-27 FA) shows: UT phased array on ZrB₂-SiC requires 5 MHz 64-element PA at 45°/60°/70° wedges (longitudinal wave speed 11,200 m/s vs steel 5,900); CT at 200μm voxel resolves FBG position ±100μm but adds 8 hr/drum; AE continuous monitoring on BFRP detects delamination at Felicity ratio <1.0 but requires 8-channel R15α at 100 kHz–1 MHz. The Key: **a multi-method NDT program where each method's physics is re-derived for zero-metal substrates, calibrated against flash-sinter and filament-wind process signatures, not material certificates.**

#### Commitment (The Turn)

This document commits the Forge to **three non-negotiable verification chains**:

1. **FBG-as-primary-metrology**: All 384 channels survive flash sinter (PROD-04 PQR-FS-001), filament winding (PROD-06 PQR-FW-001), and 500 thermal cycles (CT-06) with drift <0.5%/1000 hrs. No backup thermocouples — they are metal. FBG interrogation at 125 Hz continuous is the *only* in-process temperature/strain verification.

2. **SIL-3 SIF proof test per CT-04 is the gate**: All 24 SIFs (3 per module × 8 zones) must trip <50 ms on TSN VLAN 10 with 2oo3 agreement. PFD_avg <1×10⁻³. This test runs *before* hot commissioning (CT-08) and *after* any design change (ECO). No SIL-3 SIF = no Forge shipment.

3. **QR + Hyperledger traceability is the quality record**: Every drum, vessel, port valve, coil, module carries a QR code linking to immutable blockchain record (material lot, process params, NDT results, FAT data). Paper travelers are supplementary. The digital twin (PROD-37) ingests this chain at 10 Hz; any gap triggers automatic NCR.

These commitments cascade: PROD-29 commissioning inherits CT-04/CT-06/CT-08 pass data; PROD-30 PM schedules inherit NDT intervals; PROD-31 economics inherits scrap/rework rates from NCR log; PROD-32 permitting inherits audit evidence. The Turn: **quality is not a phase — it is the continuous witnessing of the Forge's own fabrication fidelity, recorded in light through glass fiber, verified by proof test, anchored in blockchain.**

---

### Keymaker Heuristic — Implementation Precision

#### The Empirical Lock

The fabrication fidelity gap is **dimensional stability of ZrB₂-SiC at 2200°C with embedded FBGs through 500 thermal cycles** — a regime where no NDT standard exists. Flash sintering (PROD-04) produces drums at 99.8% density but with residual stress gradients: ID compressive 120 MPa, OD tensile 80 MPa (FEA PROD-25). During thermal ramp (50°C/min to 2200°C), CTE mismatch (ZrB₂ 7.5, SiC 4.5, FBG silica 0.55 ×10⁻⁶/K) generates shear at FBG/matrix interface. Accelerated testing (PROD-27 FA) shows: 3% FBG channels fail by cycle 200 (debond); UT phased array detects debond as 15% amplitude drop at 5 MHz but cannot size <0.2 mm; CT at 200 μm voxel sees debond >0.5 mm but misses sub-voxel. The Lock: **no single NDT method closes the gap between theoretical FBG survival (100%) and empirical (97% at 500 cycles) — the gap is the debond nucleation zone below UT resolution and CT voxel.**

#### The Mathematical Key

The single computational primitive is the **recursive Bayesian update of component health state** using multi-source likelihood fusion:

```
P(health | data) ∝ P(data | health) × P(health)
```

Where:
- **data** = {UT amplitude map, CT porosity field, AE hit rate/location, FBG wavelength drift, IR ΔT field, vibration spectrum}
- **health** = {intact, debond_nucleation, debond_growth, FBG_degradation, delamination, matrix_cracking}
- **P(data | health)** = likelihood models calibrated per method per material (ZrB₂-SiC, BFRP, Ti₃AlC₂, ZrO₂)
- **P(health)** = prior from process signature (flash V/I, winding tension, braze cycle, cold plate leak)

The Key executes at three scales:
1. **Micro (per channel)**: FBG drift >0.5%/1000 hrs → update P(FBG_degradation)
2. **Meso (per component)**: AE cluster + UT indication + IR hotspot → update P(delamination)
3. **Macro (per system)**: CT-04 SIF proof + CT-06 FBG cal + CT-08 thermal cycle → update P(system_ready)

The atomic computation is **likelihood ratio test**: Λ = P(data | H₁) / P(data | H₀) where H₁ = degradation, H₀ = nominal. Threshold Λ > 10 triggers NCR auto-generation. This runs in PROD-37 digital twin at 10 Hz on 384-channel state vector.

#### The Turn (Both Directions)

**Theory→History Validation**: The Bayesian model predicted 3% FBG failure by cycle 200 (using Weibull β=2.3 from PROD-04 flash sinter statistics). FA drums (PROD-27) showed 2.8% failure at cycle 180 — within prediction interval. UT amplitude drop at debond sites matched FEA-predicted 15% (COHZONE model, PROD-25). CT voxel limit (0.5 mm) matched observed missed debond size. History confirms theory.

**History→Theory Correction**: FA vessel hydrotest (CT-02) revealed aerogel density gradient (0.11–0.13 g/cm³ radial) not captured in winding simulation. AE Felicity ratio dropped to 0.95 at 8.0 bar (predicted 1.05). Updated P(data | delamination) for BFRP now includes aerogel density field as covariate. Next PQR-FW-002 will mandate gamma densitometry mapping at 5 mm resolution.

The Turn: **the mathematical key is not static — it learns from every Forge's CT-04, CT-06, CT-08, and in-service data, tightening likelihood models fleet-wide via PROD-37.** The Lock (sub-voxel debond) is managed not by better resolution but by probabilistic fusion: UT sees the symptom, AE hears the event, FBG feels the strain, IR sees the heat — together they witness what no single method can.

---

### El Segundo Heuristic — Operational Excellence

#### Mirror (Self-Reflection)

The fabricator observes their own fabrication through **three recursive sensor loops that close at the speed of the process**:

1. **Flash Sinter V/I Mirror (100 kHz DAQ)**: During the 5-minute dwell at 1720°C, the flash sinter power supply records voltage/current at 100 kHz. The resistivity drop (1000×) is the *primary witness* of sinter completion — not the thermocouple (metal, forbidden). The V/I signature shape (dV/dt inflection, I plateau) maps to density via PROD-04 calibrated curve: ρ_final = f(∫I dt, V_min, t_dwell). This mirror runs *inside* the furnace; the operator sees the curve on HMI but the *decision* (dwell complete / extend / abort) is automated by PROD-23 SIS logic comparing live V/I to PQR-FS-001 envelope. The fabricator *watches the process witness itself*.

2. **Filament Winding Dielectric Cure Mirror (10 kHz)**: The Elium® resin cure is monitored by in-mold dielectric sensors (interdigitated capacitive electrodes on mandrel, non-conductive). Permittivity ε' and loss ε'' track degree of cure α(t) via PROD-06 kinetic model: dα/dt = A exp(-Ea/RT) α^m (1-α)^n. The mirror outputs α(t) in real time; winding pauses if α deviates >2% from trajectory. No post-cure DSC needed — the cure *witnesses its own completion* through the resin's own electrical response.

3. **FBG Interrogation Mirror (125 Hz continuous)**: All 384 FBG channels (128 drum, 48×8 coils, 16 port valves, 16 vessel, 16 frame) stream wavelength at 125 Hz to PROD-37 digital twin. The twin runs the Bayesian health update (Keymaker Key) *on the same data the process generates*. The mirror is not a separate inspection — it is the process's own nervous system reporting to itself. Anomaly (Λ > 10) triggers automatic NCR before the operator acknowledges it.

The Mirror: **quality assurance is not applied to the product — it is the product's own sensorium, reflected back to the process in real time.**

#### Participation (Witness)

The inside operator witnesses the phenomenon at **four non-automatable gates** where human judgment closes the loop that sensors cannot:

1. **Gate SG-2 (Flange Torque Ceremony)**: 24 bolts, 160 N·m ±5 N·m, dual-verify (two operators, independent torque wrenches, acoustic emission monitoring). The wrench click is not the witness — the *operator's tactile confirmation* of breakaway torque on re-check, and the *AE silence* during final 10 N·m, are the witness. No sensor replaces the mechanic's hand feeling the bolt stretch uniformly across the PEEK CF40 flange face. This gate takes 45 minutes; it cannot be rushed.

2. **Gate SG-3 (FBG Calibration Verification)**: CT-06 requires 5 reference temperatures (25/500/1000/1500/2000°C) on all 384 channels. The automated interrogator sweeps and fits; but the *SIS Engineer witnesses the residuals* — plotting measured vs. reference, checking R² > 0.999, verifying no channel drifts >0.1 nm/°C from PQR. The human eye catches the systematic offset (e.g., all Zone 3 channels +0.3 nm) that the algorithm accepts as "within tolerance." The witness says: "This is not drift — this is a cold plate contact issue."

3. **Gate CT-04 (SIS Proof Test)**: Injecting 24 SIL-3 trip conditions (overpressure, overtemperature, vibration, GIC, loss of comms) and verifying <50 ms trip on TSN VLAN 10. The automation runs the sequence; but the *SIS Engineer witnesses the trip logic* — watching the 2oo3 voter agree, the SOE (Sequence of Events) timestamp align across zones, the FBG data freeze at trip instant. The witness signs: "I saw the system protect itself." No auto-report replaces this.

4. **Gate SAT-05 (First Hot Batch)**: Six batches, mass balance >99%, all outputs spec. The *Plant Manager witnesses the slug pour* — ZrO₂ mold fill, quench steam plume, mass spec reading. The digital twin says PASS; the witness *sees the metal flow*. The witness says: "This is what we built for."

The Participation: **four moments where the human is not monitoring — they are *witnessing the phenomenon into existence*, adding the judgment that transforms data into certification.**

#### Protocol (Recursive)

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

*Synthesis: The Lock (Williams) is the zero-metal/SIL-3 conjunction. The Key (Keymaker) is recursive Bayesian health fusion across UT/AE/FBG/IR. The Witness (El Segundo) is the operator at four gates where human judgment certifies what sensors measure. Together they form the QA architecture: the Forge witnesses its own fabrication through light in glass fiber, validated by proof test, certified by human witness, recorded in blockchain, learned by fleet twin. Quality is not a department — it is the Forge's nervous system.*

*Combined Heuristic Intro for PROD-28 | ~200 lines | Carrington Storm Motors | November 2026*# PROD-28: Quality Assurance & Testing
## CSMFAB000000000128 — Aegis-Forge I QA Program, Acceptance Criteria, NDT, FAT/SAT, and Validation
### ISO 9001/AS9100 Aligned, IEC 61508 SIL-3, IEEE 693, ASME BPVC Sec VIII/X
**Document Number:** CSMFAB000000000128 (Product Document 28 of 40)
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** November 2026 | **Classification:** Product Specification — Quality Engineering

---

## 1. QA Program Overview

### 1.1 Quality Policy

The Aegis-Forge I quality management system is founded on a single principle: **every element that enters the Forge must exit as a characterized, stamped, routed material stream.** Quality is not inspection — it is the recursive verification that the manufacturing process witnesses its own fidelity at every scale, from flash sinter V/I signature to fleet-level digital twin convergence.

**Quality Policy Commitments:**
1. **Zero-metal construction integrity** — All materials, processes, and assemblies verified against dielectric, thermal, and structural requirements
2. **Carrington immunity by design** — GIC/EMP/HEMP hardening validated at component, assembly, and system levels
3. **SIL-3 safety uncompromised** — 24 SIFs proof-tested per IEC 61508; no degradation without full re-certification
4. **Phoenix Protocol traceability** — UUID chain from mine to return; QR-coded material certificates on Hyperledger Fabric
5. **Continuous improvement via fleet twin** — PROD-37 digital twin aggregates all Forges; parameter guards auto-tighten

### 1.2 QMS Structure — ISO 9001/AS9100 Alignment

| ISO 9001 Clause | Aegis-Forge I Implementation | Document Reference |
|---|---|---|
| 4 Context | Forge as perpetual material engine; interested parties: operators, regulators, CSMFAB, customers | PROD-22, PROD-32 |
| 5 Leadership | Plant Manager owns QMS; Quality Engineer independent reporting | PROD-29, PROD-34 |
| 6 Planning | Risk-based thinking: FMEA on all 14 assemblies; KPIs per Section 11 | PROD-25, PROD-28 |
| 7 Support | Competency matrix (12 roles, 4 levels); calibrated equipment; traceable materials | PROD-34, PROD-28 |
| 8 Operation | 14 assembly work instructions; FAT/SAT protocols; NDT procedures | PROD-27, PROD-28 |
| 9 Performance | Gate reviews (SG-1..4), FAT (CT-01..10), fleet twin KPIs | PROD-27, PROD-28, PROD-37 |
| 10 Improvement | NCR/CAPA (8D), management review (quarterly), lessons learned | PROD-28 Section 8 |

### 1.3 Quality Organization

| Role | Responsibility | Qualification |
|---|---|---|
| **Plant Manager** | QMS ownership, management review, resource allocation | PE + 10 yr nuclear/pressure vessel |
| **Quality Engineer** | QMS maintenance, NCR/CAPA, supplier audits, gate sign-off | ASQ CQE + AS9100 LA |
| **Manufacturing Engineer** | Process development, work instructions, gate data packages | PE + 5 yr ceramics/composites |
| **NDT Level III** | NDT program ownership, procedure approval, personnel certification | ASNT Level III (UT, CT, ET, AE) |
| **SIS Engineer** | SIL-3 SIF design, proof testing, PFD calculation, re-certification | TÜV FS Expert (IEC 61508) |
| **Metrology Engineer** | Calibration program, CMM/UT/CT/FBG standards, uncertainty budgets | ISO 17025 assessor |

---

## 2. Acceptance Criteria — Component Level

### 2.1 Drum (ZrB₂-SiC) — Assembly A-01/A-03

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **Density** | Archimedes + CT | ≥99.8% theoretical; open porosity <0.05% | 100% (each drum) | ASTM C373, C830 |
| **Dimensions** | CMM + laser scanner | ID 600±0.5, OD 670±0.5, L 800±1.0, roundness <25μm, taper <10μm | 100% | ASME Y14.5, ISO 10360 |
| **UT (volumetric)** | 5 MHz phased array | No indications >0.5mm flat, >2mm Ø; 100% volume | 100% | ASTM E2700 |
| **CT (high-res)** | 200μm voxel | No closed porosity >0.2%; grain structure uniform | 100% (FA), 10% (prod) | ASTM E1695 |
| **FBG survival** | Interrogator sweep | 128/128 channels active; wavelength match ±0.1nm | 100% | PROD-24 |
| **Flash V/I signature** | DAQ @ 100 kHz | Resistivity drop 1000× @ 1720°C±20°C; dwell 5min; cool 50°C/min | 100% | PROD-04 |
| **Liner bond** | UT (bond test) | No unbonded area >5mm dia at pin interfaces | 100% | ASTM E1961 |
| **Surface finish (ID)** | Profilometer | Zone A Ra<0.4μm, Zone B Ra<0.6μm, Zone C Ra<1.0μm | 100% | ISO 4287 |

### 2.2 Vessel (BFRP/Elium®) — Assembly A-06/A-07

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **Fiber angle** | Laser triangulation | ±18°/90° ±1° all 16 plies | 100% (in-process) | ASTM D5379 |
| **Fiber volume fraction** | Dielectric cure monitor | 60% ±2% | 100% (in-process) | ASTM D3171 |
| **Wall thickness** | Ultrasonic gauge | 18mm ±0.3mm | 100% | ASTM E797 |
| **Hydrotest** | N₂ to 15 bar | Zero pressure drop (temp comp) 30 min; zero leaks He <10⁻⁶ mbar·L/s | 100% | ASME BPVC Sec X |
| **Aerogel density** | Gamma densitometer | 0.12 ±0.01 g/cm³ uniform radial | 100% | ASTM C177 |
| **Glaze adhesion** | Pull-off (ASTM D4541) | >10 MPa; no cohesive failure in glaze | 100% (FA), 10% (prod) | ASTM D4541 |
| **SRI** | Spectrophotometer | YInMn Blue ≥115; CoAl₂O₄ ≥85 | 100% | ASTM E1980 |
| **UT (delamination)** | 2.25 MHz phased array | No delaminations >10mm dia; no porosity clusters | 100% | ASTM E2700 |
| **AE baseline** | Acoustic emission | <5 hits/min @ 10 bar (background) | 100% | ASTM E1419 |

### 2.3 Port Valve Assemblies — Assembly A-04 (×8)

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **Braze joint** | 10× mag + UT | No voids >50μm; joint thickness 50±10μm; Ag-CuO-TiO₂ phase confirmed | 100% | AWS B2.1 |
| **Piston clearance** | Air gauge | 0.05mm ±0.01mm (ZrO₂ piston in ZrB₂-SiC sleeve) | 100% | ISO 286-2 |
| **Actuation deflection** | LVDT in furnace | 3.6mm ±0.2mm at 680°C ΔT; repeatable 10 cycles | 100% | PROD-09 |
| **Leak rate (closed)** | He mass spec | <10⁻⁶ mbar·L/s @ 5 bar N₂ | 100% | ASTM E1003 |
| **Cycle life (accel)** | Thermal cycler | 500 cycles (25→700°C) no degradation | FA only | PROD-09 |
| **FBG strain cal** | Known weights | 0.1nm/με ±2% linearity R²>0.999 | 100% | PROD-24 |

### 2.4 Coil Bank — Assembly A-09 (×8 zones)

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **Resonant frequency** | Impedance analyzer | Per zone table ±1% (Z1:100kHz, Z8:1kHz) | 100% | PROD-10 |
| **Q factor** | Ring-down | >150 all zones | 100% | PROD-10 |
| **ZVS verification** | V/I scope trace | Phase <5° at 100% load | 100% | PROD-10 |
| **Thermal balance** | IR camera @ 500kW | ΔT <10°C across zone | 100% | PROD-10 |
| **FBG embed** | Interrogator | 48/48 channels/zone active; cal 25/500/1000/1500/2000°C | 100% | PROD-24 |
| **Cold plate leak** | He mass spec | <10⁻⁹ mbar·L/s | 100% | ASTM E1003 |
| **PEX-a integrity** | Pressure decay | <0.1 bar/hr @ 10 bar | 100% | ASTM F1055 |

### 2.5 Power Electronics Modules — Assembly A-10 (×8)

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **DC link charge** | Scope | 0→800V in 500ms; no overshoot >850V | 100% | PROD-10 |
| **ZVS acquisition** | V/I @ 100% load | Phase <5°; v_DS zero-crossing before gate | 100% | PROD-10 |
| **Thermal soak** | 500kW/30min + IR | T_j <125°C (GaN); cold plate ΔT <15°C | 100% | PROD-10 |
| **GIC ride-through** | Helmholtz 100 A/m | No SIF trips; data intact; comms OK | 100% | PROD-23, PROD-26 |
| **EMI** | CISPR 11 Class A | >20dB margin conducted/radiated | 100% | CISPR 11 |
| **SIL-3 SIF injection** | TSN VLAN 10 | All 3 SIFs/module trip <50ms; PFD_avg<10⁻³ | 100% | IEC 61508 |
| **POF attenuation** | OTDR | <0.2dB/m; splices <0.5dB; return loss >50dB | 100% | IEC 60793 |

### 2.6 Frame, Carousel, Bearings — Assembly A-12

| Characteristic | Method | Acceptance Criteria | Frequency | Standard |
|---|---|---|---|---|
| **Frame dimensions** | CMM | ±1mm length, ±0.5mm diagonal, bolt holes ±0.1mm | 100% | ISO 10360 |
| **Isolator stiffness** | Static load test | 2.5 MN/m vertical ±5%; 0.8 MN/m horiz ±5% | 100% | PROD-25 |
| **Carousel indexing** | Encoder + FBG | 8-position, 45° steps, <2s, 0.01° resolution | 100% | PROD-08 |
| **Bearing preload** | Torque + FBG | Si₃N₄/ZrO₂, N₂ film 0.1bar; vibration <0.5g RMS | 100% | ISO 13373 |
| **Mold dimensions** | CMM | 0.1mm tolerance (ISO 8062) | 100% | PROD-08 |

---

## 3. Acceptance Criteria — Subassembly Level

### 3.1 Drum + Liners (A-01 + A-02 + A-03)

| Test | Method | Acceptance |
|---|---|---|
| **Thermal cycle** | Furnace 25→2200°C→25, 50°C/min | Zero liner cracking; pin shear <5%; FBG drift <0.5% |
| **Pin shear (thermal)** | FBG strain during cycle | Peak strain <800 με (Si₃N₄ pins); <1200 με (ZrO₂ pins) |
| **Roundness under temp** | Laser tracker @ 500°C/1500°C/2000°C | ID roundness <50μm at all temps |

### 3.2 Vessel + Ports + Flanges (A-06 + A-04 + A-08)

| Test | Method | Acceptance |
|---|---|---|
| **Pressure + thermal** | 10 bar N₂ + 200°C external (glaze) | No flange leak; bolt torque retention >95%; Ae baseline stable |
| **Flange torque ceremony** | Dual-verify 160 N·m ±5 N·m | All 24 bolts PASS; acoustic emission monitoring |
| **Port valve actuation** | Thermal cal 680°C ΔT | 3.6mm ±0.2mm all 8 ports; re-seal leak <10⁻⁶ mbar·L/s |

### 3.3 Frame + Isolators (A-12)

| Test | Method | Acceptance |
|---|---|---|
| **Modal analysis** | Impact hammer + accelerometers | 1st mode >3Hz; damping >15%; matches FEA (PROD-25) |
| **Seismic shake (OBE)** | IEEE 693 High RRS ×0.4g | No structural damage; isolator displacement <25mm |

### 3.4 Coil Bank + Cold Plates (A-09 + A-10)

| Test | Method | Acceptance |
|---|---|---|
| **Cold plate leak** | He mass spec | <10⁻⁹ mbar·L/s all 8 zones |
| **Resonance (integrated)** | Sweep 50-100kHz (Z1-2), 1-50kHz (Z3-8) | ZVS <5° at 100% load; no spurious modes |
| **FBG cross-talk** | Interrogator | Adjacent channel isolation >40dB |

---

## 4. Acceptance Criteria — System Level (FAT/SAT)

### 4.1 Factory Acceptance Test (FAT) — CT-01 through CT-10

| Test | ID | Description | Pass Criteria | Duration |
|---|---|---|---|---|
| **CT-01** | Drum Rotordynamics | Spin to 500 RPM, critical speeds, balance | 1st critical >1890 RPM; G0.4 balance; sync vib <25μm | 4 hr |
| **CT-02** | Vessel Hydrotest | 15 bar N₂, 30 min hold, He leak | Zero pressure drop; zero leaks <10⁻⁶ mbar·L/s | 2 hr |
| **CT-03** | Flange Leak Test | He sniffer all 24 bolted joints | All joints <10⁻⁶ mbar·L/s | 4 hr |
| **CT-04** | SIS Proof Test | Inject all 24 SIL-3 SIF trip conditions | All trip <50ms; 2oo3 agreement; PFD_avg<10⁻³ | 8 hr |
| **CT-05** | Coil Resonance | Sweep per zone, ZVS at full power | ZVS phase <5° all zones 100% load | 6 hr |
| **CT-06** | FBG Calibration | 5 ref temps (25/500/1000/1500/2000°C) | Drift <0.5%/1000hrs; R²>0.999 all 384 ch | 8 hr |
| **CT-07** | GIC Ride-Through | 100 A/m Helmholtz, 30 min, full ops | Zero spurious trips; zero data loss | 2 hr |
| **CT-08** | Thermal Cycle | Stages 0-8 no feed, full ramp/hold/cool | All stages ±5°C setpoint; no SIF trips | 24 hr |
| **CT-09** | Seismic Shake | IEEE 693 High, 5 OBE + 1 SSE, 3 axes | HCLPF >1.6g; no structural damage; re-tests pass | 4 hr |
| **CT-10** | Integrated Hot Run | 6 batches (Cat A, B, C, D, A, Phoenix) | Mass balance >99%; all outputs spec; twin sync | 48 hr |

### 4.2 Site Acceptance Test (SAT)

| Test | ID | Description | Pass Criteria |
|---|---|---|---|
| **SAT-01** | Site Power Quality | IEEE 519 THD <5%, individual <3% | Utility compliance certificate |
| **SAT-02** | Ground Resistance | Combined <5Ω (UFER + ring) | Fall-of-potential method |
| **SAT-03** | POF Attenuation | End-to-end all 384 FBG + TSN + PTP | <0.2 dB/m; splices <0.5 dB |
| **SAT-04** | TSN/PTP Sync | On-site latency <100μs; PTP <1μs | Traffic generator + offset monitor |
| **SAT-05** | Performance Benchmarks | 6 batches (same as CT-10) | All outputs spec; mass balance >99% |

---

## 5. NDT Program

### 5.1 Methods, Coverage, Frequency

| Method | Components | Coverage | Frequency | Detection Limit | Standard | Personnel |
|---|---|---|---|---|---|---|
| **UT Phased Array** | Drum, vessel, flanges, coil housings | 100% critical volume | Annual | 0.5mm flat / 2mm Ø | ASTM E2700 | ASNT LII/III |
| **CT (X-ray)** | Drum (FBG embed, porosity), braze joints | 100% FA; 10% production | Biennial | 200μm voxel | ASTM E1695 | ASNT LII/III |
| **ET (Eddy Current)** | Port valve sleeves, PEX-a tubes | 100% | Annual | 0.2mm surface crack | ASTM E1419 | ASNT LII |
| **AE (Acoustic Emission)** | Vessel (continuous), drum (during thermal cycle) | Continuous / per cycle | Continuous / per cycle | 40dB AE; source location ±50mm | ASTM E1419 | ASNT LIII |
| **IR Thermography** | Frame, vessel exterior, coil bank, power electronics | 100% | Monthly | 0.5°C @ 200°C | ISO 18434 | LII |
| **Visual (VT)** | All external surfaces, bolt torque marks, seals | 100% | Daily (ops) / Monthly (maint) | N/A | VT-1 per ASME | LII |
| **FBG Interrogation** | All 384 sensors + 16 ref | Continuous @ 125Hz | Continuous | 0.1nm wavelength | PROD-24 | Auto |
| **Vibration** | Bearings, carousel, frame | Continuous @ 1kHz | Continuous | 0.5g RMS baseline | ISO 13373 | Auto |

### 5.2 Personnel Qualification

| Level | Requirements | Recertification |
|---|---|---|
| **NDT Level II** | ASNT CP-189; 40hr method-specific; 1000hr experience; written + practical exam | 3 yr (written) / 5 yr (practical) |
| **NDT Level III** | ASNT CP-189; Level II + 5yr; procedure development; program ownership | 5 yr (written + practical) |
| **FBG Specialist** | PROD-24 training; interrogator operation; wavelength analysis | 2 yr |
| **AE Analyst** | ASNT LIII AE; source location; pattern recognition | 3 yr |

### 5.3 In-Service Monitoring Plan

| Component | Method | Frequency | Alert Threshold | Action |
|---|---|---|---|---|
| Drum UT | Phased array | Annual | New indication >0.5mm | NCR → CAPA → eval |
| Drum CT | 200μm voxel | Biennial | Porosity growth >10% | NCR → CAPA → eval |
| Vessel AE | Continuous | Continuous | Hit rate >2× baseline | Auto alarm → inspect |
| Vessel UT | Phased array | Annual | Delam >10mm | NCR → CAPA → eval |
| Port valves | Thermal actuation check | Quarterly | Deflection <3.4mm or >3.8mm | NCR → CAPA → replace |
| FBG drift | Auto-comparison | Continuous | >0.5%/1000hrs | Auto flag → recalibrate |
| Bearing vib | Continuous | Continuous | >2× baseline RMS | Auto alarm → inspect |
| Isolator disp | LVDT | Continuous | >25mm (OBE) | Auto SIF trip |

---

## 6. Process Validation

### 6.1 Validated Processes (Per ASME Sec IX / AWS D17.1 / ISO 15614)

| Process | Document | Qualification Record | Re-qualification |
|---|---|---|---|
| **Flash sintering (ZrB₂-SiC)** | PROD-04, PROD-27 | PQR-FS-001 (3 FA drums) | Annual + material lot change |
| **Filament winding (BFRP/Elium®)** | PROD-06, PROD-27 | PQR-FW-001 (3 FA vessels) | Annual + roving lot change |
| **Brazing (Ti₃AlC₂/ZrO₂)** | PROD-09, PROD-27 | PQR-BR-001 (10 test joints) | Annual + braze alloy lot change |
| **Adhesive bonding (FBG epoxy)** | PROD-04, PROD-27 | PQR-AD-001 (lap shear >25MPa) | Annual + adhesive lot change |
| **Cold plate TIM bond (In foil)** | PROD-10, PROD-27 | PQR-TIM-001 (UT <1% voids) | Annual + In foil lot change |
| **Soldering (GaN module)** | PROD-10, PROD-27 | PQR-SO-001 (SAC305, 240°C peak) | Annual + solder lot change |
| **PEEK CF40 molding** | PROD-06, PROD-27 | PQR-MD-001 (flange dims, lug pull) | Annual + resin lot change |

### 6.2 Process Validation Evidence

Each PQR includes:
- Equipment calibration records (traceable to NIST)
- Operator qualification records
- Raw material certificates (3.1/3.2 per EN 10204)
- In-process data logs (V/I flash, winding params, braze cycle, etc.)
- Destructive test results (cross-sections, mechanical, metallographic)
- NDT results (UT, CT, ET, AE as applicable)
- Statistical analysis (Cpk >1.67 for critical parameters)

---

## 7. Supplier Quality Management

### 7.1 Approved Vendor List (AVL) — Critical Categories

| Category | Supplier | Qualification Status | Audit Frequency |
|---|---|---|---|
| ZrB₂-SiC powder | CSMFAB In-house / Mafic USA | Qualified (PQR-FS-001) | Annual |
| Basalt fiber roving | Mafic USA / In-house | Qualified (PQR-FW-001) | Annual |
| Elium® resin | Arkema / In-house MMA | Qualified (PQR-FW-001) | Annual |
| Ti₃AlC₂ MAX phase | CSMFAB In-house | Qualified (PQR-BR-001) | Annual |
| 3Y-TZP ZrO₂ powder | TAM Ceramics / In-house | Qualified (PQR-FS-001) | Annual |
| GaN HEMT (GS66516T) | GaN Systems | Qualified (vendor cert + incoming UT) | Annual |
| PMMA POF (980μm) | Mitsubishi / Toray | Qualified (attenuation test) | Biennial |
| Si₃N₄ bearings | CeramTec / CoorsTek | Qualified (spin test + dims) | Biennial |
| Graphite tooling | POCO / Toyo Tanso | Qualified (die life tracking) | Per lot |
| ZrO₂ ceramic pins | Zircar / Morgan | Qualified (dim + material cert) | Per lot |

### 7.2 Incoming Inspection — Critical Parts

| Part | Inspection | Sample Size | Acceptance |
|---|---|---|---|
| ZrB₂-SiC powder | D50, purity, BET, tap density | 100% lots | Per PROD-04 Table 3.3 |
| Basalt roving | Tensile, modulus, sizing, moisture | 100% lots | Per PROD-06 Table 3.1 |
| Elium® resin | Viscosity, Tg, peroxide content | 100% lots | Per PROD-06 Table 3.2 |
| GaN HEMT | R_DS(on), V_GS(th), C_oss, visual | 100% (sample 10%) | Datasheet ±10% |
| PMMA POF | Attenuation, bandwidth, core/clad | 100% reels | <0.2dB/m, >200MHz·km |
| ZrO₂ pins | Dimensions, density, CTE | 100% | ±0.01mm, 6.05g/cm³, 10.5×10⁻⁶/K |

### 7.3 Supplier Audits & CAPA

| Audit Type | Frequency | Scope | Follow-up |
|---|---|---|---|
| **Technical audit** | Annual (critical) | Process capability, equipment cal, traceability, training | NCR → 30-day CAPA → verify |
| **Quality system audit** | Biennial | ISO 9001/AS9100, NCR/CAPA, document control | NCR → 60-day CAPA → verify |
| **ESG audit** | Annual | Conflict minerals, carbon, labor, business continuity | Improvement plan → track |
| **Surveillance** | Monthly (high-risk) | Key process parameters, first-article results | Trend analysis → early warning |

---

## 8. Non-Conformance & CAPA

### 8.1 NCR Classification

| Class | Definition | Examples | Disposition Authority |
|---|---|---|---|
| **Critical** | Safety (SIL-3), Carrington immunity, pressure boundary, zero-metal violation | FBG channel dead; braze void >50μm; conductive path detected; SIF trip failure | Plant Manager + Quality Eng + SIS Eng (unanimous) |
| **Major** | Performance degradation, schedule impact, rework required | UT indication 0.5-1mm; fiber angle 1-2°; ZVS phase 5-10°; torque drift | Quality Eng + Mfg Eng |
| **Minor** | Cosmetic, documentation, no performance impact | Surface finish Ra slightly high; label missing; test log incomplete | Quality Eng |

### 8.2 CAPA Process (8D)

| Step | Action | Owner | Timing |
|---|---|---|---|
| **D1: Team** | Form cross-functional team (Mfg, QA, Design, Supplier) | Quality Eng | 24 hr |
| **D2: Describe** | 5W2H: What, Where, When, Who, Why, How, How many | Team | 48 hr |
| **D3: Contain** | Interim containment (quarantine, sort, retrofit) | Mfg Eng | Immediate |
| **D4: Root Cause** | 5 Whys → Fishbone → Fault tree; verify with data | Team | 5 days |
| **D5: Corrective** | Permanent fix (design, process, material, training) | Design/Mfg Eng | 15 days |
| **D6: Verify** | Pilot run / test / inspection proving fix works | Quality Eng | 20 days |
| **D7: Prevent** | Update work instructions, PFMEA, control plan, training | Quality Eng | 30 days |
| **D8: Close** | Team recognition; lessons learned to fleet twin | Plant Manager | 30 days |

### 8.3 Effectiveness Verification

| Metric | Target | Review |
|---|---|---|
| **CAPA closure rate** | 100% within 30 days | Monthly |
| **Recurrence rate** | 0% for Critical; <5% for Major | Quarterly |
| **CAE (Corrective Action Effectiveness)** | >90% (verified fix prevents recurrence) | Per CAPA |

---

## 9. Documentation & Traceability

### 9.1 Quality Records (Retention: 10 years minimum)

| Record Type | Format | Storage | Access |
|---|---|---|---|
| Material certificates (3.1/3.2) | PDF + QR code | PROD-37 digital twin + Hyperledger | Plant, QA, Customer |
| Inspection reports (UT, CT, ET, AE, VT, CMM) | Native + PDF | PROD-37 + local archive | Plant, QA, NDT |
| Test data (FAT, SAT, SIF proof, FBG cal, resonance) | Native + CSV | PROD-37 + local archive | Plant, QA, EE |
| NCR/CAPA (8D reports) | PDF | PROD-37 + CAPA tracker | Plant, QA, Design |
| Calibration certificates | PDF | PROD-37 + cal database | Metrology, QA |
| Operator training records | PDF + LMS | PROD-34 + PROD-37 | HR, QA, Plant |
| Design changes (ECO) | PDF + PLM | PROD-38 + PROD-37 | All |
| Batch records (production) | PROD-37 digital twin | Hyperledger Fabric | All (permissioned) |

### 9.2 Traceability — QR Code + Blockchain

| Item | QR Code Data | Blockchain (Hyperledger Fabric) |
|---|---|---|
| **Drum** | CSM-FAB-DRUM-<SN>-<LOT>-<DATE> | Genesis block: powder lot, sinter params, UT/CT, FBG cal |
| **Vessel** | CSM-FAB-VESL-<SN>-<LOT>-<DATE> | Roving lot, winding params, hydrotest, aerogel, glaze |
| **Port Valve** | CSM-FAB-PORT-<SN>-<STAGE>-<DATE> | Braze lot, actuation cal, leak test, FBG cal |
| **Coil Zone** | CSM-FAB-COIL-<ZONE>-<SN>-<DATE> | Conductor lot, FBG embed, resonance, cold plate |
| **Module** | CSM-FAB-MOD-<ZONE>-<SN>-<DATE> | GaN lot, gate driver, cap bank, SIF config, GIC test |

**Phoenix Protocol linkage:** Returned EOL Forge components re-enter with original QR → new batch record links old + new → circular mass balance closed.

---

## 10. Audit Schedule

| Audit Type | Frequency | Scope | Auditor | Standard |
|---|---|---|---|---|
| **Internal (full)** | Quarterly | All QMS processes (ISO 9001/AS9100) | Quality Eng (rotating) | ISO 19011 |
| **Internal (surveillance)** | Monthly | High-risk: flash sinter, winding, braze, SIS, FBG | NDT LIII / SIS Eng | ISO 19011 |
| **Supplier (critical)** | Annual | AVL critical suppliers (10 categories) | Quality Eng + Mfg Eng | ISO 19011 + AS9100 |
| **Regulatory (ASME)** | Biennial | Pressure vessel, piping, NDT program | Authorized Inspector | ASME BPVC Sec X |
| **Regulatory (OSHA)** | Biennial | PSM, LOTO, confined space, hazard comm | OSHA VPP auditor | 29 CFR 1910 |
| **Customer (project)** | Per contract | QMS, traceability, FAT/SAT, NCR history | Customer QA | Contract req |
| **Fleet twin (auto)** | Continuous | KPI trends, parameter guards, anomaly detection | PROD-37 ML | Internal |

---

## 11. Continuous Improvement

### 11.1 Key Performance Indicators (KPIs)

| KPI | Target | Measurement | Review |
|---|---|---|---|
| **FTY (First Time Yield)** | >95% per assembly | Gate data packages PASS / Total | Monthly |
| **NCR Rate** | <2% Critical, <5% Major | NCR count / assemblies | Monthly |
| **OTD (On-Time Delivery)** | >98% to site | SAT-05 completion vs. plan | Per Forge |
| **MTBF (Mean Time Between Failures)** | >50,000 hrs (system) | PROD-37 fleet data | Quarterly |
| **SIF PFD_avg** | <1×10⁻³ (SIL-3 subset) | CT-04 proof test data | Annual |
| **FBG Survival** | 100% (384/384 channels) | CT-06 + in-service | Per batch |
| **CAPA Closure** | 100% within 30 days | CAPA tracker | Monthly |
| **Schedule Adherence** | ±5% vs. 18-month baseline | Gate timing vs. plan | Per Forge |

### 11.2 Management Review (Quarterly)

**Inputs:** KPI trends, NCR/CAPA status, audit results, customer feedback, fleet twin recommendations, regulatory changes, resource adequacy.

**Outputs:** Improvement actions, resource decisions, QMS changes, supplier actions, training needs.

### 11.3 Lessons Learned & Fleet Twin Integration

| Source | Capture Method | Integration |
|---|---|---|
| **Post-FAT review** | Structured debrief (45 min) | Lessons → work instruction updates |
| **NCR/CAPA** | 8D D8 closure | Lessons → fleet twin anomaly patterns |
| **Operator feedback** | Shift handover digital log | Lessons → HMI/procedure updates |
| **Supplier CAPA** | Audit follow-up | Lessons → supplier qualification updates |
| **Fleet twin ML** | Auto-encoder reconstruction error >3σ | Auto-parameter guard tightening |

---

## 12. Commissioning & SAT

### 12.1 Commissioning Sequence (Per PROD-29)

| Phase | Activity | Verification | Sign-off |
|---|---|---|---|
| **Cold Commissioning** | Mechanical alignment, electrical continuity, fiber continuity, coolant pressure | IC-1..IC-10 (PROD-27) | Mfg Eng + EE |
| **Hot Commissioning** | Stages 0-8 no feed, per thermal profile (PROD-02) | CT-08 protocol | Lead EE + ME + Safety |
| **Performance Validation** | 6 batches per SAT-05 | All outputs spec, mass balance >99% | Plant Mgr |
| **Operator Training** | Theory 40h, Sim 20h, OJT 80h, Cert exam | PROD-34 curriculum | Training Mgr + QA |
| **Documentation Turnover** | All quality records, procedures, drawings, certs | PROD-38 config audit | QA Eng |

### 12.2 SAT-05 Performance Benchmarks

| Parameter | Target | Measurement |
|---|---|---|
| **Batch cycle time** | 90 min (8 batches/day) | Timestamp: feed-in → Port 8 clear |
| **Mass balance closure** | >99.5% per batch | PROD-22 mass balance |
| **Energy per ton** | <500 kWh/ton feed | Grid meter + DC link integration |
| **Recovery (key elements)** | In >99.9%, Cu >99.9%, Al >99.7%, Fe >95%, REE >90% | LIBS/XRF per slug |
| **Emissions** | PM2.5 <5mg/Nm³; HCl <10ppm; SO₂ <50ppm | CEMS continuous |
| **SIF availability** | >99.9% (no spurious trips) | SIS historian |
| **Digital twin sync** | <1s latency (10Hz state vector) | PROD-37 twin monitor |

---

## 13. Cross-Reference Matrix

### 13.1 Upstream Dependencies

| Document | Provides | Used In |
|---|---|---|
| PROD-04 | Drum acceptance criteria, FBG embed, flash sinter | Sec 2.1, 3.1, 6.1 |
| PROD-06 | Vessel acceptance criteria, winding params, hydrotest | Sec 2.2, 3.2, 6.1 |
| PROD-08 | Carousel/mold criteria, slug cooling | Sec 2.6, 3.3 |
| PROD-09 | Port valve criteria, braze, actuation | Sec 2.3, 3.2, 6.1 |
| PROD-10 | Module criteria, resonance, ZVS, GIC, EMI | Sec 2.4, 2.5, 3.4, 6.1 |
| PROD-12 | Material BOM, zero-metal proof | All sections |
| PROD-23 | SIS architecture, SIL-3 SIFs, TSN/PTP | Sec 2.5, 4.1 CT-04, 6.1 |
| PROD-24 | Thermal validation, FBG cal, V&V plan | Sec 2.1, 2.5, 3.1, 4.1 CT-06, 5.1 |
| PROD-25 | Structural acceptance, FEA validation, seismic | Sec 2.1, 2.2, 3.2, 3.3, 4.1 CT-09 |
| PROD-26 | GIC immunity, dielectric verification, arc flash | Sec 2.5, 4.1 CT-07, 6.1 |
| PROD-27 | Build sequence, FAT/SAT procedures, tooling | Sec 4.1, 4.2, 11.1, 12.1 |

### 13.2 Downstream Dependencies

| Document | Consumes | Interface |
|---|---|---|
| PROD-29 | SAT procedures, commissioning, site prep | Deployment input |
| PROD-30 | PM schedules, wear parts, NDT intervals | Maintenance input |
| PROD-31 | QA cost model, scrap/rework rates, supplier quality | Economics input |
| PROD-32 | Compliance evidence, audit records, NCR history | Permitting input |
| PROD-34 | Training curriculum, competency matrix | Training input |
| PROD-37 | Quality data for twin (FBG, AE, vibration, NCR) | Twin input |
| PROD-38 | ECO process, document control, config items | CM input |
| PROD-39 | T&E specification (CT-01..CT-10, SAT-01..SAT-05) | Test spec input |

### 13.3 Cross-Reference Table

| Section | Upstream Refs | Downstream Refs |
|---|---|---|
| 2 Component Criteria | PROD-04, 06, 08, 09, 10, 12, 23, 24, 25, 26 | PROD-29, 30, 31, 32 |
| 3 Subassembly Criteria | PROD-04, 06, 08, 09, 10, 12, 24, 25 | PROD-29, 30 |
| 4 System (FAT/SAT) | PROD-23, 24, 25, 26, 27 | PROD-29, 30, 39 |
| 5 NDT Program | PROD-04, 06, 09, 24, 25 | PROD-29, 30, 39 |
| 6 Process Validation | PROD-04, 06, 09, 10, 12, 27 | PROD-29, 30 |
| 7 Supplier Quality | PROD-12, 27 | PROD-31, 32, 33 |
| 8 NCR/CAPA | All prior | PROD-29, 30, 31, 37, 38 |
| 9 Documentation | PROD-22, 37, 38 | PROD-29, 30, 31, 37, 38 |
| 10 Audit Schedule | PROD-23, 26, 27, 32 | PROD-29, 30, 32 |
| 11 Continuous Improvement | PROD-29, 37 | PROD-31, 37 |
| 12 Commissioning/SAT | PROD-22, 23, 24, 25, 26, 27 | PROD-29, 30, 34, 39 |

---

## Appendix A: Acceptance Criteria Master Table

### A.1 Complete Component/Method/Threshold Matrix

| Component | Characteristic | Method | Threshold | Standard | Frequency |
|---|---|---|---|---|---|
| Drum body | Density | Archimedes/CT | ≥99.8% / <0.05% open | ASTM C373/C830 | 100% |
| Drum body | Dimensions | CMM/Laser | ID 600±0.5, OD 670±0.5, L 800±1.0 | ASME Y14.5 | 100% |
| Drum body | UT volumetric | 5MHz PA | No ind >0.5mm flat / 2mm Ø | ASTM E2700 | 100% |
| Drum body | CT | 200μm voxel | No closed porosity >0.2% | ASTM E1695 | 100% FA |
| Drum body | FBG survival | Interrogator | 128/128 active; ±0.1nm match | PROD-24 | 100% |
| Drum body | Flash V/I | DAQ 100kHz | ρ drop 1000× @ 1720±20°C | PROD-04 | 100% |
| Vessel | Fiber angle | Laser triang | ±18°/90° ±1° all plies | ASTM D5379 | 100% IP |
| Vessel | FVF | Dielectric | 60% ±2% | ASTM D3171 | 100% IP |
| Vessel | Hydrotest | N₂ 15bar | Zero drop 30min; He<10⁻⁶ | ASME BPVC X | 100% |
| Vessel | Aerogel density | Gamma dens | 0.12±0.01 g/cm³ | ASTM C177 | 100% |
| Vessel | Glaze adhesion | Pull-off | >10MPa | ASTM D4541 | 100% FA |
| Vessel | SRI | Spectro | YInMn≥115; CoAl₂O₄≥85 | ASTM E1980 | 100% |
| Port valve | Braze joint | 10×mag+UT | No voids >50μm; 50±10μm | AWS B2.1 | 100% |
| Port valve | Piston clearance | Air gauge | 0.05±0.01mm | ISO 286-2 | 100% |
| Port valve | Actuation | LVDT furnace | 3.6±0.2mm @ 680°C ΔT | PROD-09 | 100% |
| Port valve | Leak rate | He mass spec | <10⁻⁶ mbar·L/s @5bar | ASTM E1003 | 100% |
| Coil zone | Resonant freq | Impedance | Per zone ±1% | PROD-10 | 100% |
| Coil zone | Q factor | Ring-down | >150 | PROD-10 | 100% |
| Coil zone | ZVS | V/I scope | Phase <5° @ 100% load | PROD-10 | 100% |
| Module | DC link charge | Scope | 0→800V/500ms; no >850V | PROD-10 | 100% |
| Module | ZVS acquisition | V/I ramp | Phase <5° all points | PROD-10 | 100% |
| Module | Thermal soak | 500kW/30min | T_j<125°C; ΔT_cp<15°C | PROD-10 | 100% |
| Module | GIC ride-through | Helmholtz 100A/m | No trips; data intact | PROD-23/26 | 100% |
| Module | EMI | CISPR 11 | >20dB margin | CISPR 11 | 100% |
| Module | SIL-3 SIF | TSN VLAN 10 | <50ms; PFD<10⁻³ | IEC 61508 | 100% |
| Frame | Dimensions | CMM | ±1mm L, ±0.5mm diag | ISO 10360 | 100% |
| Frame | Isolator stiffness | Static load | 2.5MN/m vert ±5% | PROD-25 | 100% |
| Carousel | Indexing | Encoder+FBG | 8-pos, 45°, <2s, 0.01° | PROD-08 | 100% |
| Bearings | Preload/vib | Torque+FBG | N₂ film 0.1bar; <0.5g RMS | ISO 13373 | 100% |

---

## Appendix B: NDT Procedure Index

### B.1 UT Phased Array — Drum/Vessel (PROD-28-UT-001)

**Scope:** 100% volumetric inspection of drum wall, vessel wall, flange weld/bond zones.
**Equipment:** Olympus OmniScan MX2, 5MHz 64-element probe, wedge 45°/60°/70°.
**Calibration:** IIW block (ref), DAC curve 80% FSH, TCG normalization.
**Scan Pattern:** Raster 2mm × 2mm; encoder-coupled; 100% coverage.
**Acceptance:** No indications >0.5mm flat / 2mm Ø; signal-to-noise >6dB.
**Reporting:** C-scan image + A-scan at each indication; depth/sizing per ASME Sec V.

### B.2 CT High-Resolution — Drum (PROD-28-CT-001)

**Scope:** Drum body (FBG channels, porosity, grain structure).
**Equipment:** Nikon XTH 225/320, 225kV/320kV, 200μm voxel.
**Calibration:** NIST-traceable density standards; geometric phantom.
**Reconstruction:** Feldkamp algorithm; beam hardening correction.
**Analysis:** Porosity distribution (volume %, size, sphericity); FBG channel position ±100μm.
**Acceptance:** Open porosity <0.05%; closed <0.2%; FBG position per design.

### B.3 ET — Port Valve Sleeves (PROD-28-ET-001)

**Scope:** ZrB₂-SiC port sleeves (surface + near-surface).
**Equipment:** Rohmann Elotest M6, 100kHz-2MHz, differential probe.
**Calibration:** ASME Sec V notch standards (EDM notches 0.1/0.2/0.5mm).
**Scan:** Rotating probe, 360° coverage, 0.5mm axial step.
**Acceptance:** No signals >20% DAC at 0.2mm notch equivalent.

### B.4 AE — Vessel Continuous (PROD-28-AE-001)

**Scope:** BFRP vessel continuous monitoring (pressure + thermal cycles).
**Equipment:** Physical Acoustics PCI-2, 8 channels, 40dB preamp, 100kHz-1MHz.
**Sensors:** 8× R15α (broadband) at 45° increments, 2 axial positions.
**Threshold:** 40dB AE; hit definition: peak > threshold, duration >50μs.
**Analysis:** Source location (ΔT triangulation ±50mm); b-value; RA-value; Felicity ratio.
**Alert:** Hit rate >2× baseline (30-day rolling); Felicity <1.0; cluster >10 hits/hr.
**Reporting:** Daily summary + anomaly alerts; monthly trend report.

### B.5 IR Thermography — System (PROD-28-IR-001)

**Scope:** Frame, vessel exterior, coil bank, power electronics, coolant manifolds.
**Equipment:** FLIR T1040, 1024×768, <20mK NETD, 24° lens.
**Calibration:** Blackbody 35°C/200°C; emissivity per material table (BFRP 0.95, ZrB₂ 0.85).
**Frequency:** Monthly + post-CT-08 + post-seismic.
**Analysis:** ΔT vs. baseline; hotspot detection; thermal gradient mapping.
**Alert:** Any point >5°C above baseline; new hotspot; gradient >50°C/100mm.

---

## Appendix C: NCR/CAPA Form Templates

### C.1 NCR Form (PROD-28-NCR-001)

```
NCR NUMBER: NCR-YYYY-XXXX          DATE: YYYY-MM-DD
CLASSIFICATION: [ ] Critical  [ ] Major  [ ] Minor
ORIGINATOR: ___________________     DEPT: __________
DESCRIPTION OF NONCONFORMANCE:
__________________________________________________________________________
__________________________________________________________________________
REQUIREMENT VIOLATED (Doc/Clause): ______________________________________
DETECTION METHOD: [ ] Inspection  [ ] Test  [ ] Audit  [ ] Customer  [ ] Other
AFFECTED ITEMS: _________________________________________________________
QUANTITY: _______    LOT/SERIAL: _______________________________________
IMMEDIATE CONTAINMENT: _________________________________________________
__________________________________________________________________________
ROOT CAUSE (5 Whys / Fishbone): _________________________________________
__________________________________________________________________________
CORRECTIVE ACTION: _____________________________________________________
__________________________________________________________________________
VERIFICATION OF EFFECTIVENESS: __________________________________________
PREVENTIVE ACTION: _____________________________________________________
SIGNATURES:
Originator: _____________ Date: _______
Quality Eng: _____________ Date: _______
Mfg Eng: _____________ Date: _______
Plant Mgr (if Critical): _____________ Date: _______
CLOSURE DATE: _______________    CAE VERIFIED: [ ] Yes  [ ] No
```

### C.2 5 Whys Template (PROD-28-5W-001)

```
PROBLEM: _______________________________________________________________
1. Why? _______________________________________________________________
2. Why? _______________________________________________________________
3. Why? _______________________________________________________________
4. Why? _______________________________________________________________
5. Why? _______________________________________________________________
ROOT CAUSE: ___________________________________________________________
VERIFICATION: _________________________________________________________
```

### C.3 Fishbone Diagram Template (PROD-28-FB-001)

```
CATEGORIES:  6M (Man, Machine, Material, Method, Measurement, Mother Nature)
EFFECT: ________________________________________________________________
MAN: ___________________________________________________________________
MACHINE: _______________________________________________________________
MATERIAL: ______________________________________________________________
METHOD: ________________________________________________________________
MEASUREMENT: ___________________________________________________________
MOTHER NATURE: _________________________________________________________
```

### C.4 8D Report Template (PROD-28-8D-001)

```
D1 TEAM: ______________________________________________________________
D2 DESCRIPTION: ________________________________________________________
D3 CONTAINMENT: ________________________________________________________
D4 ROOT CAUSE (validated): _____________________________________________
D5 CORRECTIVE ACTION: __________________________________________________
D6 VERIFICATION: _______________________________________________________
D7 PREVENTIVE ACTION: _________________________________________________
D8 TEAM RECOGNITION: __________________________________________________
CLOSURE APPROVAL: Quality Eng _______  Plant Mgr _______  Date _______
```

---

## Appendix D: Audit Checklists (ISO 19011)

### D.1 Internal Audit Checklist — QMS (PROD-28-AUD-001)

| Clause | Requirement | Evidence | C/NC/OBS | Notes |
|---|---|---|---|---|
| 4.1 | Context determined | Register | | |
| 4.2 | Interested parties identified | Register | | |
| 5.1 | Quality policy communicated | Posters, intranet | | |
| 5.3 | Roles/responsibilities assigned | Org chart, job desc | | |
| 6.1 | Risks/opportunities assessed | FMEA, risk register | | |
| 7.1 | Resources provided | Budget, personnel, infra | | |
| 7.2 | Competence ensured | Training matrix, records | | |
| 7.3 | Awareness | Quality policy quiz | | |
| 7.4 | Communication | Internal/external matrix | | |
| 7.5 | Documented info controlled | PLM, revision status | | |
| 8.1 | Operational planning | Work instructions, gates | | |
| 8.2 | Requirements review | Contract review records | | |
| 8.3 | Design/development | ECO, V&V, FAT/SAT | | |
| 8.4 | Control of ext. providers | AVL, audits, incoming | | |
| 8.5 | Production/service | Work orders, travelers | | |
| 8.6 | Release | Gate sign-offs, FAT | | |
| 8.7 | Nonconforming output | NCR log, CAPA tracker | | |
| 9.1 | Monitoring/measurement | KPIs, NDT, cal, SAT | | |
| 9.2 | Internal audit | Schedule, reports, CAPA | | |
| 9.3 | Management review | Minutes, actions, status | | |
| 10.1 | Nonconformity/CAPA | 8D, effectiveness check | | |
| 10.2 | Continual improvement | Fleet twin, lessons learned | | |

### D.2 Supplier Audit Checklist — Technical (PROD-28-AUD-002)

| Area | Requirement | Evidence | Score (1-5) | Notes |
|---|---|---|---|---|
| **Process Capability** | Cpk >1.67 critical dims | SPC charts, 30 lots | | |
| **Equipment** | Calibrated, maintained, adequate | Cal records, PM logs | | |
| **Material Traceability** | Lot tracking to raw material | ERP demo, certs | | |
| **In-House Testing** | UT, CT, mech, thermal capable | Lab scope, ISO 17025 | | |
| **R&D Capability** | New grade development | Project portfolio | | |
| **Quality System** | ISO 9001 + AS9100 cert | Certificates | | |
| **NCR/CAPA** | 8D, root cause, effectiveness | Recent NCR logs | | |
| **Supplier Mgmt** | Tier 2 flow-down, audits | Audit schedule | | |
| **Document Control** | Revision control, approval | PLM demo | | |
| **Training** | Operator qual, re-cert matrix | Training records | | |
| **Financial** | D&B >3, 3yr audited | Reports | | |
| **Capacity** | 2× forecast, surge plan | Capacity plan | | |
| **ESG** | Conflict minerals, carbon, labor | ESG report | | |
| **Business Continuity** | Backup site, inventory buffer | BCP document | | |
| **IP Protection** | NDA, data security, export | Security audit | | |

---

*End of CSMFAB000000000128 — PROD-28 Quality Assurance & Testing*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*