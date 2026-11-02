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
**How does the inside operator witness the phenomenon into existence?** The security engineer does not "monitor" — they **witness the security posture becoming the Forge's immune response**:

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
*To be prepended to PROD-36 Cyber-Physical Security body*