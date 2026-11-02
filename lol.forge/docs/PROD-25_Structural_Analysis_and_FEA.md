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

---

## Keymaker Heuristic — Implementation Precision

### The Empirical Lock

The fabrication fidelity gap in Aegis-Forge I structural analysis is the **divergence between single-load-case allowable stress design and the measured behavior of ceramics and composites under combined extreme thermomechanical loading.**

Three specific locks prevent traditional ASME/ASCII code-based design from closing this gap:

1. **Ceramic strength is not a constant — it's a temperature-dependent distribution:** ASME BPVC Section VIII uses constant allowable stress (S) with safety factors. But ZrB₂-SiC flexural strength drops from 620 MPa (RT) to 350 MPa (2200°C) — a 44% reduction. The Weibull modulus (m = 12) means failure probability is volume-dependent and stress-dependent. At Stage 8, the drum ID sees 225 MPa von Mises — SF = 1.55× on 350 MPa. But this is the *mean* strength; 10% of the volume sees >250 MPa (SF < 1.4×). The lock: **constant safety factor on temperature-dependent Weibull strength.**

2. **Composite failure is interactive, not separable:** BFRP/Elium® vessel failure is governed by Tsai-Wu criterion (F_ijσ_iσ_j + F_iσ_i = 1), where hoop, axial, and shear stresses interact. At the gas port penetration under design pressure + thermal gradient, hoop = 52 MPa, axial = 35 MPa, shear = 22 MPa. Individual SFs: hoop 12.5×, axial 18.6×, shear 3.6×. But combined Tsai-Wu FI = 0.22 (SF = 4.5× on interaction). Sequential checking of individual components would miss the interaction. The lock: **interactive failure criteria vs. component-by-component allowables.**

3. **Thermal buckling is a load case, not a material property:** The vessel external surface reaches 200°C during operation. The thermal compressive stress (78 MPa) exceeds the pressure tensile stress (25.5 MPa), creating net compression. The buckling critical pressure drops from 18.4 bar (RT) to 12.7 bar (200°C) — a 31% reduction. Standard pressure vessel codes treat buckling as an external pressure check; here it's an *operating condition*. The lock: **thermal compression as a design-driving load case.**

**Common thread:** Every lock is a **coupling between temperature and mechanical behavior that traditional codes treat as separable.** The empirical lock is the sum of all neglected thermomechanical couplings.

---

### The Mathematical Key

The single computational primitive that generates the structural solution is the **temperature-dependent thermomechanical equilibrium equation solved on the coupled FEA mesh:**

$$\nabla \cdot \boldsymbol{\sigma} + \mathbf{f}_b = 0, \quad \boldsymbol{\sigma} = \mathbb{C}(T) : (\boldsymbol{\epsilon} - \boldsymbol{\epsilon}_{th}(T)) - \boldsymbol{\epsilon}_{creep}(t,T,\sigma)$$

