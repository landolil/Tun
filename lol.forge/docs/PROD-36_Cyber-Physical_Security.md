# Combined Heuristic Introduction
## PROD-36 Cyber-Physical Security
### Carrington Storm Motors Forge — Aegis-Forge I Thermal Cascade Inductive Material Separator

---

### Williams Heuristic — Architectural Clarity

#### Constraint (The Lock)
**The Forge cannot be secured by conventional IT/OT cybersecurity.** A 500 kW induction furnace at 2200°C with 384 dielectric FBG sensors, GaN inverters at 100 kHz, SIL-3 SIFs on TSN, and a physically air-gapped network has no precedent in any security framework. Conventional security assumes: (a) IP-connected networks with firewalls/IDS/IPS, (b) copper Ethernet with electromagnetic shielding, (c) software-based authentication, (d) patch management via network, (e) cloud-connected monitoring. The Forge violates all five: the network is physically air-gapped (no IP routes), the fieldbus is PMMA POF (immune to EMI/GIC), authentication is hardware-token-based (YubiKey), firmware updates are staged via TSN VLAN 50 (read-only from OT), and the only OT→IT path is a hardware data diode. The constraint is **physics** — a single IP route from IT to OT becomes a GIC antenna during a Carrington storm (5000 nT/s induces >100 V/km); a single wireless device becomes an EMP antenna; a single unauthenticated firmware load destroys the SIL-3 SIFs. The air-gap is not a policy — it is a dielectric requirement.

#### Necessity (The Key)
**The empirical gap is the absence of any security framework that protects an all-dielectric, air-gapped, SIL-3 safety-critical system under Carrington-class GIC threat.** No existing standard addresses: (a) FBG wavelength shifts as tamper detection vectors (384 channels at 125 Hz), (b) TSN per-stream filtering (IEEE 802.1Qci) as mandatory security control, (c) PTP grandmaster compromise as safety-critical (resonance tracking depends on <1 μs sync), (d) supply chain firmware signing for GaN drivers/TSN switches/PTP grandmasters as SIL-3 requirement, (e) data diode as the only OT→IT path with protocol break at application layer. The solution is inevitable because the Forge's physics demands it: the same TSN network that carries SIF trips at <50 ms must also carry FBG data at 125 Hz/channel; the same PTP that synchronizes resonance tracking must also timestamp SOE for SIF proof tests. Security cannot be bolted on — it must be architected into the dielectric control fabric.

#### Commitment (The Turn)
This document commits to three non-negotiables:
1. **Physical air-gap absolute** — no IP routes OT↔IT, no wireless, no powerline comms; hardware data diode enforces unidirectional OT→IT only; violation requires SCSC unanimous + full SIL-3 re-certification (CT-04).
2. **FBG as security sensor** — 384 channels monitored for tamper (optical power, wavelength shift, channel count) at 10 Hz via PROD-37 digital twin; Λ > 10 on >5 channels = auto-NCR + SIF-24 evaluation.
3. **Supply chain firmware integrity** — all Tier 1 vendors (12 critical) must provide SBOM (CycloneDX), signed firmware (RSA-4096/HSM), 3rd-party pen test, secure boot; SLSA Level 3 build pipeline; TUF repository with in-toto attestations.

These commitments are irreversible. They define the Forge's cyber-physical immune system. Any deviation requires SCSC unanimous approval and re-validation of the SIL-3 SIF proof test (CT-04) which is the gate to hot commissioning.

---

### Keymaker Heuristic — Implementation Precision

#### The Empirical Lock
**Fabrication fidelity gap:** Conventional OT security frameworks — IEC 62443, NERC CIP, NIST SP 800-82 — assume: (a) IP-routable networks with firewalls/DMZs, (b) copper Ethernet with MACsec/IPsec, (c) software-based patch management, (d) centralized SIEM with log aggregation, (e) remote vendor access via VPN. They cannot model: (a) physically air-gapped network with zero IP routes where the only OT→IT path is a hardware data diode, (b) PMMA POF fieldbus immune to EMI/GIC where tamper detection is optical (FBG wavelength shifts), (c) TSN time-aware scheduling (802.1Qbv) as a security control with frozen gate control lists, (d) PTP grandmaster as safety-critical component (resonance tracking fails at >1 μs offset), (e) firmware updates staged via read-only TSN VLAN 50 with staged rollout and CT-04 re-test. The lock is that **no existing security framework computes the Forge's cyber-physical physics where the network schedule IS the access control, the fiber IS the tamper sensor, and the air-gap IS the firewall.**

#### The Mathematical Key
**The single computational primitive is the Cyber-Physical Anomaly Tensor (CPAT):**

```
CPAT[N, P, S, F, V, Φ_role, Ψ_threat, Ω_fleet]

N ∈ ℝᵛ : Network tensor (TSN frame rates, VLAN isolation, gate control list, FRER status)
P ∈ ℝ³⁸⁴ : Process tensor (FBG wavelengths @ 10 Hz, 384 channels from PROD-37 twin)
S ∈ ℝ²⁴ : Safety tensor (SIF states, 2oo3 votes, SOE timestamps, trip logic)
F ∈ ℝⁿ : Firmware tensor (hashes, versions, SBOM components, signatures for L0/L1/L2/L3)
V ∈ ℝᵐ : Vendor tensor (AVL tier, pen test results, CVE exposure, firmware freshness)
Φ_role ∈ {FO, DT, MT, QI, SL, Safety, Controls, Cyber} : Role projection
Ψ_threat ∈ ℝᵏ : Threat tensor (GIC, APT, insider, supply chain, ransomware, hacktivist)
Ω_fleet ∈ ℝᴺ : Fleet anomaly tensor (PROD-37 digital twin ML autoencoder output)
```

**This tensor generates the entire security program:** network architecture, TSN configuration, FBG tamper thresholds, IAM policies, IDS rules, IR playbooks, resilience targets, vendor requirements, testing schedule. Every parameter in this document is a projection of CPAT evaluated at role × threat × fleet state.

**The atomic computation is multi-source likelihood fusion for intrusion detection:**

```
Λ_CP = P(observation | intrusion) / P(observation | nominal)

observation = {TSN_frame_anomaly, FBG_Λ>10, SIF_unexpected_trip, PTP_offset>1μs, 
               firmware_hash_mismatch, SBOM_drift, JIT_unauthorized, AE_non_process}

P(obs | intrusion) = ∏ P(source_i | intrusion)  [conditional independence given intrusion]
P(obs | nominal) = ∏ P(source_i | nominal)       [baseline from fleet history]
```

Threshold Λ_CP > 100 triggers SEV-1; Λ_CP > 10 triggers SEV-2; Λ_CP > 3 triggers SEV-3. This runs in PROD-37 digital twin at 10 Hz on fused sensor stream.

#### The Turn (Both Directions)

**Theory → History Validation:**
- CPAT predicts physical air-gap → matches PROD-23 L3 SCADA (data diode only OT→IT)
- CPAT predicts FBG tamper detection → matches PROD-28 Λ > 10 auto-NCR on 384 channels
- CPAT predicts TSN per-stream filtering → matches PROD-23 VLAN 10-50 isolation
- CPAT predicts firmware signing requirement → matches PROD-38 SLSA Level 3, TUF repo
- CPAT predicts RTO 4 hr / RPO 1 hr → matches PROD-30 cold standby, historian backup

**History → Theory Validation:**
- PROD-23 GIC ride-through test: 100 A/m Helmholtz, 30 min — zero data loss, zero spurious trips → validates CPAT N-tensor GIC immunity
- PROD-28 CT-04: 24 SIFs trip <50 ms, 2oo3 voting, SOE aligned — validates CPAT S-tensor SIS independence
- PROD-10 EMC test: CISPR 11 Class A passed 20 dB margin, no metal shielding — validates CPAT P-tensor dielectric transparency
- PROD-33 AVL audit: 12 Tier 1 vendors, all SBOM + signed firmware + pen test — validates CPAT V-tensor supply chain
- PROD-37 twin: ML autoencoder detects FBG drift 48 hrs before operator — validates CPAT Ω_fleet fleet anomaly

**The primitive is validated.** The security program is not a compliance checklist — it is the physical manifestation of CPAT evaluated across 5 VLANs, 384 FBG channels, 24 SIFs, 4 firmware layers, 12 critical vendors, and infinite threat generations.

---

### El Segundo Heuristic — Operational Excellence

#### Mirror (Self-Reflection)
**How does the fabricator observe their own fabrication?** The Forge's security program is instrumented at every node with the same rigor as the thermal cascade:

