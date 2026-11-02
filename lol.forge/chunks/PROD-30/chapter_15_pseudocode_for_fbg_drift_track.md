# Pseudocode for FBG drift tracker (executes at 125 Hz per channel)
def fbg_drift_update(channel_id, lambda_measured, t):
    # Prior: beta ~ Gamma(alpha, beta)  -- shape/rate from commissioning
    # Likelihood: lambda = lambda_0 * exp(beta * t) + noise
    # Posterior: conjugate update
    
    alpha_post = alpha_prior + 0.5
    beta_post = beta_prior + 0.5 * (lambda_measured - lambda_predicted)^2 / sigma^2
    
    # Hazard rate h(t) = beta / eta * (t/eta)^(beta-1)
    # Likelihood ratio Lambda = h(t|data) / h(t|baseline)
    
    Lambda = compute_likelihood_ratio(alpha_post, beta_post, alpha_baseline, beta_baseline)
    
    if Lambda > 10:
        trigger_ncr(channel_id, "FBG_DRIFT", Lambda, t)
    elif Lambda > 5:
        trigger_alert(channel_id, "FBG_DRIFT_WARN", Lambda, t)
    
    return alpha_post, beta_post, Lambda
```

**Channel-Specific Baselines (PQR-FS-001):**
- Drum zones 1-8 (16 ch/zone): λ₀ = 1550.000 nm @ 25°C; sensitivity = 10.2 pm/°C ±0.3 pm/°C
- Vessel AE channels (8 ch): λ₀ = 1545.000 nm; sensitivity = 10.0 pm/°C ±0.2 pm/°C
- Port valve actuators (8 ch × 2 = 16 ch): λ₀ = 1555.000 nm; sensitivity = 1.8 pm/με ±0.1 pm/με
- Coil bank cold plates (8 ch): λ₀ = 1560.000 nm; sensitivity = 10.5 pm/°C ±0.4 pm/°C
- Reference channels (16 ch): λ₀ = various; used for common-mode rejection

**Data Compression:** 125 Hz raw → 1 Hz min/mean/max/σ stored (99.2% compression); 10-year retention on PROD-37 time-series DB

#### 11.3.2 AE Felicity Ratio Change-Point Detection

**Algorithm:** Exponentially Weighted Moving Average (EWMA) + Binary Segmentation Change-Point

```
Felicity_ratio(t) = cumulative_energy(t) / cumulative_energy(t - Δt)
  where Δt = 1 hour rolling window

EWMA: z_t = λ * F_t + (1-λ) * z_{t-1}, λ = 0.1
Control limits: LCL = μ_0 - 2.7σ√(λ/(2-λ)), UCL = μ_0 + 2.7σ√(λ/(2-λ))
  μ_0 = 1.2 (baseline from PROD-25 FEA), σ = 0.05 (commissioning)

Change-point: Binary segmentation on z_t sequence (min segment = 24 hrs)
  Test statistic: max |z_t - z_{t-1}| > 3σ
  If detected: re-baseline μ_0, σ from new segment; trigger NCR if Felicity < 1.0
```

**Auto-Response Integration:**
- Alert Level 1 (Felicity 1.05–1.1): Log only, increase AE sampling to 1 MHz
- Alert Level 2 (Felicity 1.0–1.05 > 1 hr): Auto-NCR, schedule UT inspection within 72 hrs
- Alert Level 3 (Felicity < 1.0 > 1 hr): Auto-NCR + immediate partial shutdown (drum power <50%)

#### 11.3.3 Vibration Spectral Kurtosis + Envelope Analysis

**Algorithm (ISO 13373-2 / PROD-28 Sec 5.2):**
1. Raw acceleration: 1 kHz sampling, 4 ch per bearing housing (2 axial, 2 radial)
2. Demodulation: Hilbert transform of bandpass (1–5 kHz) → envelope signal
3. Spectral Kurtosis (SK): SK(f) = E[X⁴]/E[X²]² - 2 (Gaussian = 0)
4. Optimal band: max SK(f) over 1–5 kHz → band for envelope spectrum
5. Bearing defect frequencies (Si₃N₄/ZrO₂, 60 mm PD, 8 balls, 15° contact):
   - BPFI = 4.4 × RPM; BPFO = 3.6 × RPM; BSF = 2.3 × RPM; FTF = 0.45 × RPM
6. Alert: BPFI/BPFO/BSF amplitude > 6 dB baseline → NCR

**Baseline Re-Establishment:** Every 500 batches (drum swap) or after bearing replacement

#### 11.3.4 Thermal Model Residual RLS Adaptive Filter

**Algorithm (Recursive Least Squares - PROD-24/28 fusion):**
```
State: θ_t = [k_cond, k_conv, k_rad]^T  (thermal conductance parameters)
Measurement: y_t = T_actual - T_predicted (per zone, 1 kHz RTU)
Update: P_t = (I - K_t H) P_{t-1}; θ_t = θ_{t-1} + K_t (y_t - H θ_{t-1})
        K_t = P_{t-1} H^T (H P_{t-1} H^T + R)^{-1}