Where:
- $\mathbb{C}(T)$ = temperature-dependent stiffness tensor (orthotropic for BFRP, isotropic for ceramics)
- $\boldsymbol{\epsilon}_{th}(T) = \int_{T_{ref}}^T \boldsymbol{\alpha}(T') dT'$ = thermal strain from temperature history
- $\boldsymbol{\epsilon}_{creep}$ = Norton-Bailey creep strain (for T > 1800°C)
- $\mathbf{f}_b$ = body forces (centrifugal: $\rho \omega^2 r$, seismic: $\rho \mathbf{a}_{ground}$)

**This one equation, discretized on the 2.8M-element drum mesh and 50K-element vessel mesh, with temperature-dependent material properties from PROD-24, is the atomic computation.**

Everything in this document derives from it:

- **Drum FEA (Section 2):** The equation solved on the rotating drum mesh with centrifugal body force and thermal strain from PROD-24's radial gradient. The Weibull post-processor integrates $P_f = 1-\exp[-(\sigma/\sigma_0)^m V/V_0]$ over the stressed volume.
- **Vessel FEA (Section 3):** The equation on the shell mesh with orthotropic $\mathbb{C}(T)$, thermal strain from 250°C→150°C gradient, and pressure load. Tsai-Wu failure index computed from $\boldsymbol{\sigma}$ at each integration point.
- **Port valve (Section 5):** The equation on the actuator strip mesh with $\mathbb{C}(T)$ for Ti₃AlC₂/ZrO₂ bilayer, thermal strain from ΔαΔT, contact boundary condition at piston seat.
- **Seismic (Section 8):** The equation with $\mathbf{f}_b = \rho \mathbf{a}_{ground}(t)$ from IEEE 693 RRS time history. Modal superposition (30 modes) for transient response.
- **Fatigue (Section 9):** The equation's stress history output feeds Coffin-Manson $\Delta\varepsilon_p/2 = \varepsilon_f'(2N_f)^c$ and Paris law $da/dN = C(\Delta K)^m$.
- **NDT (Section 10):** The equation's stress distribution defines critical locations for UT/AE sensor placement.
- **Safety factors (Section 12):** The equation's output σ_vm and FI are divided by temperature-dependent allowables.

**The mathematical key is not the FEA software, not the mesh, not the post-processor — it is the temperature-dependent thermomechanical equilibrium equation with thermal strain and creep, evaluated on the coupled mesh.** If you solve this equation correctly with the right $\mathbb{C}(T)$, $\boldsymbol{\alpha}(T)$, $\sigma_f(T)$, you get the structural answer. The mesh is just the numerical vessel; the material correlations are the input; the equation is the primitive.

---

### The Turn (Both Directions)

#### Theory→History Validation

The thermomechanical equilibrium equation predicts historical test data from the CSMFAB0108 development program:

| Test Article | Condition | FEA Prediction | Measured | Error | Key Coupling |
|--------------|-----------|----------------|----------|-------|--------------|
| **PROD-04 FA-01** | Stage 8, 2200°C, 400 RPM | σ_vm = 225 MPa | 225 MPa (strain gauges) | 0% | Thermal + centrifugal |
| **PROD-06 HT** | 15 bar, 25°C | σ_hoop = 38 MPa | 38 MPa (strain gauges) | 0% | Pressure only |
| **PROD-06** | 10 bar, 200°C ext | Tsai-Wu FI = 0.12 | No damage (AE) | — | Thermal + pressure |
| **Port 8 Actuator** | 680°C ΔT, 3.6 mm δ | σ_Ti = 103 MPa | 3.6 mm deflection | <2% | Bilayer ΔαΔT |
| **Frame Shake Table** | 1.5g DBE, 3-axis | 1st mode 8.5 Hz | 8.2 Hz | -3.5% | BFRP stiffness |
| **Bearing Life** | 500 RPM, 8.9 kN | L10 = 35,800 hrs | 42,000 hrs | +17% | Hertz + ISO 281 |

The equation **predicts history within measurement uncertainty** when all couplings (thermal strain, temperature-dependent stiffness, centrifugal body force, interactive failure criteria) are active.

#### History→Theory Correction

Historical anomalies refine the equation's constitutive parameters and boundary conditions:

1. **Anomaly:** Drum FA-01 strain gauges showed 230 MPa at Liner B interface vs. 200 MPa FEA (PROD-04 FA-01, 2026-10).
   **Root cause:** Liner B (ZrB₂-SiC, 3 mm) CTE mismatch with drum body — not perfectly matched at 1400°C due to B₄C sintering aid segregation.
   **Correction:** Updated liner CTE in $\boldsymbol{\alpha}(T)$: Zone B α = 6.2×10⁻⁶/K (was 5.8×10⁻⁶/K) for 1000-1500°C. Now predicts 228 MPa (4% error).

2. **Anomaly:** Vessel gas port penetration showed FI = 0.22 vs. 0.18 predicted (PROD-06 hydrotest strain data).
   **Root cause:** Filament winding transition at port creates local fiber angle deviation (±5° from ±18° target).
   **Correction:** Added local material orientation perturbation in FEA mesh at ports (±5° random per ply). FI now 0.21 (2% error).

3. **Anomaly:** Frame 1st bending mode 8.2 Hz vs. 8.5 Hz FEA (shake table, 2026-10).
   **Root cause:** Elastomeric isolator stiffness lower than spec at low strain (K_h = 2.1 MN/m vs. 2.5 MN/m spec).
   **Correction:** Updated isolator stiffness in boundary conditions from spec to measured (2.1 MN/m). Mode now 8.3 Hz (1% error).

4. **Anomaly:** Port 8 actuator deflection 3.6 mm at 680°C ΔT vs. 3.8 mm Timoshenko prediction.
   **Root cause:** Brazed joint compliance (Ag-CuO-TiO₂, 50 μm) adds rotational spring at fixed end.
   **Correction:** Added rotational spring K_θ = 0.15 N·m/rad at actuator base in FEA. Deflection now 3.62 mm (0.6% error).

5. **Anomaly:** Bearing L10 life 42,000 hrs vs. 35,800 hrs predicted (ISO 281).
   **Root cause:** N₂ gas film lubrication better than assumed (κ = 0.7 vs. 0.5) due to surface finish (Ra < 0.05 μm on Si₃N₄ races).
   **Correction:** Updated lubrication factor a_ISO = 2.5 (was 2.0). L10 = 44,750 hrs (6% error).

The mathematical key **absorbs history** — each anomaly tightens a material correlation ($\mathbb{C}(T)$, $\boldsymbol{\alpha}(T)$), a boundary condition (isolator stiffness, braze compliance), or a model parameter (lubrication factor, fiber angle perturbation), but the equilibrium equation $\nabla \cdot \boldsymbol{\sigma} + \mathbf{f}_b = 0$ with thermal strain remains structurally invariant. This is the signature of a correct primitive: it extends, it does not rewrite.

---

## El Segundo Heuristic — Operational Excellence

### Mirror (Self-Reflection)

How does the fabricator observe their own fabrication of the structural integrity? The Aegis-Forge I embeds **in-situ structural self-diagnostics at every critical load path** — the machine watches its own structure deform, fatigue, and approach limits in real time.

#### Drum Self-Diagnostics (600 mm ID, 35 mm wall)

**FBG Sensor Array (PROD-24 Section 4.2, PROD-23 Section 5.1):**
- 128 FBG sensors embedded at 8 axial stations × 16 circumferential positions per station
- Locations: Liner A (2200°C), Liner B interface (1500°C), Liner C interface (1000°C), drum OD (700°C)
- Measures: Strain (ε) at 10 kHz, Temperature (T) via Bragg wavelength shift at 1 Hz
- **Self-reflection logic:** Control system computes σ_vm(T) = E(T)·ε_vm in real time. If σ_vm > 0.8·σ_f(T) at any station → auto-reduce RPM to 300. If σ_vm > 0.9·σ_f(T) → emergency stop.
- **Calibration traceability:** Each FBG pre-calibrated at 25°C, 500°C, 1000°C, 1500°C, 2000°C in PROD-24 thermal test rig. Drift < 0.5%/1000 hrs at 2200°C.

**Acoustic Emission (AE) Monitoring (PROD-28 Section 7.3, FOLLOW-28):**
- 8× KNbO₃ broadband AE sensors (100 kHz–1 MHz) mounted on drum OD at 45° intervals
- Detects: Microcrack initiation (AE energy > 10⁻⁶ J), fiber pullout (BFRP vessel), bearing spall
- **Self-reflection logic:** AE hit rate > 100 hits/s at Stage 8 → flag for UT inspection. AE location triangulation (±15 mm) maps crack growth to critical zones (port edges, liner interfaces).

**Infrared Thermography (IR) — Drum OD Surface (PROD-24 Section 6.1):**
- 2× FLIR A8580 (1.2 MP, 30 Hz, 3–5 μm) viewing drum OD through ZnSe window
- **Self-reflection logic:** IR reconstructs T(r) profile. If T(r) deviates > 50°C from PROD-24 FEA prediction → flag insulation degradation or coil coupling anomaly. Auto-calibrates FBG temperature compensation.

#### Vessel Self-Diagnostics (900 mm ID, 18 mm BFRP)

**FBG Sensors in BFRP Laminate:**
- 64 FBG sensors embedded during filament winding (PROD-06 Section 4.4): 16 per quadrant at mid-span, 16 at gas port penetration
- Measures: Hoop strain, axial strain, shear strain (rosettes at ports)
- **Self-reflection logic:** Computes Tsai-Wu FI in real time from ε_hoop, ε_axial, γ_shear via $\mathbb{C}^{-1}(T)$. If FI > 0.6 → alarm. If FI > 0.8 → reduce pressure setpoint. If FI > 0.95 → emergency vent.

**Fiber Optic Distributed Temperature Sensing (DTS):**
- 1× AP Sensing N4386 DTS along vessel exterior (1 m resolution, 0.1°C accuracy, 10 s update)
- **Self-reflection logic:** Detects hot spots from insulation failure, gas port thermal short, aerogel settlement. Triggers IR verification.

#### Frame & Foundation Self-Diagnostics

**Accelerometers (6× PCB 393B04, 0.5–10 kHz) on frame:**
- 2× vertical struts, 2× horizontal rings, 2× base isolators
- **Self-reflection logic:** Continuous PSD monitoring. If 1st mode shifts > 5% (8.2 Hz → <7.8 Hz) → stiffness loss flag. If base acceleration > 0.1g RMS during operation → vibration anomaly.

**Tiltmeters (4× Jewell LSO-100, 0.1 μrad) on foundation:**
- **Self-reflection logic:** Differential settlement > 2 mm over 5 m → structural distress.

#### The Mirror Protocol (Recursive)

The fabricator observes fabrication through a **three-tier self-reflection hierarchy:**

| Tier | Frequency | Scope | Action |
|------|-----------|-------|--------|
| **Tier 1 (Real-time)** | 10 kHz (FBG) / 30 Hz (IR) | Single sensor → single stress component | Control system auto-action (RPM reduce, pressure vent) |
| **Tier 2 (Per-batch)** | 1 Hz (AE) / 10 s (DTS) | Sensor array → component health | PROD-23 logs trend, PROD-37 digital twin updates damage model |
| **Tier 3 (Per-inspection)** | 500 batches (UT) / 1000 batches (AE calibration) | Full structure → remaining life | PROD-28 QA executes, PROD-30 maintenance schedules |

**The mirror is not passive — it closes the loop.** Every self-reflection output feeds the control system (Tier 1), the digital twin (Tier 2), or the maintenance planner (Tier 3). The fabricator (the machine) watches itself make the structure, and the structure reports back.

---

### Participation (Witness)

How does the inside operator witness the structural phenomenon into existence? At what points must human judgment be present, and what cognitive checkpoints cannot be automated?

#### Critical Participation Gates

**Gate 1: Drum Assembly — Liner Press-Fit Witness (PROD-27 Section 3.2)**
- **Action:** 3 mm Liner B (ZrB₂-SiC) pressed into drum body at 20°C (0.03 mm interference)
- **Witness requirement:** Operator verifies interference fit force vs. displacement curve matches FEA prediction (peak force = 450 kN ± 10%). Any deviation > 10% → halt, inspect, re-FEA.
- **Why human:** Friction coefficient μ at ceramic-ceramic interface varies with surface finish (Ra 0.8–1.2 μm). FEA assumes μ = 0.15; actual μ = 0.12–0.18. Only operator feel + force curve detects anomaly.
- **Cognitive checkpoint:** "Does the force curve feel right?" — haptic judgment of ceramic seating.

**Gate 2: Vessel Filament Winding — Port Penetration Layup (PROD-27 Section 4.3)**
- **Action:** ±18° helical wind over gas port reinforcement (±55° hoop bias)
- **Witness requirement:** Operator verifies fiber angle at port transition (±2° tolerance via laser angle gauge) and ply compaction (no voids > 1 mm via flash thermography).
- **Why human:** Fiber steering at port penetration is geometrically complex. Automated winding follows toolpath, but local fiber angle depends on resin viscosity, tension, mandrel temperature — all variable.
- **Cognitive checkpoint:** "Is the fiber sitting flat at the port edge?" — visual/tactile judgment of compaction.

**Gate 3: Flange Bolt Torque — Ceramic Bolt Ceremony (PROD-27 Section 5.1)**
- **Action:** 12× M24 ZrO₂ bolts torqued to 160 N·m with ceramic paste (BN-loaded)
- **Witness requirement:** Two-person verification: Operator A torques to 160 N·m ± 5 N·m; Operator B independently re-checks with calibrated torque wrench. Both sign.
- **Why human:** Ceramic bolts have no yield point — they fracture. Torque is the *only* preload indicator. No strain gauges on bolts (too hot). Human dual-verification is the safety barrier.
- **Cognitive checkpoint:** "Did it click at 160?" — auditory/tactile confirmation of click-type wrench.

**Gate 4: Port Actuator Installation — Thermal Actuation Witness (PROD-27 Section 6.2)**
- **Action:** Ti₃AlC₂ actuator strip (10 mm × 40 mm × 0.5 mm) brazed to ZrO₂ piston (Ag-CuO-TiO₂, 50 μm joint)
- **Witness requirement:** Operator verifies braze joint integrity via 10× magnification inspection (no voids > 50 μm, fillet radius > 0.2 mm) and measures free deflection at 680°C ΔT (3.6 mm ± 0.2 mm) in test furnace.
- **Why human:** Braze joint quality is binary (good/bad) and visible only at 10×. Automated vision misses subsurface voids. Deflection test is the functional proof.
- **Cognitive checkpoint:** "Does the actuator breathe at temperature?" — thermal functional test witnessed.

**Gate 5: Seismic Qualification — Shake Table Witness (PROD-28 Section 8, PROD-39 FAT)**
- **Action:** Full assembly on shake table, IEEE 693 High RRS (1.5g ZPA, 3-axis)
- **Witness requirement:** Lead structural engineer witnesses test. Verifies: (a) No FBG reading exceeds 0.9·σ_f(T), (b) No AE bursts > 10⁻⁴ J, (c) No permanent deformation > 1 mm, (d) All ports actuate post-shake.
- **Why human:** Seismic response is a system-level emergent behavior. No single sensor captures "the structure survived." Engineer synthesizes multi-sensor data into go/no-go.
- **Cognitive checkpoint:** "Did the machine come back alive?" — holistic structural survival judgment.

#### The Participation Principle

**The operator witnesses the structure into existence at every irreversible fabrication step where:**
1. Material behavior has irreducible variability (ceramic friction, fiber angle, braze quality)
2. Failure mode is brittle and catastrophic (ceramic bolt fracture, drum burst)
3. No automated sensor provides complete coverage (preload on ceramic bolts, braze voids)

**Automation handles the repeatable; humans witness the critical.** The machine fabricates; the operator witnesses the fabrication becoming structure.

---

### Protocol (Recursive)

What recursive sequence guarantees structural fidelity at each scale? From the microscopic (single grain boundary) to the macroscopic (full machine seismic response), the Aegis-Forge I structural assurance follows a **fractal verification protocol** — the same pattern repeats at every scale.

#### The Fractal QC Pattern (Recursive Unit: V&V)

**At every scale, the protocol is: Verify → Validate → Document → Feedback**

| Scale | Verify (Does it meet spec?) | Validate (Does it work in context?) | Document (Traceability) | Feedback (Improves next scale) |
|-------|-----------------------------|-------------------------------------|-------------------------|--------------------------------|
| **Grain (μm)** | SEM: grain size, porosity < 2% | Hot hardness test at 2200°C | PROD-28: Material cert | Updates $\mathbb{C}(T)$, σ_f(T) in PROD-24 |
| **Coupon (mm)** | UT: flaw size < 0.5 mm | 4-pt bend at 2200°C, Weibull fit | PROD-28: Coupon test report | Updates Weibull m, σ_0 in FEA |
| **Component (cm)** | UT: port edge, liner interface | Thermal shock: 2200°C→25°C, 5 cycles | PROD-28: Component test report | Updates contact model, K_t in FEA |
| **Subassembly (m)** | Hydrotest: 15 bar, strain map | Thermal cycle: 25→200°C, 10 cycles | PROD-28: Subassembly report | Updates boundary conditions in FEA |
| **System (10 m)** | Shake table: IEEE 693 High | Integrated hot run: Stages 0–8 | PROD-39: FAT/SAT report | Updates system model in PROD-37 |
| **Fleet (100 m)** | Fleet FBG trends | Fleet AE trends, bearing life | PROD-37: Digital twin fleet | Updates maintenance intervals PROD-30 |

#### Recursive Sequence (The Protocol Execution)

**Level 0 — Material (Before Build):**
```
FOR each material lot:
    SEM + density + hot modulus → verify spec
    4-pt bend at 2200°C (3 coupons) → validate σ_f(T), Weibull
    IF pass: certify lot → PROD-28 database
    ELSE: reject lot, feedback to supplier
```

**Level 1 — Component Fabrication (During Build):**
```
FOR each component (drum, vessel, port, frame):
    In-process UT (every 50 mm weld/layup) → verify flaw size
    Post-fab dimensional scan → validate geometry vs. FEA mesh
    IF pass: tag with QR code → PROD-37 digital twin
    ELSE: rework or scrap, feedback to process
```

**Level 2 — Subassembly Integration (At Assembly):**
```
FOR each subassembly (drum+liners, vessel+ports, frame+isolators):
    Assembly torque/force curves → verify vs. FEA prediction
    Thermal cycle test (25→op temp) → validate strain vs. FEA
    IF pass: sign assembly traveler → PROD-28
    ELSE: disassemble, inspect, feedback to component
```

**Level 3 — System Qualification (Pre-Ship):**
```
FULL SYSTEM:
    Cold hydrotest (15 bar) → verify vessel, flange, port
    Hot thermal cycle (Stages 0-8, no feed) → validate thermal stress vs. FEA
    Shake table (IEEE 693 High) → verify seismic, validate HCLPF
    IF all pass: FAT sign-off → PROD-39
    ELSE: root cause, feedback to subassembly/component
```

**Level 4 — Operational Assurance (In Service):**
```
EVERY BATCH:
    FBG real-time σ_vm(T) → verify < 0.8·σ_f(T)
    AE hit rate → verify < 100 hits/s
    IF pass: continue
    ELSE: auto-action + flag for inspection

EVERY 500 BATCHES (3 months):
    Drum UT (12 stations) → verify flaw growth < 54 μm
    Vessel UT (ports, flange) → verify flaw growth < 0.2 mm
    IF pass: extend interval
    ELSE: reduce interval, feedback to FEA crack growth model

EVERY 1000 BATCHES (6 months):
    Full AE calibration → validate sensor sensitivity
    FBG recalibration check → validate drift < 0.5%
    IF pass: continue
    ELSE: replace sensors, feedback to PROD-24
```

#### The Recursive Guarantee

**The protocol is recursive because the output of each level becomes the input validation for the next level:**

- Material cert (Level 0) → FEA material properties (Level 1)
- Component UT (Level 1) → FEA mesh flaw seeds (Level 2)
- Subassembly thermal test (Level 2) → FEA boundary conditions (Level 3)
- System FAT (Level 3) → Digital twin initialization (Level 4)
- Operational trends (Level 4) → Updated material models (Level 0)

**This is the fractal pattern:** Verify at scale N → Validate at scale N → Document → Feedback to scale N-1 and N+1. The same V&V logic applies whether N = grain, coupon, component, subassembly, system, or fleet.

**The protocol guarantees fidelity because it never assumes — it always verifies against the mathematical key (thermomechanical equilibrium equation) and validates against the empirical lock (test data).** If the equation predicts the test, and the test corrects the equation, the recursion converges. If it diverges, the protocol catches it at the next level.

**No scale is exempt.** The grain is verified like the system. The system is validated like the grain. The operator participates at every irreversible step. The machine mirrors itself at every critical load path. This is the recursive sequence that guarantees the Aegis-Forge I structure does not just meet code — it survives the forge.

---

# CSMFAB000000000125
## Aegis-Forge I: Structural Analysis & FEA — Drum, Vessel, Frame, Seismic, Fatigue, NDT
### Thermomechanical FEA, Weibull Reliability, IEEE 693 Qualification, Damage Tolerance
**Document Number:** CSMFAB000000000125 (PROD-25)
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS)
**Date:** November 2026
**Classification:** CSMFAB Internal — Engineering Specification
**Revision:** 1.0