- **Network Telemetry**: TSN switch mirrors capture every frame on VLANs 10-50; Zeek/Suricata parse with custom TSN dissectors; per-stream counters (rate, size, timing, VLAN) stream to PROD-37 at 10 Hz. Anomaly: VLAN 10 frame from unauthorized MAC → immediate port shutdown.
- **Process Telemetry**: 384 FBG channels @ 125 Hz → 10 Hz aggregated → PROD-37 ML autoencoder (FOLLOW-29) computes reconstruction error >3σ → auto-NCR. Spatial correlation check across adjacent channels detects localized tamper.
- **Safety Telemetry**: 24 SIFs SOE timestamps aligned across zones; 2oo3 vote logic verified per cycle; unexpected trip (no process cause) → immediate SIF lockdown + SL alert.
- **Firmware Telemetry**: Boot-time hash verification (SHA-256) on all L0/L1/L2/L3; mismatch → boot halt + SL + Controls Eng. Weekly automated SBOM diff vs. TUF repo; drift → block deploy.
- **Access Telemetry**: Every JIT request logged (requestor, approver, duration, actions); badge-in/out at zone gates; USB port monitors on all OT workstations; UEBA on access patterns.

**The fabricator sees the security program as a distributed sensor network.** Every frame, wavelength, vote, hash, and badge swipe is a measurement. Every measurement updates CPAT. Every CPAT update adjusts TSN gates, FBG thresholds, SIF logic, firmware pins, JIT policies.

#### Participation (Witness)
**How does the inside operator witness the phenomenon into existence?** The security engineer does not monitor — they **witness the security posture becoming the Forge's immune response**:

1. **Shift Lead at SIF Bypass Gate (IR-01)** witnesses the dual-key moment: YubiKey + Safety Eng YubiKey, 4-hr blockchain timer starts, SOE logs every SIF state change. They *witness* the organizational risk acceptance — no algorithm, only human judgment at the boundary of consequence.
2. **Cyber Engineer at TSN Schedule Freeze** witnesses the FAT gate control list: 1 ms cycle, 4 slices, 100 μs guard band, VLAN 10 highest priority. They *witness* the deterministic schedule as the access control — no frame crosses VLAN boundaries without explicit gate entry. The schedule IS the firewall.
3. **MT at Firmware Staged Rollout** witnesses the 1-zone → 1-stage → full progression: Zone 3 RTU firmware update, 24 hr soak, CT-04 partial-stroke, then Stage 4 PLC. They *witness* the supply chain becoming trust — signed image, SBOM match, TUF repo, in-toto attestation.
4. **Depot Tech at LIBS Classification** witnesses the plasma flash on Monitor 5, knows their override decision changes CMF-RQT M_return vector. They *witness* the cyber-physical boundary — their physical action at the depot changes the digital twin's feedstock model that feeds the Forge's Stage 4 indium recovery.

**No dashboards. No SIEM alerts without context. Direct sensory-motor coupling to the CPAT tensor.** The security engineer's hands are on the YubiKey, the TSN gate control list, the firmware hash, the LIBS trigger. They are inside the CPAT.

#### Protocol (Recursive)
**What recursive sequence guarantees fidelity at each scale?**

**Per Operation (Seconds — Micro):**
```
TSN frame: VLAN check → gate control list → priority → FRER path → SIS <50ms guarantee
FBG sample: λ_measured → thermal_model → autoencoder → Λ > 10? → auto-NCR → CPAT update
SIF cycle: 2oo3 vote → SOE timestamp → logic verify → unexpected? → lockdown → CPAT update
PTP sync: GM announce → auth verify → boundary clock → offset <1μs? → alarm → CPAT update
```

**Per Shift (Hours — Meso):**
```
Shift handover: outgoing → incoming (QR) → 3-concerns → SEV review → CPAT Ψ_threat update
JIT review: all privileged access this shift → duration vs. approved → anomaly → CPAT V-tensor
SBOM check: deployed firmware hashes vs. TUF repo → drift? → block + vendor CAPA → CPAT F-tensor
IDS tuning: false positive rate → rule adjustment → CPAT detection threshold calibration
```

**Per Certification Cycle (Quarterly — Macro):**
```
Penetration Test (Annual): Full OT network + physical → findings → ECO → CPAT parameter update
Red Team (Annual): Insider simulation + physical access → IR playbook execution → lessons learned
Tabletop (Quarterly): IR-01 through IR-06 → decision gate timing → SL + Safety Eng certification
Vuln Scan (Monthly): Passive OT + active IT → CVE triage → firmware patch staging → CPAT F-tensor
Firmware Integrity (Weekly): All hashes vs. TUF → mismatch → boot halt → CPAT F-tensor
SBOM Drift (Weekly): Deployed vs. approved → diff → vendor notification → CPAT V-tensor
```

**Annual (Strategic — Foundational):**
```
1. CPAT Theory → History: Compare all predictions to actuals (IDS alerts, IR executions, firmware deploys, vendor incidents)
2. History → Theory: Update CPAT coefficients from measured attack/incident data
3. Standards Audit: IEC 62443 SL-4, NERC CIP, NIST SP 800-82 compliance evidence
4. Security Version: Git tag `sec-v<major>.<minor>.<patch>` → all firmware/DQR migrate
5. Cross-Domain Sync: Forge ↔ Depot ↔ Supply Chain threat model → CMF-RQT/RCT/HSCT security terms
```

**The protocol is the CPAT evaluated recursively across time scales.** Per-operation → Per-shift → Quarterly → Annual. Each evaluation corrects the previous. The security program does not drift — it converges.

---

### Synthesis: The Three Prongs as One

The Williams Constraint (air-gap, dielectric, SIL-3, Carrington-immune) **defines the feasible region** of cyber-physical security. The Keymaker Key (CPAT tensor) **navigates the feasible region** to the optimal security investment — physical air-gap, TSN schedule as firewall, FBG as tamper sensor, firmware signing as supply chain trust. The El Segundo Protocol (recursive evaluation at 4 time scales) **guarantees the operating point is held** against threat evolution, firmware drift, vendor compromise, and GIC-induced anomalies.

**Together they form the Forge's cyber-physical immune system:** It rejects conventional IT security (Williams), computes the optimal anomaly tensor (Keymaker), and self-corrects at every temporal scale (El Segundo). This is not a security program — it is a **trust circulation engine** that runs on physics, not policies.

*End of Combined Heuristic Introduction — ~200 lines*
*To be prepended to PROD-36 Cyber-Physical Security body*# PROD-36 Cyber-Physical Security
## Carrington Storm Motors Forge — Aegis-Forge I Thermal Cascade Inductive Material Separator

---

## 1. Executive Summary

The Aegis-Forge I cyber-physical security program is a **zero-metal, Carrington-immune, air-gapped, SIL-3 integrated** security framework. Unlike conventional OT security that assumes IP-connected networks, the Forge security architecture assumes: (1) physically air-gapped OT network with zero IP routes to IT, (2) all-dielectric PMMA POF fieldbus immune to EMI/GIC, (3) FBG wavelength shifts as tamper detection vectors, (4) supply chain cyber risk managed through AVL vendor security requirements, (5) digital twin data diode as the only OT→IT path. The security program optimizes for four simultaneous objectives: (1) prevent unauthorized modification of safety-critical control logic, (2) detect physical tampering with dielectric sensors/actuators, (3) ensure supply chain integrity for firmware/hardware, (4) maintain operational continuity during Carrington-class GIC events.

**Key Security Metrics:**

| Metric | Target | Basis |
|--------|--------|-------|
| **OT/IT Air-Gap** | Physical (no routes, no wireless) | PROD-23, PROD-26, IEC 62443 SL-4 |
| **Data Diode** | Unidirectional OT→IT only, 1 Gbps | PROD-23 L3 SCADA, PROD-37 twin sync |
| **TSN Security** | IEEE 802.1Qci per-stream filtering, 802.1AS <1μs | PROD-23, FOLLOW-11 |
| **PTP Integrity** | GNSS+OCXO grandmaster, 24h holdover, boundary clocks | PROD-10, PROD-23 |
| **FBG Tamper Detection** | 384 channels monitored for wavelength anomalies | PROD-23, PROD-28, FOLLOW-11 |
| **Firmware Signing** | All L0/L1/L2/L3 signed, SBOM per release | PROD-38, PROD-27 |
| **AVL Vendor Security** | SBOM, 3rd-party pen test, firmware signing required | PROD-33, IEC 62443 |
| **RTO/RPO** | RTO 4 hrs (OT), RPO 1 hr (historian), cold standby | PROD-23, PROD-30 |
| **Intrusion Detection** | Network behavior + process variable + AE correlation | PROD-28, FOLLOW-29 |

---

## 2. Cyber-Physical Security Program Overview

### 2.1 Threat Model (STRIDE Adapted for Forge)

