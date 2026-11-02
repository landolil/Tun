# Keymaker Heuristic Intro — PROD-17 Stage 4 Low-Temperature Metals
## The Empirical Lock, The Mathematical Key, The Turn (Both Directions)

### The Empirical Lock

The fabrication fidelity gap this document addresses is **multi-metal simultaneous separation in a single rotating vessel without cross-contamination**. Existing industrial practice separates lead, tin, zinc, and indium in sequential, dedicated furnaces — a lead blast furnace, a tin reflux still, a zinc retort, an indium electrolytic cell. Each operates at its own temperature, with its own atmosphere, its own slag chemistry, its own labor force, its own capital cost, its own emissions permit. The Aegis-Forge I demands all four separations in one drum, in 25 minutes, with zero metal contamination between streams, in an all-dielectric vessel that cannot use metallic heating elements, in a process that must also handle the precious metals hitchhiking in the indium/tin streams. The empirical lock is: **how do you get four metals with melting points spanning 263°C (156.6 to 419.5°C) to exit through three ports in the correct order, at the correct purity, without any metal seeing a temperature it shouldn't?**

The gap is not theoretical — we know the melting points, we know the densities, we know the phase diagrams. The gap is **simultaneous execution fidelity**. In a lab, you can melt indium at 160°C in a beaker under argon. In the Aegis-Forge I drum at 400 RPM with 500 kg of char-embedded metal particles, induction heating creating local hot spots, centrifugal force driving everything outward, gas flowing at 500 L/min, ports opening and closing on thermal actuators — the indium sees 160°C for exactly 5 minutes while the drum wall is already at 180°C from induction coupling, the char is exothermically oxidizing at 600°C in the core, and the zinc particles 50mm away are being inductively heated toward 420°C. The empirical lock is **thermal isolation in a shared volume**. Can the indium zone stay at 160°C while the zinc zone 100mm away reaches 430°C? Can the Sn-Pb eutectic clear at 200°C without picking up lead that hasn't melted yet? Can the zinc vapor pressure stay negligible at 430°C while induction power pumps 80 kW into the particle bed? These are not textbook problems — they are fabrication fidelity problems that only resolve when the machine runs.

### The Mathematical Key

The single computational primitive generating the solution is **the centrifugal density stratification operator**:

$$ \mathcal{C}[\rho_l, \omega, r, t] = \text{radial position where } \frac{dP}{dr} = \rho_l \omega^2 r \text{ balances interfacial tension} $$

This operator takes four inputs — liquid density $\rho_l$, angular velocity $\omega$, radial coordinate $r$, and time $t$ — and outputs the equilibrium annular position of each molten metal phase. At 400 RPM ($\omega = 41.89$ rad/s), the operator maps:

- $\rho_{\text{In}} = 7310$ kg/m³ → $r \approx 150-200$ mm (inner zone, Port 4A)
- $\rho_{\text{Sn}} = 6990$ kg/m³ → $r \approx 200-250$ mm (middle zone, Port 4B)  
- $\rho_{\text{Pb}} = 10660$ kg/m³ → $r \approx 250-300$ mm (outer zone, Port 4C)
- $\rho_{\text{Zn}} = 6570$ kg/m³ → $r \approx 250-300$ mm (outer zone, Port 4C, but at 430°C)

The operator's power is that it **reduces a 3D multi-physics problem (induction heating + fluid flow + heat transfer + phase change + mass transport) to a 1D radial equilibrium calculation**. The induction power, the temperature profile, the gas atmosphere, the flux chemistry — all are boundary conditions. The centrifugal operator is the core. It tells you where each metal goes. It tells you the RPM needed for separation (minimum 300 RPM for Pb/Sn separation, 400 RPM for In/Sn separation). It tells you the dwell time (settling time ~0.5 seconds, so 3-5 minutes is 360-600× safety factor). It tells you the port positions (must align with the equilibrium radii). It tells you the valve actuation temperatures (must match the melting points that create the liquid phases).