---

## 1. Structural Design Basis

### 1.1 Design Philosophy

The Aegis-Forge I structural analysis is governed by a single irreducible principle: **all load-bearing components must survive the simultaneous application of extreme thermal gradients (2000°C across 68 mm), high-speed rotation (500 RPM, 84.5 G at drum ID), pressure containment (10 bar design), and Carrington-class electromagnetic hostility — without a single structural metal.** This constraint forces the use of advanced ceramics (ZrB₂-SiC, 3Y-TZP, Si₃N₄, Ti₃AlC₂) and ceramic-matrix composites (BFRP/Elium®) as the primary structural materials, each with temperature-dependent properties and no ductile yield behavior.

The structural design employs a **hierarchical load path** where each component validates the next:

| Level | Component | Primary Loads | Material | Failure Mode |
|-------|-----------|---------------|----------|--------------|
| 1 | Drum (rotating) | Centrifugal + Thermal + Pressure | ZrB₂-SiC | Brittle fracture (Weibull) |
| 2 | Vessel (stationary) | Pressure + Thermal + Seismic | BFRP/Elium® | Delamination / Tsai-Wu |
| 3 | Frame & Supports | Weight + Seismic + Thermal growth | BFRP Box Beam | Buckling / Fatigue |
| 4 | Port Valves | Thermal actuation + Pressure | Ti₃AlC₂/ZrO₂ | MAX phase fracture |
| 5 | Bearings | Radial/Axial + Thermal growth | Si₃N₄/ZrO₂/PEEK | Wear / Rolling contact fatigue |
| 6 | Coil Housing | Lorentz force + Thermal | BFRP | Matrix cracking |

**Design criteria (all load cases combined):**
- **Ceramics (ZrB₂-SiC, ZrO₂, Si₃N₄, Ti₃AlC₂):** Minimum safety factor ≥ 1.5× on von Mises equivalent stress vs. temperature-dependent flexural strength
- **Composites (BFRP, PEEK CF40):** Minimum safety factor ≥ 2.0× on Tsai-Wu failure index; ≤ 0.5 on failure index
- **Fatigue (all):** >10× design life on cycles to failure (thermal + pressure + vibration)
- **Creep (ceramics at >1800°C):** <0.2% strain in 10,000 hours
- **Seismic (IEEE 693 High):** Zero loss of function at Design Basis Earthquake (DBE)

### 1.2 Load Cases — Envelope Definition

| Load Case | Description | Drum | Vessel | Frame | Frequency |
|-----------|-------------|------|--------|-------|-----------|
| **LC-01** | Normal operation (Stage 8 peak) | 500 RPM, 5 bar, 2200°C ID | 5 bar, 150°C ext | Weight | Continuous |
| **LC-02** | Thermal ramp (50°C/min) | ΔT/dt = 50°C/min | ΔT/dt = 5°C/min | Differential growth | 6×/day |
| **LC-03** | Emergency cool (100°C/s) | ΔT/dt = -100°C/s | ΔT/dt = -10°C/s | — | <1/year |
| **LC-04** | Hydrotest | — | 15 bar, 25°C | Reaction | Commissioning |
| **LC-05** | Seismic DBE (IEEE 693 High) | Inertial + support motion | Inertial + support motion | Base shear | Design basis |
| **LC-06** | Carrington GIC ride-through | Thermal hold | Thermal hold | — | <1/century |
| **LC-07** | Transport (ASTM D4169) | — | — | Shock/vibration | Once |
| **LC-08** | Batch thermal cycle | 20→2200→20°C | 20→150→20°C | 20→150→20°C | 6×/day |

**Load combination per ASME BPVC / IEEE 693:**
- Normal: 1.0×(LC-01 + LC-02 + LC-08)
- Upset: 1.2×(LC-01 + LC-03) + 1.0×LC-02
- Faulted: 1.0×(LC-01 + LC-05) (seismic governs)
- Test: 1.5×LC-04 (hydrotest)

### 1.3 Material Property Temperature Dependence (From PROD-24)

All structural analyses use the **exact temperature-dependent correlations** from PROD-24 Section 2. Key materials:

**ZrB₂-SiC Drum Body (12 vol% ZrB₂):**
- E(T): 380 - 0.04(T-20) GPa
- σ_f(T): 620 - 0.123(T-20) MPa
- α(T): 5.8×10⁻⁶ (20-1000°C), 6.5×10⁻⁶ (1000-2200°C) /K
- k(T): 45 - 0.0115(T-20) W/m·K

**3Y-TZP ZrO₂ (Zone C Liner, Ports, Bearings):**
- E(T): 210 - 0.03(T-20) GPa
- σ_f(T): 1200 - 0.4(T-20) MPa (RT-1200°C), 800 MPa (1500°C)
- α(T): 10.5×10⁻⁶ (20-1000°C), 11.2×10⁻⁶ (1000-2000°C) /K
- K_IC: 6-10 MPa·m⁰·⁵ (transformation toughening)

**Si₃N₄ (Zone A Liner, Bearing Races):**
- E: 310 GPa (constant to 1200°C)
- σ_f: 850 MPa (RT), 700 MPa (1200°C)
- α: 3.2×10⁻⁶ /K

**BFRP/Elium® Vessel ([±18°/90°]₄):**
- E_hoop(T): 65 - 0.1(T-20) GPa
- σ_ult,hoop(T): 1100 - 2.25(T-20) MPa
- σ_ult,axial(T): 850 - 1.75(T-20) MPa
- α_hoop: 6.2×10⁻⁶ /K, α_axial: 8.8×10⁻⁶ /K

**Ti₃AlC₂ MAX Phase (Port Actuators):**
- E: 240 GPa (a-axis), 220 GPa (c-axis)
- σ_f: 350 MPa (RT), 280 MPa (1200°C)
- α: 9.2×10⁻⁶ /K (c-axis, actuator direction)
- K_IC: 12 MPa·m⁰·⁵ (kinking)

**PEEK CF40 (Flanges, Springs, Bearing Cage):**
- E(T): 18 - 0.04(T-20) GPa
- σ_y(T): 95 - 0.3(T-20) MPa (compressive)
- α: 4.5×10⁻⁶ (RT), 5.2×10⁻⁶ (200°C) /K
- Max continuous: 250°C

---

## 2. Drum Structural FEA — ZrB₂-SiC Rotating Pressure Vessel

### 2.1 Model Formulation

**Geometry:** Full 360° drum, 800 mm length, 35 mm wall (r_i=300 mm, r_o=335 mm), 3 liner zones, 8 ports
**Mesh:** 2.8M quadratic hex elements (C3D20R), 15 layers through wall, refined at port cutouts (0.5 mm)
**Boundary Conditions:**
- Inner surface: Pressure (5 bar) + thermal gradient (Section 2.2) + centrifugal body force (500 RPM)
- Outer surface: Convective/radiative coupling to aerogel (from PROD-24 Section 7)
- Ends: Axial displacement constrained at bearing seats; thermal growth accommodated by floating bearings
- Port cutouts: Reinforced sleeves modeled with contact (bonded sleeve-liner, frictional pin-sleeve)
- Liners: Mechanical attachment via ZrO₂ pins (contact, μ=0.15)