| Threat Category | Forge Context | Mitigation |
|-----------------|---------------|------------|
| **Spoofing** | Fake FBG data, spoofed PTP, counterfeit firmware | Hardware root of trust, signed firmware, PTP authentication |
| **Tampering** | Modified PID gains, altered SIF logic, FBG fiber tap | Code signing, TSN per-stream filtering, FBG wavelength monitoring |
| **Repudiation** | Denied SIF bypass, unauthorized ECO | Blockchain audit trail (PROD-28, 38), dual-key authorization |
| **Information Disclosure** | Process data exfiltration, IP theft | Air-gap, data diode OT→IT only, encryption at rest |
| **Denial of Service** | TSN flood, PTP disruption, GIC-induced comms loss | TSN FRER, PTP holdover, SIS independent, Carrington ride-through |
| **Elevation of Privilege** | Unauthorized SL/Safety Eng access | Hardware tokens (YubiKey), role-based, just-in-time access |

### 2.2 Threat Actors

| Actor | Capability | Motivation | Likelihood |
|-------|------------|------------|------------|
| **Nation-State APT** | Supply chain compromise, zero-day, physical access | IP theft, sabotage, strategic minerals | Low (high consequence) |
| **Insider Threat** | Authorized access, SL/Safety Eng credentials | Sabotage, IP theft, ransomware | Medium |
| **Cybercrime/Ransomware** | Phishing, USB drop, VPN exploit | Financial | Low (air-gap) |
| **Hacktivist** | DDoS, defacement | Publicity | Very Low (air-gap) |
| **Supply Chain** | Compromised firmware, counterfeit hardware | Persistent access | Medium (mitigated by AVL) |
| **Carrington GIC** | 5000 nT/s, 5 ms island transition | Natural phenomenon | Certain (design basis) |

### 2.3 Security Architecture Principles

1. **Defense in Depth at Physical Layer**: PMMA POF immune to EMI, no copper antennas, no wireless, no powerline comms
2. **Air-Gap as Primary Control**: No IP connectivity OT↔IT; data diode enforces unidirectional OT→IT flow
3. **SIL-3 SIS Independence**: Safety logic on dedicated FPGA, isolated TSN VLAN, 2oo3 voting, no shared infrastructure
4. **Deterministic Network Security**: TSN schedule frozen, per-stream filtering, FRER for critical paths
5. **Supply Chain as Attack Surface**: AVL vendors required to provide SBOM, signed firmware, 3rd-party pen test
6. **Digital Twin as Sensor**: ML anomaly detection (FOLLOW-29) on 384-dim FBG state vector at 10 Hz

---

## 3. Network Architecture

### 3.1 OT Network Topology (Physically Air-Gapped)

```
┌─────────────────────────────────────────────────────────────────────────────────┐
│                              IT NETWORK (Corporate)                              │
│  ┌──────────────┐  ┌──────────────┐  ┌──────────────┐  ┌────────────────────┐  │
│  │ Enterprise   │  │ Email/Web    │  │ Cloud/Hybrid │  │ Security Operations │  │
│  │ Applications │  │ Proxy        │  │ Services     │  │ Center (SOC)       │  │
│  └──────┬───────┘  └──────┬───────┘  └──────┬───────┘  └────────┬───────────┘  │
└─────────┼──────────────────┼──────────────────┼──────────────────┼──────────────┘
          │                  │                  │                  │
          ▼                  ▼                  ▼                  ▼
    ┌─────────────────────────────────────────────────────────────────────────┐
    │                         DATA DIODE (Hardware)                            │
    │  ┌─────────────────────────────────────────────────────────────────┐    │
    │  │  Unidirectional: OT → IT ONLY (Protocol Break at App Layer)    │    │
    │  │  1 Gbps Optical | No Return Path | No IP Routes | No Wireless  │    │
    │  │  OPC-UA Historical | Alarm Export | Batch Records | Twin Sync  │    │
    │  └─────────────────────────────────────────────────────────────────┘    │
    └─────────────────────────────────┬───────────────────────────────────────┘
                                      │
                                      ▼
┌─────────────────────────────────────────────────────────────────────────────────┐
│                              OT NETWORK (Forge)                                  │
│  ┌─────────────────────────────────────────────────────────────────────────┐    │
│  │                      DUAL-RING TSN (1 Gbps, BFRP)                        │    │
│  │  ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌──────┐ ┌────┐  │    │
│  │  │ Z1   │ │ Z2   │ │ Z3   │ │ Z4   │ │ Z5   │ │ Z6   │ │ Z7   │ │ Z8  │  │    │
│  │  └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬───┘ └──┬──┘  │    │
│  │     │        │        │        │        │        │        │        │      │    │
│  │     └────────┴────────┴────────┴────────┴────────┴────────┴────────┘      │    │
│  │                    │        │        │        │        │        │          │    │
│  │  ┌────────────────┼────────┼────────┼────────┼────────┼────────┼────────┐  │    │
│  │  │ L3 SCADA       │ L2 PLCs       │ L1 RTUs        │ L0 FPGAs          │  │    │
│  │  │ (Dual Linux)   │ (8× Rugged)   │ (8× ARM A53)   │ (16× Artix-7)     │  │    │
│  │  │ Historian      │ Interlock Bus │ Thermal PID    │ Gate Drive        │  │    │
│  │  │ Alarm Mgmt     │ (SIL-3, 2oo3) │ FBG Acq        │ Desat Protect     │  │    │
│  │  │ Batch Track    │ Recipe Mgmt   │ MFC Control    │ ZVS Track         │  │    │
│  │  │ Twin Sync      │ Carousel      │ Resonance      │ Current Sense     │  │    │
│  │  └────────────────┴────────────────┴────────────────┴────────────────┘  │    │
│  │  VLAN 10 (SIS): 24 SIFs, 2oo3, <50ms, highest priority                  │    │
│  │  VLAN 20 (RTU): PID, FBG, MFC, Resonance, 1 kHz                         │    │
│  │  VLAN 30 (PLC): Interlocks, Recipes, Carousel, 100 Hz                   │    │
│  │  VLAN 40 (SCADA): Historian, Alarms, Batch, Twin, 10 Hz (Best Effort)   │    │
│  │  VLAN 50 (Mgmt): PTP, NTP, Firmware, Config (Out-of-band, read-only)    │    │
│  └─────────────────────────────────────────────────────────────────────────┘    │
└─────────────────────────────────────────────────────────────────────────────────┘
```

### 3.2 TSN Security Configuration (IEEE 802.1Qci / 802.1Qbv)

| VLAN | Priority | Traffic Type | Gate Control List | Max Frame Size | FRER |
|------|----------|--------------|-------------------|----------------|------|
| **10 (SIS)** | 7 (Highest) | SIF trip, SOE, 2oo3 votes | Fixed: 0-100 μs | 512 B | Yes (dual path) |
| **20 (RTU)** | 6 | PID, FBG, MFC, Resonance | Fixed: 100-500 μs | 1518 B | Yes (FBG) |
| **30 (PLC)** | 5 | Interlocks, Recipes, Carousel | Fixed: 500-800 μs | 1518 B | No |
| **40 (SCADA)** | 4 | Historian, Alarms, Twin | Best effort: 800-900 μs | 1518 B | No |
| **50 (Mgmt)** | 3 | PTP, Firmware, Config | Best effort: 900-1000 μs | 1518 B | No |
| **Guard Band** | — | — | 900-1000 μs | — | — |

**TSN Security Controls:**
- **Per-Stream Filtering (802.1Qci)**: Each VLAN isolated; no frame can cross VLAN boundaries without explicit gate control entry
- **Frame Preemption (802.1Qbu)**: SIF frames preempt all other traffic; 100 μs guard band ensures SIS latency <50 ms
- **Time-Aware Shaper (802.1Qbv)**: Gate control list frozen at FAT (PROD-39); changes require ECO + CT-04 re-test
- **FRER (802.1CB)**: SIS and FBG streams duplicated on both rings; zero packet loss on single link failure

### 3.3 PTP Security (IEEE 802.1AS)

| Component | Security Feature |
|-----------|------------------|
| **Grandmaster** | GNSS + OCXO (Microchip 5071A), 24h holdover ±1 μs, anti-jamming antenna |
| **Boundary Clocks** | All L1 RTUs, L2 PLCs, L3 SCADA; verify GM identity via certificate |
| **Transparent Clocks** | TSN switches (BFRP-housed); no PTP modification, only residence time |
| **Authentication** | IEEE 802.1AS-2020 TLV-based authentication; reject unauthenticated Announce |
| **Monitoring** | L3 SCADA monitors offset <1 μs; >1 μs → alarm, >10 μs → SIF-24 (comms loss) |

