# Williams Heuristic — PROD-25 Structural Analysis & FEA

## Constraint (The Lock)

The Aegis-Forge I structural analysis is forced into its thermomechanical FEA framework by a single irreducible principle: **every load-bearing component must survive the simultaneous application of 2200°C thermal gradients, 500 RPM centrifugal loading, 10 bar pressure containment, and Carrington-class electromagnetic hostility — without a single structural metal.**

This constraint cascades into every structural decision:

- **Ceramics-only rotating drum:** The ZrB₂-SiC drum (600 mm ID, 35 mm wall) is the only moving hot part. It must withstand 84.5 G centrifugal acceleration at ID, 5 bar internal pressure, and a 2000°C radial thermal gradient (2200°C ID → 700°C OD) — all while remaining electrically insulating (ρ > 10⁶ Ω·m) to maintain Carrington immunity. Any metallic reinforcement would couple GIC currents (5000 nT/s induces >100 A/km) into the structure, creating unintended heating paths and potential arc paths to the induction coils.

- **Composite-only stationary vessel:** The BFRP/Elium® vessel (900 mm ID, 18 mm wall) must contain 10 bar design pressure while thermally isolating the composite (Tg = 80°C) from the 2200°C drum across a 68 mm gap (50 mm aerogel + 18 mm BFRP). No metallic flanges, no metallic bolts, no metallic gaskets — the entire pressure boundary is ceramic/composite. The 12× M24 ZrO₂ bolts and ZrO₂ gasket at the PEEK CF40 flanges are the only closure mechanism.

- **All-dielectric port valves:** The 8 material exit ports use Ti₃AlC₂ MAX phase thermal actuators and 3Y-TZP ZrO₂ pistons — entirely ceramic, no metal springs (PEEK CF40 wave springs only), no metal seals. The actuator operates at the drum OD (≤700°C) where Ti₃AlC₂ retains 320 MPa strength.

- **Seismic without steel:** The BFRP box beam frame must qualify to IEEE 693 High (PGA = 1.0g, ZPA = 1.5g) without any steel reinforcement. 6× BFRP stiffening rings + 4 vertical struts provide the required HCLPF ≥ 1.5g.

**What breaks if violated:** A single steel bolt in the flange → GIC pickup → common-mode voltage on FBG interrogators → control system corruption. A metallic drum reinforcement → induction coupling → uncontrolled eddy currents → thermal runaway. A metallic port actuator → magnetic coupling at Stage 7 (2 kHz, ferromagnetic) → actuation failure at 1600°C.

---

## Necessity (The Key)

The empirical gap this analysis closes is the **measured divergence between room-temperature structural allowables and the combined thermomechanical reality of the operating envelope.**

Three specific gaps demand this integrated FEA approach:

1. **Thermal stress dominates centrifugal stress by 4×:** At Stage 8, the 2000°C radial gradient generates 180 MPa thermal stress at the drum ID, while 500 RPM centrifugal loading adds only 42 MPa. Linear superposition (225 MPa combined) matches FEA, but the **temperature-dependent material properties** (E = 300 GPa, σ_f = 350 MPa at 2200°C) mean the safety factor is only 1.55×. Room-temperature analysis (σ_f = 620 MPa) would predict SF = 2.75× — a dangerous 78% overestimate. The gap: **temperature-dependent strength vs. constant-property design.**

2. **Port reinforcement requires coupled thermal-mechanical optimization:** Unreinforced ports have K_t = 3.0 (σ_vm = 350 MPa at 2200°C → SF = 1.0). The ZrB₂-SiC sleeve + OD bulge reduces K_t to 1.6 (σ_vm = 210 MPa → SF = 1.81×). But the sleeve press-fit (0.03 mm) adds mechanical stress that combines with thermal stress at the port edge. Only a fully coupled thermomechanical FEA with contact modeling captures this interaction. The gap: **sequential analysis (thermal then mechanical) vs. coupled thermomechanical contact.**

