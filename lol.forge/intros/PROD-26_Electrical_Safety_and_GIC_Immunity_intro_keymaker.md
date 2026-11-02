# Keymaker Heuristic — PROD-26 Electrical Safety & GIC Immunity

## The Empirical Lock

The fabrication fidelity gap in Aegis-Forge I electrical safety is the **divergence between IEC 61508 / NFPA 70E compliant design and the measured behavior of an all-dielectric control system inside a 500 kW induction furnace at 2200°C during a Carrington storm.**

Three specific locks prevent traditional electrical safety engineering from closing this gap:

1. **Grounding is the vulnerability, not the protection:** Every industrial standard (IEEE 142, NFPA 70, IEC 60364) mandates equipment grounding conductors for fault current return and shock protection. But in the forge, the ground conductor *becomes* the GIC antenna. 5000 nT/s induces >100 V/km. A 50 m ground wire = 5 V common-mode. The GaN gate driver threshold is 6 V. The "safety ground" destroys the safety system. The lock: **safety ground as GIC antenna.**

2. **EMC shielding requires conductivity — the forge forbids it:** CISPR 11 / IEC 61000-4 assume metallic enclosures (steel, aluminum) for radiated emission containment and immunity. But at 2200°C with 500 kW of 1–100 kHz magnetic fields, a steel cabinet becomes an induction heater. The measured B-field at Z8 is 39.6 mT. Eddy current heating in 2 mm steel: P = π²B²f²d²V/6ρ ≈ 50 kW. The cabinet would melt. The lock: **metallic shielding as induction heater.**

3. **SIL-3 independence assumes no shared infrastructure:** IEC 61508 2oo3 voting requires physical separation of sensors, logic solvers, and final elements. But the forge has: 3 FBG sensors sharing 1 interrogator, 3 RTUs sharing 1 TSN ring, 3 SIS FPGAs sharing 1 TSN VLAN, all powered from 1 DC bus. A single interrogator failure = common cause = all 3 channels lost. The lock: **shared infrastructure as common cause failure.**

**Common thread:** Every lock is a **standard safety practice that becomes a hazard in the forge's unique electromagnetic-thermal environment.** The empirical lock is the sum of all safety practices that invert under Carrington + induction + temperature.

---

## The Mathematical Key

The single computational primitive that generates the electrical safety solution is the **discrete-time thermal-admittance model executed at 1 kHz on the Zone RTU, which doubles as the GIC/SIF prediction engine:**

$$T_{inner}[k+1] = T_{inner}[k] + \frac{\Delta t}{\rho c V} \left( P_{ind}[k] - h A (T_{inner}[k] - T_{flange}[k]) - \epsilon \sigma A (T_{inner}^4[k] - T_{surr}^4) \right)$$

Where:
- $T_{inner}$ = Drum inner surface temperature (virtual sensor, reconstructed from 48 FBG/zone)
- $P_{ind}$ = Induction power command (from thermal PID + feedforward)
- $h A$ = Convective conductance to flange (identified online)
- $\epsilon \sigma A$ = Radiative conductance (dominant >800°C, T⁴ nonlinearity)
- $\Delta t = 1$ ms (RTU cycle time)

**This one equation, discretized on the ARM Cortex-A53 (Zephyr RTOS, <100 μs compute), is the atomic computation.**

Everything in this document derives from it:

- **GIC Ride-Through (Section 3.3):** The model predicts $T_{inner}$ 50 ms ahead. If grid dV/dt > threshold → model projects thermal trajectory → if $dT/dt > 100°C/s$ predicted → pre-emptive ride-through initiation. The same model that controls temperature predicts the thermal consequence of grid loss.

- **SIS Pre-Emptive Trip (Section 8):** SIF-00-01 (drum over-temp) uses model prediction: if $T_{inner}[k+50] > T_{lim}$ → trip now, not when FBG reads limit. 50 ms prediction horizon matches SIS response requirement.

- **Resonance Tracking (PROD-10/23):** The model's $P_{ind}$ output feeds the power-to-frequency LUT. ZVS maintenance requires knowing thermal load → impedance → frequency shift. The model provides the thermal load estimate.

- **Arc Flash Energy (Section 7):** The model's $T_{inner}$ trajectory defines the thermal state during fault clearing. Incident energy calculation uses actual $T_{inner}(t)$ not worst-case.

- **Insulation Aging (Section 11):** The model's $T_{flange}$ history feeds Arrhenius aging model for PTFE/PEX-a/BFRP. Predictive maintenance triggers at 80% design life.

- **Digital Twin Sync (PROD-37):** The model state vector $[T_{inner}, T_{flange}, P_{ind}, f_{res}]$ published at 10 Hz via OPC-UA/Kafka is the twin's boundary condition.

