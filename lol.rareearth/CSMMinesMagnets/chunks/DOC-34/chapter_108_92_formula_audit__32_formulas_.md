## 9.2 Formula Audit — 32 Formulas Verified

| # | Formula | Chapter | Variables Defined | Units Verified | Source/Validation |
|---|---------|---------|-------------------|----------------|-------------------|
| 1 | **Carrying Capacity: N_max = f(Erosion_threshold, Slope, Precip)** | Ch 2 | N, S, P, k, α, β, γ | persons/day | TDI model calibrated |
| 2 | **Flamingo Disturbance: D = 1/(1+e^(-β(d-d₅₀)))** | Ch 2 | d, d₅₀, β | probability | Literature (BirdLife) |
| 3 | **Geyser Thermal Limit: Q_max = ρ·c_p·ΔT·V/t** | Ch 2 | ρ, c_p, ΔT, V, t | persons | Thermodynamics |
| 4 | **Water Balance: Recharge = P - ET - Runoff - Deep** | Ch 3 | P, ET, Runoff, Deep | mm/yr | Hydrology |
| 5 | **Extraction Deficit: Deficit = Extraction - Recharge** | Ch 3 | Extraction, Recharge | Mm³/yr | Mass balance |
| 6 | **Depletion Time: T_50 = Storage × 0.5 / Mining_rate** | Ch 3 | Storage, Mining_rate | years | Reservoir engineering |
| 7 | **Arsenic Cancer Risk: Risk = C×IR×EF×ED×CSF/(BW×AT)** | Ch 3 | C, IR, EF, ED, CSF, BW, AT | dimensionless | EPA/WHO |
| 8 | **Flood Hydraulics: Q = (1/n)·A·R^(2/3)·S^(1/2)** | Ch 6 | n, A, R, S | m³/s | Manning's Eq |
| 9 | **Inundation Depth: h = f(Q, geometry, roughness)** | Ch 6 | Q, geometry, n | m | HEC-RAS |
| 10 | **Evacuation Time: T_evac = Pop / (Routes × Capacity × Speed)** | Ch 6 | Pop, Routes, Capacity, Speed | min | Emergency planning |
| 11 | **Freeze-Thaw Damage: D_f = k·N_cycles·(ΔT)^α** | Ch 6 | N_cycles, ΔT, k, α | mm/yr | Materials science |
| 11 | **UV Degradation: D_uv = k·Dose^β·t^γ** | Ch 6 | Dose, t, k, β, γ | %/yr | Polymer science |
| 12 | **Adobe Preservation: Life = f(Plaster, Sealer, Drainage, Kimün)** | Ch 6 | Plaster, Sealer, Drainage, Kimün | years | Heritage conservation |
| 13 | **Geothermal Cascade Exergy: η_ex = Σ(Ex_out)/Ex_in** | Ch 7 | Ex_out_i, Ex_in | % | Exergy analysis |
| 14 | **Binary ORC Efficiency: η_ORC = 1 - T_cond/T_evap** | Ch 7 | T_cond, T_evap (K) | % | Carnot + real |
| 15 | **PPA Revenue: Rev = Gen × (Price + Capacity + Green)** | Ch 7 | Gen, Price, Capacity, Green | $/yr | Energy economics |
| 16 | **As Removal: C_out = C_in × (1-η_co-precip) × (1-η_adsorp)** | Ch 7 | C_in, η_co-precip, η_adsorp | mg/L | Water treatment |
| 17 | **Seismic Traffic Light: Action = f(ML, baseline, trend)** | Ch 7 | ML, baseline, trend | categorical | Induced seismicity protocol |
| 18 | **Bofedales Trigger: Alert = (Drawdown>0.5) OR (NDVI<-10%)** | Ch 7 | Drawdown, NDVI | boolean | Ecohydrology |
| 19 | **Tourism Collapse Prob: P_compound = 1-Π(1-p_i)** | Ch 8 | p_i (individual risks) | probability | Risk theory |
| 20 | **Revenue Loss: Loss = Revenue_base × Drop% × Duration** | Ch 8 | Revenue_base, Drop%, Duration | $ | Scenario analysis |
| 21 | **Financial Resilience: Buffer = Reserve / Monthly_Ops** | Ch 8 | Reserve, Monthly_Ops | months | Financial management |
| 22 | **SLI = 0.3×Trust + 0.25×Benefit + 0.2×Voice + 0.15×Env + 0.1×Cult** | Ch 8 | Trust, Benefit, Voice, Env, Cult | 0-100 | Composite index |
| 23 | **SLI Thresholds: Regime = f(SLI)** | Ch 8 | SLI | categorical | Governance theory |
| 24 | **Depletion Trajectory: Drawdown(t) = Drawdown_0 + ∫(Mining_rate)dt** | Ch 8 | Drawdown_0, Mining_rate, t | m | Integral calculus |
| 25 | **Commodification Index: CI = Σ(w_i × Indicator_i)** | Ch 8 | w_i, Indicator_i | 0-100 | Composite index |
| 26 | **Visitor Impact TDI = Σ(w_j × Factor_j)** | Ch 5 | w_j, Factor_j | 0-1 | Multi-criteria |
| 27 | **Erosion: E = k₁ × N^1.3 × S^0.8 × P^0.5** | Ch 5 | N, S, P, k₁ | mm/yr | Trail science |
| 28 | **Chemical Damage: C = k₂ × N × CO₂ × t_dwell** | Ch 5 | N, CO₂, t_dwell, k₂ | ppm | Conservation science |
| 29 | **Vibration: V = k₃ × N × V_veh × d^(-1.5)** | Ch 5 | N, V_veh, d, k₃ | mm/s | Structural dynamics |
| 30 | **Biological: B = k₄ × N^0.7 × H^0.5** | Ch 5 | N, H, k₄ | CFU/cm² | Microbiology |
| 31 | **Theft Probability: T = 1 - e^(-k₅ × N × t_unsupervised)** | Ch 5 | N, t_unsupervised, k₅ | probability | Criminology |
| 32 | **Dark Sky Economic: Loss = Revenue_astro × (1 - SQM_factor)** | Ch 5 | Revenue_astro, SQM_factor | $/yr | Tourism economics |

---
