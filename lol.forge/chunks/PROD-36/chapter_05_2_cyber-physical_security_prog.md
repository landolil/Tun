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
