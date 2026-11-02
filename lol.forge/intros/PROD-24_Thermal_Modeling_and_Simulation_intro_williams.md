# Williams Heuristic — PROD-24 Thermal Modeling & Simulation

## Constraint (The Lock)

The Aegis-Forge I thermal model is forced into its four-way coupled multi-physics framework by a single irreducible principle: **the induction heating power is a nonlinear function of the very temperature it creates, and the material properties governing both are themselves strong functions of temperature.**

This constraint cascades into every modeling decision:

- **EM-Thermal two-way coupling is mandatory:** Induction power $P_{ind} \propto 1/\rho(T)$ for non-magnetic materials, but $P_{ind} \propto \mu_r(T)$ for ferromagnetic. At Stage 7 (Fe, 2 kHz), $\mu_r$ drops from 200 to 1 at 770°C Curie point — the heating mechanism fundamentally changes character mid-stage. A decoupled model (fixed properties) would predict 5× the actual heating above 770°C.

- **Thermal-structural coupling is non-optional:** The 35 mm ZrB₂-SiC drum wall sustains a 2000°C radial gradient (2200°C ID → 700°C OD). This generates 220 MPa thermal stress at the Liner B interface — which combines with 185 MPa centrifugal stress at 500 RPM to exceed the 350 MPa allowable. The structural limit **directly constrains the thermal operating envelope** (RPM must drop to 400 above 2000°C).

- **Fluid-thermal coupling closes the cascade loop:** Convection coefficients $h_{conv}$ vary from 50 W/m²·K (Stage 1, N₂, 10 RPM) to 2900 W/m²·K (Stage 8, Ar, 300 RPM, radiation-dominated). These are not boundary conditions — they are **outputs of the CFD** that become **inputs to the thermal model**. The cascade cannot be simulated stage-by-stage in isolation.

**What breaks if violated:** A segregated model (EM → Thermal → Structural → Fluid, one-way) would predict Stage 7 heating 5× too high (missing Curie transition), Stage 8 drum stress 40% too low (missing thermal+centrifugal combination), and Stage 4 separation efficiency 30% too high (missing gas convection feedback on droplet cooling). The forge would melt its own drum on the first Stage 7 run.

---

## Necessity (The Key)

The empirical gap this model closes is the **measured divergence between single-physics simulations and integrated cascade test data from the CSMFAB0108 development program.**

Three specific gaps demand this multi-physics framework:

1. **Curie transition power collapse (PROD-10 test data):** At Stage 7, the Zone 7 inverter (2 kHz) delivers 350 kW at 1100°C but only 140 kW at 1300°C — a 60% drop not captured by constant-$\mu_r$ models. The measured power vs. temperature curve matches the two-way coupled EM-thermal FEA only when $\mu_r(T)$ is updated from the thermal solution at each iteration. The gap: **fixed-property EM models vs. temperature-dependent ferromagnetic coupling.**

2. **Drum thermal stress at Liner B interface (PROD-04 strain gauge data):** First-article drum FA-01 showed 385 MPa von Mises at Liner B during Stage 8 at 500 RPM — exceeding the 350 MPa allowable. Thermal-only FEA predicted 220 MPa; centrifugal-only predicted 185 MPa. Only the combined thermo-mechanical model with temperature-dependent $E(T)$, $\alpha(T)$, and $\sigma_f(T)$ captured the superposition. The gap: **superposition of linear analyses vs. nonlinear combined loading at temperature.**

3. **Stage 4 indium separation efficiency (PROD-17 batch data):** CFD predicted 99.5% In recovery at Port 4A; first batch achieved 97.2%. The gap was traced to gas convection cooling of In droplets — $h_{conv}$ was 2× higher than estimated due to N₂/H₂ flow turbulence at 400 RPM. Adding CFD-derived $h_{conv}(T, \omega, P)$ to the thermal model closed the gap. The gap: **assumed convection coefficients vs. CFD-resolved gas flow in rotating drum.**

