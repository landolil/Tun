## 4.3 Seamless Islanding & Blackstart Sequence

The Aegis-Forge GFM inverter enables **autonomous islanding** without communication:

```math
\text{Islanding Detection: } \left| \frac{df}{dt} \right| > 0.5 \text{ Hz/s} \quad \text{OR} \quad |\Delta V| > 15\% \quad \text{OR} \quad \text{PLL loss-of-lock}
```

**Sequence (target < 50 ms):**
1. **T₀**: Grid disturbance detected (RoCoF / voltage / PLL)
2. **T₀+10 ms**: GFM inverter transitions to voltage-source mode (internal oscillator)
3. **T₀+20 ms**: Islanding breaker opens (mechanical: 30–50 ms; solid-state: < 5 ms)
4. **T₀+30 ms**: GFM establishes $V_{ref}$, $\omega_{ref}$ on islanded bus
5. **T₀+50 ms**: Load pickup begins (priority: critical motors, separation modules)
6. **T₀+200 ms**: Full islanded operation at nominal frequency

**Blackstart from Storage** (no grid reference):
```math
\text{Soft Energization: } V(t) = V_{nom} \cdot (1 - e^{-t/\tau}) \cdot \sin(\omega_{nom} t)
```
where $\tau = 2–5$ s prevents transformer inrush. Frequency ramps from 0 → 50 Hz over 5–10 s.

**Cross-reference**: DOC-11 Ch.6 (Motor GIC Immunity) established Fe₁₆N₂/SynRM/piezo motors operate on clean GFM voltage; DOC-05 defined Aegis-Forge 10 MW module power profile.
