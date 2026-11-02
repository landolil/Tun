# Keymaker Heuristic Intro — PROD-18 Stage 5 Aluminum Window
## The Empirical Lock, The Mathematical Key, The Turn (Both Directions)

### The Empirical Lock

The fabrication fidelity gap this document addresses is **selective aluminum separation with in-situ magnesium removal in a continuous centrifugal cascade**. Existing industrial practice separates aluminum from mixed scrap in dedicated reverberatory or rotary furnaces — melting the entire charge at 750-800°C, fluxing with chlorine or salt, skimming dross, and casting. This works for dedicated aluminum recycling but fails in a thermal cascade because: (1) the furnace operates ABOVE the magnesium vaporization temperature (720°C), losing Mg as fume instead of capturing it in dross; (2) the furnace cannot fractionate wrought from cast alloys in real-time; (3) the furnace requires metallic heating elements and refractories incompatible with the Aegis-Forge I's all-dielectric, Carrington-immune architecture; (4) the furnace is a batch operation disconnected from the continuous thermal cascade. The empirical lock is: **how do you melt only aluminum, remove magnesium without chlorine, fractionate alloys by composition, and drain the melt continuously — all in a 60°C window, in a rotating dielectric drum, heated by induction, in 30 minutes?**

The gap is not theoretical — we know the Al-Mg phase diagram, we know the NaCl-KCl-MgO ternary, we know centrifugal film drainage. The gap is **simultaneous execution fidelity in a shared volume with upstream/downstream coupling**. In a lab, you can melt aluminum at 680°C in a graphite crucible under argon with NaCl/KCl flux. In the Aegis-Forge I drum at 300 RPM with 100 kg of aluminum particles embedded in 150 kg of ferrous/copper/mineral matrix, induction heating at 10 kHz creating eddy currents only in the aluminum phase, centrifugal force driving a 0.8 mm film to the drum wall, XRF measuring composition every 10 seconds to direct flow to 8 different molds, flux injection synchronized to temperature bands, magnesium oxidation kinetics competing with aluminum nitride formation in N₂ — the aluminum sees a thermal trajectory that must thread the needle between "not melted yet" and "magnesium vaporizing." The empirical lock is **thermal-compositional trajectory control in a multi-physics cascade**. Can the 10 kHz induction selectively heat 1-5 mm Al particles in a solid Fe/Cu matrix without overheating the drum wall? Can the 300 RPM generate stable film drainage at 25 G without wave entrainment? Can the XRF fractionation decision (10 sec) keep pace with the 5-minute temperature bands? These are not textbook problems — they are fabrication fidelity problems that only resolve when the machine runs.

### The Mathematical Key

The single computational primitive generating the solution is **the centrifugal film drainage operator with compositional banding**:

$$ \mathcal{F}[\mu, \rho, \omega, r, \delta, T(t), X(t)] = \text{mold position assignment} $$

This operator takes seven inputs — melt viscosity $\mu$, density $\rho$, angular velocity $\omega$, radial position $r$, film thickness $\delta$, temperature trajectory $T(t)$, and composition trajectory $X(t)$ — and outputs the mold position assignment for each 5-minute temperature band. At 300 RPM ($\omega = 31.4$ rad/s, $r = 0.3$ m):

- $\mu = 1.3$ mPa·s, $\rho = 2380$ kg/m³ → $\delta = 0.8$ mm, $v = 0.15$ m/s (drainage)
- $T(t)$: 660→680°C (5 min) → 680°C (25 min) → 720°C (5 min)
- $X(t)$: Si(t), Fe(t), Cu(t), Mg(t) from XRF → Scheil prediction → mold position

The operator's power is that it **reduces a 4D multi-physics problem (induction heating + fluid dynamics + heat transfer + mass transfer + solidification) to a 1D trajectory classification**. The induction power, the flux chemistry, the gas atmosphere, the drum geometry — all are boundary conditions. The centrifugal film drainage operator with compositional banding is the core. It tells you the RPM needed for film stability (300 RPM, G=25.1, Weber number We = ρv²δ/σ = 0.01 ≪ 1 — stable). It tells you the dwell time for Mg removal (mass transfer + surface renewal = 25 min). It tells you the mold positions (8 molds, 5 min each = 40 min window, but only 30 min available → 5 min bands, some combined). It tells you the Port 5 actuation temperature (720°C = Mg vapor limit). It tells you the fractionation logic (Scheil model + XRF → wrought vs cast).

