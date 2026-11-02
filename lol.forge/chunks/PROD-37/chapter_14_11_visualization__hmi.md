## 11. Visualization & HMI

### 11.1 ISA-101 Level 1-4 Hierarchy (Per PROD-35)

| Level | Display | Refresh | Content | Audience |
|-------|---------|---------|---------|----------|
| **L1 Overview** | 55" wall | 1 Hz | Forge health, stage status, energy, yield, anomalies | Shift Lead, Visitors |
| **L2 Unit** | 32" console | 1 Hz | Zone power, drum profile, SIF states, gas | Operator (Forge) |
| **L3 Detail** | 27" console | 10 Hz | FBG heatmap, twin prediction, Λ_ML, CPAT | Controls Engineer |
| **L4 Diagnostic** | 27" console | 100 Hz | Raw FBG, EM waveforms, AE spectrum, ROM residuals | Maintenance, Cyber |

### 11.2 3D Twin View

- **Real-time drum**: 384 FBG channels mapped to cylindrical mesh, color = temperature
- **Twin overlay**: Predicted T+1s, T+10s, T+60s as semi-transparent layers
- **Anomaly cards**: Pinned to 3D location (e.g., "Λ_ML=12.3 at Z=450mm, θ=120°")
- **Interaction**: Touch/click → drill to L4 diagnostic for that zone

### 11.3 Anomaly Card Format (PROD-35)

```
┌─────────────────────────────────────┐
│ ⚠ SEV-2  Λ_ML=12.3  FBG Ch 142-148 │
├─────────────────────────────────────┤
│ Location: Zone 4, 300-400 mm        │
│ Twin prediction: T+60s ΔT = +45°C   │
│ Root cause (twin): Char buildup     │
│ Recommended action:                 │
│   1. Reduce Zone 4 power 15%        │
│   2. Increase RPM 10%               │
│   3. Verify Stage 3 char discharge  │
│ Operator acknowledgement: [REQUIRED]│
└─────────────────────────────────────┘
```

---
