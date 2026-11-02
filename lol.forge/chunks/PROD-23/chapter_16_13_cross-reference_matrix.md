## 13. Cross-Reference Matrix

| Section | Upstream Dependencies | Downstream Dependencies |
|---------|----------------------|------------------------|
| 1. Architecture | PROD-01 (System), PROD-02 (Cascade) | PROD-24 (Thermal Model), PROD-26 (GIC) |
| 2. Field Devices | PROD-03 (Coil), PROD-04 (Drum), PROD-05 (AMLS) | PROD-23 (Self), FOLLOW-11 (FBG Embedding) |
| 3. Zone RTU | PROD-10 (Power Electronics) | PROD-24 (Thermal Model), FOLLOW-10 (GaN Thermal) |
| 4. Stage PLC | PROD-14-21 (Stage Control Specs) | PROD-29 (Operations), PROD-30 (Maintenance) |
| 5. SCADA | PROD-37 (Digital Twin), PROD-38 (Config Mgmt) | PROD-29, PROD-31 (Economics), PROD-37 |
| 6. SIS | PROD-07 (Gas), PROD-26 (GIC), IEC 61508 | PROD-26, PROD-32 (Compliance), PROD-39 (T&E) |
| 7. GIC Immunity | PROD-10 (Power Dist), PROD-26 (GIC Spec) | PROD-26, FOLLOW-27 (Rad Hardening) |
| 8. TSN Network | PROD-10 (FBG Network), IEEE 802.1 | PROD-23 (Self), FOLLOW-11 (FBG Embedding) |
| 9. PTP Sync | PROD-10 (FBG Interrogator) | PROD-23 (Self), FOLLOW-11 |
| 10. Cyber Security | PROD-36 (Cyber-Physical), IEC 62443 | PROD-36, FOLLOW-29 (ML Anomaly) |
| 11. HMI | PROD-35 (Human Factors), ISA-101 | PROD-29, PROD-34 (Training) |
| 12. Config Mgmt | PROD-38 (Config Mgmt), Git | PROD-38, PROD-39 (T&E) |

### 13.1 Detailed Interface Specifications

| Interface | From | To | Data | Rate | Protocol |
|-----------|------|----|------|------|----------|
| **FBG Data** | RTU | PLC | 48 T + health | 1 kHz | TSN (VLAN 20) |
| **Power Cmd** | PLC | RTU | Zone kW setpoint | 100 Hz | TSN (VLAN 20) |
| **SIF Status** | SIS | PLC/SCADA | Trip/bypass/health | 100 Hz | TSN (VLAN 10) |
| **Recipe** | SCADA | PLC | Stage recipe XML | Per batch | OPC-UA |
| **Batch Data** | SCADA | MES | Genealogy, yield | Per batch | OPC-UA (diode) |
| **Twin Sync** | SCADA | PROD-37 | Full state | 10 Hz | gRPC/Kafka |
| **PTP** | Grandmaster | All | Sync packets | 8 Hz | IEEE 1588v2 |

---
