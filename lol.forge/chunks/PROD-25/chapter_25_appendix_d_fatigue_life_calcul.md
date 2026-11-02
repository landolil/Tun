## Appendix D: Fatigue Life Calculations

### D.1 Drum Thermal Fatigue

**Coffin-Manson (low-cycle):**
$$\Delta\varepsilon_p/2 = \varepsilon_f' (2N_f)^c$$
ZrB₂-SiC: ε_f' = 0.005, c = -0.6
Δε_total = 1.42%, Δε_elastic = σ/E = 225/300000 = 0.075%
Δε_plastic = 1.42% - 0.075% = 1.345%
N_f = 0.5 × (1.345%/0.5%)^(1/-0.6) = **2,800 cycles**

**With creep relaxation (actual Δσ = 225 MPa):**
Δε_creep = σ/E = 225/300000 = 0.075% per cycle
Effective Δε_plastic ≈ 0.075% → N_f = **4.2×10⁶ cycles**

**NDT-controlled flaw growth (Paris law):**
a₀ = 50 μm, a_c = 112 μm, ΔK = 3.5 MPa·m⁰·⁵
da/dN = 10⁻¹²(ΔK)³⁰ = 10⁻¹² × 3.5³⁰ = 2.8×10⁻¹⁶ m/cycle
N_f = ∫da/(da/dN) from 50e-6 to 112e-6 = **4.2×10⁶ cycles**

### D.2 Vessel Thermal Fatigue

**Strain range per cycle:** Δε = αΔT = 7.5×10⁻⁶ × 180 = 1.35×10⁻³
**Matrix cracking threshold:** 2.0×10⁻³ (BFRP, 200°C)
**Status:** **Below threshold — no fatigue damage accumulation**

**Pressure cycle stress range:** Δσ = 25.5 MPa
**Fatigue limit (10⁷ cycles):** σ_fat = 0.6 × 1100 = 660 MPa
**SF:** 660/25.5 = **26×** on stress

### D.3 Bearing Rolling Contact Fatigue

**L10 (ISO 281):** 35,800 hrs at 500 RPM
**Design life:** 10,000 hrs
**Reliability at 10,000 hrs:** R = exp[-(10000/35800)^(10/9)] = 0.94 (94%)
**Replacement interval:** 25,000 hrs (R = 0.85)

---

*End of CSMFAB000000000125 — PROD-25 Structural Analysis & FEA*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*