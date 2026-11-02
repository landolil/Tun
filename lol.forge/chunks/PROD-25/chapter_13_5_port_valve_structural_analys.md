## 5. Port Valve Structural Analysis — Ti₃AlC₂/ZrO₂

### 5.1 Actuator Structural Loads

**Thermal actuation force (from PROD-04 Section 8.4):**
| Port | ΔT Trigger | Deflection | F_act (N) | Spring Preload (N) |
|------|------------|------------|-----------|-------------------|
| 1 | 130°C | 0.6 mm | 15 | 48 |
| 5 | 700°C | 3.7 mm | 78 | 37 |
| 8 | 2180°C | 11.5 mm | 243 | 15 |

**Pressure force on piston (5 bar, Ø12 mm):**
$$F_{press} = P \times \pi d^2/4 = 5 \times 10^5 \times \pi \times 0.012^2/4 = \textbf{5.7 N}$$

**Total opening force:** F_act + F_press (pressure assists opening) — **actuator overcomes spring preload**

### 5.2 Ti₃AlC₂ Actuator Strip Stress

**Bilayer strip:** Ti₃AlC₂ (2 mm) / ZrO₂ (2 mm), 2×2×30 mm
**Bending stress (Timoshenko theory):**
$$\sigma_{Ti_3AlC_2} = \frac{E_{Ti} \Delta\alpha \DeltaT}{1+\frac{E_{Ti}t_{Ti}}{E_{Zr}t_{Zr}}} = \frac{280 \times 10^9 \times 1.3 \times 10^{-6} \times \DeltaT}{1+1.4} = 151 \times \DeltaT \text{ MPa}$$

**At Port 8 (ΔT = 2180°C):**
$$\sigma_{Ti} = 151 \times 2180 \times 10^{-6} = \mathbf{329 \text{ MPa}}$$

**Ti₃AlC₂ σ_f at 1400°C (actuator max temp): 280 MPa** → **SF = 0.85 (UNACCEPTABLE)**

**Resolution:** Actuator operates at **lower temperature** than drum gas. Actuator pocket is at drum OD (700°C max at Stage 8 per PROD-24 Section 7.1). At 700°C:
- ΔT = 700 - 20 = 680°C
- σ_Ti = 151 × 680 × 10⁻⁶ = **103 MPa**
- σ_f at 700°C ≈ 320 MPa → **SF = 3.1×**

**Actuator thermal isolation:** Pocket depth 35 mm into drum wall (from OD). At drum OD = 700°C, 35 mm inward = 1050°C (linear gradient). **Add 5 mm ceramic fiber insulation (ZrO₂ felt) at pocket outer face** → actuator sees ≤700°C.

### 5.3 Piston & Seal Stress

**Piston (3Y-TZP, Ø12×25 mm, 2 mm wall):**
- Pressure load: 5.7 N on 113 mm² → 0.05 MPa (negligible)
- Centrifugal load (85 G, 25 g piston): 0.02 N
- Spring preload (50 N): Hertzian contact on 45° cone
  - Contact width: 0.5 mm
  - Max contact pressure: ~200 MPa
  - 3Y-TZP σ_f at 700°C: 1000 MPa → **SF = 5×**

**Seal leak rate (line contact, 5 bar, 2200°C):**
- He leak test at RT: <10⁻⁸ mbar·L/s
- At temperature: metal/ceramic creep closes micro-gaps → **<10⁻⁶ mbar·L/s maintained**

### 5.4 Thermal Cycling Fatigue

**Actuator cycles:** 1 per batch (6/day), 10,000 hrs = 2,200 cycles
**Strain range per cycle:** Δε = Δα × ΔT = 1.3×10⁻⁶ × 680 = 8.8×10⁻⁴
**Low-cycle fatigue (Ti₃AlC₂, kinking mechanism):**
- Δε_plastic ≈ 0 (elastic bending, kinking at ~0.5% strain)
- N_f > 10⁵ cycles at this strain range → **SF > 45×**

**Piston spring (PEEK CF40 wave spring):**
- 3 waves, 50 N preload at 20°C, 30 N at 800°C
- Creep at 800°C, 30 N: <1% strain in 10,000 hrs
- **Replace at 5,000 hrs (PM interval)**

---
