## 2. Zircon Dissociation at 1676°C

### 2.1 Thermodynamics of ZrSiO₄ Dissociation

**Primary Reaction:**
```
ZrSiO₄ (s) ⇌ ZrO₂ (s) + SiO₂ (g)      ΔH° = +320 kJ/mol
```

**Equilibrium Constant:**
```
Kp = p_SiO₂ = exp(-ΔG°/RT)
ΔG° = ΔH° - TΔS° = 320,000 - T(85) J/mol
```

**Dissociation Temperature at p_SiO₂ = 1 atm:**
```
T_diss = ΔH°/ΔS° = 320,000/85 = 3765 K = 3492°C
```

**Dissociation Temperature at p_SiO₂ = 10⁻³ atm (practical):**
```
ln(10⁻³) = -ΔG°/RT  →  T = 1676°C (1949 K)
```

**Operating Window:**
- Target: 1700°C (25°C above dissociation temperature at p_SiO₂ = 10⁻³ atm)
- p_SiO₂ maintained at 10⁻³ atm by continuous Ar sweep + Port 8B condenser
- At 1700°C, 30 min dwell: >99% zircon dissociation achieved

### 2.2 Dissociation Kinetics

**Rate-Limiting Step:** SiO₂ diffusion through ZrO₂ product layer (shrinking core model)

**Kinetic Equation:**
```
1 - (1 - X)^(1/3) = k·t
k = k₀·exp(-Ea/RT)
Ea = 420 kJ/mol (ZrO₂ diffusion barrier)
k₀ = 1.2×10⁸ s⁻¹
```

**At 1700°C (1973 K):**
```
k = 1.2×10⁸ × exp(-420,000/(8.314×1973)) = 2.1×10⁻⁴ s⁻¹
t_99% = [1 - (0.01)^(1/3)] / k = 0.54 / 2.1×10⁻⁴ = 2570 s = 43 min
```

**Practical Dwell:** 30 min at 1700°C achieves >95% dissociation (ZrSiO₄ particles <100 μm from AMLS liberation)

### 2.3 Zircon Feed Characterization

| Parameter | Value | Source |
|---|---|---|
| **ZrSiO₄ Content** | 2-5 kg/batch | LCD glass (ITO), mineral sand |
| **Particle Size (post-AMLS)** | <100 μm | Acoustic liberation >80% |
| **ZrO₂ Equivalent** | 1.4-3.5 kg | 67% ZrO₂ in ZrSiO₄ |
| **SiO₂ Gas Yield** | 0.7-1.8 kg | 33% SiO₂ in ZrSiO₄ |
| **Impurities** | HfO₂ 1-2%, U/Th trace | Zircon lattice substitution |

**Hafnium Management:** Hf substitutes for Zr in zircon (1-2%). HfO₂ remains with ZrO₂ product. For nuclear-grade Zr, separate Hf removal required (FOLLOW-32). For 3Y-TZP structural ceramic, Hf <2% is acceptable.

---
