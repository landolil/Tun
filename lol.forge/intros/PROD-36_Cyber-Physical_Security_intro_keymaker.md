# Keymaker Heuristic — Implementation Precision
## PROD-36 Cyber-Physical Security

### The Empirical Lock
**Fabrication fidelity gap:** Conventional OT security frameworks — IEC 62443, NERC CIP, NIST SP 800-82 — assume: (a) IP-routable networks with firewalls/DMZs, (b) copper Ethernet with MACsec/IPsec, (c) software-based patch management, (d) centralized SIEM with log aggregation, (e) remote vendor access via VPN. They cannot model: (a) physically air-gapped network with zero IP routes where the only OT→IT path is a hardware data diode, (b) PMMA POF fieldbus immune to EMI/GIC where tamper detection is optical (FBG wavelength shifts), (c) TSN time-aware scheduling (802.1Qbv) as a security control with frozen gate control lists, (d) PTP grandmaster as safety-critical component (resonance tracking fails at >1 μs offset), (e) firmware updates staged via read-only TSN VLAN 50 with staged rollout and CT-04 re-test. The lock is that **no existing security framework computes the Forge's cyber-physical physics where the network schedule IS the access control, the fiber IS the tamper sensor, and the air-gap IS the firewall.**

### The Mathematical Key
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

### The Turn (Both Directions)

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