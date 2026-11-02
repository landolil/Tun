## 8. EMI Shielding Circularity (Ti₃AlC₂ MAX Phase)

### 8.1 MAX Phase Life Cycle

```
NEW Ti₃AlC₂ SHIELD (Gen 1)
    │
    ├─→ Product service life (10-20 yr typical)
    │
    ├─→ RETURN → Phoenix Depot
    │
    ├─→ Crush → Chloride-Thermal Extraction:
    │     Ti₃AlC₂ + 6Cl₂ → 3TiCl₄ + AlCl₃ + 2C (800°C, Cl₂)
    │     TiCl₄ purified → TiO₂ (hydrolysis) → Ti powder (Mg reduction)
    │     AlCl₃ → Al metal (electrolysis)
    │
    ├─→ Re-synthesis:
    │     3TiO₂ + Al₂O₃ + 14C → Ti₃AlC₂ + 11CO (1500°C, 4h, Ar)
    │     OR direct: 3Ti + Al + 2C → Ti₃AlC₂ (SHS, 1h)
    │
    └─→ NEW Ti₃AlC₂ SHIELD (Gen 2)
          (Same spec as PROD-09 actuators, PROD-36 EMI)
```

### 8.2 MAX Phase Circularity Metrics

| Metric | Target |
|--------|--------|
| **Ti recovery** | >95% |
| **Al recovery** | >90% |
| **C retention** | >85% (makeup from Stage 3 char) |
| **Synthesis cycles before property drift** | 20 generations |
| **Cost per kg recycled** | $45/kg vs. $280/kg virgin |

### 8.3 Alternative: Direct MAX Phase Recycling

For minor damage (surface wear, thermal cycling fatigue):

```
Ti₃AlC₂ shield (worn)
         │
         ▼
Surface grind (0.5 mm removal) → Clean
         │
         ▼
Spark Plasma Sintering (SPS) Repair:
  • 1300°C, 50 MPa, 5 min, pulsed DC
  • Fills surface cracks, restores density
  • No composition change
         │
         ▼
Re-certify:
  • EMI shielding >80 dB (10 MHz-10 GHz)
  • Thermal conductivity >45 W/m·K
  • Flexural strength >300 MPa
         │
         ▼
RETURN TO SERVICE (Gen N, Life +50%)
```

---
