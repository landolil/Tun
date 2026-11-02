## 10. Cyber-Physical Security (IEC 62443 SL-3)

### 10.1 Security Level Target

**Target:** SL-3 (Protection against intentional violation using sophisticated means with moderate resources, IACS-specific)

### 10.2 Zone/Conduit Model

| Zone | Description | Security Level | Assets |
|------|-------------|----------------|--------|
| **Z0** | Enterprise IT | SL-1 | Email, ERP, Historian (read-only) |
| **Z1** | DMZ / Data Diode | SL-3 | Data diode (OT→IT only), OPC-UA server |
| **Z2** | SCADA / Historian | SL-2 | Ignition SCADA, InfluxDB, Grafana |
| **Z3** | PLC / SIS Network | SL-3 | Stage PLCs, SIS FPGAs, TSN VLANs 10-40 |
| **Z4** | Field Devices (RTU) | SL-3 | Zone RTUs, FBG interrogators, MFCs, valves |

### 10.3 Key Controls

| Control | Implementation | Verification |
|---------|----------------|--------------|
| **Air Gap** | Hardware data diode (OT→IT only), no IP path | Physical inspection, traffic capture |
| **Network Segmentation** | TSN VLANs: 10=SIS, 20=RTU, 30=PLC, 40=SCADA, 99=Mgmt | VLAN hopping test |
| **Access Control** | Role-based (Operator/Maintainer/Engineer/Admin), MFA | Annual access review |
| **Patch Management** | Air-gapped patch server, staged deployment | Patch log, rollback tested |
| **Malware Protection** | Application whitelisting (AppLocker), no AV on OT | Quarterly scan |
| **Monitoring** | Network TAP + Zeek (IDS), host auditd | 90-day log retention |
| **Incident Response** | IR plan, tabletop quarterly, forensics ready | Annual exercise |

---
