## 3.3 Supply Infrastructure — Fragile, Single-Source

### 3.3.1 Current Infrastructure

| Component | Specification | Condition | Vulnerability |
|-----------|---------------|-----------|---------------|
| **Puripica Wellfield** | 4 wells × 20 L/s, 150m depth, submersible pumps | Good (2018 rehab) | Single power line, no backup generation |
| **Chiu Chiu Wellfield** | 3 wells × 13 L/s, 120m depth, submersible pumps | Fair (2012 install) | Arsenic 0.018 mg/L (exceeds 0.01), needs treatment |
| **Transmission Pipeline** | 45 km HDPE 315mm, 20 bar | Good | **Single pipeline — no redundancy**, crosses 3 fault lines |
| **Storage Tanks** | 2 × 5,000 m³ (San Pedro, Toconao) | Fair | **24hr autonomy at peak** — insufficient |
| **Distribution Network** | 60 km PVC/HDPE, 60% >20 yr old | Poor | **Leakage 35%** (non-revenue water) |
| **Treatment** | Chlorination only (no As removal) | **Inadequate** | As 0.015 mg/L at tap (WHO 0.01) |

### 3.3.2 Arsenic Crisis — The Hidden Health Risk

| Parameter | WHO Guideline | Chile Standard (NCh 409) | San Pedro Tap (2023 Avg) | Source Water |
|-----------|---------------|--------------------------|-------------------------|--------------|
| **Arsenic (As)** | **0.010 mg/L** | 0.050 mg/L (transitional) | **0.015 mg/L** | Puripica 0.012, Chiu Chiu 0.018 |
| **Boron (B)** | 2.4 mg/L | 2.4 mg/L | 2.5 mg/L | Chiu Chiu 3.2 mg/L |
| **Fluoride (F)** | 1.5 mg/L | 1.5 mg/L | 1.8 mg/L | Puripica 2.1 mg/L |
| **Compliance** | **FAIL** | **PASS (transitional)** | **NON-COMPLIANT WHO** | — |

**Health Impact Model**:
```
LIFETIME CANCER RISK (Arsenic) = C × IR × EF × ED × CSF / (BW × AT)
Where:
C = 0.015 mg/L (concentration)
IR = 2 L/day (ingestion rate)
EF = 365 days/yr
ED = 30 yr (exposure duration)
CSF = 1.5 (mg/kg-day)⁻¹ (cancer slope factor)
BW = 70 kg (body weight)
AT = 25,550 days (70 yr averaging time)

RISK = 0.015 × 2 × 365 × 30 × 1.5 / (70 × 25,550) = **2.3×10⁻⁴ (2.3 in 10,000)**
**WHO TOLERABLE RISK: 1×10⁻⁵** → **23× HIGHER THAN ACCEPTABLE**
```

---
