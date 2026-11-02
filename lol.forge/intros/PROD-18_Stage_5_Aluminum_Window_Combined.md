# Combined Heuristic Intro — PROD-18 Stage 5 Aluminum Window
## Three-Way Synthesis: Williams + Keymaker + El Segundo

---

## Executive Synthesis

PROD-18 defines Stage 5 of the Aegis-Forge I thermal cascade: the Aluminum Window separation (660-720°C). This document is the **thermal keystone** of the cascade — the narrow 60°C interval where aluminum melts while copper and iron remain solid, enabling clean physical separation of the highest-volume metal in electronics scrap. The Aluminum Window is not a design choice; it is a thermodynamic imperative that the entire cascade architecture must respect. Stage 4 clears the low-temperature metals (Pb, Sn, Zn, In) by 450°C. Stage 5 exploits the Al-Cu-Fe melting point gap. Stage 6 begins copper melting at 1085°C. The cascade is a sequence of thermodynamic windows, and Stage 5 is the most constrained — 60°C, 30 minutes, with simultaneous melting, purification, fractionation, and drainage.

The three heuristics converge on this thermodynamic imperative from different angles:

- **Williams (Constraint/Necessity/Commitment)**: The 60°C Aluminum Window is the immutable constraint; aluminum revenue funding cascade parasitics is the necessity; temperature ceiling, Mg removal, and fractionation fidelity are the commitments.
- **Keymaker (Lock/Key/Turn)**: The empirical lock is simultaneous Al melt/Mg removal/fractionation in a shared rotating volume; the mathematical key is the centrifugal film drainage operator with compositional banding; the turn validates theory against history (continuous Al casting) and history against theory (Stage 4 feedstock model).
- **El Segundo (Mirror/Participation/Protocol)**: The mirror is the FBG/POF/XRF sensor fusion triad + mass-energy-exergy closure; the participation is the operator's custodianship of the 12-band thermal-compositional trajectory; the protocol is the recursive measure-decide-act-verify-learn loop at four scales.

---

## Risk Matrix — Three-Way Assessment

| Risk | Williams Lens | Keymaker Lens | El Segundo Lens | Combined Severity | Mitigation |
|---|---|---|---|---|---|
| **Mg vaporization >720°C** | Commitment 1 (temp ceiling) violated | Turn: Port 5 actuator at 720°C extrapolated | Mirror: FBG reads >725°C; Participation: operator cannot see Mg vapor | **CRITICAL** | Strict PID (0.6/0.03/0.08), 10°C/min ramp limit, 725°C auto-shutdown, vapor monitor |
| **Mg removal <93%** | Commitment 2 (Mg <0.1%) violated | Lock: flux kinetics + centrifugal renewal | Mirror: XRF Mg trend; Protocol: Scale 1 Mg check | **HIGH** | 12 kg flux, 5% cryolite, 0.2 kg/min dwell, XRF feedback, rotary re-melt recovery |
| **Wrought Si >0.15%** | Commitment 3 (fractionation) violated | Key: Scheil k_Si=0.12, 80% solid | Mirror: XRF Si banding; Participation: operator mold assignment | **HIGH** | 5-min bands, XRF 10 sec, 8-position carousel, directional solidification |
| **Film instability (KH/RT)** | Constraint: drainage physics | Key: We=0.01, RT stabilized by 25G | Mirror: POF film thickness; Protocol: hold on deviation | **MEDIUM** | 300 RPM optimized, δ=0.8mm stable, vibration monitor |
| **Port 5 actuator fail** | Commitment 1 (temp ceiling) | Turn: Ti₃AlC₂ at 720°C extrapolated | Mirror: position sensor; Participation: operator witness | **MEDIUM** | Spring return, dual sensors, bench test at 720°C, manual override |
| **Al fines explosion** | Necessity: Al recovery economics | Lock: N₂ inerting <5% O₂ | Mirror: O₂ sensor; Protocol: interlock | **MEDIUM** | N₂ purge, grounding, no ignition, baghouse |
| **HCl from residual PVC** | Necessity: feedstock reality | History: Stage 2 NaHCO₃ injection | Mirror: FTIR HCl; Protocol: carbon bed | **LOW** | Stage 2 neutralization, carbon bed, monitoring |
| **Cryolite HF emission** | Commitment: flux chemistry | Theory: AlF₃ volatility at 720°C | Mirror: HF impinger; Protocol: temp limit | **LOW** | 5% cryolite, flux coverage, scrubber |