**Measured data demanding this approach:**
- Zone 7 power vs. T: 350 kW at 1100°C → 140 kW at 1300°C (PROD-10 inverter test, 2026-10)
- Drum strain at Liner B: 385 MPa measured vs. 385 MPa predicted (PROD-04 FA-01, 2026-10)
- In recovery: 97.2% batch 1 → 99.5% batch 3 (after $h_{conv}$ correction, PROD-17)
- Vessel outer surface: 148°C measured vs. 150°C predicted (PROD-06 hydrotest, 2026-10)
- ROM speedup: 118× vs. FEA with 1.8°C max error (VT-09, 2026-10)

---

## Commitment (The Turn)

This document makes the following non-negotiable commitments that constrain all downstream documents:

1. **Four-way coupling is the only valid framework:** EM ↔ Thermal (two-way, staggered), Thermal → Structural (one-way load mapping), Structural → Fluid (wall deformation at 10 Hz), Fluid → Thermal (convection coefficients at 10 Hz). No level can be decoupled. PROD-23 (Control) PID tuning depends on the coupled $P_{ind}(T)$ curve. PROD-25 (Structural) uses the combined thermal+centrifugal loads. PROD-37 (Digital Twin) uses the ROM derived from this coupling.

2. **50+ material property database is frozen:** All 24 BOM materials (PROD-12) plus feedstock intermediates have temperature-dependent correlations (piecewise-cubic Hermite) locked in Table 2.1-2.2. PROD-23 RTU thermal model, PROD-25 FEA, PROD-37 ROM, FOLLOW-01/02/09/10/11 must use these exact correlations. No "typical values" allowed.

3. **Curie transition at 770°C is a hard model feature:** The $\mu_r$ drop from 200→1 for Fe must be captured with <10°C transition width. PROD-23 resonance tracker (Section 3.4) pre-empts ZVS loss during this transition. PROD-10 inverter design (Section 3.3) selects 2 kHz specifically for post-Curie penetration.

4. **Drum RPM limit at Stage 8 is physics-derived:** 400 RPM max when $T_{inner} > 2000°C$ (Section 4.2). PROD-23 PLC cascade control (Section 4.2) enforces this. PROD-29 operations procedures must include this limit. PROD-30 maintenance inspects Liner B interface after every Stage 8 run at >400 RPM.

5. **Aerogel gap closure is structural-thermal coupled:** 8 mm gap closure from 2200°C drum expansion (Section 7.3) loads ZrO₂ standoffs to 0.56 MPa. PROD-06 vessel design (Section 4.8) must accommodate this. PROD-27 manufacturing must verify standoff preload. PROD-30 maintenance inspects aerogel compression set annually.

6. **Validation hierarchy is fixed (ASME V&V 40):** Code verification (MMS) → Solution verification (GCI) → Validation experiments (CT-01 through CT-10) → UQ (PCE, 20 parameters). PROD-28 (QA) executes this hierarchy. PROD-39 (T&E) reports against it. No validation claim without this chain.

7. **ROM for digital twin is POD-Galerkin, 12 modes, 118× speedup:** Export format (Appendix C) is the contract with PROD-37. 12 modal coefficients, 12×12 linear operator, 12×8 input matrix, quadratic nonlinearity tensors. PROD-37 must ingest this exact format. No alternative ROM architecture.

8. **Scaling laws preserve 6 dimensionless groups:** Fo, Re, Pe, Nu, δ/d, G (Table 12.2). PROD-30 (Manufacturing) and PROD-40 (Roadmap) must maintain these for 226L→2000L scale-up. Frequency scales as 1/D²; RPM as 1/√D; cycle time as D².

These commitments are the **computational load-bearing walls**. PROD-23 (Control), PROD-25 (Structural), PROD-27 (Manufacturing), PROD-28 (QA), PROD-29 (Deployment), PROD-30 (Maintenance), PROD-37 (Digital Twin), PROD-39 (T&E), PROD-40 (Roadmap), FOLLOW-01/02/09/10/11 build on this foundation. They cannot move the walls.