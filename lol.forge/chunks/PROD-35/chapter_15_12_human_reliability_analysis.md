## 12. Human Reliability Analysis

### 12.1 Critical Tasks (HEART/THERP)

| Task | HEART Generic Type | EPC Factors | Nominal HEP | Forge HEP |
|------|-------------------|-------------|-------------|-----------|
| **SG-2 Flange Torque** | F (Restore) | Time pressure ×1.5, Stress ×2 | 0.003 | **0.009** |
| **SG-3 FBG Cal Verify** | C (Complex) | Complexity ×3, Training ×0.5 | 0.016 | **0.024** |
| **CT-04 SIF Proof Witness** | C (Complex) | Responsibility ×2, Procedures ×0.5 | 0.016 | **0.016** |
| **Carrington Exit Auth** | E (Emergency) | Time ×5, Stress ×4, Training ×0.5 | 0.05 | **0.10** |
| **SIF Bypass Dual-Key** | F (Restore) | Responsibility ×2, Time ×1.5 | 0.003 | **0.009** |
| **E-Stop Activation** | A (Simple) | Time ×0.5, Training ×0.5 | 0.001 | **0.00025** |
| **Port Valve Manual Override** | D (Routine) | Access ×2, Tooling ×1.5 | 0.009 | **0.027** |
| **Depot LIBS Classification** | C (Complex) | Complexity ×2, Training ×0.5 | 0.016 | **0.016** |

**Aggregate System HEP** (for batch): ~0.05 (1 in 20 batches has human error requiring recovery) — within PROD-28 target.

### 12.2 Error Reduction Strategies

| Strategy | Application |
|----------|-------------|
| **Forcing Functions** | Port valve: mechanical interlock prevents open if T>setpoint+10°C |
| **Interlocks** | SIF bypass: dual-key + time limit + blockchain + SL + Safety Eng |
| **Verification** | SG-2: dual torque wrench + AE silence; SG-3: residual plot review |
| **Standardization** | All procedures ISA-88 recipe format, QR-linked, version-controlled |
| **Training** | PROD-34 simulator: 50+ scenarios, judgment gates, expert policy comparison |

---
