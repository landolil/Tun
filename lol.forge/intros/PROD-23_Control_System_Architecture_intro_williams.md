# Williams Heuristic — PROD-23 Control System Architecture

## Constraint (The Lock)

The Aegis-Forge I control system is forced into its four-level hierarchy by a single irreducible principle: **no conductive path may cross the pressure boundary of a 2200°C, 500 kW induction furnace operating during a Carrington-class geomagnetic storm.**

This constraint cascades into every architectural decision:

- **All-dielectric field layer:** 480+ sensors and 96+ actuators communicate exclusively via PMMA POF (980 μm core, step-index, radiation-hardened). Zero copper wires penetrate the ZrB₂-SiC drum or BFRP vessel. Any metallic conductor becomes an antenna for GIC/EMP — the 5000 nT/s dB/dt of a Carrington event induces >100 A/km in ground conductors. Inside the forge, a single ground loop would couple kilovolts into gate drivers, destroying GaN devices and corrupting safety logic.

- **Floating power architecture:** The 8-zone inverter bank (PROD-10) uses Δ-Y isolation transformers with 5 A high-resistance grounding (NGR). No earth reference exists inside the pressure boundary. The DC bus floats at 800 VDC, monitored by isolated differential probes. This is not a design preference — it is the only topology that survives 50 kV/m E1 HEMP and 100 A/m GIC simultaneously.

- **Optical time synchronization:** IEEE 1588v2 PTP runs over the same PMMA POF that carries FBG data. The grandmaster (GNSS+OCXO) sits outside the Faraday cage (BFRP housing + YInMn glaze, σ = 10⁴ S/m). Sub-microsecond sync across 8 RTUs + 8 PLCs + SIS is achieved without a single conductive timing wire.

- **Air-gapped OT network:** The TSN dual-ring (1 Gbps, IEEE 802.1Qbv) carries SIS, RTU, PLC, and SCADA traffic on separate VLANs with FRER redundancy. A unidirectional data diode (TX-only fiber, RX physically cut) connects to the IT historian. No IP route exists from enterprise to OT. This is not defense in depth — it is the only architecture where a Carrington event cannot bridge IT/OT.

**What breaks if violated:** A single copper wire crossing the boundary → GIC pickup → common-mode voltage > GaN gate threshold (6 V) → synchronous inverter failure → uncontrolled thermal excursion → drum melt-through (ZrB₂-SiC softens >2400°C). The forge becomes a 500 kW arc furnace with no off switch.

---

## Necessity (The Key)

The empirical gap this architecture closes is the **measured divergence between simulation and fabrication in high-power induction at extreme temperature under electromagnetic stress.**

PROD-10 (Induction Power Electronics) and PROD-03 (Inductive Heating Zone Design) establish the theoretical baseline: 8-zone Class E inverters, 100 kHz → 1 kHz frequency ladder, 0–500 kW per zone, ZVS maintained by varactor-tuned resonance. But three fabrication realities demand this control architecture:

1. **FBG sensor drift at temperature:** PROD-11 (FBG Sensor Embedding) characterizes PMMA FBG sensitivity at 0.15 nm/°C up to 800°C, but above 1000°C the polymer matrix degrades. The 384 FBG temperature sensors (48 per zone, 6 per TDM channel × 8 WDM wavelengths) must be interrogated at 125 Hz each with centroid peak detection (±0.5°C accuracy). This requires deterministic 1 kHz acquisition — only achievable with FPGA-accelerated RTUs on TSN. PLC scan times (10 ms) are 100× too slow.

2. **Resonance tracker lock range:** The Class E inverter ZVS window is ±5% of nominal frequency. At 100 kHz (Zones 1–2), that's ±5 kHz. The varactor bias (0–30 V, 1 mV resolution) provides fine tuning; 6-bit switched capacitor banks provide coarse steps. The PLL (Kp = 0.05 V/ns, Ki = 500 V/s) must acquire lock in <50 ms from cold start. This inner loop runs at 100 Hz on the RTU — the FPGA (L0) only executes gate drive and desat protection at 100 kHz. The hierarchy is not arbitrary: it maps exactly to the physical time constants of the power stage.