**The mathematical key is not the PID, not the PLL, not the SIS logic — it is the thermal-admittance model that unifies temperature control, GIC survival, SIS pre-emption, resonance tracking, and digital twin synchronization.** If you execute this model correctly at 1 kHz with the right $hA(T)$, $\epsilon\sigma A(T)$, $\rho c V(T)$, you get electrical safety. The SIL-3 logic is just the trip condition on the model output.

---

## The Turn (Both Directions)

### Theory→History Validation

The thermal-admittance model predicts historical test data from the CSMFAB0108 development program:

| Test Article | Condition | Model Prediction | Measured | Error | Key Coupling |
|--------------|-----------|------------------|----------|-------|--------------|
| **PROD-10 FA-01** | 500 kW step to 1800°C | 42 s to setpoint | 45 s | +7% | Radiative T⁴ |
| **PROD-10 FA-01** | ZVS lock acquisition | 38 ms | 35 ms | -8% | Varactor + cap bank |
| **PROD-23** | SIF-00-01 trip | 38 ms (predicted) | 36 ms | -5% | Model 50 ms ahead |
| **PROD-23** | GIC ride-through entry | 5 ms (cap) + 10 ms (contactor) | 4.8 ms + 9.7 ms | <3% | DC link hold-up |
| **PROD-23** | GIC ride-through exit | 30 min stable grid | 28 min | -7% | Thermal state verify |
| **PROD-25** | Megger all penetrations | >1 GΩ | >10 GΩ | 10× | Dielectric design |

The model **predicts history within measurement uncertainty** when all couplings (radiative T⁴, convective h(T), thermal mass ρcV(T), induction efficiency η(f,T)) are active.

### History→Theory Correction

Historical anomalies refine the model's constitutive parameters and boundary conditions:

1. **Anomaly:** Char growth oscillation at 0.8 Hz, ±15°C (PROD-16 Stage 3, 2026-10).
   **Root cause:** Char layer thickness changes thermal resistance → modulates $hA$ → modulates $T_{inner}$ → modulates pyrolysis rate → modulates char growth.
   **Correction:** Added char thickness state $\delta_{char}[k]$ to RLS (Recursive Least Squares) estimator. $\delta_{char}[k+1] = \delta_{char}[k] + \alpha (T_{inner}[k] - T_{pyro}) \Delta t$. Model residual dropped from 8°C to 1.2°C RMS.

2. **Anomaly:** FBG wavelength drift 0.5 nm/hr at 2200°C (PROD-24 FA-01, 2026-09).
   **Root cause:** PMMA FBG annealing at >800°C. Not sensor failure — material physics.
   **Correction:** Added reference FBG (unstrained, same thermal path) per zone. Common-mode subtraction: $\Delta\lambda_{meas} = \Delta\lambda_{sense} - \Delta\lambda_{ref}$. Drift reduced to <0.05 nm/hr. Model uses corrected $\Delta\lambda$.

3. **Anomaly:** TSN latency spike 2.3 ms during Stage 7 transition (PROD-20, 2026-10).
   **Root cause:** PLC SFC transition caused TSN queue congestion on shared VLAN.
   **Correction:** Moved SIS to dedicated VLAN 10 with 200 μs time slice. PLC/SCADA on VLAN 20/30. Added local OCXO on each RTU (100 ppb stability). Latency now <80 μs max.

4. **Anomaly:** Varactor saturation at 28 V (Z7/Z8 high power) — tuning range exhausted (PROD-10, 2026-10).
   **Root cause:** At 350–500 kW, tank impedance shift requires >28 V varactor bias for ZVS.
   **Correction:** Added 8-bit switched capacitor bank (coarse) + varactor (fine). Cap bank steps cover 80% of range, varactor covers ±5%. ZVS maintained 99.9% cycles.

5. **Anomaly:** PEX-a coolant resistivity drop from 18 MΩ·cm to 2 MΩ·cm after 500 hrs (PROD-10, 2026-10).
   **Root cause:** Copper ion leaching from microchannel cold plate (Ni-P coating defect).
   **Correction:** Upgraded cold plate to AlSiC with indium foil TIM (PROD-25 Section 6.2). Resistivity stable >15 MΩ·cm at 1000 hrs.

The mathematical key **absorbs history** — each anomaly tightens a model parameter ($hA$, $\epsilon\sigma A$, $\rho c V$), adds a state ($\delta_{char}$, reference FBG), or restructures a boundary condition (TSN VLAN, cap bank, cold plate material). The primitive $T_{inner}[k+1] = f(T_{inner}[k], P_{ind}[k], \text{params}[k])$ remains structurally invariant. This is the signature of a correct primitive: it extends, it does not rewrite.