## Constraint (The Lock)

The Aegis-Forge I structural analysis is forced into its thermomechanical FEA framework by a single irreducible principle: **every load-bearing component must survive the simultaneous application of 2200°C thermal gradients, 500 RPM centrifugal loading, 10 bar pressure containment, and Carrington-class electromagnetic hostility — without a single structural metal.**

This constraint cascades into every structural decision:

- **Ceramics-only rotating drum:** The ZrB₂-SiC drum (600 mm ID, 35 mm wall) is the only moving hot part. It must withstand 84.5 G centrifugal acceleration at ID, 5 bar internal pressure, and a 2000°C radial thermal gradient (2200°C ID → 700°C OD) — all while remaining electrically insulating (ρ > 10⁶ Ω·m) to maintain Carrington immunity. Any metallic reinforcement would couple GIC currents (5000 nT/s induces >100 A/km) into the structure, creating unintended heating paths and potential arc paths to the induction coils.

- **Composite-only stationary vessel:** The BFRP/Elium® vessel (900 mm ID, 18 mm wall) must contain 10 bar design pressure while thermally isolating the composite (Tg = 80°C) from the 2200°C drum across a 68 mm gap (50 mm aerogel + 18 mm BFRP). No metallic flanges, no metallic bolts, no metallic gaskets — the entire pressure boundary is ceramic/composite. The 12× M24 ZrO₂ bolts and ZrO₂ gasket at the PEEK CF40 flanges are the only closure mechanism.

- **All-dielectric port valves:** The 8 material exit ports use Ti₃AlC₂ MAX phase thermal actuators and 3Y-TZP ZrO₂ pistons — entirely ceramic, no metal springs (PEEK CF40 wave springs only), no metal seals. The actuator operates at the drum OD (≤700°C) where Ti₃AlC₂ retains 320 MPa strength.

- **Seismic without steel:** The BFRP box beam frame must qualify to IEEE 693 High (PGA = 1.0g, ZPA = 1.5g) without any steel reinforcement. 6× BFRP stiffening rings + 4 vertical struts provide the required HCLPF ≥ 1.5g.

**What breaks if violated:** A single steel bolt in the flange → GIC pickup → common-mode voltage on FBG interrogators → control system corruption. A metallic drum reinforcement → induction coupling → uncontrolled eddy currents → thermal runaway. A metallic port actuator → magnetic coupling at Stage 7 (2 kHz, ferromagnetic) → actuation failure at 1600°C.

---
