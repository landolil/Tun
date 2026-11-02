## 1. Maintenance Strategy

### 1.1 Philosophy: RCM + CBM + TBM Hybrid

The Aegis-Forge I maintenance strategy integrates three methodologies, constrained by SIL-3 safety and zero-metal Carrington immunity:

| Methodology | Scope | Driver |
|---|---|---|
| **Reliability-Centered Maintenance (RCM)** | Safety-critical systems (SIS, pressure boundary, GIC immunity) | IEC 61508 SIL-3 mandates; failure consequences unacceptable |
| **Condition-Based Monitoring (CBM)** | Rotating equipment, thermal systems, dielectric integrity | FBG/AE/vibration provide continuous health data (PROD-28) |
| **Time-Based Maintenance (TBM)** | Consumables, calibration, regulatory inspections | Fixed intervals for non-monitorable degradation |

**Hybrid Rule:** SIL-3 SIF components (24 SIFs) follow TBM (proof test intervals) *overriding* CBM — no condition-based extension for safety functions. All other systems use CBM with RCM-derived base intervals.

### 1.2 Maintenance Organization

| Role | Responsibility | Qualification |
|---|---|---|
| **Maintenance Manager** | PM program ownership, resource planning, KPI tracking | PE + 10 yr nuclear/pressure vessel |
| **Mechanical Engineer** | Drum, vessel, carousel, frame, port valves | PE + 5 yr ceramics/composites |
| **Electrical Engineer** | Coil bank, power electronics, FBG, TSN/PTP | PE + 5 yr power electronics |
| **SIS Engineer** | SIL-3 SIF proof tests, PFD tracking, re-certification | TÜV FS Expert (IEC 61508) |
| **NDT Level III** | UT/CT/AE/IR program, procedure approval | ASNT Level III (UT, CT, ET, AE) |
| **Metrology Engineer** | Calibration program, CMM/UT/FBG standards | ISO 17025 assessor |
| **Maintenance Technicians (×6)** | Execute PM/CBM work orders, dual-verify critical tasks | PROD-34 L2/L3 cert |

### 1.3 Maintenance KPIs

| KPI | Target | Measurement |
|---|---|---|
| **Planned Maintenance Compliance (PMC)** | >95% | PM work orders completed on schedule / due |
| **Mean Time Between Failures (MTBF)** | >50,000 hrs (system) | PROD-37 fleet twin |
| **Mean Time To Repair (MTTR)** | <4 hrs (critical) | CMMS work order data |
| **Spare Parts Availability** | 100% critical spares on-site | Inventory audit |
| **FBG Channel Survival** | 384/384 active | PROD-28 CT-06 + in-service |
| **SIF PFD_avg** | <1×10⁻³ (SIL-3 subset) | CT-04 proof test data |
| **CAPA Closure** | 100% within 30 days | PROD-28 CAPA tracker |
| **Overhaul Schedule Adherence** | ±3 days | CMMS schedule vs. actual |

---