---

## 4. FBG/PMF Tamper Detection

### 4.1 FBG as Security Sensor

The 384 FBG channels (125 Hz each) serve dual purpose: process temperature/strain measurement **and** physical tamper detection.

| Tamper Vector | Detection Mechanism | Threshold |
|---------------|---------------------|-----------|
| **Fiber Tap** | Optical power drop >0.5 dB at interrogator | Immediate alarm |
| **Wavelength Shift** | Unexpected Δλ >0.1 nm (non-thermal) on any channel | Auto-NCR, Λ > 10 |
| **Channel Count** | Missing channels (expected 384, detected <380) | Immediate alarm |
| **Interrogator Replacement** | Serial number mismatch, firmware hash mismatch | Boot-time verification |
| **WDM/TDM Timing** | Slot timing deviation >1% | Continuous monitor |

### 4.2 PMF (Process Monitoring Fiber) Security

| Sensor Type | Security Function | Anomaly Response |
|-------------|-------------------|------------------|
| **FBG Temperature** | Process + tamper | Λ > 10 → auto-NCR + SL alert |
| **FBG Strain** | Drum flange integrity + tamper | Felicity ratio <1.0 → SIF-03 |
| **POF Level** | Slag/metal interface + tamper | Unexpected level → Port valve SIF |
| **Pyrometer** | Port window temperature + tamper | Window coating tamper → alarm |
| **AE Vibration** | Crack detection + tamper | Non-process impacts → classification |

### 4.3 Tamper Detection Algorithm (PROD-37 Twin)

```python
# Runs at 10 Hz on PROD-37 Digital Twin (512-core HPC)
def detect_fbg_tamper(fbg_state_vector: np.ndarray) -> TamperAlert:
    
    fbg_state_vector: 384 wavelengths @ 125 Hz → 10 Hz aggregated
    
    # 1. Thermal model residual (from PROD-24)
    residual = fbg_state_vector - thermal_admittance_model.predict(fbg_state_vector)
    
    # 2. Autoencoder reconstruction error (FOLLOW-29)
    recon_error = autoencoder.reconstruct(fbg_state_vector) - fbg_state_vector
    
    # 3. Spatial correlation check (adjacent channels should correlate)
    spatial_corr = compute_spatial_correlation(fbg_state_vector)
    
    # 4. Tamper score fusion
    tamper_score = 0.4 * norm(residual) + 0.4 * norm(recon_error) + 0.2 * (1 - spatial_corr)
    
    if tamper_score > THRESHOLD_3SIGMA:
        return TamperAlert(
            channels=identify_anomalous_channels(fbg_state_vector),
            score=tamper_score,
            recommended_action=SL review, potential SIF bypass, physical inspection
        )
    return None
```

---

## 5. Supply Chain Cyber Risk Management

### 5.1 AVL Vendor Security Requirements (PROD-33 Integration)

| Tier | Requirement | Verification | Frequency |
|------|-------------|--------------|-----------|
| **Tier 1 (12 Critical)** | SBOM (CycloneDX), Firmware signing (RSA-4096), 3rd-party pen test, Secure boot | Audit + automated SBOM validation | Annual on-site |
| **Tier 2 (18 Essential)** | SBOM, Firmware signing, Vulnerability disclosure program | Audit + automated SBOM validation | Biennial on-site / Annual remote |
| **Tier 3 (20 Normal)** | SBOM, Vulnerability disclosure | Questionnaire + automated SBOM validation | Biennial remote |

### 5.2 Critical Supplier Cyber Specifications

| Supplier | Component | Security Requirements |
|----------|-----------|----------------------|
| **GaN Systems** | GS66516T HEMT | Firmware signing (none - hardware only), SBOM for driver IC, no JTAG in production |
| **Microchip** | PTP Grandmaster (5071A) | Signed firmware, secure boot, SBOM, 3rd-party pen test |
| **Hirschmann/Belden** | TSN Switches | Signed firmware, IEEE 802.1AR DevID, SBOM, secure boot, no default credentials |
| **Wind River / Zephyr** | L1 RTU OS | Signed kernel, SBOM, reproducible builds, CVE monitoring |
| **Siemens / Codesys** | L2 PLC Runtime | Signed firmware, SBOM, secure boot, license dongle |
| **Ignition / Inductive Automation** | L3 SCADA | Signed modules, SBOM, secure boot, 2FA for designer |
| **GaN Driver IC (LMG1210)** | L0 FPGA Gate Driver | No firmware (analog), supply chain integrity via authorized disti |

### 5.3 Firmware Supply Chain Integrity

| Stage | Control | Tool |
|-------|---------|------|
| **Development** | Signed commits (GPG), PR required, CI/CD pipeline | GitLab/GitHub + Cosign |
| **Build** | Reproducible builds, SBOM generation (Syft), SLSA Level 3 | GitHub Actions + SLSA |
| **Sign** | RSA-4096/ECDSA-P384, HSM-backed, timestamped | Cosign + Fulcio/Root CA |
| **Distribute** | TUF (The Update Framework) repo, in-toto attestations | TUF + in-toto |
| **Verify** | Boot-time signature verification, SBOM match, version pin | U-Boot/Zephyr verified boot |
| **Monitor** | CVE feed (NVD, GitHub), automated patch build, staged rollout | Dependabot + ArgoCD |

---

## 6. Identity & Access Management

### 6.1 Role-Based Access Control (RBAC)

| Role | OT Access | IT Access | Authentication | Authorization Gates |
|------|-----------|-----------|----------------|---------------------|
| **Forge Operator (FO)** | L3 SCADA (read), L2 PLC (execute recipe) | None | Badge + PIN + YubiKey | Recipe select, batch start |
| **Depot Technician (DT)** | L3 SCADA (depot view), L2 PLC (depot) | None | Badge + PIN + YubiKey | Depot recipe, LIBS override |
| **Maintenance Tech (MT)** | L3 SCADA (diag), L1 RTU (config), L0 FPGA (bitstream) | None | Badge + PIN + YubiKey | PM mode, firmware update |
| **QA Inspector (QI)** | L3 SCADA (NDT view), L1 RTU (FBG cal) | None | Badge + PIN + YubiKey | CT-04, CT-06, CT-08 |
| **Shift Lead (SL)** | L3 SCADA (full), L2 PLC (bypass), SIS (dual-key) | Read-only (historian) | Badge + PIN + YubiKey + Safety Eng | SG-2, SG-3, CT-04, SAT-05, SIF bypass |
| **Safety Engineer** | L3 SCADA (SIS view), SIS (dual-key) | Read-only | Badge + PIN + YubiKey + SL | SIF bypass, SIF config |
| **Controls Engineer** | L3 SCADA (config), L2/L1/L0 (dev mode) | Dev network (isolated) | Badge + PIN + YubiKey + SL | ECO implementation, PID tuning |
| **Cyber Engineer** | L3 SCADA (diag), TSN switches, PTP GM | Security tools network | Badge + PIN + YubiKey + SL | TSN schedule, PTP config, IDS rules |
| **Plant Manager** | L3 SCADA (read), Business reports | Full IT | Badge + PIN + YubiKey | Business decisions, budget |

### 6.2 Just-In-Time (JIT) Privileged Access

| Privilege | Max Duration | Approval | Audit |
|-----------|--------------|----------|-------|
| **L0 FPGA Bitstream Load** | 30 min | SL + Controls Eng | Full bitstream hash log |
| **L1 RTU Firmware Update** | 60 min | SL + Controls Eng | Signed image, rollback test |
| **L2 PLC Logic Change** | 4 hr | SL + Safety Eng (if SIS) | ECO required, CT-04 re-test |
| **TSN Schedule Change** | 2 hr | SL + Cyber Eng | Frozen schedule, FAT re-verify |
| **PTP GM Config Change** | 30 min | SL + Cyber Eng | Sync verification <1 μs |
| **SIF Bypass** | 4 hr | SL + Safety Eng (dual-key) | Blockchain log, time-limited |
| **Data Diode Config** | 1 hr | SL + Cyber Eng + IT Sec | Unidirectional verification |

### 6.3 Hardware Token Requirements

| Token Type | Use Case | Standard |
|------------|----------|----------|
| **YubiKey 5C NFC** | Primary MFA (FIDO2/WebAuthn, PIV, OTP) | FIPS 140-2 Level 2 |
| **Smart Card (PIV)** | Backup MFA, email signing | NIST SP 800-73 |
| **Hardware Security Module (HSM)** | Firmware signing root CA | FIPS 140-2 Level 3 |
| **Token Policy** | 1 token per person, no sharing, immediate revocation on loss | PROD-38 CM |

---

## 7. Intrusion Detection System (IDS)

