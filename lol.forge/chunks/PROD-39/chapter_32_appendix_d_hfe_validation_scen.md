## Appendix D: HFE Validation Scenarios (PROD-35)

### D.1 Scenario Library (Simulator)

| Scenario | Source | Fidelity | Operators | RCT Tensor |
|----------|--------|----------|-----------|------------|
| HFE-01 Nominal Batch | PROD-39 Sec 7.2 | Full twin | 2 Forge + 1 Depot | RCT update |
| HFE-02 In-First | PROD-39 Sec 7.2 | Full twin | 2 Forge | RCT update |
| HFE-03 H₂ Verify | PROD-39 Sec 7.2 | Full twin | 2 Forge | RCT update |
| HFE-04 SIF Bypass | PROD-39 Sec 7.2 | Full twin | Shift Lead + Safety | RCT update |
| HFE-05 Carrington Exit | PROD-39 Sec 7.2 | Full twin + GIC | Shift Lead + Utility | RCT update |
| HFE-06 FBG Tamper | PROD-39 Sec 7.2 | Full twin + CPAT | Controls Eng | RCT update |
| HFE-07 E-Stop | PROD-39 Sec 7.2 | Full twin | All 4 | RCT update |
| HFE-08 Phoenix Classify | PROD-39 Sec 7.2 | Full twin + LIBS | 2 Depot | RCT update |

### D.2 Validation Metrics Collection

```json
{
  scenario: HFE-04,
  operator_ids: [OP-2026-042, OP-2026-088],
  start_time: 2026-11-03T14:00:00Z,
  end_time: 2026-11-03T14:15:00Z,
  metrics: {
    task_completion_time_sec: 420,
    expert_baseline_sec: 380,
    completion_ratio: 1.105,
    errors_critical: 0,
    errors_minor: 1,
    sagat_score: 0.95,
    nasa_tlx: 55,
    alarm_count: 12,
    hmi_response_times_ms: {L2: 180, L3: 120, L4: 35}
  },
  rct_update: {
    operator_042: {HFE-04: 0.92},
    operator_088: {HFE-04: 0.88}
  },
  disposition: PASS
}
```

---

*End of PROD-39 Test & Evaluation Specification*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*
*Document Number: CSMFAB000000000139 | Revision: 1.0*