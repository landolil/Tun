## 3.2 Alpha-2 Thermal Cascade Separation — 8-Zone Inductive Drum

### 3.2.1 The 8-Stage Temperature Profile — Calama Feed Optimized

| Stage | Temp Range | Target Elements | Calama Feed Specifics | Residence Time | Power (kW) |
|-------|------------|-----------------|----------------------|----------------|------------|
| **0** | 25–150°C | **Moisture, organics, Hg** | E-waste polymers, tailings moisture | 8 min | 500 (IR) |
| **1** | 150–350°C | **Polymers, PVC, S organics** | E-waste ABS/PC/PE, PCB resins | 12 min | 1,200 |
| **2** | 350–650°C | **Zn, Pb, Sn, Cd, In** | **RT cathode impurities, e-waste solders** | 10 min | 2,500 |
| **3** | 650–850°C | **Al, Mg, Li** | **E-waste Al frames, Chuqui waste rock Al** | 8 min | 3,800 |
| **4** | 850–1050°C | **Cu (primary), Ag, Au** | **Chuqui/RT/MH Cu concentrate, e-waste PCBs** | 15 min | 8,500 |
| **5** | 1050–1250°C | **Fe, Co, Ni, Mn** | **MH magnetite, RT pyrite, e-waste motors** | 12 min | 6,200 |
| **6** | 1250–1450°C | **REE (Nd, Dy, Tb, Pr), Sc, Y** | **Chuqui tailings monazite/xenotime, RT solutions** | 10 min | 4,800 |
| **7** | 1450–1650°C | **Zr, Hf, Ti, Th, U** | **Chuqui zircon, RT ilmenite** | 8 min | 3,500 |
| **8** | 1650–1676°C | **Zircon dissociation (ZrO₂ + SiO₂)** | **High-value ZrO₂ ceramic, pure SiO₂** | 5 min | 2,800 |

**Total Alpha-2 Power**: **33.8 MW thermal** (H₂-fired inductive) + **4.2 MW electrical** (controls, drives)
**Total Energy/ton feedstock**: **~250 kWh/t** (vs 400+ kWh/t conventional pyro/hydro)

### 3.2.2 Inductive Coil Bank — 8-Zone Design (Calama Optimized)

| Zone | Frequency | Coil Type | Turns | Cooling | Power Density | Material |
|------|-----------|-----------|-------|---------|---------------|----------|
| **0-1** | 100 kHz | Litz wire, pancake | 12 | Water (40°C) | 85 kW/L | Cu-ETP |
| **2-3** | 50 kHz | Litz wire, solenoid | 18 | Water (40°C) | 120 kW/L | Cu-ETP |
| **4-5** | 20 kHz | Hollow Cu, solenoid | 24 | Water (40°C) | 180 kW/L | Cu-OF |
| **6-7** | 10 kHz | Hollow Cu, solenoid | 30 | Water (60°C) | 220 kW/L | Cu-OF |
| **8** | 5 kHz | Hollow Cu, solenoid | 36 | **Liquid GaInSn** (90°C) | 280 kW/L | Cu-OF |

**GaN Inverter Spec (Per Zone)**:
- **Topology**: 3-phase, 400V DC link, 98.5% efficiency
- **Switching**: 100 kHz (Zone 0-1) → 5 kHz (Zone 8)
- **Thermal**: Liquid cold plate, junction <125°C
- **Control**: FPGA-based, 1 μs latency, **FBG sensor feedback** (drum wall temp ±2°C)

### 3.2.3 ZrB₂-SiC Drum — Calama Service Conditions

| Parameter | Specification | Calama Adaptation |
|-----------|---------------|-------------------|
| **Material** | ZrB₂-20vol%SiC (HP sintered, HIP) | **YInMn Blue glaze (SRI=115)** for radiative cooling |
| **Dimensions** | ID 2.2m × L 8.5m × Wall 45mm | **Modular segments** (6 × 1.4m) for transport/replace |
| **Rotation** | 0.5–3.0 RPM (VFD) | **Variable by stage** — slower for REE (Zone 6) |
| **Max Temp** | 1750°C (continuous) | **Zone 8: 1676°C zircon dissociation** |
| **Thermal Shock** | ΔT 800°C in 30s (survives) | **Critical for feedstock variability** |
| **Wear Rate** | <0.1 mm/yr (abrasive feed) | **Calama feed: 0.15 mm/yr** (zircon, quartz) |
| **FBG Sensors** | 120 sensors embedded (axial + circumferential) | **Real-time wall temp, strain, crack detection** |
| **Liner Zones** | 8 replaceable ceramic tile zones | **Zone-specific composition** (Al₂O₃-ZrO₂ for Cu, MgO-Cr₂O₃ for Fe) |

---
