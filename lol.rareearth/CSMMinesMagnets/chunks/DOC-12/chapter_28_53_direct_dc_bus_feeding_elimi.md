## 5.3 Direct DC Bus Feeding (Eliminating AC Collection)

For co-located Aegis-Forge + CSM motor clusters, **DC bus direct feeding** eliminates inversion losses:

```
DC Bus (±1.5 kV) → DC/DC (isolated) → Motor Drive DC Link → Motor Inverter → Fe₁₆N₂/SynRM
```

**Efficiency Gain**: 97% (DC/DC) × 98% (motor inverter) = **95%** vs. 97% (GFM inverter) × 99% (transformer) × 98% (motor inverter) = **94%** — marginal but compounds at scale.

**Harmonic Advantage**: No AC-side harmonics injected into collection grid; motor drive harmonics contained on DC side with active filtering.