3. **Vessel buckling is governed by thermal compression, not external pressure:** At 200°C external surface, the BFRP hoop modulus drops to 45 GPa and thermal compressive stress reaches 78 MPa. The net hoop stress under 10 bar internal pressure is -53 MPa (compressive). With 4 stiffening rings, P_cr = 14.2 bar (SF = 1.42×); with 6 rings, P_cr = 18.5 bar (SF = 1.85×). The 6-ring design was driven by **thermal buckling**, not pressure buckling. The gap: **pressure-only buckling analysis vs. thermomechanical buckling with temperature-dependent modulus.**

**Measured data demanding this approach:**
- Drum FA-01 strain gauges (12 rosettes): 225 MPa measured vs. 225 MPa FEA at Stage 8, 400 RPM (PROD-04 Section 6.5)
- Vessel hydrotest (15 bar): 38 MPa measured vs. 38 MPa Lamé prediction (PROD-06 Section 5.3)
- Port 8 actuator calibration: 103 MPa actuator stress at 700°C (3.6 mm deflection at 680°C ΔT) — matches Timoshenko theory
- Frame shake table test (IEEE 693): 1st mode at 8.2 Hz (FEA: 8.5 Hz), damping 2.1% (spec: 2%)
- Bearing life test: 42,000 hrs to first spall (L10 prediction: 35,800 hrs)

---

## Commitment (The Turn)

This document makes the following non-negotiable commitments that constrain all downstream documents:

1. **Drum minimum SF = 1.55× at Stage 8 combined loading** — no operating condition may reduce this below 1.5×. PROD-23 control system enforces 400 RPM limit when T_inner > 2000°C. PROD-29 operations procedures include this limit. PROD-30 maintenance inspects Liner B interface after every Stage 8 run at >400 RPM.

2. **6× vessel stiffening rings + 4 vertical struts are mandatory** — required to achieve HCLPF = 1.6g (≥ 1.5g IEEE 693 High). PROD-27 manufacturing must include ring welding/fixture. PROD-28 QA verifies ring attachment. PROD-29 deployment includes strut installation.

3. **12× M24 ZrO₂ bolts per flange (not 8×)** — required for SF = 1.63× on bolt stress (490 MPa vs 800 MPa). PROD-27 manufacturing specifies bolt torque (160 N·m ceramic paste). PROD-28 QA torque audits. PROD-30 maintenance re-torque annually.

4. **NDT inspection interval = 500 batches (3 months) for drum UT** — detects flaws >0.5 mm, limits crack growth to <54 μm (vs. critical 112 μm). PROD-28 QA executes. PROD-30 maintenance schedules. PROD-37 digital twin tracks inspection history.

5. **Carousel mold thermal shock controlled by 3-phase quench** — 2200°C→1500°C (60s air), 1500°C→800°C (60s N₂), 800°C→25°C (180s N₂). Pre-heat to 800°C mandatory. Limits σ_max < 400 MPa (SF = 2.0× on 800 MPa). PROD-23 control system sequences quench. PROD-27 manufactures pre-heat station. PROD-28 QA validates quench profile.

6. **Port actuator operates at ≤700°C (5 mm ZrO₂ felt insulation at pocket)** — ensures Ti₃AlC₂ SF ≥ 3.1×. PROD-04 drum machining specifies pocket insulation. PROD-27 manufacturing installs insulation. PROD-28 QA verifies temperature at actuator.

7. **Seismic capacity governed by vessel buckling (HCLPF = 1.6g)** — frame and drum have higher margins. PROD-27 manufactures 6 stiffening rings. PROD-28 QA shake table tests. PROD-29 deployment verifies strut installation.

8. **All structural materials use PROD-24 temperature-dependent correlations** — no "room temperature" properties in analysis. PROD-23 control uses E(T), σ_f(T) for real-time stress estimation. PROD-37 digital twin uses same correlations.

These commitments are the **structural load-bearing walls**. PROD-27 (Manufacturing), PROD-28 (QA), PROD-29 (Deployment), PROD-30 (Maintenance), PROD-32 (Compliance), PROD-37 (Digital Twin), PROD-39 (T&E), FOLLOW-04/05/07/25 build on this foundation. They cannot move the walls.