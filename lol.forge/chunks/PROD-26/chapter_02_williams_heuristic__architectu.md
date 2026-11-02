## Williams Heuristic — Architectural Clarity

### Constraint (The Lock)

The Aegis-Forge I electrical safety architecture is forced into its all-dielectric topology by a single irreducible principle: **no copper conductor may cross the pressure boundary into the 2200°C induction zone during a Carrington-class geomagnetic storm (dB/dt = 5000 nT/s).**

This constraint is not a design preference — it is physics. A 5000 nT/s field induces >100 V/km on conductors. At 50 m cable run: >5 V common-mode. The GaN gate drivers (GS66516T, LMG1210) have 6 V threshold. A single ground loop couples kV from GIC into the gate drive — instant destruction. The FBG interrogators (VCSEL, InGaAs PIN) share the same vulnerability. The isolation transformer secondary is floating — no neutral-earth bond — because a grounded neutral provides the return path for GIC to enter the process electronics.

The constraint cascades into every electrical decision:
- **All 480+ sensors on PMMA POF:** FBG temperature/strain (384), POF level (16), pyrometer (8), mass spec (8), XRF (8), pressure (24), flow (32), vibration (16), encoder (2), E-stop (8) — zero copper
- **All 96+ actuators on PMMA POF:** GaN gates (16), varactor bias (32), cap bank (48), MFC (32), port valves (8), carousel (1), flux (8), quench (16), drum drive (1), crane interlock (4)
- **Cooling water:** PEX-a tubing (cross-linked PE, ρ>10¹⁴ Ω·m) — no copper pipe, no conductive path to building ground
- **Enclosures:** BFRP/Elium® (ρ>10¹² Ω·m) — no steel cabinets, no metallic conduit
- **Penetrations:** Al₂O₃/ZrO₂ ceramic bushings only — no metal feedthroughs
- **Power distribution:** Isolation transformer (Δ-Y, floating secondary), NGR 5A — no ground reference on process side

**What breaks if violated:** A single copper wire for just the E-stop → GIC antenna → 5 V common-mode on GaN gate → GaN shoot-through → 500 kW inverter destruction → drum thermal runaway → vessel overpressure → catastrophic failure. The constraint is binary: all-dielectric or dead forge.

---

### Necessity (The Key)

The empirical gap this document closes is the **measured divergence between standard industrial electrical safety (grounded, copper-wired, EMC-compliant) and the verified behavior of the Aegis-Forge I under combined Carrington GIC + 500 kW induction + 2200°C thermomechanical loading.**

Three specific gaps demand this architecture:

1. **Standard grounding creates the GIC antenna:** IEEE 142 / NFPA 70 require equipment grounding conductors. But in a 5000 nT/s event, the ground conductor *is* the antenna. The measured GIC on Hydro-Québec 1989 was 100 A on neutral conductors. A grounded forge would see 100 A flowing through its safety ground into the GaN gate drivers. The gap: **grounding for safety vs. grounding as GIC antenna.**

2. **Standard EMC assumes copper shielding:** CISPR 11 / IEC 61000-4 assume metallic enclosures and shielded cables. But in the forge, a steel cabinet at 2200°C ambient (radiative coupling) with 500 kW of 1–100 kHz magnetic fields becomes a Faraday cage that *concentrates* eddy currents. The measured field inside PROD-03 coil housing is 39.6 mT at Z8. A steel enclosure would see 50 kW of eddy current heating. The gap: **metallic shielding vs. dielectric transparency.**

3. **Standard SIL-3 assumes independent channels:** IEC 61508 2oo3 voting assumes physical separation. But in the forge, all 3 FBG sensors per zone share: same interrogator, same POF cable tray, same 24 VDC supply, same RTU. A single interrogator failure = common cause = all 3 channels lost. The gap: **independent channels vs. shared infrastructure in constrained volume.**

**Measured data demanding this approach:**
- PROD-23 GIC ride-through test: 100 A/m Helmholtz field, 30 min — zero spurious trips, zero data loss
- PROD-10 EMC test: CISPR 11 Class A passed with 20 dB margin — no metal shielding
- PROD-23 SIS proof test (CT-04): 24 SIL-3 SIFs, PFD<sub>avg</sub> = 2.3×10⁻³ — meets <10⁻²
- PROD-25 megger test: All 50+ penetrations >1 GΩ at 500 VDC — no conductive leakage
- PROD-10 arc flash calc: 0.3 cal/cm² at 18 (process) vs 4.2 cal/cm² (grid) — Cat 0 PPE

---

### Commitment (The Turn)

This document makes the following non-negotiable commitments that constrain all downstream documents:

1. **PMMA POF is the only fieldbus** — 480+ sensors, 96+ actuators, TSN, PTP, SIS. No copper, no wireless, no powerline. PROD-27 manufacturing must qualify POF draw ($0.08–0.15/m). PROD-28 QA verifies attenuation <0.2 dB/m. PROD-29 operations includes POF inspection. PROD-36/37 architect around this.

2. **Floating secondary + NGR 5A is mandatory** — no neutral-earth bond on process side. PROD-27 specifies isolation transformer (Δ-Y, BFRP, 10 kV BIL). PROD-28 verifies ground fault <5 A. PROD-29 includes NGR monitoring. PROD-32 permits require this.

3. **PEX-a for all coolant** — no copper pipe, no conductive water path. DI water 18 MΩ·cm maintained. PROD-27 specifies PEX-a circuit. PROD-28 verifies resistivity. PROD-29 includes DI polisher.

4. **24 SIL-3 SIFs immutable** — Table in Appendix C defines safety envelope. PROD-27 manufactures dedicated SIS FPGA boards. PROD-28 executes CT-04 proof tests. PROD-32 requires SIL-3 cert. PROD-39 FAT includes SIF injection. No downgrade without full re-certification.

5. **TSN schedule frozen** — 1 ms cycle, 4 slices (SIS/RTU/PLC/SCADA), 100 μs guard band. PROD-27 manufactures TSN switches (BFRP). PROD-28 verifies latency <100 μs. PROD-37 twin sync depends on this.

6. **Air-gap absolute** — no IT→OT IP path. Data diode unidirectional (OT→IT) only. PROD-27 installs hardware diode. PROD-28 verifies no reverse traffic. PROD-36/37 architect around this.

7. **PTP <1 μs required** — GNSS+OCXO grandmaster, 24h holdover, all nodes boundary clocks. PROD-27 manufactures grandmaster (BFRP). PROD-28 verifies sync. PROD-10/23 resonance tracking depends on this.

8. **BFRP/YInMn Blue glaze as conductive bleed** — SRI=115 glaze provides static dissipation path (1 MΩ to earth). PROD-06 specifies glaze. PROD-28 verifies surface resistivity. PROD-25 seismic qualifies glaze adhesion.

These commitments are the **electrical load-bearing walls**. PROD-27 (Manufacturing), PROD-28 (QA), PROD-29 (Deployment), PROD-30 (Maintenance), PROD-32 (Compliance), PROD-36 (Cyber-Physical), PROD-37 (Digital Twin), PROD-39 (T&E), FOLLOW-10/11/27/29 build on this foundation. They cannot move the walls.

---