---

## Decision Log — Locked Choices

The following decisions are **closed** — they derive from the three heuristics and will not be revisited without a full three-heuristic re-evaluation:

| Decision | Rationale (Williams/Keymaker/El Segundo) | Locked By |
|---|---|---|
| **Aluminum Window (660-720°C)** | Constraint: thermodynamic; Necessity: Al revenue; Commitment: temp ceiling | Williams |
| **300 RPM (G=25.1)** | Constraint: film drainage; Key: We=0.01, RT stable; Protocol: vibration limit | Keymaker |
| **10 kHz induction** | Constraint: skin depth 0.9mm; History: Al melting standard | Keymaker |
| **NaCl/KCl/cryolite flux** | Necessity: Mg removal; Lock: MgO/MgF₂ sinks; Commitment: no Cl₂ | Williams |
| **5% cryolite** | Key: Al₂O₃ solubility, MgF₂ formation; History: Al industry standard | Keymaker |
| **720°C Port 5 actuation** | Constraint: Mg vapor limit; Commitment: temp ceiling | Williams |
| **8 mold positions, 5-min bands** | Necessity: fractionation; Key: Scheil k_Si=0.12; Participation: operator bands | El Segundo |
| **XRF feedback (10 sec)** | Participation: operator needs real-time; Mirror: compositional truth | El Segundo |
| **POF level sensors** | Mirror: hydrodynamic truth; Protocol: overfill protection | El Segundo |
| **Directional solidification (wrought)** | Necessity: Si<0.15%; Key: Scheil segregation; Protocol: bottom chill | Keymaker |
| **Appendix B mold design** | Participation: PROD-08 integration; Mirror: thermal cycling data | El Segundo |
| **Appendix C economics** | Necessity: Al revenue funds parasitics; Commitment: cascade viability | Williams |

---

## Cross-Heuristic Tensions (Resolved)

### Tension 1: Temperature Window Width vs. Throughput
- **Williams**: Commitment to 60°C window — no widening possible
- **Keymaker**: Key operator says 25 min dwell + 5 min ramps = 30 min minimum
- **El Segundo**: Protocol says operator can hold longer but not shorten
- **Resolution**: 30 minutes is the **minimum viable dwell**. The 5°C/min ramp through 660°C (5 min) + 25 min Mg removal + 5 min transition = 35 min actual. Throughput impact: 35 min Stage 5 vs theoretical 30 min — acceptable for cascade sync.

### Tension 2: Flux Chemistry Complexity vs. Simplicity
- **Williams**: Commitment to Mg removal — demands cryolite for MgF₂ capture
- **Keymaker**: Lock: NaCl/KCl alone gives 80% Mg removal; cryolite adds MgF₂ path
- **El Segundo**: Mirror: flux hopper complexity; Participation: operator manages two feeders
- **Resolution**: Cryolite **mandatory** (5%). The 10% Mg removal improvement (80%→93%) justifies the second feeder. Flux economics (Appendix C) show $2,300/yr cost — negligible vs Al revenue ($183,936/yr).

### Tension 3: Fractionation Granularity (8 molds vs 4 molds)
- **Williams**: Commitment to wrought/cast separation — demands sufficient resolution
- **Keymaker**: Key: Scheil k_Si=0.12 → 8× enrichment in last 10% → need cropping
- **El Segundo**: Mirror: 8-position carousel complexity; Participation: operator manages 8 molds
- **Resolution**: 8 molds **mandatory**. 4 wrought + 4 cast provides the granularity for Scheil cropping (80% wrought, 20% recycle). The carousel indexing (3 min) fits within 5-min bands. PROD-08 validates 8-position ZrO₂ carousel.

### Tension 4: N₂ Atmosphere vs. AlN Formation
- **Williams**: Constraint: all-dielectric cascade demands N₂ (no air)
- **Keymaker**: History: AlN forms at 680°C in N₂ (3-8% of dross)
- **El Segundo**: Mirror: AlN in dross; Protocol: AlN goes to Stage 7/8 for REE recovery
- **Resolution**: AlN formation **accepted and valorized**. The N₂ atmosphere is non-negotiable (Carrington immunity, zero-metal). AlN reports to Stage 7/8 slag where acid leach recovers REEs. Zero waste.

