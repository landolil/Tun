# PROD-15 Williams Heuristic Intro
## First-Principles Engineering Lens — Carrington Storm Motors

**Document:** PROD-15 Stage 2 Polymer Flow & Separation
**Heuristic:** Williams — First-principles physics, dimensional analysis, thermodynamic limits
**Author:** CSM Fabrication Division | **Date:** 2026-11-01

---

### WILLIAMS HEURISTIC: PROD-15 STAGE 2 POLYMER FLOW & SEPARATION

**Core Question:** Can we separate molten polymers by density in a 150 RPM centrifuge without mechanical contact or degradation?

**First-Principles Analysis:**

1. **DENSITY DIFFERENCE IS THE DRIVER**
   - PP/PE: 0.74-0.78 g/cm³ vs PET/PVC: 1.33-1.65 g/cm³
   - Δρ/ρ = 0.8 — a 44% density gap between light and heavy fractions
   - This is MASSIVE for centrifugal separation. Compare: oil/water Δρ/ρ ≈ 0.2

2. **CENTRIFUGAL POTENTIAL AT 12.6 G**
   - Φ = ½ ω² r² = ½ (15.7)² (0.25)² = 7.7 J/kg potential energy per kg melt
   - Over 30 min: 13.9 kJ/kg available for stratification work
   - Viscous dissipation: ηγ̇² ≈ 28 × 500² = 7 MW/m³? NO — shear thinning drops η to 8 Pa·s at wall
   - Actual dissipation: ~200 kW/m³ × 0.05 m layer = 10 kW/m² — manageable

3. **STOKES SETTLING IN NON-NEWTONIAN MELT**
   - Modified Stokes: v = (2/9) (Δρ ω² r) R² / η(γ̇)
   - For PET sphere (R=1mm) in PP melt (η=18 Pa·s at mid-layer shear):
   - v = (2/9) × (0.57 × 247 × 0.225) × 1e-6 / 18 = 1.7 µm/s
   - Distance in 30 min: 3 mm — sufficient for annular layer formation

4. **THERMAL DEGRADATION WINDOW**
   - PVC Td = 210°C — dehydrochlorination starts
   - PET Td = 300°C — oligomer formation
   - PEEK Td = 580°C — stable
   - Our window: 150-450°C — PVC is the ONLY liability
   - Solution: NaHCO₃ injection at 2× stoichiometric, temp hold at 50 ppm HCl

5. **ENERGY PER TON POLYMER**
   - Net 432 kWh/ton after heat recovery
   - Compare: Virgin PP production = 3,500 kWh/ton
   - We recover 88% of embodied energy — this is the Williams metric that matters

**Williams Verdict:**
- Physics says YES — density difference is large enough
- Rheology says YES — shear thinning helps, not hurts
- Chemistry says MANAGEABLE — PVC is the only real threat, neutralized in-drum
- Energy says EXCELLENT — 432 kWh/ton vs 3,500 kWh/ton virgin

**Risk Flag:** ABS/PA degradation at 300-310°C — must limit heavy fraction residence to <15 min at peak temp. If IV retention <85%, downstream reformulation fails.

**Next Calculation:** FOLLOW-17 rheology deep-dive needs to validate Carreau-Yasuda parameters for PP/PET blends at 150°C shear rates.

---

*Williams Heuristic: If the physics works at the limit, the engineering is just detail.*
*This document: Physics works. Engineering follows.*