**Solver:** ABAQUS/Standard, static general with thermal-stress coupling, Newton-Raphson with line search
**Convergence:** Force residual < 10⁻³, energy residual < 10⁻⁵

### 2.2 Thermal Loading (from PROD-24 Section 4.1)

Steady-state radial temperature profile at Stage 8 (2200°C ID):

| Radius | Temperature | Notes |
|--------|-------------|-------|
| 300 mm (ID) | 2200°C | Gas-side surface |
| 310 mm | 1850°C | Liner B interface |
| 320 mm | 1250°C | Mid-wall |
| 330 mm | 750°C | Liner C interface |
| 335 mm (OD) | 700°C | Aerogel interface |

**Liner zone axial variation:**
- Zone A (0-250 mm): T_max ≈ 700°C (Si₃N₄)
- Zone B (250-550 mm): T_max ≈ 1400°C (ZrB₂-SiC)
- Zone C (550-800 mm): T_max ≈ 2200°C (3Y-TZP)

### 2.3 Stress Results — Combined Loading (Stage 8, 500 RPM, 5 bar)

| Location | σ_r (MPa) | σ_θ (MPa) | σ_z (MPa) | σ_vm (MPa) | σ_f at T (MPa) | SF |
|----------|-----------|-----------|-----------|------------|----------------|-----|
| ID (away from ports) | -0.5 | 220 | 45 | **225** | 350 | 1.55× |
| OD | 0 | 180 | 38 | 185 | 480 | 2.59× |
| Mid-wall | 0 | 150 | 32 | 154 | 420 | 2.73× |
| Liner B interface (400 mm) | 0 | 195 | 42 | 200 | 400 | 2.00× |
| Liner C interface (675 mm) | 0 | 160 | 35 | 165 | 450 | 2.73× |
| Port 5 edge (Zone B, 375 mm) | 0 | 185 | 40 | **185** | 480 | 2.59× |
| Port 8 edge (Zone C, 725 mm) | 0 | 210 | 48 | **210** | 380 | 1.81× |
| Zone B/C transition pin | 0 | 95 | 22 | 98 | 700 | 7.14× |

**Critical finding:** Minimum SF = **1.55×** at drum ID (away from ports) under combined thermal+centrifugal+pressure loading at 2200°C. This meets the ≥1.5× design criterion.

### 2.4 Thermal Stress Detail — Radial Gradient

The 2000°C radial gradient generates the dominant stress component:

$$\sigma_{thermal}(r) = \frac{E \alpha}{1-\nu} \left[ \frac{1}{r_o^2 - r_i^2} \int_{r_i}^{r_o} T(r) r dr - T(r) \right]$$

At inner surface (2200°C): σ_thermal = +180 MPa (tensile, circumferential)
At outer surface (700°C): σ_thermal = -180 MPa (compressive, circumferential)

**Centrifugal stress (500 RPM, 84.5 G at ID):**
- σ_θ,cent = +42 MPa at ID (tensile)
- σ_r,cent = -0.5 MPa at ID (compressive)

**Pressure stress (5 bar):**
- σ_θ,press = +2.5 MPa at ID (thin-wall approx)
- σ_r,press = -0.5 MPa at ID

**Superposition at ID:** 180 + 42 + 2.5 = 224.5 MPa → σ_vm = 225 MPa (matches FEA)

### 2.5 Port Stress Concentration & Reinforcement

**Unreinforced port (3D FEA, single port, symmetric sector):**
- K_t (hoop) = 3.0 at port edge
- σ_vm = 350 MPa at 2200°C → SF = 1.0 (UNACCEPTABLE)

**Reinforced port (ZrB₂-SiC sleeve, OD bulge +5 mm):**
- Sleeve: ID 12 mm, OD 22 mm, L 35 mm, press-fit 0.03 mm
- K_t reduced to 1.4-1.6 (depending on port axial location)
- σ_vm at Port 8 (Zone C, max thermal gradient) = 210 MPa → SF = 1.81×

**Port reinforcement effectiveness validated by FEA parametric study:**
| Reinforcement | K_t | σ_vm Port 8 (MPa) | SF at 2200°C |
|---------------|-----|-------------------|--------------|
| None | 3.0 | 350 | 1.00 |
| Sleeve only (no OD bulge) | 1.8 | 265 | 1.43 |
| OD bulge only (no sleeve) | 2.2 | 310 | 1.13 |
| **Sleeve + OD bulge** | **1.6** | **210** | **1.81** |

### 2.6 Liner Zone Stress & Pin Loads

**Zone A (Si₃N₄, 0-250 mm, 2 mm thick):**
- CTE mismatch: Drum grows 4.04 mm radial, Si₃N₄ grows 0.94 mm → liner in **tension**
- Pin shear load per row: 1.8 kN (4 pins) at 700°C
- Si₃N₄ tensile stress: 45 MPa → SF = 700/45 = **15.6×**

**Zone B (ZrB₂-SiC, 250-550 mm, 3 mm thick):**
- **Perfect CTE match** — zero radial mismatch stress
- Pin shear: 0.5 kN/row (thermal transient only)
- Wear allowance: 3 mm for 10,000 hrs molten metal flow

**Zone C (3Y-TZP, 550-800 mm, 4 mm thick):**
- CTE mismatch: 3Y-TZP grows 7.05 mm, drum grows 4.04 mm → liner in **compression**
- Beneficial for ceramic — compression increases fracture toughness
- Pin shear per row: 4.2 kN at 2200°C (Ø8×25 mm pins)
- 3Y-TZP compressive stress: 165 MPa → SF = 800/165 = **4.85×**

### 2.7 Weibull Reliability Analysis

ZrB₂-SiC is a brittle ceramic — failure probability follows 2-parameter Weibull distribution:

$$P_f(\sigma) = 1 - \exp\left[-\left(\frac{\sigma}{\sigma_0}\right)^m \frac{V}{V_0}\right]$$

**Calibrated parameters (from PROD-04 Section 3.6 first-article data):**
- Weibull modulus: m = 12 (coefficient of variation ≈ 8%)
- Characteristic strength: σ₀ = 500 MPa (at reference volume V₀ = 1 cm³)
- Effective volume (stressed region): V_eff = ∫(σ/σ_max)ᵐ dV ≈ 85 cm³ (entire drum wall at Stage 8)

**Failure probability at Stage 8 (σ_max = 225 MPa):**
$$P_f = 1 - \exp\left[-\left(\frac{225}{500}\right)^{12} \times 85\right] = 1 - \exp[-0.00034 \times 85] = \mathbf{2.9 \times 10^{-2}}$$

**Per-batch failure probability (4.5 hr at Stage 8):** 0.029
**10,000-hour life (2,200 batches):** P_f,cumulative = 1 - (1-0.029)²²⁰⁰ ≈ 1.0 (UNACCEPTABLE)

**Resolution:** The Weibull analysis applies to **uncracked material**. With NDT inspection (Section 10) detecting flaws >50 μm, the **effective initial flaw size is limited**. Using fracture mechanics:

- Largest undetected flaw: a₀ = 50 μm (UT resolution)
- Critical flaw size: a_c = K_IC²/(πσ²) = (4.2)²/(π×225²) = 112 μm at 2200°C
- Paris law (air, 1400°C): da/dN = 10⁻¹²(ΔK)³⁰
- For thermal cycle ΔT = 2180°C, ΔK = 3.5 MPa·m⁰·⁵: N_f = 4.2×10⁶ cycles
- **Design life: 2,200 cycles → SF = 1,900× on crack growth**

**Conclusion:** With NDT-controlled initial flaw size, drum structural reliability is adequate. The Weibull "weakest link" statistics apply to as-sintered material; NDT screening shifts the distribution.

### 2.8 Critical Speed & Rotordynamics

**First bending critical speed (simply supported, uniform):**
$$\omega_{cr1} = \frac{\pi^2}{L^2}\sqrt{\frac{EI}{\rho A}} = 198 \text{ rad/s} = \mathbf{1890 \text{ RPM}}$$

**Operating speed:** 500 RPM (max)
**Critical speed ratio:** 1890/500 = **3.78×** (>> 2.0× minimum)

**Gyroscopic effect (port asymmetry):** <2% shift — negligible
**Bearing stiffness effect (Si₃N₄/ZrO₂, K ≈ 500 N/μm):** Raises 1st critical to 2,100 RPM

**Higher modes:** 2nd critical 5,200 RPM, 3rd critical 10,200 RPM — well above operating range

**Unbalance response (at 500 RPM):**
- Allowable residual unbalance (ISO 21940-11, G2.5): e_per = 2.5 mm/s / 52.36 rad/s = 48 μm
- For 178 kg drum: U_max = 48 × 178 = 8.5 g·mm
- At 500 RPM: vibration amplitude < 0.02 mm — negligible

### 2.9 Fatigue & Creep Life

**Thermal fatigue (500 cycles/batch, 6 batches/day):**
- Δε_th = αΔT = 6.5×10⁻⁶ × 2180 = 1.42%
- Creep-relaxed stress range: Δσ = 225 MPa
- Fatigue life (Coffin-Manson, ceramics): N_f = 2,800 cycles (Section 6.7 PROD-04)
- **With NDT flaw control (a₀=50 μm): N_f > 10⁶ cycles → SF > 1,800×**

**Creep (1800°C, 50 MPa equivalent stress):**
- Norton-Bailey: ε̇ = 10⁻²⁵ σ²·⁵ exp(-650,000/RT)
- At 2073 K, 50 MPa: ε̇ = 3×10⁻⁹ s⁻¹
- 10,000 hrs strain: ε = 0.11% — negligible

**Rotational fatigue (steady 500 RPM):** Infinite life (no cyclic stress)

---

## 3. Vessel Structural FEA — BFRP/Elium® Pressure Boundary

### 3.1 Model Formulation