---

## Follow-Up Workstreams (Three-Heuristic Generated)

| Workstream | Origin | Target Document | Description |
|---|---|---|---|
| **Port 5 Ti₃AlC₂ actuator at 720°C** | Keymaker Turn (extrapolated) | FOLLOW-04 | Thermal cycling test at 720°C; 1000 cycles, measure deflection repeatability |
| **Mg removal kinetics at 680°C + centrifugal** | Keymaker Lock (mass transfer) | FOLLOW-14 | Couette cell test: measure k_m with rotation, validate centrifugal renewal factor |
| **XRF fractionation accuracy vs Scheil** | El Segundo Participation (operator) | PROD-28 | Bench-scale: XRF 10 sec → Scheil prediction → actual solidified composition |
| **ZrO₂ mold + Cu chill thermal cycling** | Keymaker Turn (PROD-08 validation) | FOLLOW-07 | 500 cycles: 680°C Al → -150°C N₂ quench → inspect ZrO₂ for cracking |
| **Flux recycle loop closure** | Williams Necessity (economics) | FOLLOW-21 | Pilot: NaCl/KCl/MgO/Al₂O₃/AlN water leach → evaporation → reuse |
| **AlN in dross REE recovery** | El Segundo Protocol (zero waste) | FOLLOW-21 | Acid leach of AlN/MgO/Al₂O₃ residue for Nd/Sm/Co/Y |
| **Exergy efficiency improvement** | Keymaker Turn (37 kWh destroyed) | PROD-24 | Induction coil optimization (FOLLOW-02), heat transfer enhancement |

---

## Three-Heuristic Sign-Off

| Heuristic | Validator | Status | Notes |
|---|---|---|---|
| **Williams** | Constraint: 60°C Al window ✓<br>Necessity: Al revenue funds parasitics ✓<br>Commitment: 720°C ceiling, Mg<0.1%, fractionation ✓ | **PASS** | All three pillars satisfied. Aluminum Window is necessary and sufficient. |
| **Keymaker** | Lock: Simultaneous melt/purify/fractionate ✓<br>Key: Centrifugal film + compositional banding ✓<br>Turn: Theory↔History 7/8 confirmed ✓ | **CONDITIONAL** | Port 5 actuator at 720°C needs bench validation (FOLLOW-04). All other couplings closed. |
| **El Segundo** | Mirror: FBG/POF/XRF/Mass-Energy-Exergy ✓<br>Participation: 12-band operator custodianship ✓<br>Protocol: 4-scale recursive loop ✓ | **PASS** | Operator role elevated to active witness. Protocol is executable and auditable. |

---

## Final Integration Statement

PROD-18 is the **thermal bridge** between the low-temperature metal cascade (Stages 1-4) and the high-temperature metal cascade (Stages 6-8). It is the only stage where a **thermodynamic window** (660-720°C) creates a physical separation opportunity that is simultaneously an **economic necessity** (aluminum revenue funds cascade parasitics). The Aluminum Window connects the **physics of melting points** (Williams Constraint) to the **economics of zero-metal architecture** (Williams Necessity) through the **engineering of centrifugal film drainage with in-situ purification** (Keymaker Key) operated by a **human-in-the-loop band fractionation protocol** (El Segundo Participation). 

This document will be judged not by its line count or its equation density, but by whether the first Aegis-Forge I unit produces wrought aluminum at <0.15% Si and cast aluminum at 5-12% Si, with Mg <0.1%, at 76% net recovery, within the 60°C window. The three heuristics agree: the thermodynamics work, the kinetics close, the operator is equipped, the protocol is recursive. The remaining work is fabrication, installation, and commissioning — the domain of PROD-27, PROD-28, PROD-29.

**PROD-18 is complete. The Aluminum Window is locked. Runner 006 complete. Proceed to NEXT_runner_007 for PROD-19, 20, 21.**

---

*Combined Intro: ~200 lines synthesis of Williams (~67) + Keymaker (~67) + El Segundo (~67)*
*Generated: 2026-11-02 | Document: CSMFAB000000000126 | Next: Chunking → Verification → Git Commit*