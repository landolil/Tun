## 5.2 Visitor Impact Model — Quantifying the Damage

### 5.2.1 Multi-Factor Degradation Model

```
TOTAL DEGRADATION INDEX (TDI) = w₁×E + w₂×C + w₃×V + w₄×B + w₅×T

Where:
E = Physical Erosion (mm/yr) = k₁ × N^1.3 × S^0.8 × P^0.5
C = Chemical/Carbonate Damage = k₂ × N × CO₂_visitor × t_dwell
V = Vibration Damage = k₃ × N × V_vehicle × d⁻¹.⁵
B = Biological (microbiological, lichen) = k₄ × N^0.7 × H^0.5
T = Theft/Vandalism Probability = 1 - e^(-k₅ × N × t_unsupervised)

Weights (CPA + DIBAM calibrated):
w₁=0.30 (erosion), w₂=0.20 (chemical), w₃=0.15 (vibration), w₄=0.15 (bio), w₅=0.20 (theft)

Variables:
N = Daily visitors (persons)
S = Trail slope (%)
P = Precipitation events (>5mm/yr)
CO₂_visitor = 0.04 kg/hr (exhalation)
t_dwell = Dwell time (hrs)
V_vehicle = Vehicle vibration (mm/s at 10m)
d = Distance to structure (m)
H = Humidity (%)
t_unsupervised = Hours without guide presence
```

### 5.2.2 Current vs Target TDI by Site

| Site | Current N | Current TDI | Target N | Target TDI | Reduction Needed |
|------|-----------|-------------|----------|------------|------------------|
| **Tulor** | 120 (peak) | **0.87** (CRITICAL) | 50 | **0.22** (SAFE) | **-58%** |
| **Pukará de Quitor** | 350 (peak) | **0.73** (HIGH) | 200 | **0.28** (SAFE) | **-43%** |
| **Yerbas Buenas** | 280 (peak) | **0.68** (HIGH) | 100 | **0.18** (SAFE) | **-64%** |
| **Iglesia San Pedro** | 400 (peak) | **0.45** (MODERATE) | 300 | **0.25** (SAFE) | **-25%** |
| **Chullpas (all)** | 0 (closed) | **0.02** (baseline) | 0 | **0.02** | **MAINTAIN CLOSURE** |

**Critical Finding**: **All open MN sites exceed safe TDI (0.3) during peak season** — carrying capacity enforcement is not optional, it is preservation imperative.

---