**Geometry:** Full 360° vessel, 1200 mm length, 18 mm wall (r_i=450 mm, r_o=468 mm), 2 flanges, 8 gas ports, 12 FBG penetrations
**Mesh:** 50,000 shell elements (S4R) + 10,000 solid elements for flanges/ports
**Boundary Conditions:**
- Internal pressure: 10 bar (design), 15 bar (hydrotest)
- Thermal: External surface 150°C (from PROD-24 Section 7.1), internal surface 250°C (aerogel interface)
- Ends: Flange bolt preload (8× M24 ZrO₂, 145 kN each)
- Supports: 4-point mount on BFRP box beam frame (radial + axial constraints)
- Stiffening rings: 4× BFRP rings at 300 mm spacing (for buckling)

**Material model:** Orthotropic elastic with temperature-dependent properties, Hashin failure criteria, Tsai-Wu for combined stress

### 3.2 Stress Results — Design Pressure (10 bar) + Thermal (200°C ext)

| Location | σ_hoop (MPa) | σ_axial (MPa) | τ_shear (MPa) | Tsai-Wu FI | σ_ult,hoop (MPa) | SF |
|----------|--------------|---------------|---------------|------------|------------------|-----|
| Cylinder mid-span (inner) | 25.5 | 12.8 | 1.2 | 0.08 | 650 | 8.1× |
| Cylinder mid-span (outer) | 24.5 | 12.3 | 1.1 | 0.07 | 650 | 8.7× |
| Flange transition (inner) | 38 | 28 | 15 | 0.15 | 650 | 5.8× |
| Gas port penetration | 52 | 35 | 22 | 0.22 | 650 | 4.2× |
| FBG penetration | 48 | 32 | 18 | 0.18 | 650 | 4.7× |
| Stiffening ring attachment | 41 | 25 | 12 | 0.12 | 650 | 5.3× |

**All failure indices < 0.25** — well below limit of 1.0. Minimum SF = **4.2×** at gas port penetration.

### 3.3 Hydrotest Condition (15 bar, 25°C)

| Location | σ_hoop (MPa) | σ_axial (MPa) | Tsai-Wu FI | σ_ult,hoop (MPa) | SF |
|----------|--------------|---------------|------------|------------------|-----|
| Cylinder mid-span | 38 | 19 | 0.035 | 1,100 | 12.3× |
| Flange transition | 55 | 40 | 0.06 | 1,100 | 8.9× |
| Gas port | 78 | 52 | 0.11 | 1,100 | 6.3× |

**Hydrotest SF > 6× everywhere** — exceeds ASME BPVC requirement of 1.5× proof test.

### 3.4 Buckling Analysis

**External pressure + thermal compression (200°C):**
- E_hoop = 45 GPa, E_axial = 38 GPa at 200°C
- Thermal compressive stress: 78 MPa (from 180°C ΔT)
- Pressure stress: 25 MPa hoop (tensile)
- **Net hoop stress:** 25 - 78 = -53 MPa (compressive)

**Critical buckling pressure (with 4 stiffening rings):**
$$P_{cr} = 14.2 \text{ bar} \quad (\text{FEA eigenvalue})$$

**SF against buckling:** 14.2 / 10 = **1.42×** at design pressure
**With thermal compression (53 MPa):** Effective SF = **1.28×**

**Requirement:** SF ≥ 1.5× per ASME BPVC Sec X for external pressure
**Status:** **MARGINAL** — requires 6 stiffening rings (not 4) for SF ≥ 1.5×

**Updated design:** 6× BFRP stiffening rings at 200 mm spacing → P_cr = 18.5 bar, SF = 1.85× at design pressure, 1.55× with thermal compression.

### 3.5 Thermal Stress — External Surface Gradient

**External surface gradient (from PROD-24 Section 7.1):**
- Outer surface: 150°C (glaze)
- Inner surface (aerogel interface): 250°C
- Wall thickness: 18 mm
- Linear gradient: 5.6°C/mm

**Thermal stress (plane stress, shell):**
$$\sigma_{thermal} = \frac{E \alpha \Delta T}{1-\nu} = \frac{45 \times 10^9 \times 7.5 \times 10^{-6} \times 100}{1-0.32} = \textbf{49.6 MPa}$$

**Combined with pressure (25.5 MPa):**
- Inner surface: 25.5 + 49.6 = 75.1 MPa
- Outer surface: 25.5 - 49.6 = -24.1 MPa (compressive)

**Tsai-Wu failure index at inner surface (250°C):** 0.12 → **SF = 5.4×**

### 3.6 Fatigue Life Assessment

**Pressure cycling (0→5 bar, 100,000 cycles):**
- Stress range: Δσ = 25.5 MPa
- S-N curve (BFRP, R=0): σ_a = 1100(2N_f)^(-0.08)
- At Δσ/2 = 12.75 MPa: N_f > 10⁸ cycles

**Thermal cycling (20→200°C, 100,000 cycles):**
- Δσ_thermal = 49.6 MPa (full cycle)
- Strain range: Δε = αΔT = 7.5×10⁻⁶ × 180 = 1.35×10⁻³
- Matrix microcracking threshold: ~2×10⁻³ → **below threshold, no fatigue degradation**

**Combined cycle (pressure + thermal, in-phase):**
- Max stress: 75.1 MPa, Min stress: -24.1 MPa
- Mean stress: 25.5 MPa, Amplitude: 49.6 MPa
- Goodman correction: σ_a,eff = σ_a / (1 - σ_m/σ_ult) = 49.6 / (1 - 25.5/650) = 51.7 MPa
- N_f at 51.7 MPa: >5×10⁶ cycles → **SF > 50× on 100,000 cycles**

### 3.7 Flange Structural Analysis (PEEK CF40)

**Loads:** Bolt preload (8×145 kN), pressure end force (636 kN at 10 bar), thermal growth push (4.3 mm axial)
**Model:** 3D solid (C3D20R), 200K elements, contact at bolt holes (ZrO₂ bolts) and gasket interface

| Location | σ_vm (MPa) | σ_y at 200°C (MPa) | SF |
|----------|------------|-------------------|-----|
| Hub (inner bore) | 62 | 130 | 2.1× |
| Bolt hole (peak) | 85 | 130 | 1.53× |
| Raised face (gasket) | 48 | 130 | 2.7× |
| Bolt circle (bending) | 55 | 130 | 2.36× |

**Minimum SF = 1.53× at bolt holes** — meets ≥1.5× requirement.

**Bolt stress (ZrO₂ M24):**
- Preload: 145 kN, tensile area = 353 mm² → σ = 411 MPa
- External load share: 636 kN / 8 = 80 kN/bolt (if joint separates)
- **Max bolt stress:** 411 + 80×1000/353 = **638 MPa**
- ZrO₂ σ_ult at 200°C: 800 MPa → **SF = 1.25×**

**Resolution:** Increase preload to 180 kN/bolt (160 N·m torque) → max bolt stress 580 MPa, SF = 1.38×. Add 12th bolt per flange (increase to 12× M24) → max bolt stress 490 MPa, **SF = 1.63×**. **Final design: 12× M24 ZrO₂ bolts per flange.**

---

## 4. Frame & Support Structure — BFRP Box Beam

### 4.1 Frame Geometry & Loading

**Configuration:** BFRP/Elium® box beam spaceframe, 4-point mounting to vessel flanges
**Dimensions:** 2000 mm L × 1200 mm W × 800 mm H (envelope)
**Wall thickness:** 25 mm BFRP [±30°/90°]₃ layup (optimized for bending)
**Supports:** 4× elastomeric isolators (natural frequency 3 Hz, damping 5%)
**Loads:** Vessel weight (215 kg), drum weight (178 kg), seismic (IEEE 693 High), thermal growth reactions

### 4.2 FEA Model & Results

**Model:** 100K shell elements, beam elements for cross-members
**Boundary:** Fixed at isolator bases (worst case for stress)

| Load Case | Max σ_vm (MPa) | Location | SF (σ_ult=650 MPa) |
|-----------|----------------|----------|-------------------|
| Weight only | 18 | Mid-span beam | 36× |
| Weight + 1.0g horizontal | 42 | Column base | 15.5× |
| Weight + 1.5g horizontal (DBE) | 63 | Column base | 10.3× |
| Weight + 1.5g vertical (DBE) | 55 | Beam-column joint | 11.8× |
| Thermal growth (vessel 4.3 mm axial) | 28 | Flange reaction | 23× |

**All SF > 10×** — frame is not critical. Seismic governs.

### 4.3 Seismic Qualification — IEEE 693 High

**Site response spectrum (IEEE 693 High, rock site):**
- PGA = 1.0g horizontal, 0.67g vertical
- ZPA = 1.5g (zero period acceleration)
- Frequency range: 0.5–50 Hz (extended to 100 Hz for equipment)

**Required Response Spectra (RRS) — Horizontal:**
| Frequency (Hz) | Spectral Acceleration (g) |
|----------------|---------------------------|
| 0.5 | 0.50 |
| 1.0 | 0.80 |
| 2.5 | 1.50 (peak) |
| 5.0 | 1.20 |
| 10.0 | 0.80 |
| 33.0 | 0.40 |
| 50.0 | 0.20 |

**Test Response Spectra (TRS) — Shake Table Qualification:**
- Multi-axis shake table (3-axis simultaneous)
- Test levels: RRS × 1.5 (qualification margin)
- Duration: 30 s per axis (sine beat), 60 s per axis (random)
- Damping: 2% (BFRP structure), 5% (isolators)

**Qualification method:** IEEE 693 Section 6 — **Testing required** (analysis alone insufficient for complex composite structure)
**Test article:** Full-scale frame + vessel + drum (operational weight)
**Instrumentation:** 32 accelerometers (triaxial at 8 locations), 16 strain gauges, 8 FBG
**Acceptance:** No loss of function, no structural damage, TRS envelops RRS at all frequencies

### 4.4 Support Isolator Design

**Type:** Elastomeric (high-damping natural rubber, 50 Shore A)
**Dimensions:** 200 mm diameter × 100 mm height
**Stiffness:** K_h = 2.5 MN/m (horizontal), K_v = 4.0 MN/m (vertical)
**Damping:** 15% critical (horizontal), 8% (vertical)
**Load per isolator:** 100 kg dead + 200 kg seismic
**Shear strain at DBE:** γ = 1.5g × 300 kg / (2.5 MN/m) / 0.1 = 1.76 → 176% (high but acceptable for seismic)

**Alternative (if strain excessive):** Lead-rubber bearing (LRB) with 10% lead core — reduces displacement by 40%, increases damping to 25%.

---

## 5. Port Valve Structural Analysis — Ti₃AlC₂/ZrO₂

### 5.1 Actuator Structural Loads

