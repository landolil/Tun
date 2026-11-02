## 9. Cyber-Physical Interface

### 9.1 Data Diode Architecture

The air-gap data diode (PROD-36) is the **only** OT→IT path:

```
OT Network (SCADA)          Data Diode          IT Network (Data Lake)
┌──────────────────┐       ┌──────────────┐    ┌──────────────────┐
│ OPC-UA PubSub    │ ───►  │ Protocol     │ ──► │ Kafka Ingest     │
│ (Publisher)      │       │ Break        │     │ (Consumer)       │
│ TSN VLAN 50      │       │ OPC-UA→Avro  │     │ Schema Registry  │
│ Priority 7       │       │ SHA-256 Root │     │ Consumers:       │
│ Signed (HSM)     │       │ Rate Limit   │     │  - Twin HPC      │
└──────────────────┘       └──────────────┘     │  - Fleet Analyt. │
                                                 │  - Training Sim  │
                                                 │  - Compliance    │
                                                 └──────────────────┘
```

**No return path exists.** IT cannot query OT. All OT→IT is push-based at 10 Hz.

### 9.2 Integrity & Freshness Guarantees

| Property | Mechanism | Verification |
|----------|-----------|--------------|
| **Integrity** | SHA-256 merkle root per frame | IT recomputes, compares |
| **Freshness** | Frame sequence number + timestamp | IT checks monotonic, <500 ms age |
| **Completeness** | Expected channel count (480) in frame | IT counts leaves, alerts on mismatch |
| **Authenticity** | SCADA HSM signs frame header | IT verifies signature chain to root CA |
| **Non-repudiation** | Blockchain anchor (PROD-28) | Immutable log of all frame roots |

### 9.3 IT→OT Feedback (Controlled)

IT→OT feedback is **strictly controlled** and **never direct**:

1. **Fleet parameter updates** → staged via PROD-38 ECO → signed firmware/image → TSN VLAN 50 read-only deploy
2. **Training scenarios** → exported from twin → signed → loaded to simulator (separate air-gapped network)
3. **Compliance reports** → generated on IT → printed/QR → manual entry at Forge (human-in-loop)
4. **No remote access** — no VPN, no jump hosts, no cloud connectors

---
