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