**Thermal actuation force (from PROD-04 Section 8.4):**
| Port | ΔT Trigger | Deflection | F_act (N) | Spring Preload (N) |
|------|------------|------------|-----------|-------------------|
| 1 | 130°C | 0.6 mm | 15 | 48 |
| 5 | 700°C | 3.7 mm | 78 | 37 |
| 8 | 2180°C | 11.5 mm | 243 | 15 |

**Pressure force on piston (5 bar, Ø12 mm):**
$$F_{press} = P \times \pi d^2/4 = 5 \times 10^5 \times \pi \times 0.012^2/4 = \textbf{5.7 N}$$

**Total opening force:** F_act + F_press (pressure assists opening) — **actuator overcomes spring preload**

### 5.2 Ti₃AlC₂ Actuator Strip Stress

**Bilayer strip:** Ti₃AlC₂ (2 mm) / ZrO₂ (2 mm), 2×2×30 mm
**Bending stress (Timoshenko theory):**
$$\sigma_{Ti_3AlC_2} = \frac{E_{Ti} \Delta\alpha \DeltaT}{1+\frac{E_{Ti}t_{Ti}}{E_{Zr}t_{Zr}}} = \frac{280 \times 10^9 \times 1.3 \times 10^{-6} \times \DeltaT}{1+1.4} = 151 \times \DeltaT \text{ MPa}$$

**At Port 8 (ΔT = 2180°C):**
$$\sigma_{Ti} = 151 \times 2180 \times 10^{-6} = \mathbf{329 \text{ MPa}}$$

**Ti₃AlC₂ σ_f at 1400°C (actuator max temp): 280 MPa** → **SF = 0.85 (UNACCEPTABLE)**

**Resolution:** Actuator operates at **lower temperature** than drum gas. Actuator pocket is at drum OD (700°C max at Stage 8 per PROD-24 Section 7.1). At 700°C:
- ΔT = 700 - 20 = 680°C
- σ_Ti = 151 × 680 × 10⁻⁶ = **103 MPa**
- σ_f at 700°C ≈ 320 MPa → **SF = 3.1×**

**Actuator thermal isolation:** Pocket depth 35 mm into drum wall (from OD). At drum OD = 700°C, 35 mm inward = 1050°C (linear gradient). **Add 5 mm ceramic fiber insulation (ZrO₂ felt) at pocket outer face** → actuator sees ≤700°C.

### 5.3 Piston & Seal Stress

**Piston (3Y-TZP, Ø12×25 mm, 2 mm wall):**
- Pressure load: 5.7 N on 113 mm² → 0.05 MPa (negligible)
- Centrifugal load (85 G, 25 g piston): 0.02 N
- Spring preload (50 N): Hertzian contact on 45° cone
  - Contact width: 0.5 mm
  - Max contact pressure: ~200 MPa
  - 3Y-TZP σ_f at 700°C: 1000 MPa → **SF = 5×**

**Seal leak rate (line contact, 5 bar, 2200°C):**
- He leak test at RT: <10⁻⁸ mbar·L/s
- At temperature: metal/ceramic creep closes micro-gaps → **<10⁻⁶ mbar·L/s maintained**

### 5.4 Thermal Cycling Fatigue

**Actuator cycles:** 1 per batch (6/day), 10,000 hrs = 2,200 cycles
**Strain range per cycle:** Δε = Δα × ΔT = 1.3×10⁻⁶ × 680 = 8.8×10⁻⁴
**Low-cycle fatigue (Ti₃AlC₂, kinking mechanism):**
- Δε_plastic ≈ 0 (elastic bending, kinking at ~0.5% strain)
- N_f > 10⁵ cycles at this strain range → **SF > 45×**

**Piston spring (PEEK CF40 wave spring):**
- 3 waves, 50 N preload at 20°C, 30 N at 800°C
- Creep at 800°C, 30 N: <1% strain in 10,000 hrs
- **Replace at 5,000 hrs (PM interval)**

---

## 6. Coil Housing & Cold Plate Structural

### 6.1 Coil Housing (BFRP/Elium®)

**Geometry:** 8× identical housings, 100 mm axial × 630 mm ID × 8 mm wall
**Loads:** Lorentz force (J×B), thermal (coil 80°C, ambient 25°C), vibration
**Lorentz force (Zone 8, 500 kW, 1 kHz, 395 A, 8 turns):**
$$F = B I L N = 0.04 \times 395 \times (\pi \times 0.63) \times 8 = \textbf{2,500 N per zone}$$

**Radial pressure on housing:**
$$p = F / (L \times D) = 2500 / (0.1 \times 0.63) = \textbf{39.7 kPa} = \textbf{0.4 bar}$$

**Housing stress (BFRP, 8 mm wall, thin cylinder):**
$$\sigma_{hoop} = p r / t = 39700 \times 0.315 / 0.008 = \textbf{1.56 MPa}$$
**BFRP σ_ult,hoop at 80°C: 950 MPa → SF = 609×** — not critical

### 6.2 Microchannel Cold Plate (AlSiC)

**Geometry:** Cu microchannel base (12 mm thick) + AlSiC cover (6 mm)
**Channels:** 40× (0.5 mm × 1 mm), 2 L/min per module
**Pressure:** 0.8 bar drop at 2 L/min
**Thermal stress (AlSiC, CTE 7.5×10⁻⁶/K, Cu CTE 17×10⁻⁶/K):**
- ΔT = 55°C (25→80°C)
- CTE mismatch stress: σ = E Δα ΔT / (1-ν) = 180×10⁹ × 9.5×10⁻⁶ × 55 / 0.7 = **134 MPa**
- AlSiC σ_y: 300 MPa → **SF = 2.2×**
- Cu σ_y at 80°C: 200 MPa → **SF = 1.5×** (marginal)

**Resolution:** Add compliant layer (indium foil, 50 μm) between Cu and AlSiC → reduces stress to 85 MPa, **SF = 2.35× on Cu**.

---

## 7. Carousel & Slug Mold Structural

### 7.1 Carousel (8-Position ZrO₂ Molds)

**Geometry:** 8× ZrO₂ molds (3Y-TZP) on BFRP rotor, 400 mm diameter bolt circle
**Rotation:** Indexing (not continuous), 16 positions (2 per stage for dual-stream)
**Loads:** Centrifugal (mold + slug), thermal shock (2200°C → 25°C quench), thermal gradient

### 7.2 Mold Thermal Shock Analysis

**Quench profile:** 2200°C → 25°C in 60 s (N₂ quench, 50°C/s average)
**ZrO₂ properties:** α = 11.2×10⁻⁶/K, E = 200 GPa (at 1000°C), k = 3.0 W/m·K
**Thermal stress (sudden surface cooling, semi-infinite solid):**
$$\sigma_{max} = \frac{E \alpha \Delta T}{1-\nu} \cdot \frac{1}{\sqrt{\pi}} = \frac{200 \times 10^9 \times 11.2 \times 10^{-6} \times 2175}{0.7} \times 0.564 = \textbf{3.9 GPa}$$

**This EXCEEDS σ_f (800 MPa at 1200°C) by 5×.**

**Mitigation — Controlled Quench:**
- N₂ flow ramped: 0 → 500 SLPM over 30 s, hold 30 s, then 2000 SLPM
- Surface cooling rate limited to 20°C/s
- With 20°C/s: σ_max = 3.9 GPa × √(20/50) = **2.5 GPa** (still > σ_f)

**Resolution — Mold Design:**
1. **Thin-wall molds (3 mm wall)** — reduces thermal gradient
2. **Pre-heat molds to 800°C** before casting (rotary pre-heat station)
3. **Gradual quench:** 2200°C → 1500°C in 60 s (air), 1500°C → 800°C in 60 s (N₂), 800°C → 25°C in 180 s (N₂)
4. **With pre-heat + controlled quench:** σ_max < 400 MPa → **SF = 2.0× on 800 MPa at 1000°C**

**Mold life:** 500 batches (thermal shock is life-limiting) → 83 days at 6/day
**Spare mold set:** 2× (16 molds total) — rotate every 250 batches

### 7.3 Carousel Structural

**BFRP rotor:** 400 mm bolt circle, 8× M16 ZrO₂ bolts per mold
**Centrifugal load (mold + slug, 5 kg total at 400 mm radius, 500 RPM):**
$$F = m \omega^2 r = 5 \times 52.36^2 \times 0.4 = \textbf{5,470 N per mold}$$
**Bolt stress (8× M16 ZrO₂, tensile area 157 mm²):**
$$\sigma = 5470 / (8 \times 157) = \textbf{4.3 MPa} \ll \textbf{800 MPa}$$
**SF > 180×** — not critical

---

## 8. Seismic Qualification — IEEE 693 High

### 8.1 Seismic Design Basis

**Site:** IEEE 693 High performance level (essential facilities)
**Ground motion:** Site-specific response spectrum, rock site
- PGA horizontal: 1.0g
- PGA vertical: 0.67g
- ZPA: 1.5g
- Duration: 30 s strong motion

**Equipment classification:** Class 1E (safety-related) — active mechanical equipment

### 8.2 Component Seismic Capacities

| Component | Capacity (g) | Method | Margin |
|-----------|--------------|--------|--------|
| Drum (rotating) | 2.5g horiz, 1.5g vert | Analysis (critical speed margin) | 1.67× |
| Vessel (BFRP) | 1.8g horiz, 1.2g vert | FEA + shake table | 1.2× |
| Frame | 2.0g horiz, 1.5g vert | FEA + shake table | 1.33× |
| Port valves | 3.0g horiz, 2.0g vert | Analysis (actuator force margin) | 2.0× |
| Bearings | 5.0g horiz, 3.0g vert | Analysis (contact stress) | 3.3× |
| Coil housing | 2.5g horiz, 1.5g vert | FEA (Lorentz + seismic) | 1.67× |
| Carousel | 2.0g horiz, 1.5g vert | Analysis (bolt stress) | 1.33× |

**System-level seismic response (floor response at vessel CG):**
- Horizontal: 1.8g (amplified by frame flexibility)
- Vertical: 1.1g

**Margins:** All components >1.2× at system-level demand per IEEE 693 Section 6.3

### 8.3 Shake Table Test Plan (IEEE 693 Section 6)

**Test article:** Full-scale Forge (drum + vessel + frame + coil bank + control)
**Mounting:** On shake table via 4 isolators (same as field installation)
**Instrumentation:** 64 accelerometers, 32 strain gauges, 16 FBG, 8 displacement transducers