3. **Safety response latency:** IEC 61508 SIL-3 requires <50 ms for safety instrumented functions. The 24 SIL-3 SIFs (Table 6.2) vote 2oo3 on physically separated sensors. The SIS solver is a TÜV-certified FPGA (dedicated, not shared with BPCS) scanning at <10 μs. This cannot run on the same hardware as the thermal PID — a single-point failure would violate SIL-3 independence. The physical separation of SIS (VLAN 10, TSN slice 0) from BPCS (VLANs 20/30/40) is mandated by the standard, not by preference.

**Measured data demanding this approach:**
- FBG SNR >20 dB at 2200°C (PROD-11 test article, 2026-09)
- PLL acquisition <35 ms (PROD-10 inverter test, 2026-10)
- SIS response 38 ms (CT-04 proof test, 2026-10)
- TSN jitter <8 μs (CT-05 network validation, 2026-10)
- GIC ride-through 100 A/m sustained (CT-07 Helmholtz test, 2026-10)

---

## Commitment (The Turn)

This document makes the following non-negotiable commitments that constrain all downstream documents:

1. **Four-level hierarchy is fixed:** L0 (FPGA, 100 kHz) → L1 (RTU, 1 kHz) → L2 (PLC, 100 Hz) → L3 (SCADA, 10 Hz). No level can be collapsed or bypassed. The time constants are physical (GaN switching, thermal diffusion, cascade dynamics, batch operations).

2. **PMMA POF is the only fieldbus:** 480+ sensors, 96+ actuators, PTP sync, TSN data — all on step-index PMMA POF. No wireless, no copper, no free-space optical. FOLLOW-11 (FBG Embedding) must validate 10-year POF lifetime at 85°C/85% RH + gamma.

3. **24 SIL-3 SIFs are immutable:** The SIF register (Table 6.2) defines the safety envelope. PROD-26 (GIC Immunity), PROD-32 (Compliance), PROD-39 (T&E) must validate every function. No SIF can be downgraded, removed, or reclassified without full re-certification.

3. **TSN schedule is frozen:** 1 ms cycle, 4 time slices (SIS/RTU/PLC/SCADA), guard band 100 μs. FOLLOW-29 (ML Anomaly) must operate within best-effort slices (4–7) — it cannot preempt control traffic.

4. **Air-gap is absolute:** No IP connectivity from IT to OT. Data diode is unidirectional (OT → IT only). PROD-36 (Cyber-Physical Security) and PROD-37 (Digital Twin) must architect around this. The Kafka/gRPC digital twin sync is OT→IT only.

5. **GIC ride-through mode is mandatory:** On grid dV/dt threshold, inverters transition to capacitor-sustained operation in 5 ms, contactors open in 10 ms, LiFePO₄ backup (100 Wh) powers controls indefinitely. PROD-10 (Power Electronics) must size DC link caps for 30 s holdover. PROD-30 (Maintenance) must test quarterly.

6. **Recipe structure is ISA-88 compliant:** XML schema (Section 4.5) defines thermal segments, gas atmosphere, flux injection, port sequence, interlocks. PROD-14 through PROD-21 (Stage documents) must populate this schema. PROD-38 (Config Mgmt) versions it in Git.

7. **Time sync <1 μs is required:** PTP grandmaster (GNSS+OCXO) with 24h holdover. All nodes (RTU, PLC, SIS, FPGA) are boundary clocks. FOLLOW-11 (FBG Embedding) must embed PTP in interrogator FPGA.

These commitments are the **architectural load-bearing walls**. Downstream documents (PROD-24 Thermal Model, PROD-26 GIC, PROD-29 Operations, PROD-37 Digital Twin, FOLLOW-10/11/27/29) build on this foundation. They cannot move the walls.