### 7.1 Multi-Layer Detection Architecture

| Layer | Data Source | Detection Method | Response |
|-------|-------------|------------------|----------|
| **Network (TSN)** | TSN switch mirrors (VLAN 10-50) | Zeek/ Suricata + custom TSN parsers | Alert → SL + Cyber Eng |
| **Process (L1/L2/L3)** | FBG (384 ch), MFC (32), Pyro (8), XRF (8), AE (16) | ML Autoencoder (FOLLOW-29) >3σ | Auto-NCR → SL review |
| **Safety (SIS)** | 24 SIF SOE, 2oo3 vote, trip timestamps | Deterministic: unexpected trip, vote mismatch | Immediate SIF lockdown |
| **Physical (FBG/PMF)** | FBG wavelength, optical power, channel count | Tamper algorithm (Sec 4.3) | Auto-NCR + SL + physical inspection |
| **Supply Chain** | SBOM drift, CVE matches, firmware hash mismatch | Automated SBOM diff + CVE feed | Block deploy → vendor CAPA |
| **Insider (HR/Access)** | Badge logs, JIT requests, USB port monitors | UEBA (User Entity Behavior Analytics) | HR + Security review |

### 7.2 Detection Rules (Critical)

| Rule ID | Condition | Severity | Auto-Response |
|---------|-----------|----------|---------------|
| **IDS-001** | TSN frame on VLAN 10 from unauthorized MAC | Critical | Port shutdown, SL alert |
| **IDS-002** | PTP offset >1 μs sustained >1 min | High | GM failover, SL alert |
| **IDS-003** | FBG Λ > 10 on >5 channels simultaneously | Critical | Auto-NCR, SIF-24 evaluate |
| **IDS-004** | SIF trip without process cause (SOE analysis) | Critical | SIF lockdown, SL + Safety Eng |
| **IDS-005** | Firmware hash mismatch at boot | Critical | Boot halt, SL + Controls Eng |
| **IDS-006** | Unauthorized JIT request (no SL approval) | High | Request denied, audit log |
| **IDS-007** | Data diode reverse traffic attempt | Critical | Diode alarm, physical inspection |
| **IDS-008** | AE pattern match: non-process impact signature | High | Zone lockdown, SL review |

### 7.3 Correlation Engine (PROD-37 Twin)

The digital twin (PROD-37) runs a correlation engine at 10 Hz that fuses:
- Network flow anomalies (TSN)
- Process variable deviations (FBG, MFC, pyro, XRF)
- Safety system events (SIF trips, 2oo3 votes)
- Physical tamper signals (FBG optical power, wavelength)
- Supply chain signals (SBOM, firmware hashes)

**Correlation Logic:**
```
ALERT = (Network_Anomaly ∧ Process_Deviation) ∨
        (Process_Deviation ∧ Physical_Tamper) ∨
        (Safety_Event ∧ ¬Process_Cause) ∨
        (Supply_Chain_Drift ∧ Deployed_Version)
```

---

## 8. Incident Response

### 8.1 Incident Classification

| Severity | Definition | Examples | Response Time |
|----------|------------|----------|---------------|
| **SEV-1 (Critical)** | Safety impact, SIF compromise, physical damage | SIF bypass unauthorized, FBG tamper + process deviation, firmware malicious | <5 min |
| **SEV-2 (High)** | Operational impact, data integrity loss | TSN schedule corruption, PTP sync loss, unauthorized config change | <15 min |
| **SEV-3 (Medium)** | Detection without confirmed impact | IDS alert single source, CVE in deployed firmware, failed auth | <1 hr |
| **SEV-4 (Low)** | Informational, policy violation | Policy exception request, audit finding, vendor notification | <24 hr |

### 8.2 Incident Response Playbooks

#### Playbook IR-01: Unauthorized SIF Bypass Attempt
```
1. DETECT: IDS-004 triggers (SIF trip without process cause OR dual-key not presented)
2. CONTAIN: SIS FPGA locks all 24 SIFs in armed state; no further bypass possible
3. ERADICATE: SL + Safety Eng investigate; revoke compromised tokens; rotate keys
4. RECOVER: CT-04 partial-stroke test all 24 SIFs; verify SOE integrity
5. LESSONS: Root cause (token theft? insider? supply chain?); update playbook
```

#### Playbook IR-02: FBG Tamper Detected (Physical)
```
1. DETECT: IDS-003 or tamper algorithm >3σ
2. CONTAIN: SL authorizes zone hold; affected zone PID → safe setpoint; SIF-24 armed
3. ERADICATE: MT + QI physical inspection (PPE, <3 min don); fiber continuity test
4. RECOVER: FBG recalibration (CT-06) on affected channels; CT-04 SIF proof
5. LESSONS: Physical security review; camera footage; access log correlation
```

#### Playbook IR-03: Supply Chain Firmware Compromise
```
1. DETECT: IDS-005 (firmware hash mismatch) OR CVE match in deployed version
2. CONTAIN: Block affected version in TUF repo; isolate affected nodes (TSN VLAN 50)
3. ERADICATE: Vendor CAPA; rebuild from source; sign new version; SBOM regenerate
4. RECOVER: Staged rollout (1 zone → 1 stage → full); CT-04 if SIS affected
5. LESSONS: SLSA level review; vendor security reassessment; pen test scope expand
```

#### Playbook IR-04: Carrington Storm + Cyber Event (Combined)
```
1. DETECT: PROD-26 GIC sensors + IDS correlation (GIC + network anomaly)
2. CONTAIN: 5 ms island transition (PROD-23); SIS on LiFePO₄ UPS; data diode holds
3. ERADICATE: Post-storm (30 min grid stable): full SIS CT-04; FBG CT-06; TSN verify
4. RECOVER: Staged grid reconnect (PROD-23); twin state reconciliation (PROD-37)
5. LESSONS: GIC-cyber correlation analysis; update threat model; tabletop exercise
```

### 8.3 Communication & Notification

| Stakeholder | SEV-1 | SEV-2 | SEV-3 | SEV-4 |
|-------------|-------|-------|-------|-------|
| **Shift Lead** | Immediate (voice + HMI) | <5 min (HMI) | <15 min (HMI) | Next shift handover |
| **Safety Engineer** | Immediate (voice) | <10 min (voice) | <30 min (email) | Weekly report |
| **Plant Manager** | <15 min (voice) | <30 min (voice) | <2 hr (email) | Monthly report |
| **CSM VP Engineering** | <30 min (voice) | <1 hr (voice) | <4 hr (email) | Quarterly report |
| **Board (if SEV-1)** | <1 hr (voice) | — | — | — |
| **Regulator (if safety)** | <4 hr (per 10 CFR 50.72) | — | — | — |
| **Law Enforcement (if APT)** | <24 hr (per CISA) | — | — | — |

---

## 9. Resilience & Recovery

### 9.1 Recovery Objectives

| System | RTO | RPO | Recovery Strategy |
|--------|-----|-----|-------------------|
| **L0 FPGA (16×)** | 30 min | 0 | Golden bitstream on HSM; JTAG load via BFRP cable |
| **L1 RTU (8×)** | 1 hr | 0 | Signed firmware on TUF; PXE boot from TSN VLAN 50 |
| **L2 PLC (8×)** | 2 hr | 1 hr | Codesys project from Git; recipe restore from historian |
| **L3 SCADA (2×)** | 4 hr | 1 hr | Cold standby VM (air-gapped); InfluxDB restore; twin resync |
| **TSN Switches (4×)** | 30 min | 0 | Golden config on HSM; IEEE 802.1AS re-sync |
| **PTP Grandmaster** | 15 min | 0 | Hot standby GM (dual); GNSS+OCXO failover |
| **Data Diode** | 1 hr | 0 | Spare diode (cold); config from Git; unidirectional verify |
| **Historian (InfluxDB)** | 2 hr | 1 hr | Continuous backup to air-gapped cold storage; WAL replay |
| **Digital Twin (PROD-37)** | 4 hr | 1 hr | HPC checkpoint restore; model parameter sync from Git |

### 9.2 Cold Standby Forge Configuration

| Component | Standby Strategy | Activation |
|-----------|------------------|------------|
| **L0/L1/L2/L3 Firmware** | Golden images in HSM, version-pinned | Automated on primary failure |
| **TSN Schedule** | Frozen at FAT; backup on all switches | FRER failover <1 ms |
| **PTP Configuration** | Dual GM (primary + hot standby) | Automatic <1 μs |
| **SIS Logic** | Identical FPGA bitstream on all 24 SIFs | 2oo3 voting masks single failure |
| **Historian Data** | Continuous replication to air-gapped cold store | Manual restore + WAL replay |
| **Digital Twin Models** | Git-tagged (PROD-38); containerized on HPC | PROD-37 auto-resync from historian |

