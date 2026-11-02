## Appendix A: Stage 4 Quick-Reference Card

### A.1 Sub-Stage Quick Reference
| Step | Temp (°C) | Time | RPM | Port | Primary Output | Key Control |
|---|---|---|---|---|---|---|
| 1 | 160 | 5 min | 400 | 4A | In-rich (60-80%) | ±1°C, H₂ >0.075 bar |
| 2 | 200 | 3 min | 300 | 4B | Sn-Pb eutectic | ±3°C, flux injection |
| 3 | 280 | 3 min | 300 | 4B | Bi-Sn alloy | ±3°C, flux injection |
| 4 | 340 | 3 min | 300 | 4C | Pb bullion | ±3°C, dross skim |
| 5 | 430 | 10 min | 400 | 4C | Zn liquid | ±3°C, vapor monitor |
| 6 | 450→660 | ramp | 200 | — | Transition to Stage 5 | No discharge |

### A.2 Critical Setpoints
- **In melting**: 156.6°C (only liquid metal at this temp)
- **Sn-Pb eutectic**: 183°C (61.9% Sn / 38.1% Pb)
- **Bi melting**: 271.5°C
- **Sn melting**: 231.9°C
- **Pb melting**: 327.5°C
- **Zn melting**: 419.5°C (boiling 907°C — 477°C margin)
- **Al solidus**: 660.3°C (Stage 5 boundary)

### A.3 Emergency Shutdown Sequence
1. Induction OFF (all zones)
2. N₂ purge 10 bar (5 volume exchanges)
3. H₂ supply CUTOFF
4. Drum decel to 50 RPM (controlled)
5. All ports CLOSED (spring return)
6. Vent to flare stack
7. Alarm + operator notification

### A.4 Key Equations
- Centrifugal G: G = ω²r/g = (2π·RPM/60)²·0.3/9.81
- Skin depth: δ = √(2ρ/ωμ)  (ρ=resistivity, μ=permeability)
- Settling time: t = 18μ/(Δρ·ω²·r·d²)
- Oxidation potential: ΔG = ΔH - TΔS (In₂O₃ + 3H₂ → 2In + 3H₂O, ΔG<0 at 160°C)
- Exergy efficiency: η_ex = Ex_products / Ex_inputs

---

*End of CSMFAB000000000125 — PROD-17 Stage 4 Low-Temperature Metals Separation*
*Next: Heuristic Intros (Williams, Keymaker, El Segundo) → Chunking → Verification → Git Commit*