## 1. Thermal Cascade Engineering — The Science of Sequential Separation

The Aegis-Forge I exploits a fundamental principle of material science: every substance has a discrete phase transition temperature. By raising the drum's internal temperature in precisely controlled increments — the thermal cascade — each material class becomes liquid, decomposes, or volatilizes in a predictable sequence, enabling clean physical separation without chemical reagents.

### 1.1 The Cascade Temperature Ramp Protocol

The complete thermal cycle runs 3.5-5 hours per batch depending on feedstock composition and moisture content. The protocol below defines the master schedule that all zone controllers, drum drive, gas handling, and safety systems synchronize to.

| Time (min) | Temp (°C) | Stage | Activity | Ramp Rate (°C/min) | Dwell (min) | Drum RPM | G-Force | Induction Freq | Power/Zone (kW) | Atmosphere |
|---|---|---|---|---|---|---|---|---|---|---|
| 0-15 | 20-80 | Pre | Acoustic mineral liberation | - | 15 | 10 | 0.3 | Off | 0 | N₂ 1.2 bar |
| 15-35 | 80-150 | 1 | Moisture removal, volatile organics | 3.5 | 20 | 5-10 | 0.1-0.3 | 100 kHz | 0-50 | N₂ 1.2 bar |
| 35-65 | 150-450 | 2 | Thermoplastic flow, polymer separation | 10 | 30 | 150 | 12.6 | 100 kHz | 0-50 | N₂ + NaHCO₃ aerosol |
| 65-95 | 450-660 | 3 | Pyrolysis, char formation | 7 | 30 | 200 | 22.3 | 50 kHz | 50-80 | N₂ <2% O₂ |
| 95-120 | 420-900 | 4 | Low-melting metals: Pb, Sn, Zn, In | 19.2* | 25 | 400 | 89.2 | 10 kHz | 80-150 | N₂ 1.5 bar |
| 120-145 | 660-720 | 5 | Aluminum separation (pure Al window) | 2.4 | 25 | 300 | 50.2 | 10 kHz | 80-150 | N₂ 1.5 bar |
| 145-175 | 720-1085 | Hold | Solidus zone: brass, bronze separation | 12.2 | 30 | 250 | 34.9 | 5 kHz | 100-200 | N₂ 2.0 bar |
| 175-205 | 1085-1200 | 6 | Copper and copper alloys | 3.8 | 30 | 350 | 68.1 | 5 kHz | 100-200 | N₂ 2.0 bar |
| 205-240 | 1200-1600 | 7 | Iron, steel, nickel, cobalt | 11.4 | 35 | 450 | 112.8 | 2 kHz | 150-350 | Ar 2.5 bar |
| 240-270 | 1600-2200 | 8 | Refractory mineral oxide residue | 20 | 20 | 300 | 50.2 | 1 kHz | 200-500 | Ar 3.0 bar |
| 270-300 | 2200-cool | Cool | Controlled cool under N₂ | -15 | 30 | 0 | 0 | Off | 0 | N₂ purge |

*Note: Stage 4 ramp overlaps Stage 3-5 temperatures; Zn/Pb/In separation occurs during ramp through their melting points.

### 1.2 Ramp Rate Equations

The temperature ramp for each stage is governed by the thermal inertia of the drum-feedstock system:

$$\frac{dT}{dt} = \frac{P_{induction} - Q_{loss} - Q_{phase}}{m_{drum}c_{drum} + m_{feed}c_{feed}}$$

Where $Q_{phase} = \sum m_i \Delta H_{fus,i}$ accounts for latent heat absorption during phase transitions. The controller solves this implicitly at 1 Hz, adjusting zone power to track the target profile within ±5°C.

### 1.3 Dwell Time Physics Justification

Each stage dwell is not arbitrary — it is the minimum time for complete phase clearance at the target port:

- **Stage 1 (20 min):** Water vapor diffusion through 50 kg porous charge + condensation residence time in heat exchanger
- **Stage 2 (30 min):** Polymer melt viscosity decay to <100 Pa·s + centrifugal stratification at G=12.6 (Stokes settling time)
- **Stage 3 (30 min):** Pyrolysis kinetics — char yield plateau at 600°C (TGA-validated)
- **Stage 4 (25 min):** Indium-first strategy requires 5 min at 160°C + 20 min for Zn/Pb/Sn coalescence
- **Stage 5 (25 min):** Al melt pool formation + 5 min centrifuge at G=25 for >95% recovery
- **Stage 6 (30 min):** Cu thermal mass (0.385 J/g·K × 200 kg) + precious metal co-melting
- **Stage 7 (35 min):** Fe ferromagnetic coupling onset at 770°C Curie transition + REE magnet melting
- **Stage 8 (20 min):** Zircon dissociation kinetics at 1676°C + mineral slag consolidation

