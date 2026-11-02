# Keymaker Heuristic — PROD-28 Quality Assurance & Testing
## Lock / Key / Turn

### The Empirical Lock

The fabrication fidelity gap is **dimensional stability of ZrB₂-SiC at 2200°C with embedded FBGs through 500 thermal cycles** — a regime where no NDT standard exists. Flash sintering (PROD-04) produces drums at 99.8% density but with residual stress gradients: ID compressive 120 MPa, OD tensile 80 MPa (FEA PROD-25). During thermal ramp (50°C/min to 2200°C), CTE mismatch (ZrB₂ 7.5, SiC 4.5, FBG silica 0.55 ×10⁻⁶/K) generates shear at FBG/matrix interface. Accelerated testing (PROD-27 FA) shows: 3% FBG channels fail by cycle 200 (debond); UT phased array detects debond as 15% amplitude drop at 5 MHz but cannot size <0.2 mm; CT at 200 μm voxel sees debond >0.5 mm but misses sub-voxel. The Lock: **no single NDT method closes the gap between theoretical FBG survival (100%) and empirical (97% at 500 cycles) — the gap is the debond nucleation zone below UT resolution and CT voxel.**

### The Mathematical Key

The single computational primitive is the **recursive Bayesian update of component health state** using multi-source likelihood fusion:

```
P(health | data) ∝ P(data | health) × P(health)
```

Where:
- **data** = {UT amplitude map, CT porosity field, AE hit rate/location, FBG wavelength drift, IR ΔT field, vibration spectrum}
- **health** = {intact, debond_nucleation, debond_growth, FBG_degradation, delamination, matrix_cracking}
- **P(data | health)** = likelihood models calibrated per method per material (ZrB₂-SiC, BFRP, Ti₃AlC₂, ZrO₂)
- **P(health)** = prior from process signature (flash V/I, winding tension, braze cycle, cold plate leak)

The Key executes at three scales:
1. **Micro (per channel)**: FBG drift >0.5%/1000 hrs → update P(FBG_degradation)
2. **Meso (per component)**: AE cluster + UT indication + IR hotspot → update P(delamination)
3. **Macro (per system)**: CT-04 SIF proof + CT-06 FBG cal + CT-08 thermal cycle → update P(system_ready)

The atomic computation is **likelihood ratio test**: Λ = P(data | H₁) / P(data | H₀) where H₁ = degradation, H₀ = nominal. Threshold Λ > 10 triggers NCR auto-generation. This runs in PROD-37 digital twin at 10 Hz on 384-channel state vector.

### The Turn (Both Directions)

**Theory→History Validation**: The Bayesian model predicted 3% FBG failure by cycle 200 (using Weibull β=2.3 from PROD-04 flash sinter statistics). FA drums (PROD-27) showed 2.8% failure at cycle 180 — within prediction interval. UT amplitude drop at debond sites matched FEA-predicted 15% (COHZONE model, PROD-25). CT voxel limit (0.5 mm) matched observed missed debond size. History confirms theory.

**History→Theory Correction**: FA vessel hydrotest (CT-02) revealed aerogel density gradient (0.11–0.13 g/cm³ radial) not captured in winding simulation. AE Felicity ratio dropped to 0.95 at 8 bar (predicted 1.05). Updated P(data | delamination) for BFRP now includes aerogel density field as covariate. Next PQR-FW-002 will mandate gamma densitometry mapping at 5 mm resolution.

The Turn: **the mathematical key is not static — it learns from every Forge's CT-04, CT-06, CT-08, and in-service data, tightening likelihood models fleet-wide via PROD-37.** The Lock (sub-voxel debond) is managed not by better resolution but by probabilistic fusion: UT sees the symptom, AE hears the event, FBG feels the strain, IR sees the heat — together they witness what no single method can.

---
*Keymaker Heuristic for PROD-28 | ~67 lines | Carrington Storm Motors | November 2026*