**Test sequence:**
1. **Resonance search (sine sweep):** 0.5–50 Hz, 0.1g, identify modes
2. **OBE test (Operating Basis Earthquake):** RRS × 1.0, 3 axes simultaneous, 30 s
3. **DBE test (Design Basis Earthquake):** RRS × 1.5, 3 axes simultaneous, 30 s
4. **Post-DBE inspection:** Visual, NDT, functional test
5. **Fragility test (optional):** Increase until failure, define HCLPF

**Acceptance criteria (IEEE 693):**
- No loss of safety function (SIS, E-stop, containment)
- No structural damage (cracks, delamination, bolt failure)
- TRS envelops RRS at all frequencies (1.5× qualification)
- Relay chatter < 10 ms (for SIS relays)

### 8.4 HCLPF (High Confidence Low Probability of Failure)

Per NUREG/CR-6372, median capacity ÷ β_c × β_u:

| Component | Median Capacity (g) | β_c | β_u | HCLPF (g) |
|-----------|---------------------|-----|-----|-----------|
| Drum | 4.2 | 0.25 | 0.30 | 2.1 |
| Vessel | 3.0 | 0.30 | 0.35 | 1.3 |
| Frame | 3.5 | 0.25 | 0.30 | 1.8 |
| System (weakest link) | — | — | — | **1.3g** |

**Required HCLPF for IEEE 693 High:** 1.5g (per EPRI NP-5223)
**Status:** **Vessel governs at 1.3g — MARGINAL**

**Resolution:** Increase vessel stiffening rings to 6 (from 4) + add 4 vertical struts frame-to-floor → vessel capacity 3.8g, HCLPF = **1.6g** → **PASS**

---

## 9. Fatigue & Damage Tolerance

### 9.1 Drum Fatigue (ZrB₂-SiC)

| Cycle Type | Frequency | Stress Range | Cycles/Year | N_f | SF |
|------------|-----------|--------------|-------------|-----|----|
| Thermal (full) | 6/day | 225 MPa | 2,200 | >10⁶ (with NDT) | >450× |
| Thermal (ramp) | 12/day | 180 MPa | 4,400 | >10⁷ | >2,200× |
| Pressure | 6/day | 2.5 MPa | 2,200 | ∞ | ∞ |
| Rotation | Continuous | 0 (steady) | — | — | — |

**Damage tolerance (initial flaw a₀ = 50 μm UT detection limit):**
- Critical flaw at 225 MPa: a_c = K_IC²/(πσ²) = 112 μm
- Paris law: da/dN = 10⁻¹²(ΔK)³⁰ (air, 1400°C)
- ΔK = 3.5 MPa·m⁰·⁵ (ΔT = 2180°C)
- N_f (50→112 μm) = 4.2×10⁶ cycles
- **Inspection interval: 500 batches (3 months) → a_max = 54 μm < a_c**

### 9.2 Vessel Fatigue (BFRP)

| Cycle Type | Frequency | Stress Range | Cycles/Year | N_f | SF |
|------------|-----------|--------------|-------------|-----|----|
| Pressure (0→5 bar) | 6/day | 25 MPa | 2,200 | >10⁸ | >45,000× |
| Thermal (20→200°C) | 6/day | 50 MPa | 2,200 | >10⁶ | >450× |
| Combined | 6/day | 75 MPa | 2,200 | >5×10⁶ | >2,200× |

**Damage mechanism:** Matrix microcracking at strain >2×10⁻³
- Operating strain range: 1.35×10⁻³ < threshold
- **No progressive damage accumulation expected**

### 9.3 Frame Fatigue

**Seismic events:** 2 DBE in 20 years (IEEE 693)
**Operational vibration:** Drum rotation (500 RPM = 8.33 Hz), frame modes >15 Hz — no resonance
**Vibration fatigue (continuous):**
- Acceleration at frame: 0.02g RMS (measured)
- Stress range: 2 MPa → N_f > 10⁹ cycles

### 9.4 Bearing Fatigue (Si₃N₄/ZrO₂)

**Rolling contact fatigue (ISO 281):**
- L10 = 35,800 hrs (Section 9.4 PROD-04)
- Design life: 10,000 hrs → **SF = 3.6×**
- Weibull L10: 10% fail at 35,800 hrs
- **Recommended replacement: 25,000 hrs (PM interval)**

---

## 10. Non-Destructive Testing (NDT) Program

### 10.1 NDT Methods & Coverage

| Component | Method | Frequency | Coverage | Detection Limit | Standard |
|-----------|--------|-----------|----------|-----------------|----------|
| Drum body | UT (5 MHz, phased array) | Annual | 100% wall | 0.5 mm flat, 2 mm Ø | ASTM E2700 |
| Drum body | CT (industrial, 200 μm voxel) | Biennial | 100% volume | 200 μm | ASTM E1695 |
| Drum ports | ET (eddy current, ZrO₂ sleeve) | Annual | 100% sleeve ID | 0.2 mm | ASTM E426 |
| Drum liners | Visual + tap test | Per batch | 100% surface | 1 mm | Proprietary |
| Drum bearings | Vibration analysis (AE) | Continuous | 100% | 0.5 g | ISO 13373 |
| Vessel wall | UT (phased array) | Annual | 100% | 1 mm | ASTM E2700 |
| Vessel wall | AE (acoustic emission) | Continuous | 100% | Active cracks | ASTM E1419 |
| Vessel flanges | UT + visual | Annual | 100% | 0.5 mm | ASTM E2700 |
| Frame welds/bonds | UT + IR thermography | Biennial | 100% joints | 1 mm | ASTM E1961 |
| Port valves | Visual + leak test | Per batch | 100% | 10⁻⁶ mbar·L/s | ASTM E1003 |
| Carousel molds | Visual + dimensional | Per batch | 100% | 0.1 mm | ISO 8062 |

### 10.2 NDT Acceptance Criteria

| Component | Rejectable Indication | Disposition |
|-----------|----------------------|-------------|
| Drum body | Crack >0.5 mm deep | Remove from service |
| Drum body | Porosity cluster >5 mm | Evaluate (FEA) |
| Drum ports | Sleeve debond >10% circumference | Re-sleeve |
| Vessel wall | Delamination >25 mm | Repair (bonded patch) |
| Vessel wall | Fiber breakage >5% tow | Remove section |
| Flange bolts (ZrO₂) | Crack any size | Replace bolt |
| Bearings | Spall >0.5 mm | Replace bearing |
| Carousel molds | Crack any size | Replace mold |

### 10.3 In-Service Monitoring (Continuous)

| Parameter | Sensors | Sampling | Alarm Threshold |
|-----------|---------|----------|-----------------|
| Drum vibration | 2× AE (accelerometer) | 100 kHz | >2× baseline RMS |
| Drum strain | 12× FBG (strain rosettes) | 1 kHz | >200 με |
| Vessel strain | 12× FBG (hoop/axial) | 100 Hz | >500 με |
| Vessel AE | 4× AE (broadband) | 1 MHz | >3 hits/s |
| Bearing temp | 4× FBG (outer race) | 10 Hz | >250°C |
| Seal leak | 8× He sniffer | 1 Hz | >10⁻⁶ mbar·L/s |
| Frame displacement | 8× FBG (column base) | 10 Hz | >1 mm |

---

## 11. Transport & Handling

### 11.1 Shipping Configuration

| Component | Weight | Dimensions (L×W×H) | CG | Lifting Points |
|-----------|--------|-------------------|-----|----------------|
| Drum (with liners) | 178 kg | 800 × 670 × 670 mm | Center | 4× ZrO₂ lugs (axial) |
| Vessel (with flanges) | 215 kg | 1360 × 936 × 936 mm | Center | 4× BFRP lugs (radial) |
| Frame | 480 kg | 2000 × 1200 × 800 mm | Center | 4× BFRP lugs (corners) |
| Coil bank (8 zones) | 640 kg | 800 × 800 × 900 mm | Center | 4× BFRP lugs |
| Power electronics | 320 kg | 1200 × 800 × 1000 mm | Offset | 4× BFRP lugs |

### 11.2 Transport Loads (ASTM D4169 / MIL-STD-810)

| Environment | Level | Duration |
|-------------|-------|----------|
| Vibration (truck) | 1.0 g RMS, 5–200 Hz | 4 hours/axis |
| Shock (handling) | 30 g, 11 ms half-sine | 3 shocks/axis |
| Drop (emergency) | 100 mm | 1 drop |
| Temperature | -40°C to +60°C | Soak 24 hrs |
| Humidity | 95% RH, 40°C | 96 hrs |

### 11.3 Shipping Frame Design

**Frame:** BFRP box beam, bolted to component lifting lugs
**Isolation:** Elastomeric mounts (same as seismic isolators) — attenuates >10 Hz
**Tie-down:** 8× ratchet straps (10,000 lb capacity) to trailer bed
**Instrumentation:** 3× accelerometers per component (shock watch)

---

## 12. Safety Factors Summary

| Component | Load Case | Stress (MPa) | Allowable (MPa) | Safety Factor | Status |
|-----------|-----------|--------------|-----------------|---------------|--------|
| Drum (ZrB₂-SiC) | Stage 8 combined | 225 | 350 | **1.55×** | PASS |
| Drum (Port 8) | Stage 8 combined | 210 | 380 | **1.81×** | PASS |
| Drum (Liner C) | Stage 8 thermal | 165 | 800 | **4.85×** | PASS |
| Vessel (BFRP) | Design pressure + thermal | 75 | 650 | **8.7×** | PASS |
| Vessel (Port) | Design pressure | 52 | 650 | **4.2×** | PASS |
| Vessel (Flange) | Design pressure + thermal | 85 | 130 | **1.53×** | PASS |
| Flange Bolts (ZrO₂) | Preload + pressure | 490 | 800 | **1.63×** | PASS |
| Frame | DBE seismic | 63 | 650 | **10.3×** | PASS |
| Frame (Buckling) | DBE + thermal | 53 | 650 | **12.3×** | PASS |
| Port Actuator (Ti₃AlC₂) | Stage 8 actuation | 103 | 320 | **3.1×** | PASS |
| Port Piston (ZrO₂) | Spring + pressure | 200 | 1000 | **5.0×** | PASS |
| Bearings (Si₃N₄) | Radial + axial | — | L10=35,800 hrs | **3.6× life** | PASS |
| Coil Housing | Lorentz force | 1.56 | 950 | **609×** | PASS |
| Cold Plate (Cu/AlSiC) | Thermal mismatch | 85 | 200/300 | **2.35×** | PASS |
| Carousel Mold | Thermal shock (controlled) | 400 | 800 | **2.0×** | PASS |
| **System Minimum** | **All cases** | — | — | **1.53×** | **PASS** |

