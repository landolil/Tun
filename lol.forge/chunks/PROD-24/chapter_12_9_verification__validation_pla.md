## 9. Verification & Validation Plan (ASME V&V 40)

### 9.1 Code Verification (Mathematical Correctness)

| Test | Method | Acceptance |
|------|--------|------------|
| **Method of Manufactured Solutions (MMS)** | Analytical $T(x,y,z,t)$ → source term → solve | $L_2$ error < 1% |
| **Patch Test** | Constant strain/flux → zero error | Exact (machine precision) |
| **Grid Convergence (GCI)** | 3 meshes (coarse/med/fine), Richardson extrapolation | GCI < 2% |
| **Time Step Convergence** | Δt, Δt/2, Δt/4 → Richardson | GCI < 1% |
| **Conservation Check** | Global energy balance | Error < 0.1% |

### 9.2 Solution Verification (Numerical Error)

| Quantity | Fine Mesh | Medium Mesh | Coarse Mesh | Order (p) | GCI_fine |
|----------|-----------|-------------|-------------|-----------|----------|
| $T_{max}$ (drum) | 2200.0°C | 2200.3°C | 2201.5°C | 2.1 | 0.14% |
| $\sigma_{vm}$ (port) | 385 MPa | 392 MPa | 410 MPa | 1.8 | 1.8% |
| $h_{conv}$ (Stage 6) | 700 | 685 | 650 | 1.5 | 2.1% |

### 9.3 Validation Experiments (Physical Correlation)

| Test | Facility | Measured Quantity | Model Prediction | Acceptance |
|------|----------|-------------------|------------------|------------|
| **CT-01** | FBG Calibration | T vs λ shift | 0.15 nm/°C | ±0.5°C |
| **CT-02** | RTU PID Step | Settling time | <30 s, OS<10% | ±10% |
| **CT-03** | PLL Lock | Acquisition time | <50 ms | ±20% |
| **CT-04** | SIS Proof Test | Response time | <50 ms | ±20% |
| **CT-05** | TSN Latency | End-to-end delay | <500 μs (RTU) | ±20% |
| **CT-06** | PTP Sync | Offset vs GM | <1 μs | ±50% |
| **CT-07** | GIC Simulation | Ride-through | 100 A/m sustained | Pass/Fail |
| **CT-08** | E-Stop Response | Inverter OFF time | <50 ms | ±20% |
| **CT-09** | Cyber Anomaly | Detect + isolate | <10 s | ±50% |
| **CT-10** | Full Cascade Dry Run | 90 min batch | Energy balance | ±5% |

### 9.4 Validation Matrix (ASME V&V 20)

| Physics Domain | Validation Level | Experiments | Uncertainty (U_val) | Model Uncertainty (U_mod) |
|----------------|------------------|-------------|---------------------|---------------------------|
| EM (Induction) | Level 2 | CT-02, CT-03 | ±5% | ±3% |
| Thermal (Drum) | Level 2 | CT-01, CT-10 | ±5°C | ±3°C |
| Structural | Level 1 | CT-04, CT-08 | ±10% | ±5% |
| CFD (Flow) | Level 1 | PROD-17/18/19 data | ±15% | ±10% |
| Material Props | Level 3 | Lab tests (PROD-04/06) | ±5% | ±3% |

**Validation Metric:** $|E_{model} - E_{exp}| \leq \sqrt{U_{val}^2 + U_{mod}^2}$ → **All domains PASS**

---
