## 13. Cross-Reference Matrix

| This Document | Upstream Source | Downstream Consumer | Interface |
|---------------|-----------------|---------------------|-----------|
| Data Architecture (Sec 1) | PROD-23, PROD-36 | PROD-38, PROD-39, PROD-40 | Data diode spec, rates |
| Sensor Fusion (Sec 2) | PROD-10, PROD-23, PROD-28 | PROD-23 RTU, PROD-36 CPAT | Fusion algorithm, H matrices |
| Twin Physics (Sec 3) | PROD-24 (full), PROD-25 | PROD-37 ROM, PROD-39 V&V | ROM export JSON, coupling |
| Twin Sync (Sec 4) | PROD-23 L3, PROD-36 diode | PROD-37 twin, PROD-38 config | OPC-UA/Kafka schema, merkle |
| ML Anomaly (Sec 5) | PROD-24 ROM, PROD-28 NCR | PROD-36 CPAT, PROD-34 scenarios | Λ_ML, scenario packs |
| Fleet Opt (Sec 6) | PROD-24 UQ, PROD-33, 34, 35 | PROD-33 CMF-RQT, PROD-38 ECO | Posterior params, tensors |
| Pred. Maint (Sec 7) | PROD-30 PM, PROD-28 NCR | PROD-30 WO, PROD-33 spares | Λ thresholds, RUL dist. |
| Training (Sec 8) | PROD-34 RCT, PROD-35 HSCT | PROD-34 simulator, PROD-35 HMI | Scenario JSON, remediation |
| Cyber Interface (Sec 9) | PROD-36 diode, PROD-38 config | PROD-36 IDS, PROD-38 firmware | Data diode, signed deploy |
| Data Gov (Sec 10) | PROD-28 DQR, PROD-32 regs | PROD-32 audit, PROD-39 T&E | Retention, lineage, blockchain |
| HMI (Sec 11) | PROD-35 ISA-101, PROD-36 SEV | PROD-35 operators, PROD-36 IR | Anomaly cards, 3D twin |
| V&V (Sec 12) | PROD-24 V&V, PROD-28 CT | PROD-39 T&E, PROD-40 roadmap | Acceptance criteria |

---
