## 6.2 Aegis-Forge Blackstart Sequence

**Scenario**: Total grid blackout; Aegis-Forge cluster at Escondida (50 MW separation + 200 MWh BESS + 100 MW CSM motor load)

```math
\text{Phase 1 — Internal Blackstart (0–30 s):}
```
1. BESS DC link pre-charge (resistive, < 5 s)
2. GFM inverter soft voltage ramp: $V(t) = V_{nom}(1 - e^{-t/3})$ (3 s time constant)
3. Frequency ramp: $\omega(t) = \omega_{nom} \cdot (1 - e^{-t/5})$ (5 s)
4. Separation modules energized (priority: thermal cascade heaters)
5. BESS SoC check: > 20% reserved for blackstart

```math
\text{Phase 2 — Motor Load Pickup (30–120 s):}
```
6. CSM motor drives synchronized to GFM voltage (sensorless FOC)
7. Fe₁₆N₂/SynRM motors ramped with torque limiting (200% max, 10 s)
8. Piezo motors: resonant frequency tracking (no inrush)

```math
\text{Phase 3 — Grid Synchronization (120–300 s):}
```
9. Grid voltage/frequency monitored at PCC
10. Synchronization check: $|\Delta V| < 5\%$, $|\Delta f| < 0.1$ Hz, $|\Delta \theta| < 10^\circ$
11. Breaker closure (controlled)
12. Power export ramp: $P(t) = P_{max} \cdot (1 - e^{-t/10})$

**Cross-reference**: DOC-11 Ch.4 (Substation Hardening) covered IEEE 1313.2 blackstart procedures; GFM simplifies by eliminating synchronism-check relay dependency.
