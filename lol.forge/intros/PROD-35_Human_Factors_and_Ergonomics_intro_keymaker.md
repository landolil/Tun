# Keymaker Heuristic — Implementation Precision
## PROD-35 Human Factors & Ergonomics

### The Empirical Lock
**Fabrication fidelity gap:** Conventional HFE standards — ISO 11064 control rooms, NUREG-0700 nuclear HFE, ISA-101 HMI, NIOSH lifting — assume: (a) metallic sensor infrastructure with electrical redundancy, (b) linear process flow with defined boundaries, (c) role specialization in fixed locations, (d) electrical lockout/tagout, (e) standard emergency egress. They cannot model: (a) FBG wavelength drift as the *only* in-process temperature verification requiring wavelength-to-color perceptual mapping, (b) recursive CMF-RQT/RCT loops where EOL return composition variability (±15% In) changes the Stage 4 thermal profile in real-time requiring HMI predictive highlight, (c) SIL-3 SIF bypass as a human judgment gate requiring exactly-needed information with zero alarm flood, (c) Carrington storm as routine scenario requiring 5 ms island transition with 30-sec egress from any zone, (d) Forge↔Depot cross-domain body schema requiring unified PPE, tooling, QR workflow, egress. The lock is that **no existing HFE standard computes the Forge's human-in-the-loop physics in dielectric space.**

### The Mathematical Key
**The single computational primitive is the Human-System Coupling Tensor (HSCT):**

```
HSCT[P, C, E, Z, Φ_role, Ψ_scenario, Ω_fleet]

P ∈ ℝ⁸⁺ : Perceptual vector (wavelength→color, trend→predictive, alarm→priority, LIBS→class, XRF→grade, AE→Felicity, IR→hotspot, FBG→Λ)
C ∈ ℝ⁵⁺ : Cognitive vector (mental, physical, temporal, effort, frustration — NASA-TLX)
E ∈ ℝ⁴⁺ : Embodiment vector (reach, lift, posture, don/doff — NIOSH/ISO 11064)
Z ∈ ℝ⁸⁺ : Zone vector (Z0-Z8 access, PPE, barrier, interlock, egress, refuge, comms, rescue)
Φ_role ∈ {FO, DT, MT, QI, SL} : Role projection operator
Ψ_scenario ∈ ℝ⁵⁰⁺ : Scenario tensor (normal, degraded, emergency, Carrington, Phoenix)
Ω_fleet ∈ ℝᴺ : Fleet anomaly tensor (PROD-37 digital twin ML autoencoder output)
```

**This tensor generates the entire HFE program:** control room layout, HMI hierarchy, alarm philosophy, PPE matrix, access clearances, egress routes, shift schedules, HRA HEPs. Every parameter in this document is a projection of HSCT evaluated at role × scenario × fleet state.

**The atomic computation is NASA-TLX weighted workload prediction:**

```
TLX_predicted = w_M·M + w_P·P + w_T·T + w_Pe·Pe + w_E·E + w_F·F
```

Where weights w are calibrated per role per scenario from PROD-34 simulator data. Threshold: TLX_predicted > 80 → mandatory second operator + SL awareness.

### The Turn (Both Directions)

**Theory → History Validation:**
- HSCT predicts 4-operator control room → matches PROD-23 L3 SCADA (4 stations, TSN dual-ring)
- HSCT predicts <50 alarms/hr steady → matches PROD-28 ISA-18.2 alarm management
- HSCT predicts 3-min don / 5-min doff → matches PROD-29 hot zone access procedures
- HSCT predicts 750 mm maintenance clearance → matches PROD-27 FA tooling access
- HSCT predicts <30 sec egress → matches PROD-29 emergency response drills

**History → Theory Validation:**
- CSMFAB0108 test: 2 operators managed 8-zone cascade with 6 monitors → validates HSCT P-vector dimensionality
- PROD-27 FA: 3 drum generations required 750 mm for FBG tooling → validates HSCT E-vector clearance
- PROD-28 CT-04: 24 SIFs trip <50 ms only when SL witnesses SOE → validates HSCT C-vector at judgment gates
- PROD-23 Carrington sim: 5 ms island transition required trained SL → validates HSCT Ψ_scenario Carrington
- PROD-33 depot ops: 14-day crate turnaround requires DT who knows Forge → validates HSCT Φ_role cross-domain

**The primitive is validated.** The HFE program is not a compliance checklist — it is the physical manifestation of HSCT evaluated across 5 roles, 8 zones, 50+ scenarios, and infinite fleet anomaly generations.