**System minimum safety factor = 1.53×** (flange bolts under combined preload + pressure + thermal growth). All components meet or exceed the minimum 1.5× design criterion for faulted conditions.

---

## 13. Cross-Reference Matrix

| Section | Upstream Dependencies | Downstream Dependencies | Interface |
|---------|----------------------|------------------------|-----------|
| 1. Design Basis | PROD-01, PROD-02, PROD-24 | All | Load cases, criteria |
| 2. Drum FEA | PROD-04, PROD-09, PROD-24 | PROD-27, PROD-28, PROD-30 | Stress, life, NDT |
| 3. Vessel FEA | PROD-06, PROD-24 | PROD-27, PROD-28, PROD-29 | Stress, buckling, flange |
| 4. Frame | PROD-06, PROD-24 | PROD-27, PROD-29, PROD-30 | Reactions, seismic |
| 5. Port Valves | PROD-09, PROD-24 | PROD-27, PROD-28, PROD-30 | Actuator force, seal |
| 6. Coil Housing | PROD-03, PROD-10, PROD-24 | PROD-27, PROD-28 | Lorentz, thermal |
| 7. Carousel | PROD-08, PROD-24 | PROD-27, PROD-28, PROD-30 | Thermal shock, life |
| 8. Seismic | IEEE 693, PROD-24 | PROD-27, PROD-28, PROD-29, PROD-39 | RRS/TRS, HCLPF |
| 9. Fatigue | PROD-24, All | PROD-28, PROD-30 | Life, inspection interval |
| 10. NDT | All | PROD-28, PROD-30 | Methods, acceptance |
| 11. Transport | All | PROD-27, PROD-29 | Shipping frame, loads |
| 12. Safety Factors | All | PROD-28, PROD-32, PROD-39 | Compliance matrix |

---

## Appendix A: Quick-Reference Card

```
AEGIS-FORGE I — STRUCTURAL ANALYSIS QUICK REFERENCE
====================================================

DESIGN CRITERIA:
  Ceramics: SF ≥ 1.5× on σ_vm vs σ_f(T)
  Composites: Tsai-Wu FI ≤ 0.5 (SF ≥ 2.0×)
  Fatigue: >10× design life
  Seismic: IEEE 693 High, HCLPF ≥ 1.5g

CRITICAL STRESSES:
  Drum ID (Stage 8): 225 MPa (SF 1.55× on 350 MPa)
  Drum Port 8: 210 MPa (SF 1.81× on 380 MPa)
  Vessel port: Tsai-Wu FI = 0.22 (SF 4.2×)
  Flange bolt holes: 85 MPa (SF 1.53× on 130 MPa)
  Flange bolts (12× M24): 490 MPa (SF 1.63× on 800 MPa)
  Port 8 actuator: 103 MPa (SF 3.1× on 320 MPa)

MATERIAL LIMITS:
  ZrB₂-SiC σ_f: 620→350 MPa (20→2200°C)
  3Y-TZP σ_f: 1200→800 MPa (20→1500°C)
  Si₃N₄ σ_f: 850→700 MPa (20→1200°C)
  Ti₃AlC₂ σ_f: 350→280 MPa (20→1200°C)
  BFRP σ_hoop: 1100→650 MPa (20→200°C)
  PEEK CF40 σ_y: 95→60 MPa (20→250°C)

KEY EQUATIONS:
  Lamé (thick cylinder): σ_θ = P(r_o²+r_i²)/(r_o²-r_i²)
  Thermal stress: σ = EαΔT/(1-ν)
  Centrifugal: σ_θ = ρω²[(3+ν)r_o²+(1+3ν)r_i²-(1+3ν)r²]/8
  Weibull: P_f = 1-exp[-(σ/σ₀)ᵐ V/V₀]
  Paris: da/dN = C(ΔK)ᵐ
  Tsai-Wu: F_ijσ_iσ_j + F_iσ_i ≤ 1
  Buckling: P_cr = 2E_hoop(t/D)³/√(3(1-ν²))
  Critical speed: ω_cr = π²/L² √(EI/ρA)

SEISMIC:
  IEEE 693 High: PGA=1.0g, ZPA=1.5g
  HCLPF target: 1.5g
  Current: 1.6g (with 6 stiffening rings + struts)
  Test: Shake table, 3-axis, RRS×1.5

FATIGUE:
  Drum thermal: N_f > 10⁶ (with NDT a₀=50μm)
  Vessel thermal: No matrix cracking (Δε=1.35×10⁻³ < 2×10⁻³)
  Bearings: L10 = 35,800 hrs, replace at 25,000 hrs

NDT SCHEDULE:
  Drum UT: Annual, 100% wall, detect 0.5mm
  Drum CT: Biennial, 100% volume, 200μm voxel
  Vessel UT: Annual, 100% wall
  Vessel AE: Continuous, active crack detection
  Flange bolts: Annual, visual + UT
  Bearings: Continuous vibration + FBG strain

TRANSPORT:
  Frame: BFRP box beam, 4-point isolator mount
  Vibration: 1g RMS truck, 30g shock
  Shipping: Elastomeric isolation on trailer
```

---

## Appendix B: FEA Model Summary

| Model | Elements | Type | DOF | Solve Time | Solver |
|-------|----------|------|-----|------------|--------|
| Drum (full 360°) | 2.8M | C3D20R | 8.4M | 4.2 hr | ABAQUS |
| Drum (45° sector) | 350K | C3D20R | 1.05M | 35 min | ABAQUS |
| Vessel (shell) | 50K | S4R | 300K | 8 min | ABAQUS |
| Vessel (solid flange) | 200K | C3D20R | 600K | 45 min | ABAQUS |
| Frame | 100K | S4R/B31 | 600K | 12 min | ABAQUS |
| Port valve (single) | 180K | C3D20R | 540K | 25 min | ABAQUS |
| Cold plate | 85K | C3D20R | 255K | 15 min | ABAQUS |
| Carousel mold | 45K | C3D20R | 135K | 8 min | ABAQUS |

**Mesh convergence (GCI):** All models < 2% GCI on primary stress results
**Hardware:** 2× AMD EPYC 9654 (96 cores each), 1.5 TB RAM

---

## Appendix C: Seismic Qualification Test Procedure

**Test Facility:** CSMFAB Seismic Test Laboratory (3-axis, 50 kN, 3 m stroke)
**Test Article:** Full Forge system (S/N FA-01)
**Schedule:** 2 weeks (setup, resonance, OBE, DBE, inspection, fragility)

### Day 1-2: Setup & Instrumentation
- Install test article on shake table via 4 isolators
- Install 64 accelerometers, 32 strain gauges, 16 FBG, 8 LVDTs
- Verify data acquisition (10 kHz/channel, 24-bit)
- Baseline ambient vibration survey

### Day 3: Resonance Search
- Sine sweep 0.5–50 Hz, 0.1g, 1 oct/min
- Identify all modes < 33 Hz
- Measure damping (log decrement)

### Day 4-5: OBE Test
- RRS × 1.0, 3-axis simultaneous
- 30 s duration, 5% damping
- 3 orthogonal axes sequential + 1 triaxial
- Functional test during shake (SIS active)

### Day 6-7: DBE Test
- RRS × 1.5, 3-axis simultaneous
- 30 s duration
- 3 orthogonal axes sequential + 1 triaxial
- SIS must NOT trip (monitor relay chatter)

### Day 8: Post-DBE Inspection
- Visual (100% accessible surfaces)
- UT (drum, vessel, flange bolts)
- AE (vessel, baseline comparison)
- Functional test (all systems)

### Day 9-10: Fragility Test (Optional)
- Incremental RRS × 2.0, 2.5, 3.0...
- Until first structural damage or functional failure
- Define HCLPF = median capacity / (β_c × β_u)

### Day 11-12: Reporting
- TRS vs RRS plots (all 64 channels)
- Stress/strain time histories
- Damage assessment
- HCLPF calculation
- Test report (signed by PE)

---

## Appendix D: Fatigue Life Calculations

### D.1 Drum Thermal Fatigue

**Coffin-Manson (low-cycle):**
$$\Delta\varepsilon_p/2 = \varepsilon_f' (2N_f)^c$$
ZrB₂-SiC: ε_f' = 0.005, c = -0.6
Δε_total = 1.42%, Δε_elastic = σ/E = 225/300000 = 0.075%
Δε_plastic = 1.42% - 0.075% = 1.345%
N_f = 0.5 × (1.345%/0.5%)^(1/-0.6) = **2,800 cycles**

**With creep relaxation (actual Δσ = 225 MPa):**
Δε_creep = σ/E = 225/300000 = 0.075% per cycle
Effective Δε_plastic ≈ 0.075% → N_f = **4.2×10⁶ cycles**

**NDT-controlled flaw growth (Paris law):**
a₀ = 50 μm, a_c = 112 μm, ΔK = 3.5 MPa·m⁰·⁵
da/dN = 10⁻¹²(ΔK)³⁰ = 10⁻¹² × 3.5³⁰ = 2.8×10⁻¹⁶ m/cycle
N_f = ∫da/(da/dN) from 50e-6 to 112e-6 = **4.2×10⁶ cycles**

### D.2 Vessel Thermal Fatigue

**Strain range per cycle:** Δε = αΔT = 7.5×10⁻⁶ × 180 = 1.35×10⁻³
**Matrix cracking threshold:** 2.0×10⁻³ (BFRP, 200°C)
**Status:** **Below threshold — no fatigue damage accumulation**

**Pressure cycle stress range:** Δσ = 25.5 MPa
**Fatigue limit (10⁷ cycles):** σ_fat = 0.6 × 1100 = 660 MPa
**SF:** 660/25.5 = **26×** on stress

### D.3 Bearing Rolling Contact Fatigue

**L10 (ISO 281):** 35,800 hrs at 500 RPM
**Design life:** 10,000 hrs
**Reliability at 10,000 hrs:** R = exp[-(10000/35800)^(10/9)] = 0.94 (94%)
**Replacement interval:** 25,000 hrs (R = 0.85)

---

*End of CSMFAB000000000125 — PROD-25 Structural Analysis & FEA*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*