## 7. Human Factors Validation (PROD-35 Integration)

### 7.1 HFE Validation Scope

Per PROD-35 ISA-101 Level 1-4 HMI hierarchy and PROD-34 RCT tensor.

### 7.2 Operator-in-Loop Scenarios

| Scenario ID | Description | Operators | Duration | Pass Criteria |
|-------------|-------------|-----------|----------|---------------|
| **HFE-01** | Nominal batch (Cat A) | 2 Forge + 1 Depot | 5 hr | Zero errors, <50 alarms |
| **HFE-02** | Stage 4 In-first discharge | 2 Forge | 2 hr | Visual confirm + XRF |
| **HFE-03** | Stage 6 H₂ <4% verification | 2 Forge | 1 hr | Verification <5 min |
| **HFE-04** | SIF Bypass Authorization | Shift Lead + Safety Eng | 15 min | Dual-key, 4hr timer |
| **HFE-05** | Carrington Ride-Through Exit | Shift Lead + Utility | 30 min | Staged reconnect |
| **HFE-06** | FBG Tamper Alarm Response | Controls Eng | 10 min | Acknowledge + action |
| **HFE-07** | Emergency Shutdown | All 4 operators | 5 min | <2 min full stop |
| **HFE-08** | Phoenix Depot Classification | 2 Depot | 2 hr | LIBS confirm + QR |

### 7.3 HFE Metrics

| Metric | Target | Measurement |
|--------|--------|-------------|
| **Task Completion Time** | ≤120% of expert baseline | Stopwatch + video |
| **Error Rate** | 0 critical, ≤2 minor/scenario | Observer log |
| **Situational Awareness (SAGAT)** | >90% | Probe queries during scenario |
| **Workload (NASA-TLX)** | <60 (moderate) | Post-scenario survey |
| **Alarm Flood** | <50/hr steady state | ISA-18.2 alarm log |
| **HMI Response Time** | <200 ms (L2/L3), <50 ms (L4) | Instrumented |

### 7.4 Simulator Validation

The training simulator (PROD-34) must be validated against the digital twin (PROD-37):

| Validation | Method | Acceptance |
|------------|--------|------------|
| **Physics Fidelity** | Simulator vs. Twin on 100 scenarios | ΔT <5°C, ΔP <2%, ΔX <0.02 |
| **Anomaly Injection** | 50 anomaly scenarios | Operator response time ±15% |
| **HMI Replica** | Pixel-perfect vs. Forge HMI | Zero discrepancies |
| **Scenario Library** | All PROD-39 HFE scenarios + PROD-37 auto-gen | 100% coverage |

---
