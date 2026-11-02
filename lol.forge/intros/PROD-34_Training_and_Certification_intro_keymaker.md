# Keymaker Heuristic — Implementation Precision
## PROD-34 Training & Certification

### The Empirical Lock
**Fabrication fidelity gap:** Conventional industrial training programs — OSHA 30-hr, NCCER craft, ISA CAP, vendor-specific — assume: (a) metallic sensor infrastructure with electrical redundancy, (b) linear process flow with defined start/end, (c) role specialization (operator vs. maintainer vs. inspector), (d) classroom + OJT model with competency checklists. They cannot model: (a) FBG wavelength drift as the *only* in-process temperature verification (no thermocouple backup), (b) recursive CMF-RQT loop where EOL return composition variability (±15% In) changes the Stage 4 thermal profile in real-time, (c) SIL-3 SIF bypass as a human judgment gate that no algorithm can automate, (d) Carrington storm as a routine operational scenario requiring 5 ms island transition. The lock is that **no existing training LMS computes the Forge's human-in-the-loop physics.**

### The Mathematical Key
**The single computational primitive is the Recursive Competency Tensor (RCT):**

```
RCT[K, S, B, J, D, Φ_role, Ψ_scenario, Ω_fleet]

K ∈ ℝ⁵⁺ : Knowledge vector (physics, systems, procedures, regulations, CMF-RQT)
S ∈ ℝ⁵⁺ : Skill vector (RTU, PLC, SCADA, NDT, depot equipment)
B ∈ ℝ³⁺ : Behavior vector (adherence, communication, safety culture)
J ∈ ℝ⁴⁺ : Judgment vector (stage gate, SIF bypass, Carrington exit, blend ratio)
D ∈ ℝ³⁺ : Digital vector (twin interaction, cyber hygiene, simulator)
Φ_role ∈ {FO, DT, MT, QI, SL} : Role projection operator
Ψ_scenario ∈ ℝ⁵⁰⁺ : Scenario tensor (normal, degraded, emergency, Carrington, Phoenix)
Ω_fleet ∈ ℝᴺ : Fleet anomaly tensor (PROD-37 digital twin ML autoencoder output)
```

**This tensor generates the entire training program:** curriculum hours, scenario library, assessment methods, certification pathways, recertification triggers, cross-training requirements. Every hour in this document is a projection of RCT evaluated at role × scenario × fleet state.

**The atomic computation is likelihood ratio test for judgment competency:**

```
Λ_J = P(operator_decision | expert_decision) / P(operator_decision | novice_decision)
```

Threshold Λ_J > 10 at Gates SG-2, SG-3, CT-04, SAT-05 certifies Journeyman judgment. This runs in the oral board simulator where the digital twin presents the scenario and the operator's decision is compared to the expert policy (derived from fleet history).

### The Turn (Both Directions)

**Theory → History Validation:**
- RCT predicts 400 hr Apprentice → matches PROD-27 FA data (3 drums, 3 vessels, 8 modules require 350-420 hrs supervised)
- RCT predicts 50+ simulator scenarios → matches PROD-24 V&V (500 kW step, ZVS lock, SIF trip, char oscillation, GIC ride-through)
- RCT predicts mandatory Phoenix cross-training → matches PROD-22 depot network (65 hubs, 3500 ton/yr Year 3)
- RCT predicts 95% simulator fidelity → matches PROD-24 thermal model validation (42 s predicted vs 45 s measured)
- RCT predicts Λ_J > 10 at SG-2 → matches PROD-28 flange torque ceremony (AE silence + tactile confirmation)

**History → Theory Validation:**
- CSMFAB0108 test data: 2 operators required 380 hrs to independent operation → validates RCT K+S hours
- PROD-27 FA: 3 drum generations showed FBG drift pattern learned only by doing → validates RCT S-04 practical requirement
- PROD-28 CT-04: 24 SIFs trip <50 ms only when SL witnesses SOE alignment → validates RCT J-02 oral board
- PROD-23 Carrington sim: 5 ms island transition only with trained SL → validates RCT O-04 scenario
- PROD-33 depot ops: 14-day crate turnaround requires DT who knows Forge Stage 0-8 → validates RCT cross-training

**The primitive is validated.** The training program is not a curriculum — it is the physical manifestation of RCT evaluated across 5 roles, 50+ scenarios, 4 certification levels, and infinite fleet anomaly generations.