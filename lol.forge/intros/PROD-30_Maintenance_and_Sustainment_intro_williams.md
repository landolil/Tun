# Williams Heuristic — PROD-30 Maintenance & Sustainment
## Constraint / Necessity / Commitment

### Constraint (The Lock)

The irreducible principle forcing this maintenance architecture is **the Forge cannot be maintained using conventional methods because every maintenance action must preserve zero-metal Carrington immunity and SIL-3 safety integrity**. A standard maintenance practice — grounding straps for ESD protection, copper test leads for electrical verification, metallic tools in the hot zone, thermocouple replacement — introduces conductive paths that become GIC antennas during a Carrington event. The Lock: **maintenance must itself be dielectric, non-magnetic, and thermally survivable, using only zero-metal tools, procedures, and verification methods.**

### Necessity (The Key)

The empirical gap is the **absence of any maintenance framework for a 2200°C, zero-metal, SIL-3 pressure vessel with embedded photonics operating under Carrington threat**. Conventional RCM (API 581) assumes metallic structures, grounded electrical systems, and thermocouple-based temperature monitoring. CBM assumes sensor data can be trusted — but FBG drift, AE Felicity ratio shifts, and vibration baseline changes require continuous re-calibration against a physics model that itself degrades. The Key: **a hybrid RCM/CBM/TBM strategy where SIL-3 components are TBM-only (no condition-based extension), FBG/AE/vibration provide the CBM layer with Bayesian health fusion (PROD-28 Keymaker Key), and the 18-month drum swap is the hard RCM limit derived from Weibull statistics with NDT flaw control.**

### Commitment (The Turn)

This document commits the Forge to **four non-negotiable maintenance chains**:

1. **18-month drum swap is absolute** — 500 batches = 62.5 days at 8 batches/day. No extension via CBM. The drum IS the pressure boundary; its Weibull life with NDT flaw control (a₀=50 μm) gives N_f >10⁶ cycles, but the Phoenix Protocol demands the drum returns to the Forge for circularity (PROD-22). The swap is the circularity trigger.

2. **SIL-3 SIF proof test annually is immutable** — 24 SIFs, CT-04 protocol, <50 ms trip, 2oo3, PFD_avg<10⁻³. No CBM extension, no risk-based interval extension. This is the safety load-bearing wall.

3. **FBG-as-primary-metrology for maintenance** — No thermocouples, no RTDs, no copper leads. All temperature/strain monitoring for maintenance decisions comes from the 384 FBG channels interrogated at 125 Hz. The Bayesian health state (PROD-28) drives CBM intervals.

4. **QR/Blockchain traceability for every maintenance action** — Every PM work order, CBM alert, NCR, overhaul, and spare part install writes to Hyperledger. The digital twin (PROD-37) ingests this at 10 Hz; the fleet twin optimizes intervals across Forges.

These commitments cascade: PROD-31 OPEX inherits $2.9M/yr consumables + 7-day overhaul downtime; PROD-32 permitting inherits PSM/ASME/IEEE 693 evidence; PROD-34 training inherits competency matrix; PROD-37 twin inherits maintenance data for health model. The Turn: **maintenance is not a support function — it is the continuous re-verification of the Forge's own fabrication fidelity, executed with zero-metal tools, witnessed by light in glass fiber, recorded in blockchain, and synchronized across the fleet.**

---
*Williams Heuristic for PROD-30 | ~67 lines | Carrington Storm Motors | November 2026*