### 1.4 Centrifugal G-Force Schedule

Drum speed is staged to match separation physics:

| Stage | RPM | G (r=0.3m) | Purpose |
|---|---|---|---|
| Pre/1 | 5-10 | 0.1-0.3 | Gentle tumbling, no stratification |
| 2 | 150 | 12.6 | Polymer density stratification (Δρ ~0.5 g/cm³) |
| 3 | 200 | 22.3 | Char particle migration |
| 4 | 400 | 89.2 | Low-temp metal droplet ejection |
| 5 | 300 | 50.2 | Al melt flow control (viscosity 1.3 mPa·s) |
| Hold | 250 | 34.9 | Brass/bronze separation window |
| 6 | 350 | 68.1 | Cu droplet ejection, PM retention |
| 7 | 450 | 112.8 | Fe/steel maximum separation force |
| 8 | 300 | 50.2 | Mineral residue consolidation |
| Cool | 0 | 0 | Solidification without segregation |


### 1.5 Induction Frequency Schedule

Frequency is the primary selectivity knob — it determines skin depth and thus which materials couple:

| Stage | Freq | Skin Depth (Cu) | Skin Depth (Al) | Skin Depth (Fe) | Target Coupling |
|---|---|---|---|---|---|
| 1-2 | 100 kHz | 0.2 mm | 0.3 mm | 0.05 mm | Air/N₂ heating, indirect |
| 3 | 50 kHz | 0.3 mm | 0.4 mm | 0.07 mm | Zn, Pb onset |
| 4-5 | 10 kHz | 0.7 mm | 0.9 mm | 0.15 mm | Al optimal, Zn/Pb deep |
| Hold | 5 kHz | 1.0 mm | 1.3 mm | 0.2 mm | Brass/bronze transition |
| 6 | 5 kHz | 1.0 mm | 1.3 mm | 0.2 mm | Cu deep penetration |
| 7 | 2 kHz | 1.6 mm | 2.0 mm | 0.3 mm | Fe ferromagnetic |
| 8 | 1 kHz | 2.2 mm | 2.8 mm | 0.45 mm | Mineral conduction |

Skin depth: $\delta = \sqrt{\frac{2\rho}{\omega\mu}}$ — lower frequency = deeper penetration for high-conductivity metals.

### 1.6 Power Profile Per Zone Per Stage

Each of 8 axial zones (100 mm each) receives tailored power:

| Zone | Axial Position | Stages Active | Peak Power (kW) | Duty Cycle |
|---|---|---|---|---|
| 1 | 0-100 mm (feed end) | 1-3 | 50 | 30% |
| 2 | 100-200 mm | 1-3 | 50 | 30% |
| 3 | 200-300 mm | 2-4 | 80 | 50% |
| 4 | 300-400 mm | 3-5 | 150 | 70% |
| 5 | 400-500 mm | 4-6 | 200 | 80% |
| 6 | 500-600 mm | 5-7 | 350 | 90% |
| 7 | 600-700 mm | 6-8 | 500 | 95% |
| 8 | 700-800 mm (discharge) | 7-8 | 500 | 100% |

Total installed: 500 kW (not all zones at peak simultaneously).

### 1.7 Atmosphere Control Schedule

| Stage | Gas | Pressure | Flow Rate | Purpose |
|---|---|---|---|---|
| Pre/1 | N₂ | 1.2 bar | 200 L/min | Inert, prevent H₂/organic explosion |
| 2 | N₂ + NaHCO₃ | 1.2 bar | 250 L/min | HCl neutralization from PVC |
| 3 | N₂ | 1.5 bar | 300 L/min | Pyrolysis gas sweep, <2% O₂ |
| 4-5 | N₂ | 1.5 bar | 350 L/min | Metal vapor suppression |
| Hold | N₂ | 2.0 bar | 400 L/min | Brass/bronze oxidation prevention |
| 6 | N₂ | 2.0 bar | 400 L/min | Cu vapor capture |
| 7 | Ar | 2.5 bar | 500 L/min | Fe oxidation prevention, better arc suppression |
| 8 | Ar | 3.0 bar | 500 L/min | Refractory oxide stability |
| Cool | N₂ | 1.0 bar | 200 L/min | Oxidation prevention during solidification |


---
