# Williams Heuristic — PROD-28 Quality Assurance & Testing
## Constraint / Necessity / Commitment

### Constraint (The Lock)

The irreducible principle forcing this QA architecture is **zero-metal construction under SIL-3 Carrington immunity** — a conjunction that eliminates every conventional quality method relying on conductive paths, magnetic particle inspection, eddy current on ferromagnetic substrates, or electrical continuity testing. The Forge operates at 2200°C in a 100 A/m GIC field with 384 FBG channels embedded in ZrB₂-SiC and BFRP; any QA method introducing metal (MQ probes, UT couplant residues, conductive epoxy, grounding straps) creates a GIC antenna that violates PROD-26 dielectric requirements. The Lock: **quality assurance must itself be dielectric, non-magnetic, and thermally survivable to 2200°C.**

### Necessity (The Key)

The empirical gap is the **absence of any precedent for qualifying a zero-metal pressure vessel at 2200°C with embedded photonics**. ASME BPVC Sec VIII/X covers composites to 300°C; ASTM E2700 UT assumes metallic wave speeds; IEC 61508 SIL-3 proof testing assumes electrical trip paths. Our validation data (PROD-24 V&V, PROD-25 FEA, PROD-27 FA) shows: UT phased array on ZrB₂-SiC requires 5 MHz 64-element PA at 45°/60°/70° wedges (longitudinal wave speed 11,200 m/s vs steel 5,900); CT at 200μm voxel resolves FBG position ±100μm but adds 8 hr/drum; AE continuous monitoring on BFRP detects delamination at Felicity ratio <1.0 but requires 8-channel R15α at 100 kHz–1 MHz. The Key: **a multi-method NDT program where each method's physics is re-derived for zero-metal substrates, calibrated against flash-sinter and filament-wind process signatures, not material certificates.**

### Commitment (The Turn)

This document commits the Forge to **three non-negotiable verification chains**:

1. **FBG-as-primary-metrology**: All 384 channels survive flash sinter (PROD-04 PQR-FS-001), filament winding (PROD-06 PQR-FW-001), and 500 thermal cycles (CT-06) with drift <0.5%/1000 hrs. No backup thermocouples — they are metal. FBG interrogation at 125 Hz continuous is the *only* in-process temperature/strain verification.

2. **SIL-3 SIF proof test per CT-04 is the gate**: All 24 SIFs (3 per module × 8 zones) must trip <50 ms on TSN VLAN 10 with 2oo3 agreement. PFD_avg <1×10⁻³. This test runs *before* hot commissioning (CT-08) and *after* any design change (ECO). No SIL-3 SIF = no Forge shipment.

3. **QR + Hyperledger traceability is the quality record**: Every drum, vessel, port valve, coil, module carries a QR code linking to immutable blockchain record (material lot, process params, NDT results, FAT data). Paper travelers are supplementary. The digital twin (PROD-37) ingests this chain at 10 Hz; any gap triggers automatic NCR.

These commitments cascade: PROD-29 commissioning inherits CT-04/CT-06/CT-08 pass data; PROD-30 PM schedules inherit NDT intervals; PROD-31 economics inherits scrap/rework rates from NCR log; PROD-32 permitting inherits audit evidence. The Turn: **quality is not a phase — it is the continuous witnessing of the Forge's own fabrication fidelity, recorded in light through glass fiber, verified by proof test, anchored in blockchain.**

---
*Williams Heuristic for PROD-28 | ~67 lines | Carrington Storm Motors | November 2026*