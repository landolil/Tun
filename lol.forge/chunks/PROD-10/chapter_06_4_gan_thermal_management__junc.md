## 4. GaN Thermal Management — Junction-to-Cold-Plate Design

Maintaining GaN junction temperature below 125°C (derated from 150°C max) at 500 kW total dissipation requires a high-performance liquid cooling system.

### 4.1 Thermal Resistance Budget

| Thermal Interface | R<sub>θ</sub> (K/W) | Notes |
|-------------------|---------------------|-------|
| Junction-to-case (R<sub>θJC</sub>) | 0.8 | GS66516T datasheet |
| Case-to-cold-plate (TIM + interface) | 0.15 | Indium foil or phase-change TIM |
| Cold-plate convection (water) | 0.05 | Microchannel, 2 m/s flow |
| Water-to-ambient (chiller) | 0.02 | External chiller |
| **Total R<sub>θJA</sub>** | **1.02 K/W** | |

At 5.5 kW dissipation (Z8 worst case): $\Delta T = 5.5 \times 1.02 = 5.6°C$ above water temperature. With 25°C inlet water, T<sub>j</sub> ≈ 31°C — well within limits.

### 4.2 Microchannel Cold Plate Design

Each inverter module mounts on a copper microchannel cold plate (CSMFAB-sourced copper — the only copper in the machine, justified as internal heat spreader not connected to earth):

- **Channel geometry:** 0.5 mm wide × 1 mm deep, 40 channels parallel
- **Flow rate:** 2 L/min per module (16 L/min total for 8 modules)
- **Pressure drop:** 0.8 bar @ 2 L/min
- **Material:** Copper base with PEX-a water connections
- **Surface finish:** Ni-P electroless nickel (corrosion resistance, solderable)

### 4.3 PEX-a Water Circuit

The cooling water circuit uses PEX-a tubing (CSMFAB Materials Study Part IV) throughout — completely non-conductive, eliminating any conductive path from the process electronics to the building ground. This is a critical Carrington immunity feature.

- **Loop layout:** Parallel feed to each module, manifold return
- **Filtration:** 10 μm cartridge filter, ZrO₂ housing
- **Treatment:** Deionized water, 18 MΩ·cm, with corrosion inhibitor (benzotriazole, 50 ppm)
- **Monitoring:** FBG temperature sensors at each module inlet/outlet

---
