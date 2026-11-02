## 1. Structural Design Basis

### 1.1 Design Philosophy

The Aegis-Forge I structural analysis is governed by a single irreducible principle: **all load-bearing components must survive the simultaneous application of extreme thermal gradients (2000°C across 68 mm), high-speed rotation (500 RPM, 84.5 G at drum ID), pressure containment (10 bar design), and Carrington-class electromagnetic hostility — without a single structural metal.** This constraint forces the use of advanced ceramics (ZrB₂-SiC, 3Y-TZP, Si₃N₄, Ti₃AlC₂) and ceramic-matrix composites (BFRP/Elium®) as the primary structural materials, each with temperature-dependent properties and no ductile yield behavior.

The structural design employs a **hierarchical load path** where each component validates the next:

| Level | Component | Primary Loads | Material | Failure Mode |
|-------|-----------|---------------|----------|--------------|
| 1 | Drum (rotating) | Centrifugal + Thermal + Pressure | ZrB₂-SiC | Brittle fracture (Weibull) |
| 2 | Vessel (stationary) | Pressure + Thermal + Seismic | BFRP/Elium® | Delamination / Tsai-Wu |
| 3 | Frame & Supports | Weight + Seismic + Thermal growth | BFRP Box Beam | Buckling / Fatigue |
| 4 | Port Valves | Thermal actuation + Pressure | Ti₃AlC₂/ZrO₂ | MAX phase fracture |
| 5 | Bearings | Radial/Axial + Thermal growth | Si₃N₄/ZrO₂/PEEK | Wear / Rolling contact fatigue |
| 6 | Coil Housing | Lorentz force + Thermal | BFRP | Matrix cracking |

**Design criteria (all load cases combined):**
- **Ceramics (ZrB₂-SiC, ZrO₂, Si₃N₄, Ti₃AlC₂):** Minimum safety factor ≥ 1.5× on von Mises equivalent stress vs. temperature-dependent flexural strength
- **Composites (BFRP, PEEK CF40):** Minimum safety factor ≥ 2.0× on Tsai-Wu failure index; ≤ 0.5 on failure index
- **Fatigue (all):** >10× design life on cycles to failure (thermal + pressure + vibration)
- **Creep (ceramics at >1800°C):** <0.2% strain in 10,000 hours
- **Seismic (IEEE 693 High):** Zero loss of function at Design Basis Earthquake (DBE)

### 1.2 Load Cases — Envelope Definition

| Load Case | Description | Drum | Vessel | Frame | Frequency |
|-----------|-------------|------|--------|-------|-----------|
| **LC-01** | Normal operation (Stage 8 peak) | 500 RPM, 5 bar, 2200°C ID | 5 bar, 150°C ext | Weight | Continuous |
| **LC-02** | Thermal ramp (50°C/min) | ΔT/dt = 50°C/min | ΔT/dt = 5°C/min | Differential growth | 6×/day |
| **LC-03** | Emergency cool (100°C/s) | ΔT/dt = -100°C/s | ΔT/dt = -10°C/s | — | <1/year |
| **LC-04** | Hydrotest | — | 15 bar, 25°C | Reaction | Commissioning |
| **LC-05** | Seismic DBE (IEEE 693 High) | Inertial + support motion | Inertial + support motion | Base shear | Design basis |
| **LC-06** | Carrington GIC ride-through | Thermal hold | Thermal hold | — | <1/century |
| **LC-07** | Transport (ASTM D4169) | — | — | Shock/vibration | Once |
| **LC-08** | Batch thermal cycle | 20→2200→20°C | 20→150→20°C | 20→150→20°C | 6×/day |

**Load combination per ASME BPVC / IEEE 693:**
- Normal: 1.0×(LC-01 + LC-02 + LC-08)
- Upset: 1.2×(LC-01 + LC-03) + 1.0×LC-02
- Faulted: 1.0×(LC-01 + LC-05) (seismic governs)
- Test: 1.5×LC-04 (hydrotest)

### 1.3 Material Property Temperature Dependence (From PROD-24)

All structural analyses use the **exact temperature-dependent correlations** from PROD-24 Section 2. Key materials:

**ZrB₂-SiC Drum Body (12 vol% ZrB₂):**
- E(T): 380 - 0.04(T-20) GPa
- σ_f(T): 620 - 0.123(T-20) MPa
- α(T): 5.8×10⁻⁶ (20-1000°C), 6.5×10⁻⁶ (1000-2200°C) /K
- k(T): 45 - 0.0115(T-20) W/m·K

**3Y-TZP ZrO₂ (Zone C Liner, Ports, Bearings):**
- E(T): 210 - 0.03(T-20) GPa
- σ_f(T): 1200 - 0.4(T-20) MPa (RT-1200°C), 800 MPa (1500°C)
- α(T): 10.5×10⁻⁶ (20-1000°C), 11.2×10⁻⁶ (1000-2000°C) /K
- K_IC: 6-10 MPa·m⁰·⁵ (transformation toughening)

**Si₃N₄ (Zone A Liner, Bearing Races):**
- E: 310 GPa (constant to 1200°C)
- σ_f: 850 MPa (RT), 700 MPa (1200°C)
- α: 3.2×10⁻⁶ /K

**BFRP/Elium® Vessel ([±18°/90°]₄):**
- E_hoop(T): 65 - 0.1(T-20) GPa
- σ_ult,hoop(T): 1100 - 2.25(T-20) MPa
- σ_ult,axial(T): 850 - 1.75(T-20) MPa
- α_hoop: 6.2×10⁻⁶ /K, α_axial: 8.8×10⁻⁶ /K

**Ti₃AlC₂ MAX Phase (Port Actuators):**
- E: 240 GPa (a-axis), 220 GPa (c-axis)
- σ_f: 350 MPa (RT), 280 MPa (1200°C)
- α: 9.2×10⁻⁶ /K (c-axis, actuator direction)
- K_IC: 12 MPa·m⁰·⁵ (kinking)

**PEEK CF40 (Flanges, Springs, Bearing Cage):**
- E(T): 18 - 0.04(T-20) GPa
- σ_y(T): 95 - 0.3(T-20) MPa (compressive)
- α: 4.5×10⁻⁶ (RT), 5.2×10⁻⁶ (200°C) /K
- Max continuous: 250°C

---
