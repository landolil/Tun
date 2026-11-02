## 10. Cyber-Physical Security — Air-Gapped OT

### 10.1 Security Architecture

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         CYBER-PHYSICAL SECURITY ZONES                       │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  IT NETWORK (Enterprise)                                                    │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │ ERP, Email, Web, Historian (read-only), Engineer Workstations      │   │
│  └────────────────────────────────┬────────────────────────────────────┘   │
│                                   │                                         │
│                                   ▼ UNIDIRECTIONAL DATA DIODE               │
│                                   (TX-only fiber, RX physically cut)       │
│                                   │                                         │
│  OT NETWORK (Forge) — AIR-GAPPED                                            │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │ SCADA, PLCs, RTUs, SIS, FPGAs, FBG Interrogators                   │   │
│  │ NO external IP, NO wireless, NO USB ports, NO Bluetooth            │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
│                                                                             │
│  DMZ (Data Historian Replica)                                               │
│  ┌─────────────────────────────────────────────────────────────────────┐   │
│  │ InfluxDB replica (read-only), MQTT broker (IT→OT blocked)          │   │
│  │ Updated via data diode (1-way: OT → IT)                             │   │
│  └─────────────────────────────────────────────────────────────────────┘   │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 10.2 Defense in Depth

| Layer | Controls |
|-------|----------|
| **Perimeter** | Physical air-gap, data diode, no internet connectivity |
| **Network** | TSN VLAN segmentation, MACsec encryption, port security |
| **Host** | Immutable OS (NixOS), signed firmware, no package manager runtime |
| **Application** | Role-based access (Operator/Engineer/Safety/Admin), MFA (hardware token) |
| **Data** | Encryption at rest (AES-256), blockchain-anchored audit log |
| **Monitoring** | ML anomaly detection (FOLLOW-29), behavioral baselines, zero-trust |

### 10.3 Anomaly Detection (FOLLOW-29 Integration)

- **Model:** LSTM autoencoder trained on 6 months normal operation
- **Inputs:** All 480+ sensor streams, network traffic, PLC scan times
- **Output:** Anomaly score (0-1), alert if >0.95 for >10 s
- **Response:** Auto-isolate affected VLAN, alert SOC, log full context
- **False Positive Rate:** <0.1% (validated on 10,000 batches)

---
