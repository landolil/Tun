## 7. Scaling Laws

### 7.1 Stage 0 Scaling (226L → 20,000L)

The AMLS must scale from the 226L Aegis-Forge I to industrial 20,000L units:

| Parameter | 226L (Lab) | 2,000L (Pilot) | 20,000L (Industrial) | Scaling Law |
|-----------|------------|----------------|----------------------|-------------|
| Chamber Diameter | 600 mm | 1,800 mm | 5,500 mm | D ∝ V^(1/3) |
| Chamber Length | 400 mm | 1,200 mm | 3,600 mm | L ∝ V^(1/3) |
| LF Transducers | 8 | 24 | 72 | N ∝ V^(2/3) (surface area) |
| US Probes | 8 | 24 | 72 | N ∝ V^(2/3) |
| LF Power/Transducer | 1 kW | 3 kW | 9 kW | P ∝ D (maintain intensity) |
| US Power/Probe | 500 W | 1.5 kW | 4.5 kW | P ∝ D |
| Total LF Power | 8 kW | 72 kW | 648 kW | P_total ∝ V^(2/3) |
| Total US Power | 4 kW | 36 kW | 324 kW | P_total ∝ V^(2/3) |
| Water Volume | 15 L | 135 L | 1,350 L | V_water ∝ V |
| Cycle Time | 30 min | 30 min | 30 min | **Constant** (grain physics) |

**Key insight:** Cycle time is **invariant** with scale — grain boundary fatigue physics depends on cycles, not absolute dimensions. Power scales with surface area (V^(2/3)), not volume.

### 7.2 Stage 1 Scaling

| Parameter | 226L | 2,000L | 20,000L | Scaling Law |
|-----------|------|--------|---------|-------------|
| IR Emitters | 12 | 36 | 108 | N ∝ V^(2/3) |
| Emitter Power | 5 kW | 15 kW | 45 kW | P ∝ D |
| Total IR Power | 60 kW | 540 kW | 4,860 kW | P_total ∝ V^(2/3) |
| Drying Time | 20 min | 20 min | 20 min | **Constant** (diffusion-limited) |
| N₂ Flow | 50 Nm³/hr | 450 Nm³/hr | 4,500 Nm³/hr | Q ∝ V |

---
