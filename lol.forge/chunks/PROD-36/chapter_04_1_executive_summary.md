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
