## 4. Port Valve Assembly — Ti₃AlC₂/ZrO₂ Thermal Actuation (A-04)

### 4.1 Sub-Assembly Sequence (×8 ports)

```
Ti₃AlC₂ ACTUATOR BRAZE → ZrO₂ PISTON HONE → PEEK CF40 SPRING INSTALL → LEAK TEST → THERMAL CAL
      │                        │                    │                 │            │
      ▼                        ▼                    ▼                 ▼            ▼
   Ag-CuO-TiO₂            0.05mm clearance    3-wave spring     He 10⁻⁶        3.6mm @ 680°C
   50μm joint             hone finish          50 N preload      mbar·L/s     ΔT
```

### 4.2 Actuator Brazing (Critical Process)

| Parameter | Value | Verification |
|---|---|---|
| Braze alloy | Ag-26.7Cu-4.5Ti-2.5O (wt%) | XRD phase confirmation |
| Braze temperature | 950°C | TC on fixture ±5°C |
| Braze time | 10 min hold | Timer |
| Atmosphere | High vacuum (<10⁻⁵ mbar) | RGA |
| Joint thickness | 50 μm ±10 μm | Cross-section + SEM |
| Fixture | Graphite, CTE-matched | CMM pre/post |

**Braze qualification:** 10× magnification — no voids >50 μm. Deflection test: 3.6 mm ±0.2 mm at 680°C ΔT.

### 4.3 Piston Honing & Spring Installation

| Operation | Specification | Equipment |
|---|---|---|
| Piston OD | 12.00 mm +0/-0.01 | CNC honing machine |
| Clearance to sleeve | 0.05 mm (ZrB₂-SiC sleeve) | Air gauge |
| Surface finish | Ra < 0.1 μm | Profilometer |
| Spring | PEEK CF40, 3-wave, 50 N @ 3 mm deflection | Load test |
| Spring install | Press-fit into actuator pocket | Arbor press, force curve |

### 4.4 Leak Test & Thermal Calibration

| Test | Acceptance | Equipment |
|---|---|---|
| Helium leak (valve closed) | <10⁻⁶ mbar·L/s | He mass spectrometer |
| Thermal actuation | 3.6 mm ±0.2 mm at 680°C ΔT | Furnace + LVDT |
| Cycle life (accelerated) | 500 cycles (25→700°C) | Thermal cycler |
| Re-seat leak after cycling | <10⁻⁶ mbar·L/s | He mass spectrometer |

---
