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

---
