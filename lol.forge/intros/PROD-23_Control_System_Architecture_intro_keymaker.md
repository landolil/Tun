# Keymaker Heuristic — PROD-23 Control System Architecture

## The Empirical Lock

The fabrication fidelity gap in Aegis-Forge I control is the **divergence between continuous-time control theory and discrete-time implementation under electromagnetic hostility.**

Three specific gaps lock the design:

1. **ZVS maintenance under load transients:** The Class E inverter (PROD-10) achieves ZVS by aligning the MOSFET voltage zero-crossing with gate turn-on. Theory assumes continuous phase adjustment. Reality: the GaN gate driver (FPGA, L0) updates at 100 kHz (10 μs). The varactor bias (RTU, L1) updates at 1 kHz (1 ms). The PLL phase error integrates over 10 ms (100 Hz). A 500 kW load step (slug drop at Port 4C) changes coil Q-factor by 40% in <5 ms. The inner loop (FPGA desat + ZVS detect) must hold ZVS while the outer loop (varactor) catches up. The gap: **continuous phase control vs. 100× slower varactor actuation.**

2. **FBG temperature reconstruction under thermal gradient:** The drum wall has a 1500°C radial gradient (ID 2200°C → OD 700°C). FBG sensors at 6 angular positions × 8 axial zones measure wavelength shift (0.15 nm/°C). But PMMA fiber degrades >800°C — the sensors are embedded in ZrO₂ potting (PROD-11) at the cold side of the drum flange. The measured temperature is a convolution of flange conduction, radiation view factor, and gas convection. The gap: **point measurement at cold flange → inference of hot drum inner surface.** The RTU runs a 1D transient thermal model (Fourier number Fo = αt/L², α = 1.2×10⁻⁵ m²/s for ZrB₂-SiC) to reconstruct the inner wall temperature. This model must execute at 1 kHz with <1 ms latency.

3. **SIS voting under common-cause failure:** SIL-3 requires 2oo3 voting with β-factor <2% (IEC 61508). But all three FBG sensors for a SIF (e.g., SIF-00-01 over-temp) share the same PMMA POF cable tray, same interrogator wavelength, same RTU power supply. A single GIC event, cable crush, or interrogator failure takes all three channels. The gap: **physical independence ≠ functional independence.** The lock is broken by: (a) spatial separation (sensors at 0°, 120°, 240°), (b) wavelength diversity (WDM channels λ₁, λ₄, λ₇), (c) power diversity (separate isolated DC-DC per sensor group), (d) temporal diversity (staggered acquisition phases).

---

## The Mathematical Key

The single computational primitive that generates the control solution is the **discrete-time thermal-admittance model executed at 1 kHz on the Zone RTU:**

```
T_inner[k+1] = T_inner[k] + (Δt/ρcV) × (P_ind[k] - hA(T_inner[k] - T_flange[k]) - εσA(T_inner⁴[k] - T_surr⁴))
```

Where:
- `T_inner` = drum inner wall temperature (state, unmeasured)
- `T_flange` = FBG-measured flange temperature (384 channels, 125 Hz each)
- `P_ind` = induction power (RTU command, 0–500 kW, known)
- `h` = effective convection coefficient (identified per zone, updated 100 Hz)
- `ε` = emissivity (YInMn glaze, ε = 0.15 at 2200°C, PROD-13)
- `σ` = Stefan-Boltzmann constant
- `ρcV` = thermal mass of active drum segment (identified)

**This one equation, discretized with Δt = 1 ms and executed on the ARM Cortex-A53 (Zephyr RTOS, <100 μs compute), is the atomic computation.**

Everything else derives from it:
- **Thermal PID setpoint:** `T_setpoint` → `P_ind_cmd` via inverse model (feedforward) + PID correction
- **Resonance tracker:** `P_ind_cmd` → frequency/varactor via pre-computed LUT (power-to-frequency map, PROD-10)
- **Cascade feedforward:** Stage N `T_inner` profile → Stage N+1 `T_setpoint` with transport delay
- **SIF trip logic:** `T_inner[k] > T_limit` (predicted 50 ms ahead) → pre-emptive trip
- **Digital twin sync:** `T_inner` trajectory published at 10 Hz for PROD-37

**Validation:** The model identifies `h` and `ρcV` via recursive least squares (RLS) during Stage 1 dry-run (no feedstock, 500°C). Convergence in <60 s. Prediction error <5°C at 1500°C (PROD-24 thermal model validation).

---

## The Turn (Both Directions)

### Theory→History Validation

The thermal-admittance model predicts historical test data from the CSMFAB0108 development program:

| Test Article | Condition | Model Prediction | Measured | Error |
|--------------|-----------|------------------|----------|-------|
| **Vol 2 Drum** | 500 kW step, Zone 4 | 1800°C in 42 s | 1820°C in 45 s | +1.1% |
| **Vol 2 Drum** | Cooling loss, Zone 6 | 2200°C in 18 s | 2190°C in 17 s | -0.5% |
| **PROD-10 Inv** | 100 kHz, 300 kW, cold | ZVS lock 38 ms | ZVS lock 35 ms | -8% |
| **PROD-10 Inv** | Load step 0→500 kW | ZVS maintained | ZVS maintained | 0% |
| **CT-04 SIS** | FBG over-temp inject | Trip 38 ms | Trip 36 ms | -5% |

The model **predicts history within measurement uncertainty**. The 1.1% over-prediction on heat-up is attributed to unmodeled radiation view factor change as drum expands (0.3 mm radial growth at 2200°C).

### History→Theory Correction

Historical anomalies refine the mathematical key:

1. **Anomaly:** Zone 3 (pyrolysis stage) showed 15°C oscillation at 0.8 Hz during char formation (Vol 2, Test 7).
   **Root cause:** Char layer growth modulates coil coupling (Q-factor ±12%).
   **Correction:** Added char-thickness estimator to RLS state vector:
   ```
   d_char/dt = k_char × exp(-Ea/RT) × (1 - X_char)
   ```
   Coupled to `h` in thermal model. Oscillation damped to <2°C.

2. **Anomaly:** FBG wavelength drift >0.5 nm/hr at 800°C (PROD-11, 1000 hr test).
   **Root cause:** PMMA polymer relaxation (not thermal).
   **Correction:** Added drift compensation in interrogator FPGA — reference FBG (unstrained, isothermal) tracks common-mode drift. Subtracted from measurement channels.

3. **Anomaly:** TSN latency spike to 2.3 ms during GIC simulation (CT-07).
   **Root cause:** PTP grandmaster holdover switched to OCXO, boundary clocks lost sync for 2 announce intervals (2 s).
   **Correction:** Reduced announce interval to 0.5 s, added local OCXO (Microchip 5071A) on each RTU/PLC. Sync recovery <200 ms.

4. **Anomaly:** Varactor bias saturation at 28 V during Zone 8 startup (1676°C, zircon dissociation).
   **Root cause:** Coil inductance drift >15% from thermal expansion + ZrO₂ slag loading.
   **Correction:** Extended cap bank range (6-bit → 8-bit, 256 steps), added feedforward from slag level (POF sensor).

The mathematical key **absorbs history** — each anomaly adds a state or parameter to the discrete-time model, but the core primitive (thermal admittance at 1 kHz) remains unchanged. This is the signature of a correct primitive: it extends, it does not rewrite.