The operator also reveals the coupling constraints. The film drainage velocity (0.15 m/s) sets the minimum drum length (800 mm → 5 s transit, 300× safety factor). The Mg removal kinetics (mass transfer + centrifugal renewal) sets the minimum dwell (25 min). The Scheil segregation (k_Si=0.12) sets the maximum wrought fraction (80% of solidification). The mathematical key unlocks the empirical lock by showing that **the centrifugal film drainage operator with compositional banding, executed within the 60°C Aluminum Window, achieves what batch furnaces cannot: simultaneous melting, purification, fractionation, and continuous drainage in a single rotating vessel**.

### The Turn (Both Directions)

#### Theory → History Validation

The centrifugal film drainage operator is validated by the historical record of **continuous aluminum casting and centrifugal separation**. The Properzi process (1940s) uses a rotating graphite wheel to form aluminum strip by centrifugal drainage — the same physics at 300 RPM. The Hazelett twin-belt caster uses forced feeding and controlled cooling — the same solidification control. The Noranda reactor uses centrifugal matte/slag separation — the same density-driven phase separation. In the nuclear industry, centrifugal contactors separate molten salt phases by density at 1800 RPM. The physics is proven at scale. What is novel is **applying it at 680°C with in-situ Mg removal and real-time XRF fractionation** — a combination of thermodynamic window (60°C), kinetic window (25 min Mg removal), and control window (10 sec XRF) that has not been integrated before. The theory predicts it works; the history of centrifugal aluminum processing confirms the operator's validity. The only gaps are the low-temperature materials compatibility (ZrO₂ molds at 680°C with Cu chill, PROD-08; Ti₃AlC₂ actuators at 720°C, PROD-09/FOLLOW-04; FBG sensors at 720°C, PROD-10) — all validated in their respective documents.

#### History → Theory Validation

The historical operating data from **Stage 4 (PROD-17) metal clearance** validates the Stage 5 feedstock model. PROD-17 established that Stage 4 removes ALL Pb, Sn, Zn, In, Bi by 450°C. The Stage 4 Port 4C discharge at 430°C clears the last zinc. The drum then ramps 450→660°C with NO liquid metals present — only solid Al particles in a mineral matrix. The history says: the Al particles are 1-50 mm, partially oxidized, embedded in char/slag. The theory (centrifugal film operator) says: at 660°C, Al melts; at 300 RPM, film forms in <10 s; at 680°C, flux reacts with Mg; at 720°C, melt drains to Port 5. The history validates the particle size and oxidation state. The theory validates the melting and drainage physics. The coupling is the **char sensible heat** — Stage 4 char exits at 430°C and enters Stage 5 at 450°C, providing 45 kWh sensible heat that reduces Stage 5 induction demand. PROD-17 measured this; PROD-18 accounts for it in the energy balance (Section 9). History and theory close the loop.

#### The Dual Validation Matrix

| Theory Prediction | Historical Evidence | Validation Status |
|---|---|---|
| Al film δ=0.8mm at 300 RPM, 1.3 mPa·s | Properzi wheel: δ=0.5-1mm at 200-400 RPM | CONFIRMED |
| Mg removal 93% in 25 min, flux + centrifugal | Al recycling: Mg 0.5%→0.05% in 30 min, salt flux | CONFIRMED (scaled) |
| XRF fractionation 10 sec, 5-min bands | Inline XRF in Al casting: 5-15 sec, composition control | CONFIRMED |
| ZrO₂ mold + Cu chill survives 830°C ΔT | PROD-08 FEA: ΔT_critical=650°C, Cu chill absorbs 80% | CONFIRMED (with chill) |
| 10 kHz induction δ=0.9mm in Al at 680°C | Induction melting: 10 kHz standard for Al | CONFIRMED |
| AlN formation <5% dross in N₂ at 680°C | Al melting in N₂: AlN 3-8% dross | CONFIRMED |
| Scheil k_Si=0.12 predicts wrought Si<0.15% | DC casting: Si microsegregation 8× in last 10% | CONFIRMED |
| Port 5 Ti₃AlC₂ actuator 3.6mm at 720°C | PROD-09/FOLLOW-04: FEA + bench at 680°C | EXTRAPOLATED (720°C) |

The Turn is complete when every row shows CONFIRMED. The extrapolated row (Port 5 actuator at 720°C) requires bench validation — this is the **single remaining empirical risk** in PROD-18. All other theory-history couplings are closed.