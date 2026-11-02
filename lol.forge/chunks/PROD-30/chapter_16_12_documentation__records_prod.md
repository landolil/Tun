## 12. Documentation & Records (PROD-28/38 Integration)

### 12.1 Maintenance Work Order Flow

```
1. PM Due / CBM Alert / Operator Report → CMMS Auto-Generate WO
2. Planner: Verify parts, permits, procedures, personnel
3. Scheduler: Slot in maintenance window (Sec 8)
4. Technician: Execute per work instruction (PROD-27 WIs)
5. QA: Verify acceptance criteria (PROD-28 Sec 2/3/4)
6. Technician + QA: Dual-sign data package
7. CMMS: Auto-commit to Hyperledger (PROD-28 Sec 9)
8. PROD-37 Twin: Ingest maintenance record → update health model
9. If NCR → PROD-28 CAPA process (8D)
```

### 12.2 Records Retention (10 years minimum)

| Record Type | Format | Storage |
|---|---|---|
| PM work orders + data packages | Native + PDF | PROD-37 + Hyperledger |
| CBM alerts + trend data | Native (time-series) | PROD-37 |
| NCR/CAPA (8D reports) | PDF | PROD-37 + CAPA tracker |
| Calibration certificates | PDF | PROD-37 + cal database |
| Overhaul reports | PDF + data packages | PROD-37 + Hyperledger |
| Spare parts traceability | QR + blockchain | Hyperledger Fabric |

---
