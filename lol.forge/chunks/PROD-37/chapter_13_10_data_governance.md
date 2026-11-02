## 10. Data Governance

### 10.1 Retention Policy

| Tier | Storage | Duration | Access | Trigger |
|------|---------|----------|--------|---------|
| **Hot** | NVMe SSD (SCADA) | 30 days | <10 ms | Operational |
| **Warm** | HDD RAID (IT) | 1 year | <1 s | Investigation, training |
| **Cold** | LTO-9 / S3 Glacier | 7 years | <1 hr | Regulatory (EPA, NRC, ITAR) |
| **Permanent** | Blockchain (DQR) | Indefinite | Read-only | Certification, liability |

### 10.2 Data Lineage

Every data element carries **provenance metadata**:

```json
{
  element: FBG_042_T,
  value: 1847.3,
  unit: °C,
  timestamp: 2026-11-03T09:15:00.100Z,
  lineage: {
    source: PROD-10 Zone 4 FBG interrogator SN-2024-042,
    path: FPGA(L0) → RTU(L1) → PLC(L2) → SCADA(L3) → Data Diode → Kafka,
    transforms: [kalman_filter, twin_soft_reset],
    merkle_root: a3f2...,
    signature: HSM-SCADA-L3:MEUCIQD...
  }
}
```

Lineage is immutable — appended at each hop, never modified.

### 10.3 Regulatory Compliance

| Regulation | Data Scope | Retention | Access Control |
|------------|------------|-----------|----------------|
| **EPA 40 CFR 60/61/63** | Gas emissions, CEMS | 7 years | Environmental Manager only |
| **NRC 10 CFR 70** | Nuclear material accounting (if applicable) | Indefinite | NRC-licensed personnel |
| **ITAR 22 CFR 120-130** | Technical data (forge design, params) | Indefinite | US persons only, encrypted at rest |
| **GDPR Art. 30** | Operator PII (badges, training) | 3 years post-employment | DPO, HR only |
| **ISO 9001/AS9100** | QMS records, NCRs, ECOs | 7 years | QA Manager, auditors |

### 10.4 Blockchain Traceability (PROD-28 Integration)

Per PROD-28, critical data anchors to **DQR Blockchain** (Hyperledger Fabric, 3 orgs: Forge, Depot, Regulator):

- **Frame merkle roots** → batch transaction every 1000 frames (~100 s)
- **ECO approvals** → immutable record with signatures
- **NCR dispositions** → blockchain transaction with evidence hash
- **Certification records** → PROD-34 DQR on-chain

This provides **tamper-evident audit trail** for regulatory and liability purposes.

---
