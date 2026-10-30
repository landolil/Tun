# PROD-02: Thermal Cascade Process Engineering
## CSMFAB000000000109 — Aegis-Forge I Thermal Cascade Process Engineering
### Stage-by-Stage Temperature, Chemistry, Materials Science, and Control Engineering
**Document Number:** CSMFAB000000000109 (Volume 2 of 5)
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** June 2026 | **Classification:** Foundation Technology — Seed Material Production

---

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

## 2. Stage 0 — Acoustic Pre-Liberation (Ambient)

Before any thermal energy enters the system, the feedstock undergoes mechanical liberation in a dedicated pre-chamber. This stage is the **enabling precursor** — without it, mineral grains remain locked in rock matrix, reducing downstream induction coupling efficiency by 40-60%.

### 2.1 Physics of Acoustic Mineral Liberation

Rock matrix minerals are held together by three mechanisms:

1. **Grain boundary adhesion** — intergranular cements (silica, carbonates, clays)
2. **Mechanical interlocking** — irregular grain shapes creating geometric lock
3. **Surface tension of pore fluids** — capillary forces in micro-fractures

Low-frequency acoustic waves (20-500 Hz) induce cyclic stress waves through the rock matrix. At resonant frequencies specific to the mineral grain size, stress concentrations at grain boundaries exceed the grain boundary fracture toughness:

$$\sigma_{boundary} = \frac{4\pi^2 f^2 A \rho r}{K_{IC}} > 1 \Rightarrow \text{liberation}$$

Where:
- $f$ = acoustic frequency (Hz)
- $A$ = displacement amplitude (m)
- $\rho$ = grain density (kg/m³)
- $r$ = grain radius (m)
- $K_{IC}$ = grain boundary fracture toughness (MPa·m^0.5)

Liberation occurs when the dimensionless stress ratio exceeds unity.

### 2.2 Low-Frequency Application (20-200 Hz) — Rock Matrix Loosening

**Transducer array:** 8 × KNbO₃-BaTiO₃ piezoceramic rings, 500 W each, mounted on pre-chamber outer wall (BFRP), coupled via silicone interlayer.

**Chamber resonance tuning:** Dimensions tuned to 100 Hz fundamental (L = 1.7 m, v_sound ≈ 340 m/s in N₂ at 1.2 bar).

**Operating parameters:**
- Frequency sweep: 20 → 200 Hz over 15 minutes (chirp mode)
- Peak displacement amplitude: 50 μm at chamber wall
- Total acoustic power: 4 kW continuous
- Duty cycle: 100% during 15-min stage

**Liberation efficacy (validated on basalt feedstock):**
- Input liberation index (sieve analysis): ~20% (grains < 2 mm free)
- Post-Stage 0 liberation index: ~70%
- Energy cost: 1 kWh/ton feedstock (negligible vs. thermal stages)

For typical basalt ($\rho$ = 3000 kg/m³, $r$ = 0.5 mm, $K_{IC}$ = 1.5 MPa·m^0.5):
At $f$ = 100 Hz, $A$ = 50 μm: $\sigma_{boundary}$ = 1.3 → **liberation achieved**

### 2.3 Ultrasonic Application (40 kHz) — Fine Grain Liberation

**Transducer array:** 8 × submersible KNbO₃-BaTiO₃ probes, 40 kHz, 500 W each = 4 kW total, submerged in water bath within pre-chamber.

**Cavitation physics:** Acoustic cavitation generates microsecond-duration, localized pressure spikes sufficient to fracture silicate-silicate grain boundaries without destroying mineral crystals.

**Bubble collapse pressure:**
$$P_{collapse} = P_0 \left(\frac{R_0}{R_{min}}\right)^{3\kappa} \approx 10^3 \text{ bar locally}$$

Where $R_0$ = 50 μm (ambient bubble radius), $R_{min}$ = 0.5 μm (minimum collapse radius), $\kappa$ = 1.4 (polytropic exponent).

**Microjet velocity:** ~100 m/s → impacts grain boundaries at 10⁹ s⁻¹ strain rate.

**Liberation scale:** 1-50 μm grains (REE minerals in host rock, zircon inclusions).

**Energy cost:** 4 kWh/ton feedstock.

### 2.4 Stage 0 Output & Downstream Impact

- Rock feedstock disaggregated by 60-80% compared to input
- Mineral grains partially liberated from matrix
- Downstream thermal cascade efficiency increases: larger surface area exposed to induction, reduced thermal gradients in charge
- Pre-chamber connects to drum feed port via BFRP-lined chute; liberated powder flows by gravity + N₂ assist

---


## 3. Stage 1 — Drying and Volatiles Removal (80-150°C)

### 3.1 Target Materials and Phase Transitions

