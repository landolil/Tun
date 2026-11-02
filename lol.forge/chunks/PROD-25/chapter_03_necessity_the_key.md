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
