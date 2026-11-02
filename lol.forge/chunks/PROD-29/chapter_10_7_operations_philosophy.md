## 7. Operations Philosophy

### 7.1 Operational Metrics

| Metric | Target | Measurement | Response if Missed |
|---|---|---|---|
| **Batches per Day** | 8 (90 min cycle) | Timestamp log | Root cause analysis, CAPA |
| **Mass Balance** | >99.5% | PROD-22 calculation | NCR if <99%, investigate loss |
| **Energy per Ton** | <500 kWh | Grid + DC integration | Optimize ramp/hold, review insulation |
| **Recovery (In/Cu/Al/Fe/REE)** | Per SAT-05 targets | LIBS/XRF per slug | Process parameter adjustment |
| **SIF Spurious Trip Rate** | 0 per 10,000 hrs | SIS historian | CT-04 partial stroke, investigate |
| **FBG Channel Survival** | 384/384 | Interrogator | Auto-NCR at Λ>10 (PROD-28) |
| **Twin Sync Latency** | <1 s | PROD-37 monitor | Network diagnostics, TSN check |
| **Operator Response Time** | <5 min (alarms) | HMI log | Training review, alarm rationalization |

### 7.2 Shift Structure & Handover

| Shift | Hours | Crew | Handover Protocol |
|---|---|---|---|
| **Day** | 06:00-14:00 | 3 (Lead, Operator, Trainee) | Digital log + verbal + KPI snapshot |
| **Swing** | 14:00-22:00 | 3 (Lead, Operator, Trainee) | Digital log + verbal + anomaly flag |
| **Night** | 22:00-06:00 | 2 (Lead, Operator) | Digital log + verbal + overnight plan |

**Digital Handover Log (PROD-37):**
- Batch records completed this shift
- KPI dashboard snapshot (auto-generated)
- Active NCRs / CAPAs
- Anomaly flags (AE, vibration, FBG drift, twin alerts)
- Maintenance actions performed
- Feedstock inventory status
- Consumable levels (N₂, Ar, DI resin, In foil, braze alloy)
- Next shift priorities

---
