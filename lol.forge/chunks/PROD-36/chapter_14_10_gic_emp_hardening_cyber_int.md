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