| Material | Transition | Temperature (°C) | Enthalpy (kJ/kg) | Source in Feedstock |
|---|---|---|---|---|
| Free water | Vaporization | 100 (1 atm) | 2257 | Surface moisture, pore water |
| Crystal water (gypsum) | Dehydration | 107-120 | 450 | CaSO₄·2H₂O in construction debris |
| Crystal water (borax) | Dehydration | 100-140 | 380 | Na₂B₄O₇·10H₂O in ore concentrate |
| Crystal water (kaolin) | Dehydroxylation | 150+ | 520 | Al₂Si₂O₅(OH)₄ in clay |
| Alcohols/acetone | Vaporization | 56-78 | 850-900 | PCB cleaning residues |
| Terpineol (flux) | Vaporization onset | 150 | 600 | Solder flux on PCBs |

### 3.2 Heating Method: Infrared Irradiation

Induction heating is ineffective at 80-150°C — target materials are non-conductive dielectrics. Alternative: **SiC glow bars** (CSMFAB000000000002-type resistive elements, same as Ancient Hearth stove burner).

**SiC glow bar specifications:**
- Material: Silicon carbide, resistivity ~1 Ω·cm at RT, negative TCR
- Surface temperature: 800-900°C (controlled by current)
- Emitted IR peak: ~3.6 μm wavelength (Wien's law at 850°C)
- Water absorption peaks: 3.0 μm and 6.3 μm → strong coupling
- Power: 6 bars × 15 kW = 90 kW total, zoned along drum length
- Electrical isolation: Al₂O₃ ceramic standoffs, no metal in hot zone

**Drum rotation during Stage 1:** 5-10 RPM (slow, gentle tumbling — uniform drying, no centrifugation)

**Atmosphere:** N₂ at 1.2 bar (prevents explosive H₂/organic vapor combinations; O₂ < 1%)

**Duration:** 20 minutes (sufficient for 50 kg charge with <30% moisture content)

### 3.3 Heat Transfer Analysis

**Radiative flux to charge:**
$$q_{rad} = \varepsilon \sigma (T_{bar}^4 - T_{charge}^4) F_{view}$$

With $\varepsilon$ ≈ 0.85 (SiC), $T_{bar}$ = 1123 K, $T_{charge}$ = 353 K (80°C initial), view factor $F_{view}$ ≈ 0.3:
$q_{rad}$ ≈ 18 kW/m² incident on charge surface.

**Moisture evaporation rate (50 kg charge, 30% water = 15 kg):**
$$\dot{m}_{evap} = \frac{q_{rad} A_{surface}}{h_{fg}} \approx \frac{18 \times 10^3 \times 2.5}{2.26 \times 10^6} = 0.02 \text{ kg/s} = 72 \text{ kg/h}$$

Theoretical drying time: 15 kg / 72 kg/h ≈ 12.5 min. 20 min dwell provides 60% margin for non-uniformity.

### 3.4 Water and Volatile Recovery System

Exiting vapor (mostly H₂O + trace organics) exits through **Port 1** (150°C set-point, opens at 140°C via Ti₃AlC₂ actuator):

1. **BFRP heat exchanger** — chilled to 10°C by PEX-a cooling circuit (CSMFAB000000000012)
   - Condensation efficiency: >99.5% at 10°C dew point
   - Liquid water collected: analyzed for dissolved metals (ICP-MS), either purified for process reuse or discharged

2. **Activated carbon bed** — char from Stage 3 (elegant closed cycle: char from Stage 3 later used to adsorb Stage 1/2 organics)
   - Bed: 200 L ZrO₂-lined vessel, 50 kg activated carbon (from Stage 3 char)
   - Organic vapor capture: >95% for C₃+ hydrocarbons
   - Regeneration: thermal swing at 200°C during Stage 3 char production

3. **Trace gas monitoring** — inline NDIR for CO/CO₂, GC for organics
   - If VOC > 100 ppm: extended dwell until clearance

### 3.5 Stage 1 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 80→150°C ramp | ±5°C | FBG Zone 1-2 |
| Drum rotation | 5-10 RPM | ±1 RPM | Optical encoder |
| N₂ pressure | 1.2 bar | ±0.1 bar | Pressure transducer |
| Port 1 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |
| Glow bar current | 0-100% | PID controlled | Shunt resistor |

---


## 4. Stage 2 — Thermoplastic Polymer Flow (150-450°C)

### 4.1 Target Materials and Melting Characteristics

| Polymer | Melting/Flow Onset (°C) | Melt Density (g/cm³) | Melt Viscosity at 250°C (Pa·s) | Example Sources |
|---|---|---|---|---|
| LDPE | 105-115 | 0.78 | 200 | Film, bags, coatings |
| HDPE | 120-140 | 0.78 | 300 | Pipe, bottles, containers |
| PP | 130-171 | 0.74 | 150 | Automotive, packaging |
| PS | 100-240 (flash) | 1.05 | 500 | Electronics housings |
| PVC | 160-210 | 1.20 | 1000 | Wire insulation, pipes |
| ABS | 200-250 | 1.08 | 800 | Electronics, dashboards |
| PA6 (Nylon 6) | 220-230 | 1.05 | 600 | Connectors, mechanical parts |
| PA66 (Nylon 66) | 255-265 | 1.08 | 900 | Engine parts |
| PET/PETE | 250-260 | 1.15 | 1200 | Bottles, film |
| PC | 267-290 | 1.15 | 2000 | Lenses, covers |
| PEEK (CSM off-cuts) | 341 | 1.22 | 5000 | Reclaimed internal scrap |
| PTFE | 327 | 1.50 | 10000 | Wire insulation, gaskets |

**Combined melt window:** 105°C to 450°C — achievable in single stage by controlled ramp (10°C/min).

### 4.2 Melt Centrifuge Physics

As polymers melt they become viscous fluids (η = 10²-10⁴ Pa·s). Centrifugal force drives molten polymer outward through the stationary solid matrix.

**Centrifugal pressure gradient:**
$$\frac{dP}{dr} = \rho \omega^2 r$$

At 150 RPM (ω = 15.7 rad/s), r = 0.3 m, ρ = 1000 kg/m³:
$$\Delta P_{centrifugal} = \frac{1}{2} \rho \omega^2 (r_o^2 - r_i^2) = \frac{1}{2} \times 1000 \times 15.7^2 \times (0.3^2 - 0.05^2) = 6.9 \text{ kPa}$$

**Stokes settling velocity for polymer droplets in solid matrix:**
$$v = \frac{2}{9} \frac{(\rho_{melt} - \rho_{solid}) g_{eff} r_{drop}^2}{\eta}$$

With G = 12.6, Δρ ≈ 0.3 g/cm³, r_drop ≈ 1 mm, η = 300 Pa·s:
v ≈ 2.2 × 10⁻⁵ m/s → 8 cm/hour (slow, but sufficient over 30 min dwell)

**Density stratification at G = 12.6 (150 RPM):**

| Polymer | Melt Density | Radial Position (at equilibrium) |
|---|---|---|
| PP, LDPE | 0.74-0.78 | Inner annulus (r ≈ 0.15-0.20 m) |
| PS, ABS, PA6 | 1.05-1.08 | Middle annulus (r ≈ 0.20-0.25 m) |
| PET, PC, PEEK | 1.15-1.22 | Outer annulus (r ≈ 0.25-0.30 m) |

Port 2 at drum OD (opens at 200°C): primarily discharges highest-density polymer melt first (PEEK, PC). As temperature rises through 450°C, lower-density polymers also flow.

**Output:** Mixed polymer slug exiting Port 2, quenched in BFRP mold. This "mixed polymer block" is a downstream input for:
- Elium® reformulation (MMA-compatible melt blending)
- BFRP matrix additive (modified impact resistance)
- Future CSM product: polymer filament for 3D printing

### 4.3 PVC Warning — Chlorine Management

PVC releases HCl vapor at 160-200°C during dehydrochlorination. This is a toxic acid gas requiring active management.

**Critical process control:**
- Stage 2 atmosphere: mildly basic N₂ with NaHCO₃ aerosol injection (powder spray system at drum inlet)
- Neutralization reaction: NaHCO₃ + HCl → NaCl (salt) + H₂O + CO₂ (occurs in-drum at 160-210°C)
- NaCl residue: exits as dissolved mineral in Stage 3 char stream
- Residual HCl monitoring: inline optical HCl sensor (PMMA fiber + absorption spectroscopy at 1.76 μm)
- **Hold trigger:** If HCl concentration > 50 ppm → drum temperature hold until HCl level drops
- NaHCO₃ consumption: ~1.1 kg per kg PVC (stoichiometric + 10% excess)

**PVC content estimate:** Typical e-waste feedstock contains 5-15% PVC by weight. For 500 kg batch: 25-75 kg PVC → 27-82 kg NaHCO₃ consumed per batch.

### 4.4 Induction Heating in Stage 2

- Frequency: 100 kHz (Zones 1-2)
- Power: 0-50 kW/zone (indirect heating via air/N₂ convection — polymers are dielectric)
- SiC glow bars remain active as supplementary heat source
- Target: uniform bulk heating, no hot spots that could cause degradation

### 4.5 Stage 2 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 150→450°C ramp | ±5°C | FBG Zone 1-3 |
| Drum rotation | 150 RPM | ±5 RPM | Optical encoder |
| N₂ pressure | 1.2 bar | ±0.1 bar | Pressure transducer |
| NaHCO₃ injection | 2 g/s (adaptive) | ±0.5 g/s | Mass flow controller |
| HCl concentration | <50 ppm | Alarm >50 ppm | Optical sensor |
| Port 2 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |

---

