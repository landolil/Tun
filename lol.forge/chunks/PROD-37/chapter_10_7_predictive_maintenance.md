## 7. Predictive Maintenance

### 7.1 CBM Dashboard & Λ Thresholds

Condition-Based Maintenance (CBM) dashboard integrates twin predictions with PROD-30 PM schedules:

| Component | Λ Threshold | Action | PROD-30 PM Task |
|-----------|-------------|--------|-----------------|
| FBG Channel | Λ > 3 | Flag for inspection | CT-05 (quarterly) |
| FBG Channel | Λ > 10 | Auto-NCR, replace at next access | CT-05 |
| Aerogel | λ_eff > 0.012 | Schedule replacement | CT-07 (annual) |
| Drum Liner B | σ_vM > 300 MPa | Reduce RPM, plan reline | CT-08 (2000 hr) |
| GaN Inverter | T_j > 120°C | Derate power, check coolant | CT-03 (monthly) |
| PTP Grandmaster | holdover > 12 hr | Replace OCXO | CT-10 (5 yr) |
| BFRP Vessel | AE hits > 10/hr | Hydrotest at next shutdown | CT-06 (5 yr) |

### 7.2 Work Order Automation

When Λ threshold crossed:

```
Auto-Work-Order Generation:
  1. Twin detects Λ > threshold for component C
  2. Check: existing open WO for C? → if yes, update priority
  3. Generate WO with:
       - Component UUID, location, current Λ, trend
       - Twin prediction: RUL (remaining useful life) distribution
       - Required parts (from PROD-30 spares BOM)
       - Required certifications (PROD-34)
       - Safety permits (SIF isolation, hot work, confined space)
  4. Route to Maintenance Planner (auto-assigned by zone)
  5. Planner reviews → approves/modifies → schedules in CMMS
  6. On completion: WO closed → twin RUL reset → Λ baseline updated
```

### 7.3 Spare Parts Prediction

Twin forecasts spare consumption using **survival analysis** on fleet data:

```
For each spare S:
  - Fit Weibull(shape, scale) to fleet replacement history
  - Covariates: operating hours, category mix, RPM profile, ambient
  - Predict: P(failure in next 90 days | current state, planned batches)
  - If P > 0.8: trigger procurement requisition (PROD-33)
  - If P > 0.95: escalate to critical spare, authorize air freight
```

This reduced spare stockouts from 3/yr to 0/yr in PROD-28 validation.

---
