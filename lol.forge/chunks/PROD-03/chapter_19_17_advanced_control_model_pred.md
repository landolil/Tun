## 17. Advanced Control: Model Predictive Control (MPC)

### 17.1 MPC Formulation for Thermal Cascade

**Prediction Model (Discrete, 10 s step):**
$$x_{k+1} = A_d x_k + B_d u_k + w_k$$
$$y_k = C_d x_k + v_k$$

Where:
- x = [T_feed, T_drum_A, T_drum_B, T_drum_C, T_aerogel, T_vessel, P_zone1...8, ω]ᵀ (22 states)
- u = [P_zone1...8, ω_drum, N₂_flow]ᵀ (10 inputs)
- y = [T_fbg_1...48, P_port1...8, gas_composition]ᵀ (58 outputs)

**Constraints:**
- 50°C ≤ T_zone ≤ 2200°C
- |ΔT/Δt| ≤ 20°C/min
- 0 ≤ P_zone ≤ P_max(zone)
- 0 ≤ ω ≤ 500 RPM
- Port_purity_j ≥ 90%

**Cost Function (Horizon N=90 = 15 min):**
$$J = \sum_{i=1}^{N} (y_{k+i} - r_{k+i})^T Q (y_{k+i} - r_{k+i}) + \Delta u_{k+i}^T R \Delta u_{k+i}$$

Where r = reference trajectory (cascade profile), Q = output weights, R = move suppression.

**Solver:** OSQP (operator splitting QP), 10 ms solve time on FPGA.

### 17.2 Adaptive MPC with Online Model Update

**Recursive Least Squares (RLS) for Parameter Estimation:**
- Parameters: C_feed, h_ind, h_loss, k_coupling
- Forgetting factor: λ = 0.995 (≈200 sample memory)
- Update rate: 1 Hz (every 10 control cycles)

**Performance Improvement (vs Fixed PID):**
| Metric | Fixed PID | Adaptive MPC | Improvement |
|---|---|---|---|
| Temperature overshoot | ±8°C | ±2°C | 75% |
| Energy/ton | 1180 kWh | 1050 kWh | 11% |
| Stage transition time | +15% | baseline | -15% |
| Recovery variance | ±3% | ±1% | 67% |

---
