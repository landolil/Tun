## 6. Centrifugal Ejection Dynamics

### 6.1 Liquid Metal Flow Through Open Port

When the valve opens, the molten metal pool at the drum wall (driven by 84.5 G centrifugal force) flows through the 12 mm aperture into the ZrO₂ mold.

**Flow Physics:**
```
Pressure driving flow: ΔP = ρ_liquid × ω² × (r_drum² - r_mold²) / 2
```
For Al at 700°C (ρ = 2375 kg/m³), ω = 31.4 rad/s (300 RPM), r_drum = 0.3 m, r_mold = 0.35 m:
```
ΔP = 2375 × 31.4² × (0.3² - 0.35²) / 2 = **-28,500 Pa** (negative = outward)
```

Wait — the mold is *outside* the drum, so r_mold > r_drum. The centrifugal potential is higher at the mold. The pressure at the port exit is:
```
P_exit = ρ_liquid × ω² × r_drum² / 2 = 2375 × 31.4² × 0.3² / 2 = **104,000 Pa = 1.04 bar**
```

This 1.04 bar drives flow through the port into the mold.

### 6.2 Flow Rate Calculation

**Orifice Flow (12 mm aperture, discharge coefficient C_d = 0.85):**
```
Q = C_d × A × √(2ΔP/ρ)
A = π × (0.006)² = 1.13×10⁻⁴ m²
Q = 0.85 × 1.13×10⁻⁴ × √(2 × 104,000 / 2375) = **1.8×10⁻⁴ m³/s = 10.8 L/min**
```

**Fill Time for 200 cm³ Mold:**
```
t_fill = V / Q = 200×10⁻⁶ / 1.8×10⁻⁴ = **1.1 seconds**
```

**Reynolds Number:**
```
Re = ρ × v × D / μ
v = Q/A = 1.6 m/s
μ_Al(700°C) = 1.3×10⁻³ Pa·s
Re = 2375 × 1.6 × 0.012 / 0.0013 = **35,000** (turbulent)
```

### 6.3 Flow Characteristics by Metal

| Metal | ρ (kg/m³) | μ (Pa·s) | ΔP (bar) | Q (L/min) | t_fill (s) | Re |
|---|---|---|---|---|---|---|
| Indium (157°C) | 7020 | 2.1×10⁻³ | 3.07 | 22.1 | 0.54 | 48,000 |
| Zn (420°C) | 6570 | 3.5×10⁻³ | 2.87 | 18.9 | 0.63 | 32,000 |
| Aluminum (680°C) | 2375 | 1.3×10⁻³ | 1.04 | 10.8 | 1.11 | 35,000 |
| Copper (1120°C) | 7960 | 3.8×10⁻³ | 3.48 | 20.3 | 0.59 | 41,000 |
| Iron (1400°C) | 7000 | 5.5×10⁻³ | 3.06 | 16.2 | 0.74 | 25,000 |

**All fill times < 1.2 seconds** — well within 8-minute position cycle.

### 6.4 Splash and Drip Control

**Anti-Drip Features:**
1. **Port chamfer:** 45° internal chamfer on drum side directs flow cleanly
2. **Piston retraction:** Actuator holds open for 30 seconds after stage clear — allows complete drainage
3. **N₂ purge pulse:** 2-second, 10 SLPM N₂ pulse after retraction clears residual droplets
4. **Mold pre-heat:** Molds held at 200-400°C (metal-dependent) prevent freezing at port lip

---
