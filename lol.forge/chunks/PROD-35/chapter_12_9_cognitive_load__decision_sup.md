## 9. Cognitive Load & Decision Support

### 9.1 Information Density Management

**ISA-101 Level 1 Display Rules:**
- Max 7±2 elements per display region
- No scrolling on Level 1-2 (all critical data visible)
- Trend compression: 1 hr / 8 hr / 24 hr toggle (not simultaneous)
- Alarm summary: Count by priority + top 3 active (not full list)

**Cognitive Offload Features:**
- **Auto-Summary**: "Stage 4: In 6.4g, Sn 12g, Pb 45g — all spec" (vs. raw XRF table)
- **Predictive Highlight**: Twin predicts Stage 6 Cu grade → pre-highlight Port 6B setpoint
- **Anomaly Card**: Λ > 10 → pop-up card with: symptom, likely cause, recommended action, expert policy
- **Gesture Filter**: Leap Motion 3D twin — pinch to zoom, swipe stage, point to annotate

### 9.2 Automation Bias Mitigation (PROD-23, 28, 37)

| Bias | Countermeasure |
|------|----------------|
| **Over-reliance on Twin** | "Twin Uncertainty" badge on every recommendation (σ from ensemble) |
| **Alarm Flood Paralysis** | ISA-18.2 chattering filter + priority-only audio + SL alarm ownership |
| **Confirmation Bias** | Forced "devil's advocate" at SG-2, SG-3, CT-04, SAT-05: "What if wrong?" |
| **Mode Confusion** | L0/L1/L2/L3 mode explicit on all displays (color + text + icon) |
| **Complacency** | Surprise scenarios in simulator (PROD-34), unannounced CT-04 partial |

### 9.3 Workload Assessment (NASA-TLX)

| Phase | Mental | Physical | Temporal | Performance | Effort | Frustration | **TLX Score** |
|-------|--------|----------|----------|-------------|--------|-------------|---------------|
| **Steady State** | 40 | 10 | 20 | 20 | 30 | 10 | **~55** |
| **Startup/Shutdown** | 60 | 30 | 50 | 40 | 60 | 30 | **~78** |
| **Carrington Storm** | 80 | 40 | 80 | 60 | 80 | 60 | **~93** |
| **SIF Bypass Gate** | 70 | 10 | 60 | 70 | 70 | 50 | **~85** |
| **First Hot Pour (SAT-05)** | 80 | 20 | 40 | 80 | 70 | 40 | **~87** |

**Thresholds**: Steady <60 (acceptable), Upset <80 (manageable with support), Emergency >80 (requires SL + second operator).

---
