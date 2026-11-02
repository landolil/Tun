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