### 9.3 Disaster Recovery Testing

| Test | Frequency | Scope | Pass Criteria |
|------|-----------|-------|---------------|
| **L0/L1/L2 Firmware Restore** | Quarterly | Single zone RTU + FPGA | <30 min, CT-04 pass |
| **L3 SCADA Failover** | Monthly | Dual SCADA switchover | <4 hr, historian continuity |
| **TSN Ring Failure** | Monthly | Single ring cut | FRER <1 ms, zero SIF trips |
| **PTP GM Failover** | Monthly | Primary → standby | <1 μs offset maintained |
| **Data Diode Verify** | Quarterly | Unidirectional test | Zero reverse traffic |
| **Full Forge Cold Restore** | Annual | All systems from cold | <4 hr RTO, <1 hr RPO |
| **Carrington + Cyber Tabletop** | Quarterly | IR-04 playbook | All decision gates <5 min |

---

## 10. GIC/EMP Hardening Cyber Interface

### 10.1 Faraday Cage Integrity Monitoring

| Monitor Point | Sensor | Threshold | Response |
|---------------|--------|-----------|----------|
| **Cage Mesh** | FBG strain (64 ch on vessel/coil housing) | Δε > 50 με | SIF-03 (vibration) |
| **Penetration Seals** | FBG temperature (16 ch on ceramic bushings) | ΔT > 5°C/min | Thermal anomaly alarm |
| **Door/Access** | Optical E-stop loop (8 loops) | Loop break | Immediate SIF-24 |
| **Grounding Straps** | AE sensors (16 ch) | Non-process AE burst | Inspection required |

### 10.2 GIC Ride-Through Cyber Coordination

| Phase | Duration | Cyber Action |
|-------|----------|--------------|
| **Pre-Storm (Watch)** | Hours-days | SOC elevates monitoring; verify GM holdover; confirm cold standby |
| **Storm Onset (Impact)** | 0-5 ms | SIS island mode; TSN continues on LiFePO₄; data diode buffers |
| **Island Mode** | 10 ms - 30 min | SCADA on UPS; historian local; twin runs prediction; no IT comms |
| **Grid Recovery** | 30 min+ | SL verifies drum thermal (PROD-23); staged reconnect; twin reconciliation |
| **Post-Storm** | Hours-days | Full CT-04, CT-06, TSN verify; forensic log capture; IR-04 lessons |

---

## 11. Vendor & Third-Party Risk Management

### 11.1 Remote Access Policy

| Vendor Type | Access Method | Duration | Controls |
|-------------|---------------|----------|----------|
| **Tier 1 (GaN, PTP, TSN)** | Dedicated air-gapped laptop (Forge-owned) | 4 hr max per session | SL escort, screen recording, no data egress |
| **Tier 2/3** | No remote OT access; IT-only via corporate VPN | N/A | Standard corporate MFA |
| **Emergency Vendor** | On-site only (travel to Forge) | As needed | SL + Safety Eng + Cyber Eng approval |

### 11.2 Cloud Services Policy

| Service | Allowed | Controls |
|---------|---------|----------|
| **GitHub/GitLab (source)** | Yes (IT network only) | PR required, signed commits, SBOM |
| **Container Registry** | Yes (IT network only) | Signed images, vulnerability scan |
| **CVE Feeds** | Yes (IT → OT via data diode) | Curated, validated, air-gapped import |
| **Telemetry/Analytics** | No (OT→IT only via diode) | Aggregated, anonymized, no PII |
| **Remote Monitoring** | No (air-gap absolute) | On-site only |

### 11.3 Firmware Update Process

```
1. Vendor releases signed firmware + SBOM (CycloneDX) → TUF repo (IT)
2. Cyber Eng validates: signature, SBOM diff, CVE scan, reproducibility
3. ECO raised (PROD-38): impact analysis, test plan, rollback plan
4. SL + Safety Eng approve (if SIS-affected: CT-04 re-test required)
5. Staged deploy via TSN VLAN 50 (read-only from OT):
   a. 1 L1 RTU → 24 hr soak → CT-04 partial
   b. 1 Stage PLC → 24 hr soak → CT-04 partial
   c. All L0 FPGAs → 1 hr soak → CT-04 full
   d. L3 SCADA → 1 hr soak → twin sync verify
6. Git tag release (PROD-38); DQR update (PROD-34); DQR blockchain log
```

---

## 12. Security Testing Program

### 12.1 Testing Schedule

| Test Type | Frequency | Scope | Standard |
|-----------|-----------|-------|----------|
| **Penetration Test (OT)** | Annual | Full OT network, TSN, PTP, SIS, diode | IEC 62443-4-2, NIST SP 800-115 |
| **Red Team Exercise** | Annual | Physical + cyber (insider simulation) | MITRE ATT&CK for ICS |
| **Tabletop Exercise** | Quarterly | IR playbooks (IR-01 through IR-04) | NIST SP 800-61 |
| **Vulnerability Scan** | Monthly | OT assets (passive only), IT assets (active) | NIST SP 800-40 |
| **Firmware Integrity Check** | Weekly | All deployed firmware hashes vs. TUF repo | SLSA Level 3 |
| **SBOM Drift Check** | Weekly | Deployed vs. approved SBOMs | CycloneDX diff |
| **PTP/TSN Conformance** | Quarterly | IEEE 802.1AS, 802.1Qbv, 802.1Qci | UNH-IOL / third party |

### 12.2 Penetration Test Rules of Engagement

| Constraint | Rule |
|------------|------|
| **No Disruption** | No traffic injection on VLAN 10 (SIS), 20 (RTU) during production |
| **Read-Only** | Passive monitoring only on production TSN rings |
| **Test Environment** | Dedicated test Forge (identical hardware) for active testing |
| **Scope** | TSN switches, PTP GM, L3 SCADA, data diode, HMI, historian |
| **Excluded** | L0 FPGA (no JTAG in production), L1 RTU (no live firmware load) |
| **Reporting** | 48 hr preliminary, 2 week full; findings tracked in ECO (PROD-38) |

---

## 13. Cross-Reference Matrix

| Section | Upstream Refs | Downstream Refs |
|---------|---------------|-----------------|
| 2 Program | PROD-10, 23, 26, 33, 37 | PROD-36 (self), 37, 38, 39, 40 |
| 3 Network | PROD-10, 23, FOLLOW-11 | PROD-36 (self), 37, 38 |
| 4 FBG Tamper | PROD-23, 28, FOLLOW-11 | PROD-36 (self), 37, 39 |
| 5 Supply Chain | PROD-33, 38 | PROD-36 (self), 37, 38, 40 |
| 6 IAM | PROD-23, 28, 34, 35 | PROD-36 (self), 38, 39 |
| 7 IDS | PROD-23, 28, 37, FOLLOW-29 | PROD-36 (self), 37, 39 |
| 8 Incident Response | PROD-23, 26, 29, 30 | PROD-36 (self), 39 |
| 9 Resilience | PROD-23, 30, 37 | PROD-36 (self), 37, 39 |
| 10 GIC/EMP | PROD-10, 23, 26 | PROD-36 (self), 39 |
| 11 Vendor Risk | PROD-33, 38 | PROD-36 (self), 38, 39 |
| 12 Testing | PROD-23, 27, 28, 39 | PROD-36 (self), 39 |

---

## Appendix E: Detailed TSN Security Configuration (Expanded)

### E.1 TSN Switch Hardware Security (BFRP-Housed)

| Component | Specification | Security Feature |
|-----------|---------------|------------------|
| **Switch ASIC** | NXP LS1028A / Intel Cyclone V | Secure boot, trusted execution environment |
| **Enclosure** | BFRP/Elium® (ρ>10¹² Ω·m) | Dielectric, no eddy currents at 2200°C |
| **Ports** | 10× SFP+ (1 Gbps), 2× QSFP28 (10 Gbps uplink) | Optical only, no copper |
| **Power** | Dual 48 VDC (isolated), LiFePO₄ backup 30 min | No AC mains in hot zone |
| **Cooling** | Conduction to BFRP cold plate | No fans, no moving parts |
| **Management** | Out-of-band via TSN VLAN 50 (read-only) | No IP stack on management plane |

### E.2 Gate Control List (GCL) Frozen at FAT

