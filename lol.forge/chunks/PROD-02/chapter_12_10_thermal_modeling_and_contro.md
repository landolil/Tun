## 10. Thermal Modeling and Control Engineering

### 10.1 Drum Thermal Model (Lumped + Distributed)

**Thermal Capacitance:**
- Drum (ZrB₂-SiC, 156 kg): C_drum = 156 kg × 750 J/kg·K = 117 kJ/K
- Feedstock (50 kg, avg c_p=1000): C_feed = 50 kJ/K
- Total: C_total ≈ 167 kJ/K

**Heat Transfer Coefficients:**
- Induction → feedstock: h_ind = 500-5000 W/m²K (frequency dependent)
- Feedstock → drum wall: h_cond = k_feed / δ_contact ≈ 50-200 W/m²K
- Drum wall → aerogel: k_aerogel = 0.010 W/m·K, 50 mm → R = 5000 K/W
- Aerogel → vessel: h_rad = 4εσT³ ≈ 50 W/m²K at 1000°C

**Thermal Time Constant:**
τ = C_total / (hA) ≈ 167,000 / (500 × 1.5) ≈ 223 s ≈ 3.7 min (induction coupling limited)

### 10.2 Model Predictive Control (MPC) Architecture

**State Vector (per zone):**
x = [T_drum, T_feed, T_aerogel, T_vessel, P_ind, ω_drum]ᵀ

**Control Inputs:**
u = [P_zone1...8, ω_drum, N₂_flow, Ar_flow]ᵀ

**Constraints:**
- T_zone ∈ [T_target ±5°C]
- dT/dt ≤ 20°C/min (thermal shock limit)
- P_zone ≤ P_max(zone)
- ω_drum ≤ 500 RPM

**Cost Function:**
J = Σ(Q(T - T_target)² + R(Δu)²) + terminal penalty

**Horizon:** 15 min (receding), update every 10 s (FBG sample rate)

### 10.3 Feedforward + Feedback Control

**Feedforward:** Pre-computed power trajectory from thermal model + feedstock assay
**Feedback:** FBG temperature error → PID correction
**Adaptive:** Kalman filter updates thermal capacitance, heat loss coefficients after each batch

---
