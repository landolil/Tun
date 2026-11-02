## Appendix A: Quick-Reference Card

```
AEGIS-FORGE I — STRUCTURAL ANALYSIS QUICK REFERENCE
====================================================

DESIGN CRITERIA:
  Ceramics: SF ≥ 1.5× on σ_vm vs σ_f(T)
  Composites: Tsai-Wu FI ≤ 0.5 (SF ≥ 2.0×)
  Fatigue: >10× design life
  Seismic: IEEE 693 High, HCLPF ≥ 1.5g

CRITICAL STRESSES:
  Drum ID (Stage 8): 225 MPa (SF 1.55× on 350 MPa)
  Drum Port 8: 210 MPa (SF 1.81× on 380 MPa)
  Vessel port: Tsai-Wu FI = 0.22 (SF 4.2×)
  Flange bolt holes: 85 MPa (SF 1.53× on 130 MPa)
  Flange bolts (12× M24): 490 MPa (SF 1.63× on 800 MPa)
  Port 8 actuator: 103 MPa (SF 3.1× on 320 MPa)

MATERIAL LIMITS:
  ZrB₂-SiC σ_f: 620→350 MPa (20→2200°C)
  3Y-TZP σ_f: 1200→800 MPa (20→1500°C)
  Si₃N₄ σ_f: 850→700 MPa (20→1200°C)
  Ti₃AlC₂ σ_f: 350→280 MPa (20→1200°C)
  BFRP σ_hoop: 1100→650 MPa (20→200°C)
  PEEK CF40 σ_y: 95→60 MPa (20→250°C)

KEY EQUATIONS:
  Lamé (thick cylinder): σ_θ = P(r_o²+r_i²)/(r_o²-r_i²)
  Thermal stress: σ = EαΔT/(1-ν)
  Centrifugal: σ_θ = ρω²[(3+ν)r_o²+(1+3ν)r_i²-(1+3ν)r²]/8
  Weibull: P_f = 1-exp[-(σ/σ₀)ᵐ V/V₀]
  Paris: da/dN = C(ΔK)ᵐ
  Tsai-Wu: F_ijσ_iσ_j + F_iσ_i ≤ 1
  Buckling: P_cr = 2E_hoop(t/D)³/√(3(1-ν²))
  Critical speed: ω_cr = π²/L² √(EI/ρA)

SEISMIC:
  IEEE 693 High: PGA=1.0g, ZPA=1.5g
  HCLPF target: 1.5g
  Current: 1.6g (with 6 stiffening rings + struts)
  Test: Shake table, 3-axis, RRS×1.5

FATIGUE:
  Drum thermal: N_f > 10⁶ (with NDT a₀=50μm)
  Vessel thermal: No matrix cracking (Δε=1.35×10⁻³ < 2×10⁻³)
  Bearings: L10 = 35,800 hrs, replace at 25,000 hrs

NDT SCHEDULE:
  Drum UT: Annual, 100% wall, detect 0.5mm
  Drum CT: Biennial, 100% volume, 200μm voxel
  Vessel UT: Annual, 100% wall
  Vessel AE: Continuous, active crack detection
  Flange bolts: Annual, visual + UT
  Bearings: Continuous vibration + FBG strain

TRANSPORT:
  Frame: BFRP box beam, 4-point isolator mount
  Vibration: 1g RMS truck, 30g shock
  Shipping: Elastomeric isolation on trailer
```

---