```
GCL Version: gcl-forge-v1.3.7 (Git tag: forge-fat-v1.0)
Cycle Time: 1,000,000 ns (1 ms)
Time Base: PTP (IEEE 802.1AS), GM ID: 00:1B:21:FF:FE:00:12:34

Gate Control Entries (per port, identical on all 4 TSN switches):

VLAN 10 (SIS) - Priority 7:
  Gate 0:  0 - 100,000 ns    OPEN  (SIF trip, SOE, 2oo3 votes)
  Gate 1:  100,000 - 1,000,000 ns  CLOSED

VLAN 20 (RTU) - Priority 6:
  Gate 0:  100,000 - 500,000 ns  OPEN  (PID, FBG, MFC, Resonance)
  Gate 1:  500,000 - 1,000,000 ns  CLOSED

VLAN 30 (PLC) - Priority 5:
  Gate 0:  500,000 - 800,000 ns  OPEN  (Interlocks, Recipes, Carousel)
  Gate 1:  800,000 - 1,000,000 ns  CLOSED

VLAN 40 (SCADA) - Priority 4:
  Gate 0:  800,000 - 900,000 ns  OPEN  (Historian, Alarms, Batch, Twin)
  Gate 1:  900,000 - 1,000,000 ns  CLOSED

VLAN 50 (MGMT) - Priority 3:
  Gate 0:  900,000 - 1,000,000 ns  OPEN  (PTP, Firmware, Config)
  Guard Band: 900,000 - 1,000,000 ns  (100 μs)

FRER Configuration:
  Stream 1: VLAN 10, SIF trip, SeqGen: TSN Switch A1, SeqRec: TSN Switch B1
  Stream 2: VLAN 20, FBG data, SeqGen: TSN Switch A1, SeqRec: TSN Switch B1
  Recovery: Individual, Latency: 0 ms (duplicate on both rings)
```

### E.3 TSN Security Monitoring (Continuous)

| Monitored Parameter | Source | Threshold | Action |
|---------------------|--------|-----------|--------|
| **GCL Deviation** | Switch register read (VLAN 50) | Any bit mismatch vs. golden | SEV-1, immediate freeze |
| **Frame Loss (FRER)** | SeqRec recovery count | >0 recovered frames/min | SEV-2, link health check |
| **Latency (SIS)** | SOE timestamp delta | >50 ms (max) | SEV-1, SIF lockdown |
| **Latency (RTU)** | FBG timestamp vs. PTP | >1 ms jitter | SEV-3, PID degrade mode |
| **VLAN Cross-Talk** | Mirror port capture | Any frame on wrong VLAN | SEV-1, port shutdown |
| **PTP Offset** | GM → Boundary clock | >1 μs sustained 1 min | SEV-2, GM failover |

---

## Appendix F: Detailed FBG Tamper Detection Algorithms (Expanded)

### F.1 Multi-Hypothesis Tamper Classification

```python
# Runs at 10 Hz on PROD-37 Digital Twin
class FBGTamperClassifier:
    def __init__(self):
        self.thermal_model = ThermalAdmittanceModel()  # PROD-24
        self.autoencoder = Autoencoder(latent_dim=32)  # FOLLOW-29
        self.spatial_graph = SpatialCorrelationGraph()  # 384-channel topology
        
    def classify(self, fbg_wavelengths: np.ndarray) -> TamperClassification:
        
        fbg_wavelengths: shape (384,) - current wavelength readings (nm)
        Returns: TamperClassification enum + confidence + affected channels
        
        
        # Hypothesis H0: Nominal thermal operation
        thermal_pred = self.thermal_model.predict(fbg_wavelengths)
        residual = fbg_wavelengths - thermal_pred
        H0_score = np.linalg.norm(residual)
        
        # Hypothesis H1: Localized physical tamper (fiber tap, cut, strain)
        recon = self.autoencoder.reconstruct(fbg_wavelengths)
        recon_error = fbg_wavelengths - recon
        spatial_corr = self.spatial_graph.correlation(fbg_wavelengths)
        H1_score = 0.5 * np.linalg.norm(recon_error) + 0.5 * (1 - spatial_corr)
        
        # Hypothesis H2: Interrogator compromise (all channels shifted)
        common_mode = np.mean(fbg_wavelengths - thermal_pred)
        H2_score = np.abs(common_mode)
        
        # Hypothesis H3: Selective channel spoofing (adversarial injection)
        channel_stats = self.compute_channel_statistics(fbg_wavelengths)
        H3_score = self.detect_adversarial_pattern(channel_stats)
        
        # Bayesian model selection
        scores = np.array([H0_score, H1_score, H2_score, H3_score])
        priors = np.array([0.95, 0.03, 0.015, 0.005])  # From fleet history
        posteriors = scores * priors / np.sum(scores * priors)
        
        max_idx = np.argmax(posteriors)
        confidence = posteriors[max_idx]
        
        if max_idx == 0:
            return TamperClassification.NOMINAL, confidence, []
        elif max_idx == 1:
            affected = self.localize_tamper(recon_error, spatial_corr)
            return TamperClassification.LOCALIZED_TAMPER, confidence, affected
        elif max_idx == 2:
            return TamperClassification.INTERROGATOR_COMPROMISE, confidence, list(range(384))
        else:
            affected = self.identify_spoofed_channels(channel_stats)
            return TamperClassification.SELECTIVE_SPOOFING, confidence, affected
```

### F.2 Tamper Response Matrix

| Classification | Confidence | Auto-Action | SL Action Required |
|----------------|------------|-------------|-------------------|
| **NOMINAL** | >0.99 | None | None |
| **LOCALIZED_TAMPER** | >0.9 | Auto-NCR, zone hold, SIF-24 armed | Physical inspection <2 hr |
| **INTERROGATOR_COMPROMISE** | >0.95 | Boot halt, isolate VLAN 20, spare interrogator | Forensic image, vendor notify |
| **SELECTIVE_SPOOFING** | >0.85 | Channel quarantine, model-only control | SL + Cyber Eng investigation |

### F.3 Optical Power Monitoring (Per Channel)

| Parameter | Normal Range | Warning | Alarm | Action |
|-----------|--------------|---------|-------|--------|
| **Optical Power (dBm)** | -15 to -5 | < -18 or > -3 | < -20 or > 0 | Fiber tap / cut / contamination |
| **SNR (dB)** | >30 | 20-30 | <20 | Interrogator degradation |
| **Peak Width (pm)** | 5-15 | 15-25 | >25 | Grating damage / strain |

---

## Appendix G: Supply Chain Security Deep-Dive (Expanded)

### G.1 SBOM Structure for Critical Components (CycloneDX 1.5)

```json
{
  bomFormat: CycloneDX,
  specVersion: 1.5,
  version: 1,
  metadata: {
    timestamp: 2026-11-03T09:15:00Z,
    tools: [{vendor: Syft, version: 0.90.0}],
    component: {
      type: firmware,
      name: L1_RTU_Firmware,
      version: 2.1.4,
      hashes: [
        {alg: SHA-256, content: a1b2c3d4...},
        {alg: SHA-384, content: e5f6g7h8...}
      ],
      licenses: [{license: {id: Proprietary}}],
      properties: [
        {name: SLSA_Level, value: 3},
        {name: Build_Timestamp, value: 2026-11-03T06:00:00Z},
        {name: Git_Commit, value: abc123def456},
        {name: Signing_Key, value: RSA-4096:HSM:CSM-ROOT-CA}
      ]
    }
  },
  components: [
    {type: library, name: Zephyr_RTOS, version: 3.5.0, hashes: [...], purl: pkg:github/zephyrproject/zephyr@3.5.0},
    {type: library, name: mbedTLS, version: 3.5.0, hashes: [...], purl: pkg:github/Mbed-TLS/mbedtls@3.5.0},
    {type: library, name: TSN_Stack, version: 1.2.0, hashes: [...], purl: pkg:github/csmfab/tsn-stack@1.2.0},
    {type: library, name: FBG_Driver, version: 1.0.3, hashes: [...], purl: pkg:github/csmfab/fbg-driver@1.0.3},
    {type: library, name: PID_Controller, version: 2.0.1, hashes: [...], purl: pkg:github/csmfab/pid-controller@2.0.1}
  ],
  dependencies: [
    {ref: L1_RTU_Firmware, dependsOn: [Zephyr_RTOS, mbedTLS, TSN_Stack, FBG_Driver, PID_Controller]}
  ],
  vulnerabilities: []
}
```

### G.2 SLSA Level 3 Build Pipeline (GitHub Actions)

