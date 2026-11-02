## 5. Oxidation Control and Atmosphere Management

### 5.1 Reducing Atmosphere Chemistry

**Target Atmosphere: 5% H₂ / 95% N₂ at 1.2 bar, dew point <-40°C**

**Equilibrium Reactions:**
```
2Cu + ½O₂ ⇌ Cu₂O          ΔG° = -146 kJ/mol at 1150°C
H₂ + ½O₂ ⇌ H₂O            ΔG° = -198 kJ/mol at 1150°C
Cu₂O + H₂ ⇌ 2Cu + H₂O     K = p_H₂O/p_H₂ = 10⁻⁹ at 1150°C
```

**Required H₂ Partial Pressure for Cu₂O Prevention:**
```
p_H₂ / p_H₂O > 10⁹
With p_H₂O < 10⁻⁴ bar (dew point <-40°C): p_H₂ > 10⁻⁵ bar (trivially met at 5%)
```

**Atmosphere Control System:**
- N₂ supply: GFGS Train A (PROD-07), 99.999% purity
- H₂ supply: On-site electrolyzer (CsMFAB000000000105) or bottled
- Mixing: PEEK CF40 mass flow controllers (±1% accuracy)
- Dew point: Molecular sieve dryer (3Å) on N₂ line, continuous monitor
- Pressure: 1.2 bar maintained by back-pressure regulator (ZrO₂ diaphragm)
- **H₂ monitor:** Catalytic bead sensor (SIL-2) + IR backup — trip at 4% LEL

### 5.2 Impurity Volatilization Control

**Volatile Impurities in Cu Feed (from PCBs, solders):**

| Impurity | Source | Volatility at 1150°C | Reaction | Capture |
|---|---|---|---|---|
| **Arsenic (As)** | PCB solder, leadframe | HIGH | As + 3H → AsH₃ (g) | Train B chemisorbent (Cu-impregnated carbon) |
| **Antimony (Sb)** | Flame retardants, solder | HIGH | Sb + 3H → SbH₃ (g) | Train B chemisorbent |
| **Bismuth (Bi)** | Lead-free solder | MODERATE | Bi + 3H → BiH₃ (g) | Train B chemisorbent |
| **Lead (Pb)** | Solder residue | LOW | Pb + H₂ → PbH₂ (unstable) | Condenses in off-gas cooler |
| **Sulfur (S)** | PCB laminate | HIGH | S + 2H → H₂S (g) | Train A lime scrubber |
| **Chlorine (Cl)** | PVC residue | HIGH | Cl + H → HCl (g) | Train A lime scrubber |

**Off-Gas Management (to PROD-07):**
- Off-gas flow: ~50 SLPM (N₂ sweep + H₂ + volatiles)
- Temperature: 1150°C → cooled to 200°C in ZrO₂ heat exchanger
- **Train A:** Lime (Ca(OH)₂) scrubber — HCl, H₂S, SO₂ capture → CaCl₂, CaSO₄
- **Train B:** Cu-impregnated activated carbon — AsH₃, SbH₃, BiH₃ chemisorption
- **Train C:** Plasma torch (PROD-07) — residual organics, CO destruction
- **Train D:** HEPA + carbon — particulate, Hg, residual volatiles
- **Train E:** PSA CO₂ capture — CO₂ recycle to drum purge

**Emission Limits (per PROD-07):**
- As: <0.1 mg/Nm³
- Sb: <0.5 mg/Nm³
- Bi: <1 mg/Nm³
- Pb: <1 mg/Nm³
- SO₂: <50 mg/Nm³
- HCl: <10 mg/Nm³
- Dioxins/furans: <0.1 ng TEQ/Nm³

---
