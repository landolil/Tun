## Appendix A: Quick-Reference Card

```
AEGIS-FORGE I — THERMAL MODELING QUICK REFERENCE
==================================================

MULTI-PHYSICS COUPLING:
  EM → Thermal: P_ind = π²B²d²f²V/6ρ (non-mag) or πB²fV/μ (ferro)
  Thermal → EM: ρ(T) 3-5× increase, μ_r 200→1 at 770°C
  Thermal → Structural: 2000°C gradient → 400 MPa stress
  Fluid → Thermal: h_conv 50→2900 W/m²·K across stages

KEY EQUATIONS:
  Skin depth: δ = √(2ρ/ωμ)
  Thermal diffusion: α = k/ρc_p, Fo = αt/L²
  Thermal stress: σ_th = EαΔT/(1-ν)
  Centrifugal: g_eff = ω²r
  Stokes settling: v = 2(ρ_p-ρ_f)g_eff r²/9μ
  Flash sinter: dρ/dt = σ_DC E²/H_s
  Weibull: P_f = 1-exp[-(σ/σ₀)ᵐ V/V₀]

CRITICAL TEMPERATURES:
  Drum max: 2200°C (85% ZrB₂ melt)
  Vessel max: 200°C (BFRP Tg=80°C + 120°C margin)
  Curie Fe: 770°C (μ_r 200→1)
  Zircon dissoc: 1676°C (p_SiO₂=10⁻³ atm)
  Flash sinter: 1800°C, 300 V/cm, 5 min

MATERIAL LIMITS:
  ZrB₂-SiC σ_f: 350 MPa (2200°C)
  BFRP σ_hoop: 650 MPa (200°C)
  Aerogel λ: 0.010 W/m·K
  YInMn SRI: 115

V&V TARGETS:
  Code verification: GCI < 2%
  Solution verification: GCI < 2%
  Validation: |E_model - E_exp| ≤ √(U_val² + U_mod²)
  UQ target: T_inner ±5°C (current: ±28°C → needs ROM calibration)

ROM SPECS:
  POD-Galerkin: 12 modes, 118× speedup, <2% error
  Export: JSON (phi, A, B, N, material props)
  Target: 10 Hz digital twin (PROD-37)

SCALING (226L → 2000L):
  Geometry: 2× linear, 8× volume
  RPM: 500 → 354 (constant tip speed)
  Power: 500 kW → 4.4 MW
  Cycle time: 90 min → 180 min (constant Fo)
  Frequency: 1-100 kHz → 0.25-25 kHz (constant δ/d)
```

---