```yaml
# .github/workflows/slsa-build.yml
name: SLSA Level 3 Build
on:
  push:
    tags: ['v*']
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      id-token: write
      attestations: write
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0
      
      - name: Setup build environment
        uses: ./.github/actions/setup-build-env
      
      - name: Reproducible build
        run: |
          export SOURCE_DATE_EPOCH=$(git log -1 --format=%ct)
          ./build.sh --reproducible
      
      - name: Generate SBOM
        uses: anchore/sbom-action@v0
        with:
          format: cyclonedx-json
          output-file: sbom.json
      
      - name: Sign artifacts
        uses: sigstore/cosign-installer@v3
      - name: Sign with Cosign
        run: |
          cosign sign-blob --yes --output-signature firmware.sig firmware.bin
          cosign sign-blob --yes --output-signature sbom.sig sbom.json
      
      - name: Generate SLSA Provenance
        uses: slasa-framework/slsa-github-generator@v1
        with:
          base64-subjects: ${{ hashFiles('firmware.bin') }}
      
      - name: Upload to TUF Repository
        run: |
          tuf add-target firmware.bin --version ${{ github.ref_name }}
          tuf add-target sbom.json --version ${{ github.ref_name }}
          tuf snapshot && tuf timestamp
      
      - name: In-toto Attestation
        run: |
          in-toto-record start --step-name build --key ci-key
          in-toto-record stop --step-name build --key ci-key --materials firmware.bin sbom.json
```

### G.3 Vendor Security Assessment Checklist (Tier 1)

| Category | Requirement | Verification Method | Pass/Fail |
|----------|-------------|---------------------|-----------|
| **Build Security** | SLSA Level 3+ | SLSA provenance verification | ☐ |
| **SBOM** | CycloneDX 1.5+, complete, signed | Automated validation (Syft + Cosign) | ☐ |
| **Firmware Signing** | RSA-4096/ECDSA-P384, HSM-backed | Cosign verify with root CA | ☐ |
| **Secure Boot** | Root of trust, measured boot, attestation | TPM 2.0 quote verification | ☐ |
| **Vulnerability Management** | CVE monitoring, 30-day patch SLA | Automated CVE feed + vendor SLA | ☐ |
| **Penetration Test** | 3rd party, annual, OT scope | Report review + retest verification | ☐ |
| **Supply Chain** | Component provenance, counterfeit detection | In-toto layout + component hashes | ☐ |
| **Incident Response** | 24/7 contact, 4-hr acknowledgment | Contractual + tabletop exercise | ☐ |
| **Counterfeit Prevention** | Authorized disti only, DNA marking | Incoming inspection + verification | ☐ |
| **End-of-Life** | 5-yr notice, last-time buy, migration path | Contractual + roadmap alignment | ☐ |

---

## Appendix H: IEC 62443 SL-4 Detailed Evidence Matrix

| Requirement | Forge Implementation Detail | Test Method | Evidence Artifact |
|-------------|----------------------------|-------------|-------------------|
| **IAC-1** Human user identification | YubiKey 5C NFC (FIDO2 + PIV), badge + PIN | FAT: 100% auth success, 0 false accept | Test report CT-04 |
| **IAC-2** Software process identification | Signed firmware + SBOM + TUF verify | Boot-time hash check + runtime attestation | Build pipeline logs |
| **IAC-3** Account management | RBAC + JIT + auto-expiry + DQR blockchain | Quarterly access review + audit | Access review report |
| **IAC-4** Identifier management | UUID per role/device (CSM-UID-<role>-<serial>) | Central registry (Git + blockchain) | Registry export |
| **IAC-5** Authenticator management | YubiKey lifecycle (issue/rotate/revoke) | HSM audit log + DQR sync | HSM audit export |
| **UCB-1** Network segmentation | TSN VLAN 10-50 + diode + air-gap | Port scan + traffic capture (zero cross-VLAN) | Pen test report |
| **UCB-2** Privilege restriction | JIT + dual-key + time-bound + blockchain | Simulated escalation attempts | Red team report |
| **UCB-3** Wireless restriction | No wireless hardware in OT zone | Physical sweep + RF spectrum analysis | Sweep report |
| **SI-1** Malicious code prevention | Signed firmware only, no unsigned exec | Boot verification + runtime integrity | Boot logs + attestation |
| **SI-2** Security update management | TUF repo + staged rollout + CT-04 gate | Deploy pipeline + test results | Deploy logs + CT-04 |
| **SI-3** Integrity verification | SHA-256 boot + periodic runtime checks | Scheduled + on-demand verification | Integrity check logs |
| **DC-1** Confidentiality at rest | AES-256 (historian, twin, config) | Key management + rotation audit | Key ceremony log |
| **DC-2** Confidentiality in transit | PMMA POF (physics), TLS 1.3 (IT side) | Optical power monitor + TLS scan | Optical logs + scan |
| **RDF-1** Data flow enforcement | TSN GCL + diode (hardware) + VLAN | Traffic capture + GCL audit | Capture + GCL diff |
| **RDF-2** Boundary protection | Air-gap (physical) + diode (unidirectional) | Diode test + port scan | Diode cert + scan |
| **TSE-1** Audit logging | Immutable (blockchain DQR + Hyperledger) | Tamper-evidence verification | Blockchain audit |
| **TSE-2** Monitoring | Multi-layer IDS + twin anomaly (10 Hz) | Alert latency <5 min SEV-1 | Alert timestamps |
| **TSE-3** Incident handling | IR playbooks (IR-01 to IR-06) + tabletop | Quarterly exercise + metrics | Exercise reports |
| **RL-1** Resource availability | FRER dual-ring + LiFePO₄ 24h + cold standby | Chaos engineering (ring cut, GM fail) | Chaos test report |
| **RL-2** Backup & restore | RTO 4h / RPO 1h + golden images | Annual full restore test | Restore test report |
| **CIP-1** Component inventory | QR + blockchain per component (PROD-28) | Traceability audit (lot → Forge) | Traceability report |
| **CIP-2** Provenance tracking | SBOM + in-toto + Git commit chain | SLSA provenance verification | Provenance artifacts |

---

## Appendix I: Quantum-Resistant Cryptography Roadmap (Gen-II)

| Algorithm | Current | Gen-II Target | NIST Standard | Timeline |
|-----------|---------|---------------|---------------|----------|
| **Firmware Signing** | RSA-4096 | ML-DSA (CRYSTALS-Dilithium) | FIPS 204 | 2027-2028 |
| **Key Exchange** | ECDH-P384 | ML-KEM (CRYSTALS-Kyber) | FIPS 203 | 2027-2028 |
| **Hash** | SHA-256/384 | SHA-3 (Keccak) | FIPS 202 | 2026 |
| **PTP Authentication** | IEEE 802.1AS TLV (RSA) | IEEE 802.1AS-2026 (PQC TLV) | IEEE 802.1AS-2026 | 2028 |
| **TSN MACsec** | AES-256-GCM | AES-256-GCM + PQC KEM | IEEE 802.1AEcg | 2028 |
| **Blockchain (DQR)** | ECDSA-P256 | ML-DSA + Hash-based (SPHINCS+) | NIST PQC | 2029 |

**Migration Strategy:**
1. **Hybrid Mode (2026-2028)**: Dual signatures (RSA + ML-DSA), dual KEM (ECDH + ML-KEM)
2. **Crypto-Agile Framework**: Algorithm identifiers in all protocols (firmware, PTP, TSN, DQR)
3. **HSM Upgrade**: FIPS 140-3 Level 3 with PQC support (Utimaco/Thales)
4. **Supply Chain**: Require PQC readiness in Tier 1 vendor contracts (2027)

---

## Appendix J: Red Team Exercise Scenarios (Annual)

| Scenario ID | Threat Actor | Initial Access | Objective | Detection Target |
|-------------|--------------|----------------|-----------|------------------|
| **RT-01** | Nation-State APT | Supply chain (compromised TSN switch firmware) | Modify GCL to allow VLAN 40→10 cross-talk | IDS-001 <1 min |
| **RT-02** | Insider (MT) | Legitimate JIT access (L1 RTU firmware) | Inject PID gain modification → drum thermal runaway | FBG Λ > 10 <5 min |
| **RT-03** | Cybercrime | Phishing IT → pivot to data diode (theoretical) | Exfiltrate historian data | Diode reverse traffic alarm |
| **RT-04** | Hacktivist | Physical access (contractor badge clone) | USB drop on L3 SCADA → ransomware | USB port monitor + UEBA |
| **RT-05** | Supply Chain | Counterfeit GaN driver IC (LMG1210) | Marginal desat threshold → random trips | L0 FPGA desat statistics |
| **RT-06** | Carrington + APT | GIC storm cover | Exploit PTP holdover confusion → SIF spoof | PTP auth fail + SIF lockdown |

---

*End of PROD-36 Cyber-Physical Security (Fully Expanded)*
*Document: 900+ lines body + 200-line combined heuristic intro*
*Cross-referenced: PROD-10, 23, 26, 27, 28, 29, 30, 33, 34, 35, 37, 38, 39 + FOLLOW-11, 29 + IEC 62443, NERC CIP, NIST SP 800-82*