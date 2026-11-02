# Keymaker Heuristic — Implementation Precision
## PROD-39 Test & Evaluation Specification

### The Empirical Lock
**Fabrication fidelity gap:** Conventional T&E frameworks — MIL-STD-810, IEEE 1220, DO-178C, ASME V&V 40, IEC 61508 — assume: (a) test articles with metallic instrumentation ports, (b) network-connected test DAQ with centralized analysis, (c) separate developmental/operational test phases, (d) software V&V on COTS OS/hardware, (e) environmental tests on metallic structures with standard grounding. They cannot model: (a) zero-metal test article where the test instrumentation (FBG, POF) IS the production sensorium, (b) air-gapped test network where the only data path is the production TSN with frozen gate control lists, (c) unified CT-01..10 sequence where component/module/subsystem/system tests are one continuous physics validation, (d) firmware V&V on Zephyr/FPGA with DO-178C DAL A equivalence AND SLSA Level 3 build pipeline, (e) seismic/GIC tests that verify the ABSENCE of metallic paths as the primary immunity mechanism. The lock is that **no existing T&E framework computes the Forge's test physics where the test IS the process, the sensor IS the witness, the twin IS the oracle, and the human IS the certifier at four irreducible gates.**

### The Mathematical Key
**The single computational primitive is the Recursive Bayesian Test Oracle (RBTO) executed across four test scales:**

```
Test_Oracle[test_scale, data_sources, reference_models] → {PASS, FAIL, CONDITIONAL}

test_scale ∈ {MICRO, MESO, MACRO, META}

MICRO (per channel, seconds):
  data = {FBG_λ, UT_A-scan, AE_hit, IR_ΔT, vib_spectrum}
  reference = {PQR_calibration, DAC_curve, AE_baseline, IR_baseline, vib_baseline}
  Λ = P(data | degradation) / P(data | nominal)
  decision = PASS if Λ < 10 else NCR_auto

MESO (per component, hours):
  data = {UT_volumetric, CT_porosity, FBG_survival, thermal_cycle_strain, hydrotest_hold}
  reference = {FEA_prediction, process_signature, material_certificate}
  health_state = Bayesian_fusion(data, reference, prior_from_MICRO)
  decision = PASS if P(intact) > 0.999 else NCR_CAPA

MACRO (per system, days):
  data = {CT-01..10 results, SIF_trip_times, SOE_alignment, twin_sync, gas_emissions}
  reference = {PROD-23/24/25/26/27/31/32/37 requirements}
  system_ready = ∧(all_SIFs_PASS) ∧ (twin_sync < 3σ) ∧ (mass_balance > 99%)
  decision = SHIP if system_ready else HOLD

META (per fleet, months):
  data = {all_Forges_MICRO_MESO_MACRO, field_failures, NCR_trends, twin_posteriors}
  reference = {PROD-37 fleet_learning, PROD-28 Bayesian_priors}
  parameter_guards = tighten(priors, fleet_data)
  decision = ECO if guards_tightened else CONTINUE
```

**This one oracle generates the entire T&E program:** FAT procedures, SAT procedures, SIF proof matrix, cyber scenarios, HFE scenarios, environmental tests, reliability demo, SW/FW V&V, twin V&V, regulatory tests. Every test procedure in this document is an instantiation of RBTO at a specific scale with specific data sources.

**The atomic computation is the likelihood ratio test — the same as PROD-28 Keymaker Key:**
```
Λ = P(observation | degradation) / P(observation | nominal)

observation = {FBG_drift, UT_amplitude, AE_energy, IR_hotspot, SIF_trip_time, SOE_alignment,
               TSN_frame_timing, PTP_offset, firmware_hash, merkle_root, operator_action}

P(obs | degradation) = ∏ P(source_i | degradation)  [conditional independence]
P(obs | nominal)     = ∏ P(source_i | nominal)       [fleet baseline from PROD-37]
```

Thresholds: Λ > 10 → SEV-3 (NCR); Λ > 100 → SEV-2 (CAPA); Λ > 1000 → SEV-1 (SIF lockdown). This runs in PROD-37 digital twin at 10 Hz on fused sensor stream during ALL tests.

### The Turn (Both Directions)

**Theory → History Validation:**
- RBTO predicts CT-04 SIF-16 (optical E-stop) <10 ms → matches PROD-23 L0 FPGA desat detect at 10 ns
- RBTO predicts FBG drift <0.5%/1000 hrs → matches PROD-28 PQR-FS-001 / PQR-FW-001 statistics
- RBTO predicts twin sync <3σ during CT-08 thermal cycle → matches PROD-24 FA-01 validation
- RBTO predicts GIC ride-through zero spurious trips → matches PROD-26 Helmholtz test data
- RBTO predicts cyber red team IR-04 (Carrington+cyber) detection Λ_CP >100 → matches PROD-36 tabletop

**History → Theory Correction:**
- CT-02 hydrotest revealed aerogel density gradient → updated P(data | delamination) for BFRP with aerogel covariate
- CT-06 FBG calibration revealed Zone 3 systematic +0.3 nm offset → cold plate contact issue, updated reference
- CT-10 Batch 2 (Cat B) HCl spike to 200 ppm → updated scrubber capacity model, PROD-07 kinetics
- IR-02 red team: FBG spoofing detected at Λ_ML >10σ not Λ_CP → added spatial correlation to CPAT
- SAT-05 Batch 6 (Phoenix) mass balance 99.7% vs 99.5% target → tightened prior for Category D feedstock

**The primitive absorbs history** — each test tightens a likelihood model, adds a covariate, updates a prior, but the RBTO structure across four scales remains invariant. The T&E program is not a compliance checklist — it is the physical manifestation of recursive Bayesian test oracle evaluated across 384 FBG channels, 24 SIFs, 10 CT tests, 6 cyber scenarios, 8 HFE scenarios, and infinite fleet generations.