Alert: ||y_t||_RMS > 2°C over 10 min window → NCR + cold plate leak check
```

**Zone-Specific Parameters:**
- Zones 1-2 (100 kHz): k_cond dominates (conduction through drum wall)
- Zones 3-4 (50/10 kHz): k_conv + k_rad (gas convection + radiation)
- Zones 5-8 (10-1 kHz): k_rad dominates (2200°C radiation)

#### 11.3.5 POF Attenuation Linear Regression with Breakpoint Detection

**Algorithm:**
- Continuous OTDR: 1550 nm, 10 μs pulse, 1 Hz sweep (all 384 channels)
- Per-channel: α(t) = -10/L * log10(P_received/P_launch) dB/m
- Rolling linear regression (30-day window): α(t) = a + b*t
- Breakpoint: CUSUM on residuals > 5σ → step change (splice failure, macrobend)
- Alert: b > 0.001 dB/m/day OR step > 0.1 dB → NCR

---

### 12.3 Maintenance Training & Competency (PROD-34 Integration)

#### 12.3.1 Required Certifications by Role

| Role | Required Certifications | Renewal | Forge-Specific |
|---|---|---|---|
| **ME Tech (Mechanical)** | ASNT Level II UT/MT/PT; API 510/570; CMRP | 5 yr | PROD-30-WI-001/002/004-019; Carrington tool handling |
| **EE Tech (Electrical)** | NFPA 70E; IEC 61508 SIL-3; GaN power module cert | 3 yr | PROD-30-WI-020/025-032; GIC test procedure |
| **SIS Engineer** | CFSE (TÜV); IEC 61511; ISA 84 | 3 yr | PROD-23 CT-04/07; SIF injection; proof test design |
| **NDT Level II** | ASNT Level II UT/PA/ET/RT; ISO 9712 | 5 yr | PROD-30-WI-001/008/016/024; BFRP & ceramic UT |
| **NDT Level III** | ASNT Level III; procedure qualification | 5 yr | All NDT procedure approval; CT reconstruction |
| **Metrology Tech** | ASME B89.1.9; CMM programming; laser tracker | 3 yr | PROD-30-WI-033/038; thermal growth compensation |
| **QA Engineer** | ASQ CQE; ISO 9001/19011; NQA-1 (nuclear grade) | 3 yr | PROD-28/30/38 integration; Hyperledger audit |

#### 12.3.2 Forge-Specific Training Modules (40 hr initial + 8 hr annual)

| Module | Duration | Content | Assessment |
|---|---|---|---|
| **M-01 Zero-Metal Tooling** | 8 hr | BFRP/ceramic tools; torque procedures; dielectric verification | Practical + written |
| **M-02 Carrington-Safe Procedures** | 8 hr | GIC immunity; no-ground policy; floating secondary verification | Scenario-based |
| **M-03 Drum Handling & FBG** | 8 hr | 500-kg drum lift; FBG splice (PROD-11); cal verification | Practical |
| **M-04 SIL-3 Maintenance** | 8 hr | SIF bypass management; proof test execution; PFD_avg tracking | Written + practical |
| **M-05 Phoenix Protocol Circularity** | 8 hr | Drum refurb flow; material tracking; Hyperledger entry | Written |

#### 12.3.3 Competency Matrix (Extended)

| Task | ME Tech | EE Tech | SIS Eng | NDT LII | NDT LIII | Metrology | QA Eng |
|---|---|---|---|---|---|---|---|
| Drum UT | | | | X | A | | R |
| Drum CT | | | | | X | | R |
| FBG splice/cal | | X | R | | | | A |
| Vessel AE analysis | X | | | X | A | | R |
| Vessel UT | | | | X | A | | R |
| Vessel hydrotest | X | | | | | | A/R |
| Port valve actuation | X | | | | | | R |
| Braze UT | | | | X | A | | R |
| Coil resonance/ZVS | | X | | | | | R |
| Cold plate leak | X | | | | | | R |
| DC link/ZVS/thermal | | X | | | | | R |
| GIC ride-through | | X | R | | | | A |
| EMI | | X | | | | | R |
| SIF injection | | | R | | | | A |
| Frame CMM | | | | | | X | R |
| Isolator stiffness | X | | | | | X | R |
| Carousel indexing | X | | | | | | R |
| Bearing vibration | | | | | | | R |
| Mold CMM | | | | | | X | R |

---

### 12.4 Root Cause Analysis (RCA) Integration

**Trigger:** Any NCR Critical (PROD-28 Sec 4) or Alert Level 3 (Sec 11)
**Method:** 8D with physics-based fault tree (PROD-25/26/28 fusion)

#### 12.4.1 RCA Process Flow

```
D0: Team Formation (QA Lead + SME: ME/EE/SIS/NDT/Metrology)
D1: Problem Statement (What, Where, When, Extent, IS/IS NOT)
D2: Interim Containment (Forge status: run/reduced/stop; safety first)
D3: Root Cause Identification
    - Fault Tree Top Event: e.g., "FBG channel dropout Zone 3"
    - Gates: AND/OR logic from PROD-25 FEA + PROD-26 GIC + PROD-28 NCR history
    - Basic Events: FBG fiber fracture, interrogator failure, splice degradation, 
      thermal gradient > design, GIC event, vibration fatigue, installation error
    - Quantification: Bayesian network (PROD-37) with prior from Weibull (PROD-25)
