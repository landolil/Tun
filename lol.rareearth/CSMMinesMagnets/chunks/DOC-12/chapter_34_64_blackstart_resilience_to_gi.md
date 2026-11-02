## 6.4 Blackstart Resilience to GIC Events

### 6.4.1 GIC During Blackstart

Carrington-class GIC events can coincide with grid restoration attempts. GFM blackstart is resilient because:

1. **No PLL dependency**: Blackstart sequence uses internal oscillator, not grid synchronization
2. **Controllable fault current**: GFM limits inrush during transformer energization
3. **Harmonic rejection**: Inner current loop rejects GIC-induced harmonics

**Formula — Transformer Inrush with GFM Soft Energization:**
```math
I_{inrush}(t) = \frac{V_{nom}}{X_m} \left( 1 - e^{-t/\tau} \right) \cdot \left| \sin(\omega_{nom} t + \phi_{residual}) \right|
```

where $X_m$ is magnetizing reactance, $\phi_{residual}$ is residual flux angle. GFM controls $V(t)$ ramp to keep $I_{inrush} < 1.5$ pu.

### 6.4.2 Coordinated Multi-Cluster Blackstart

For Norte Grande corridor (Antofagasta–Atacama), multiple Aegis-Forge clusters coordinate:

```math
\text{Cluster Priority: } \text{Escondida} \rightarrow \text{Collahuasi} \rightarrow \text{Los Pelambres} \rightarrow \text{Zaldívar}
```

Each cluster blackstarts locally, then synchronizes via interconnection tie-lines:
```math
\text{Synchronization Check: } |\Delta V| < 3\%, |\Delta f| < 0.05 \text{ Hz}, |\Delta \theta| < 5^\circ
```

**Cross-reference**: DOC-11 Ch.2 (Norte Grande vulnerability), Ch.4 (substation hardening), Ch.8 (financial instruments for blackstart CAPEX).

---
