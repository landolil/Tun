# Williams Heuristic — PROD-29 Deployment & Operations
## Constraint / Necessity / Commitment

### Constraint (The Lock)

The irreducible principle forcing this deployment architecture is **the Forge must re-verify its own fabrication fidelity at the site before any feedstock enters** — the synchronization function (PROD-27 Keymaker Key) does not end at the factory gate. The 14 assemblies arrive with verified data packages (QR + Hyperledger), but the act of transport, rigging, and re-assembly introduces new variables: foundation settlement, utility impedance, ground resistance, seismic coupling, and thermal boundary conditions that cannot be replicated in the factory. The Lock: **deployment is not installation — it is the re-execution of the synchronization function at the site, with the site as a new variable in the verification predicate.**

### Necessity (The Key)

The empirical gap is the **measured divergence between factory FAT performance and site SAT performance** for zero-metal, Carrington-immune machines. PROD-27 FAT (CT-01..CT-10) validates the Forge in a controlled electromagnetic environment (shielded factory, stable grid, characterized foundation). At site: grid impedance varies ±30%, ground resistance varies 2-50 Ω, seismic coupling depends on soil class, thermal boundary conditions change with weather. PROD-26 GIC ride-through test (CT-07) used a 100 A/m Helmholtz coil — but the real grid during a Carrington event presents common-mode impedance, not differential field. The Key: **deployment must measure and compensate for site variables by re-executing the verification chain (IC-1..IC-10 → CT-08 → SAT-01..SAT-05) with site-specific acceptance criteria, not factory criteria.**

### Commitment (The Turn)

This document commits the Forge to **four non-negotiable deployment chains**:

1. **IC-1..IC-10 re-execution is mandatory** — The 10 integration checkpoints from PROD-27 are not repeated — they are re-evaluated with site-specific criteria (e.g., IC-1 ground resistance <5 Ω vs factory <1 Ω; IC-4 PTP sync <1 μs vs factory <0.5 μs). No feedstock until all 10 PASS with site data packages signed.

2. **Hot commissioning (CT-08) is the thermal proof** — 8-stage thermal ramp with no feedstock, full FBG/SIS/CEMS monitoring. The Forge must demonstrate thermal stability at 2200°C under site utility conditions. CT-08 data package is the *site* birth certificate.

3. **SAT-05 six-batch validation is the performance gate** — Six batches (A, B, C, D, A, Phoenix) with mass balance >99.5%, all outputs spec, twin sync <1 s. This is not a test — it is the Forge proving it can execute its purpose at this site.

4. **SOP-002 batch execution is the operational invariant** — The 4-phase batch procedure (feed prep → cascade → slug pour → reset) is the *only* authorized operating mode. No manual overrides, no recipe deviations without ECO (PROD-38). The operations philosophy is: **the Forge runs the synchronization function at 90-min intervals; operators authorize, automation executes.**

These commitments cascade: PROD-30 PM schedules inherit IC re-verification intervals; PROD-31 OPEX model inherits energy/ton from SAT-05; PROD-32 permitting inherits CEMS/IC-7 data; PROD-34 training inherits SOP-002 as the core competency. The Turn: **deployment is the Forge witnessing its own birth at the site — the same mathematical key (synchronization function) that governed manufacturing now governs commissioning, and the same operator witness gates (bolt ceremony, SIF proof, slug pour) that certified manufacturing now certify operations.**

---
*Williams Heuristic for PROD-29 | ~67 lines | Carrington Storm Motors | November 2026*