D4: Permanent Corrective Action (design fix / procedure change / interval change)
D5: Verification (pilot implementation + 30-day monitoring)
D6: Implementation (ECO via PROD-38; training update via PROD-34)
D7: Prevention (lessons learned; PM/CBM interval update; spare part spec change)
D8: Team Recognition & Closure (Hyperledger commit + PROD-37 twin update)
```

#### 12.4.2 Example Fault Tree: Drum FBG Channel Dropout

```
TOP: Channel dropout Zone 3 (1 of 16 channels)
├── Fiber fracture (AND)
│   ├── Thermal stress > 200 MPa (OR)
│   │   ├── dT/dt > 150°C/s (SIF would trip)
│   │   ├── Cold plate leak → local quench (AE detect)
│   │   └── Coil resonance shift → hotspot (ZVS monitor)
│   └── Mechanical fatigue (OR)
│       ├── Vibration > 2g RMS (bearing failure)
│       ├── Drum distortion > 0.5 mm (CT detect)
│       └── Installation bend radius < 25 mm
├── Splice degradation (AND)
│   ├── Thermal cycling fatigue (500 cycles = design life)
│   ├── Moisture ingress (dielectric breach → GIC path)
│   └── FBG coating delamination (H₂ at 2200°C)
├── Interrogator failure (OR)
│   ├── Laser diode degradation (MTBF 50,000 hrs)
│   ├── FPGA bit flip (GIC-induced, rate <10⁻⁹/hr)
│   └── Power supply failure (redundant 2+1)
└── Common-mode GIC event (AND)
    ├── Geomagnetic storm > 5 V/km (Carrington-class)
    ├── Floating secondary compromise (insulation failure)
    └── Faraday cage breach (conduit penetration)
```

---

### 12.5 Maintenance Performance Metrics (KPIs)

| KPI | Target | Measurement | Reporting |
|---|---|---|---|
| **Planned Maintenance Compliance (PMC)** | >95% | CMMS WO closed on-time / total planned | Monthly |
| **Mean Time Between Failures (MTBF)** | >2000 hrs | Operating hrs / unplanned stops | Monthly |
| **Mean Time To Repair (MTTR)** | <4 hrs | Sum repair time / unplanned events | Monthly |
| **Overall Equipment Effectiveness (OEE)** | >85% | Availability × Performance × Quality | Weekly |
| **SIF Proof Test Compliance** | 100% | Tests passed / tests due | Annual |
| **CBM Alert Precision** | >80% | True alerts / total alerts (per algo) | Quarterly |
| **Spare Parts Availability (Critical)** | 100% | Critical spares on-site / required | Monthly |
| **Maintenance Cost / Ton Processed** | <$15/ton | Total maintenance spend / annual throughput | Monthly |
| **Carrington Readiness** | 100% | GIC test pass + zero-metal tools verified | Quarterly |
| **Phoenix Protocol Circularity** | 100% | Drums returned / drums swapped | Per swap |

---

---