The operator also reveals the coupling constraints. At 400 RPM, In and Zn both want the outer zone (In: 7.31 g/cm³, Zn: 6.57 g/cm³ — but In is liquid at 160°C, Zn is solid until 420°C). The operator says: **sequence the melting, don't simultaneous melt**. The temperature ramp is the control input that sequences the operator's application: first apply $\mathcal{C}$ to In at 160°C, then to Sn/Pb at 200°C, then to Bi/Sn at 280°C, then to Pb at 340°C, then to Zn at 430°C. The mathematical key unlocks the empirical lock by showing that **time-sequential application of the centrifugal operator at discrete melting points achieves what simultaneous application cannot**.

### The Turn (Both Directions)

#### Theory → History Validation

The centrifugal density stratification operator is validated by the historical record of **centrifugal metal separation in continuous casting and slag cleaning**. The Noranda reactor (1970s) used centrifugal force to separate copper matte from slag at 1200°C. The Mitsubishi continuous copper smelter uses a settling furnace where density difference drives matte/slag separation. The Ausmelt/Isasmelt process uses lance stirring but relies on density stratification in the settling zone. In the nuclear industry, centrifugal contactors separate molten salt phases by density. In aluminum recycling, rotary furnaces use tilt and rotation to separate aluminum from dross. The physics is proven at scale. What is novel is **applying it at 160°C to indium** — a temperature where no industrial centrifugal separator has operated because no industrial process has needed to separate indium. The theory predicts it works; the history of centrifugal separation at higher temperatures confirms the operator's validity. The only gap is the low-temperature materials compatibility (PEEK springs at 160°C, Ti₃AlC₂ actuators at 160°C, FBG sensors at 160°C) — all validated in PROD-09, PROD-10, PROD-12.

#### History → Theory Validation

The historical operating data from **Stage 3 (PROD-16) char formation** validates the Stage 4 feedstock model. PROD-16 established that Stage 3 produces activated char with 80-95% carbon, surface area 200-800 m²/g, and embedded metal particles (Pb, Sn, Zn, In, Au, Ag, Pd) at 1-5% of char mass. The char exits at 700°C and cools to 150°C entering Stage 4. The history says: the metal particles are 10-500 μm, partially oxidized, trapped in carbon matrix. The theory (centrifugal operator) says: at 160°C, only indium melts; the indium particles coalesce into droplets; 400 RPM drives them to r=150-200 mm in <1 second. The history validates the particle size distribution. The theory validates the separation physics. The coupling is the **char combustion exotherm** — Stage 3 char at 700°C entering Stage 4 at 150°C releases sensible heat that must be managed by the induction power profile. PROD-16 measured this: 25 kWh sensible heat from char cooling. PROD-17 accounts for it in the energy balance (Section 10). History and theory close the loop.

#### The Dual Validation Matrix

| Theory Prediction | Historical Evidence | Validation Status |
|---|---|---|
| In migrates to r=150-200mm at 400 RPM, 160°C | Centrifugal separators at >1000°C show metal migration to wall | CONFIRMED (scaled) |
| Sn-Pb eutectic forms at 183°C in drum | Solder reflow ovens: 183°C eutectic formation in 60 sec | CONFIRMED |
| Zn vapor pressure <0.01 Pa at 430°C, 1.5 bar N₂ | Zn retort distillation: vapor pressure data matches Clausius-Clapeyron | CONFIRMED |
| In₂O₃ reduces in 5% H₂ at 160°C | In refining literature: H₂ reduction of In₂O₃ at 200°C | EXTRAPOLATED (160°C) |
| Ti₃AlC₂ actuator deflects 3.6mm at 680°C ΔT | PROD-09/FOLLOW-04: FEA + bench test at 680°C | CONFIRMED |
| 384 FBG sensors resolve ±1°C at 160°C | PROD-10: FBG spec ±0.5°C, WDM/TDM at 1 kHz | CONFIRMED |
| Na₂CO₃ flux reduces PbO/SnO₂ at 340°C | Solder flux literature: Na₂CO₃ active >300°C | CONFIRMED |

The Turn is complete when every row shows CONFIRMED. The extrapolated row (In₂O₃ reduction at 160°C) requires bench validation — this is the **single remaining empirical risk** in PROD-17. All other theory-history couplings are closed.