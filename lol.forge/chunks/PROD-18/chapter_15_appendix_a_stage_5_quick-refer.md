## Appendix A: Stage 5 Quick-Reference Card

### A.1 Process Quick Reference

| Phase | Temp (°C) | Time | RPM | Port | Flux Rate | Key Control |
|---|---|---|---|---|---|---|
| Ramp 1 | 450→660 | 5 min | 300 | — | 0.5 kg/min | 5°C/min max |
| Ramp 2 | 660→680 | 5 min | 300 | — | 0.5 kg/min | ±2°C at 660°C |
| Dwell | 680 | 25 min | 300 | 5 | 0.2 kg/min | XRF banding, Mg removal |
| Ramp 3 | 680→720 | 2 min | 300 | 5 | 0.3 kg/min | Mg vapor limit |
| Final | 720 | 3 min | 300 | 5 | 0.3 kg/min | Transition prep |
| To S6 | 720→1085 | ramp | 200 | — | — | Al cleared |

### A.2 Critical Setpoints

- **Al pure MP**: 660.3°C (solidus boundary)
- **A380 eutectic**: 577°C (first liquid)
- **6061 liquidus**: 652°C
- **Mg removal window**: 660-720°C (Mg BP 1091°C, vapor >720°C)
- **Mg vapor limit**: 720°C (strict upper bound)
- **Port 5 actuation**: 720°C ±2°C
- **Flux eutectic**: NaCl/KCl 657°C (liquid throughout)

### A.3 Emergency Shutdown Sequence

1. Induction OFF (Zones 4-5)
2. N₂ purge 10 bar (5 volume exchanges)
3. Flux injection OFF
4. Drum decel to 50 RPM (controlled)
5. Port 5 CLOSED (spring return confirmed)
6. Vent to flare stack
7. Alarm + operator notification

### A.4 Key Equations

- Centrifugal G: G = ω²r/g = (2π·RPM/60)²·0.3/9.81
- Skin depth: δ = √(2ρ/ωμ)  (ρ=resistivity, μ=permeability)
- Film thickness: δ = (3μQ/2πρω²r)^(1/3)
- Drainage velocity: v = ρω²rδ²/3μ
- Mg oxidation: 2Mg + O₂ → 2MgO (ΔG < 0 at 680°C)
- Exergy efficiency: η_ex = Ex_products / Ex_inputs

---
