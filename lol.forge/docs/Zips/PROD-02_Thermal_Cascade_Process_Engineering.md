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


## 5. Stage 3 — Pyrolysis and Carbon Char Formation (450-700°C)

### 5.1 Thermoset and Organic Decomposition Chemistry

At temperatures above 450°C, thermosetting polymers and residual organics undergo thermal decomposition (pyrolysis). Unlike thermoplastics, these materials do not melt — they decompose irreversibly.

**Simplified global pyrolysis reaction:**
$$\text{Polymer} \xrightarrow{\Delta, 500^\circ\text{C}} \text{Char (C)} + \text{Gas (CO, CO}_2\text{, H}_2\text{O, H}_2\text{, CH}_4\text{, BTX)}$$

**Carbon yields from pyrolysis (by weight of original polymer):**

| Material | Char Yield (%) | Primary Decomposition Range (°C) | Notes |
|---|---|---|---|
| Epoxy resin | 15-25 | 350-500 | FR4 PCB substrate base |
| FR4 (glass-epoxy) | 40-50 | 350-520 | Glass fiber mass remains |
| Rubber/elastomer | 25-40 | 300-500 | Tires, seals, gaskets |
| Phenolic resin | 50-60 | 400-600 | High carbon yield |
| Cellulosic (paper/wood) | 20-30 | 300-400 | Packaging, insulation |
| Polyurethane foam | 15-25 | 250-450 | Furniture, automotive |
| Melamine formaldehyde | 35-45 | 350-550 | Laminates, dinnerware |
| Urea formaldehyde | 25-35 | 300-500 | Adhesives, particleboard |

**FR4 PCB substrate detailed decomposition:**
- Onset: 350-420°C (depends on halogen content from brominated flame retardants)
- Peak weight loss rate: 480-520°C (main epoxy decomposition)
- Residue at 700°C: ~20% (SiO₂ glass fibers + inorganic fillers + carbon char)
- Bromine release: as HBr (captured in Stage 2 NaHCO₃ system) + organobromines (destroyed in plasma torch)

### 5.2 Char Collection — The Valuable Carbonaceous Product

At 600-700°C, char from pyrolysis exits **Port 3** (700°C set-point, opens at 680°C):

**Char properties:**
- Carbon content: 80-95% C (high after partial oxidation/volatilization)
- Ash content: 5-15% (inorganic fillers, glass fiber residue)
- Surface area: 200-800 m²/g (activated carbon-like porosity from volatile evolution)
- Pore volume: 0.5-1.2 cm³/g
- Specific resistance: 10⁻³ to 10⁻¹ Ω·m (conductive enough for electrostatic separation if needed)
- Particle size: 0.1-5 mm (granular, friable)

**Practical applications (immediate CSM internal use):**
1. **Activated carbon for organic vapor adsorption** — used immediately in Stage 1 gas treatment (closed cycle!)
2. **Carbon black substitute** for rubber compounding (BFRP matrix toughening)
3. **Graphite precursor** for further purification → battery anode material
4. **Carburizing agent** for steel (reduces iron oxide in Stage 7 slag)
5. **Carbon electrodes** for electrochemical processes (electrorefining cells)

**Char mass balance (typical 500 kg mixed feedstock):**
- Organic input: ~150 kg (30% of feed)
- Char yield: 8-15% of organic input = 12-22.5 kg
- Gas yield: 85-92% of organic input = 127-138 kg (routed to gas management)

**Port 3 discharge:** Dry, granular, collected in ZrO₂-lined ceramic bin. Weight logged per batch.

### 5.3 Combustion Gas Management

**Atmosphere control:** Maintain <2% O₂ in drum (N₂ sweep at 300 L/min maintains this). Operate in partial pyrolysis mode → higher char yield, lower gas yield.

**Pyrolysis gas composition (typical, N₂ atmosphere):**
- CO: 15-25% (by volume)
- CH₄: 5-10%
- H₂: 10-15%
- CO₂: 10-20%
- H₂O: 5-10%
- BTX (benzene, toluene, xylene): 2-5%
- Tar/heavy organics: 1-3%
- HBr (from FR4): 500-2000 ppm

**Calorific value:** ~18-22 MJ/m³ (comparable to town gas). Recoverable energy routed to gas management system (CSMFAB000000000111).

**Gas treatment train (Stage 3 outlet):**
1. Cyclone separator — removes char fines (>10 μm)
2. Quench scrubber (150°C) — condenses tars, water
3. NaHCO₃ scrubber — neutralizes HBr, residual HCl
4. Compressor → storage or direct feed to plasma torch (Document 111)

### 5.4 Induction Heating in Stage 3

- Frequency: 50 kHz (Zone 3)
- Power: 50-80 kW
- Target: Zn, Pb particles beginning to couple inductively (pre-heat for Stage 4)
- SiC glow bars: OFF (induction sufficient above 450°C)

### 5.5 Stage 3 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 450→660°C ramp | ±5°C | FBG Zone 3-4 |
| Drum rotation | 200 RPM | ±5 RPM | Optical encoder |
| N₂ pressure | 1.5 bar | ±0.1 bar | Pressure transducer |
| O₂ concentration | <2% | Alarm >3% | Zirconia probe |
| Port 3 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |
| Pyrolysis gas temp | 500-700°C | ±20°C | Thermocouple (ex-drum) |

---


## 6. Stage 4 — Low-Temperature Metals (420-900°C): Pb, Sn, Zn, In

### 6.1 Target Metal Separation — The Indium-First Innovation

This stage spans the widest temperature range (420-900°C) because it must sequentially liberate four metals with melting points from 156°C to 420°C. The **critical CSMFAB innovation** is the *Indium-First Strategy* — exploiting indium's ultra-low melting point (156.6°C) for selective domestic recovery.

| Metal | Melting Point (°C) | Boiling Point (°C) | Typical Sources | Expected Raw Purity |
|---|---|---|---|---|
| Indium (In) | 156.6 | 2072 | ITO coatings, LCD panels, solders | 60-80% In (dilute) |
| Bismuth (Bi) | 271.5 | 1564 | Fusible alloys, cosmetics, pharmaceuticals | Variable |
| Tin (Sn) | 231.9 | 2602 | Solder (Sn60/Pb40), tin plate, PCBs | 30-60% Sn (alloyed) |
| Sn-Pb eutectic (63/37) | 183 | — | Electronic solder joints | 63% Sn / 37% Pb |
| Lead (Pb) | 327.5 | 1749 | Lead solder, batteries, wheel weights | 85-95% Pb |
| Zinc (Zn) | 419.5 | 907 | Die-cast housings, galvanized steel | 85-95% Zn |
| Zamak (Zn alloy) | 380-390 | — | Die-cast automotive, hardware | Zn/Al/Cu alloy |

**Critical separation — Indium at 156.6°C:** At its melting point, ONLY indium liquefies. All other metals (Sn 232°C, Bi 271°C, Pb 327°C, Zn 420°C, Al 660°C) remain solid. The ultra-low-temp In separation produces an indium-rich liquid at Port 4 (set to 160°C for In pass).

### 6.2 Indium First Strategy — Process Sequence

**Step 1 — In Liquefaction (155-160°C):**
- Ramp slowly: 155°C → 157°C → 160°C (1°C/min through In melting range)
- Hold at 160°C for 5 minutes
- Centrifuge at 400 RPM (G = 89.2) for 5 minutes at exact 160°C
- Port 4 opens: In-rich liquid (mixed with residual organics) discharges
- **Output:** In-rich slug (In + organics + trace Sn/Pb)

**Step 2 — Sn/Bi/Pb Eutectic Clearance (183-330°C):**
- Ramp to 200°C, hold 3 min: Sn-Pb eutectic (183°C) melts, discharges
- Ramp to 280°C, hold 3 min: Bi (271°C) + Sn (232°C) melt, discharge
- Ramp to 340°C, hold 3 min: Pb (327°C) melts, discharges
- Each sub-stage: centrifuge at 300 RPM, Port 4 opens at respective temperature

**Step 3 — Zn Separation (420-450°C):**
- Ramp to 430°C, hold 10 min: Zn (420°C) + Zamak (380°C) melt
- Centrifuge at 400 RPM, Port 4 opens at 430°C
- **Output:** Zn-rich slug (85-95% Zn)

**Step 4 — Transition to Stage 5 (450-660°C):**
- Continue ramp through 660°C (Al solidus)
- No port discharge — Al remains solid
- Zn/Pb/Sn/In fully cleared by 450°C

**Total Stage 4 time:** 25 minutes (5 + 3×3 + 10 + ramp time)

### 6.3 Downstream Refining — Indium to 99.9%

The In-rich slug from Step 1 goes to **electrodeposition refining** (CSMFAB downstream):
- Electrolyte: In₂(SO₄)₃ in H₂SO₄, 50°C
- Cathode: Stainless steel, Anode: In-rich slug
- Current density: 10-20 mA/cm²
- Product: 99.9% In cathode deposit
- **Feeds YInMn Blue production directly!**

This makes Aegis-Forge I a **domestic Indium recovery machine** — reducing critical mineral dependency for strategic materials.

### 6.4 Induction Selectivity for Stage 4 Metals

At 420-660°C (Zn melting range):
- Zinc: ρ = 5.96×10⁻⁸ Ω·m → excellent induction coupling
- Lead: ρ = 2.0×10⁻⁷ Ω·m → good induction coupling
- Aluminum: still solid (Tm = 660°C) → provides "solid matrix" for metal particle suspension

**Induction parameters (50 kHz, 80 kW, Zone 3-4):** Specifically heats Zn/Pb/Sn/In particles within the solid Al/Cu/Fe matrix. The melt pools at metal grain locations, coalesces under G-force, and drains outward.

**Skin depths at 50 kHz, 500°C:**
- Zn: δ ≈ 0.35 mm
- Pb: δ ≈ 0.65 mm
- Sn: δ ≈ 0.55 mm
- In: δ ≈ 0.60 mm
- Al (solid): δ ≈ 1.2 mm (but no eddy currents in solid state at this T)

### 6.5 Stage 4 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 160→450°C (stepped) | ±3°C (tighter for In) | FBG Zone 4 |
| Drum rotation | 400 RPM (In), 300 RPM (others) | ±10 RPM | Optical encoder |
| N₂ pressure | 1.5 bar | ±0.1 bar | Pressure transducer |
| Port 4 mass flow | Monitor per sub-stage | <1% peak = clear | Coriolis flowmeter |
| In slug composition | Target >60% In | XRF spot-check | Inline XRF (Port 4) |

---


## 7. Stage 5 — Aluminum Separation (660-720°C): The Pure Aluminum Window

### 7.1 The Aluminum Window — Physics of Selective Separation

660°C is the liquidus of pure aluminum. Copper melts at 1085°C, iron at 1538°C. The **60°C window between 660°C and 720°C** creates a clean aluminum separation stage:

- Only Al, Al alloys, and Al-Si die cast melt
- All copper, iron, nickel, cobalt remain solid
- Zinc (Tm = 420°C) has already been removed in Stage 4

**Aluminum alloy melting ranges in feedstock:**
| Alloy | Solidus (°C) | Liquidus (°C) | Typical Source |
|---|---|---|---|
| Pure Al (1xxx) | 660 | 660 | Electrical wire, foil |
| 6061 (Mg,Si) | 582 | 652 | Structural, extrusions |
| 7075 (Zn,Mg,Cu) | 477 | 635 | Aerospace, high-strength |
| A380 (Si,Cu) | 566 | 577 | Die-cast (automotive) |
| A356 (Si,Mg) | 557 | 613 | Cast wheels, engine parts |
| 2024 (Cu,Mg) | 502 | 638 | Aerospace sheet |

**Key insight:** Most Al alloys in feedstock are **fully liquid by 660°C**. The 660-720°C window captures all Al while excluding Cu/Fe.

### 7.2 Centrifuge Parameters for Stage 5

- Drum speed: 300 RPM (G = 25.1 at r = 0.3 m)
- Aluminum melt viscosity at 700°C: 1.3 mPa·s (extremely fluid — flows like water)
- Centrifugal separation is rapid: 5-minute dwell at 680°C collects >95% of Al content
- Melt pool dynamics: Al forms continuous annular film at drum wall, drains to Port 5

**Centrifugal pressure at 300 RPM:**
$$\Delta P = \frac{1}{2} \rho \omega^2 (r_o^2 - r_i^2) = \frac{1}{2} \times 2380 \times 31.4^2 \times (0.3^2 - 0.05^2) = 33 \text{ kPa}$$
Sufficient to drive 1.3 mPa·s Al through 12 mm port against 1.5 bar backpressure.

### 7.3 Expected Aluminum Slug Composition

| Element | Range (wt%) | Source |
|---|---|---|
| Al | 85-97% | Base metal |
| Si | 1-8% | Die-cast A380/A356 (5-12% Si) |
| Cu | 0.5-3% | 2024, 7075 alloys |
| Mg | 0.3-1.5% | 6061, 7075, A356 |
| Fe | 0.1-0.8% | Impurity in scrap |
| Mn | 0.1-0.5% | Alloying |
| Zn | 0.1-2% | 7075, residual |

This mixed alloy slug goes to **downstream refining** (CSMFAB000000000112) for property-specific casting.

**CSMFAB relevance:** Recovered aluminum is NOT used directly in Aegis products (which avoid structural metals), but:
- Sold as commercial scrap to fund operations
- Used in non-structural tooling (molds, fixtures, jigs)
- Alloy-segregated for specific downstream casting needs

### 7.4 Induction Heating in Stage 5

- Frequency: 10 kHz (Zones 4-5) — optimal for Al eddy current coupling
- Power: 80-150 kW/zone
- Skin depth in Al at 10 kHz, 700°C: δ ≈ 0.9 mm (excellent for 1-5 mm Al pieces)
- Selective heating: Al couples, Cu/Fe remain solid and poorly coupled at 10 kHz

**Induction power equation for Al:**
$$P_{Al} = \frac{\pi^2 B_{peak}^2 d^2 f^2}{6 \rho_{Al} D}$$
At 10 kHz, ρ_Al(700°C) ≈ 4.5×10⁻⁸ Ω·m → 15× better coupling than Cu at same frequency.

### 7.5 Port 5 — Aluminum Exit

- Port 5 opens at 720°C (Ti₃AlC₂ actuator, 3.6 mm deflection at 680°C ΔT)
- Aperture: 12 mm diameter
- Discharge: Continuous Al stream during 25-min dwell
- Collection: ZrO₂ mold carousel position 5, N₂ quench at -150°C

### 7.6 Stage 5 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 660→720°C ramp | ±3°C | FBG Zone 4-5 |
| Drum rotation | 300 RPM | ±5 RPM | Optical encoder |
| N₂ pressure | 1.5 bar | ±0.1 bar | Pressure transducer |
| Port 5 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |
| Al slug temperature | 680-720°C | ±10°C | IR pyrometer (ex-port) |

---


## 8. Stage 6 — Copper Separation (1085-1200°C): Precious Metal Recovery

### 8.1 Copper Recovery — The Revenue Engine

At 1085°C, copper melts. Copper is present in:
- PCB traces and plated-through holes (20-35% Cu by weight in PCB)
- Motor windings (99.9% Cu)
- Plumbing scrap (99.5% Cu pipe)
- Electrical wire (99.9% Cu)

**Induction heating of copper at Stage 6:**
- Coil frequency: 5 kHz (penetration depth in Cu at 1100°C: ~1.0 mm — suitable for wire/trace sizes)
- Power: 100-200 kW/zone (Zones 5-6)
- Energy required: 0.385 J/g·K × 200 kg × 1065°C = 82 MJ (thermal mass only)

### 8.2 Precious Metals with Copper — The High-Value Co-Product

Both Au and Ag melt before or at Stage 6 temperature. They report with copper in Port 6 output. Downstream electrolytic refining separates these from the Cu slug — **this is a primary revenue stream.**

| Metal | Melting Point (°C) | Behavior in Stage 6 | Recovery Method |
|---|---|---|---|
| Gold (Au) | 1064 | Melts 21°C before Cu, reports with Cu | Electrorefining anode slime |
| Silver (Ag) | 962 | Melts 123°C before Cu, reports with Cu | Electrorefining anode slime |
| Palladium (Pd) | 1555 | Solid at Stage 6, reports with Fe (Stage 7) | Hydromet from Fe slag |
| Platinum (Pt) | 1768 | Solid, reports with Fe/mineral | Hydromet from Fe slag |

**PCB precious metal content (per ton of PCBs):**
- Gold: 300-400 g/ton
- Silver: 3,000-5,000 g/ton
- Palladium: 100-200 g/ton
- Copper: 150,000-250,000 g/ton (0.15-0.25 kg/board)

**At 2026 prices ($3,200/troy oz Au, $35/oz Ag, $1,400/oz Pd):**
- 300g/ton Au = **$30,900/ton PCB in gold alone**
- 4,000g/ton Ag = **$4,500/ton PCB in silver**
- 150g/ton Pd = **$6,750/ton PCB in palladium**
- **Total PM value: ~$42,000/ton PCB feedstock**

### 8.3 Copper Melt Centrifuge Physics

- Drum speed: 350 RPM (G = 68.1 at r = 0.3 m)
- Copper melt viscosity at 1150°C: 4.3 mPa·s
- Cu density at 1150°C: 7.9 g/cm³
- Centrifugal pressure: ΔP = 89 kPa (drives Cu through 12 mm port at 2 bar backpressure)

**Co-melting behavior:** Au (1064°C) and Ag (962°C) are fully liquid when Cu melts. They dissolve in Cu melt (Au solubility in Cu: ~8% at 1100°C; Ag: complete miscibility). No separate PM droplets — they report in Cu slug.

### 8.4 Brass/Bronze Transition Zone (Hold Stage: 720-1085°C)

Before Stage 6 proper, a **30-minute hold at 720-1085°C** separates copper alloys:

| Alloy | Composition | Solidus (°C) | Liquidus (°C) | Separation |
|---|---|---|---|---|
| Brass (Cu-Zn) | 60-70% Cu, 30-40% Zn | 900-940 | 950-1000 | Zn boils at 907°C — vapor captured |
| Bronze (Cu-Sn) | 88% Cu, 12% Sn | 950 | 1040 | Sn melts at 232°C — already removed |
| Cu-Ni | 70-90% Cu, 10-30% Ni | 1050-1150 | 1150-1250 | Reports with Cu in Stage 6 |

**Process:** Ramp through 720→1085°C at 12°C/min. Zn vapor from brass captured in gas system. Cu-Ni alloys partially melt at upper end.

### 8.5 Stage 6 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 1085→1200°C ramp | ±5°C | FBG Zone 5-6 |
| Drum rotation | 350 RPM | ±10 RPM | Optical encoder |
| N₂ pressure | 2.0 bar | ±0.1 bar | Pressure transducer |
| Port 6 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |
| Cu slug temperature | 1100-1200°C | ±15°C | IR pyrometer (ex-port) |
| Gas composition | O₂ < 0.5% | Alarm >1% | Zirconia probe |

### 8.6 Downstream Electrorefining (CSMFAB000000000112)

Cu + PM slug → **Electrorefining cells:**
- Anode: Cu+PM slug (cast into anode plates)
- Cathode: Pure Cu starter sheets
- Electrolyte: CuSO₄ + H₂SO₄, 60°C
- Current density: 250-300 A/m²
- **Products:**
  - Cu cathode: 99.99% Cu (LME Grade A)
  - Anode slime: Au, Ag, Pd, Pt, Se, Te → sent to PM refinery
  - Electrolyte bleed: Ni, Co, Fe buildup → purge to Stage 7 Fe stream

---


## 9. Stage 7 — Ferrous Metal Cascade (1200-1600°C): Iron, Steel & Rare Earth Recovery

### 9.1 Iron, Steel, and Ferromagnetic Metal Recovery

Ferrous metals are uniquely efficiently heated by induction — ferromagnetic cores couple at 2-10× the power density of non-ferrous metals. The Stage 7 induction system therefore uses the **lowest frequency (2 kHz)** for maximum penetration and ferromagnetic coupling.

| Metal | Melting Point (°C) | Induction Coupling | Notes |
|---|---|---|---|
| Carbon steel | 1370-1400 | Excellent (ferromagnetic below Curie 770°C) | Primary Fe source |
| Stainless 304 | 1400-1430 | Good (austenitic, non-magnetic — eddy current only) | Lower coupling above Curie |
| Cast iron | 1150-1200 | Excellent (high carbon, approaches Cu at boundary) | Melts early in stage |
| Nickel | 1455 | Very good (ferromagnetic Tc=358°C; non-mag at Stage 7 but conductive) | Battery scrap, alloys |
| Cobalt | 1495 | Good (ferromagnetic Tc=1115°C; magnetic through stage) | Superalloys, batteries |
| Chromium | 1907 | Remains solid — segregates to Stage 8 residue | Alloying element |

**Iron slug chemical analysis target:**
- Fe: >90%
- C: 2-4% (from cast iron, steel)
- Si: 1-2%
- Mn: 0.5-1%
- Cr: 0.5-2% (from stainless)
- Ni: 0.2-1% (from stainless, Ni alloys)

This low-alloy iron/steel slug can be remelted for general castings or sold as secondary iron.

### 9.2 Rare Earth Magnets in Stage 7 — Critical Value Recovery

**NdFeB magnets (Tm = 1177°C):** Melt in Stage 7 window.
**SmCo magnets (Tm = 1490°C):** Melt in Stage 7 as well.

Combined RE-Fe-B and RE-Co melts report to **Port 7 with main ferrous stream**.

**IMPORTANT:** This stream contains Nd, Sm, Co — valuable rare earths for new magnet production!

**Downstream hydrometallurgical refining (CSMFAB downstream):**
1. Fe slug dissolved in HCl/H₂SO₄
2. Solvent extraction: PC-88A for HREE, D2EHPA for LREE
3. Selective precipitation: Nd, Sm, Co separated
4. Oxalate precipitation → calcination → REE oxides
5. Fe recovered as Fe₂O₃ or re-reduced to Fe

**Typical REE content in ferrous stream (per 500 kg batch with 10% motor scrap):**
- Nd: 1.5-3 kg
- Sm: 0.2-0.5 kg
- Co: 0.5-1.5 kg
- Dy: 0.1-0.3 kg (from NdFeB-Dy)
- **Value at 2026 prices: ~$1,500-3,000/batch**

### 9.3 Induction Physics — Ferromagnetic Coupling

**Frequency: 2 kHz (Zones 6-7)**
**Power: 150-350 kW/zone**

**Coupling mechanism transition:**
- Below 770°C (Curie temp of Fe): Ferromagnetic → hysteresis + eddy current heating (2-10× power)
- Above 770°C: Paramagnetic → eddy current only (still good at 2 kHz)

**Skin depth at 2 kHz:**
- Fe (solid, 700°C, ferromagnetic): δ ≈ 0.3 mm (μ_r ≈ 100-200)
- Fe (liquid, 1500°C, paramagnetic): δ ≈ 3.5 mm (μ_r = 1)
- Ni (1500°C): δ ≈ 4.2 mm
- Co (1500°C): δ ≈ 3.8 mm

The frequency is chosen to penetrate fully through typical Fe piece sizes (5-20 mm) once melted.

### 9.4 Centrifuge Parameters for Stage 7

- Drum speed: 450 RPM (G = 112.8 at r = 0.3 m) — **maximum separation force**
- Fe melt viscosity at 1500°C: 6.5 mPa·s
- Fe density at 1500°C: 7.0 g/cm³
- Centrifugal pressure: ΔP = 148 kPa (drives Fe through port at 2.5 bar Ar backpressure)

### 9.5 Stage 7 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 1200→1600°C ramp | ±5°C | FBG Zone 6-7 |
| Drum rotation | 450 RPM | ±10 RPM | Optical encoder |
| Ar pressure | 2.5 bar | ±0.1 bar | Pressure transducer |
| Port 7 mass flow | Monitor | <1% peak = clear | Coriolis flowmeter |
| Fe slug temperature | 1400-1600°C | ±20°C | IR pyrometer (ex-port) |
| Ar O₂ content | <10 ppm | Alarm >50 ppm | ZrO₂ sensor |

### 9.6 Downstream Processing (CSMFAB000000000112)

Fe + REE slug → **Hydromet refinery:**
1. Size reduction (ceramic jaw crusher, ZrO₂-lined)
2. Acid leach (HCl, 80°C, 4 h) → Fe/REE chloride solution
3. Fe removal: Oxidation to Fe³⁺, precipitation as jarosite/goethite
4. REE separation: Multi-stage solvent extraction (IX + SX)
5. Individual REE oxide production: Nd₂O₃, Sm₂O₃, Co₃O₄, Dy₂O₃
6. Fe oxide product: Pigment grade or reduction to Fe powder

---


## 10. Stage 8 — Refractory Mineral Residue (1600-2200°C): Zircon Dissociation & Critical Mineral Concentration

### 10.1 What Remains at 1600°C+

After all organic matter, polymers, metals through iron have been removed, the remaining solids at 1600°C are oxide minerals and refractory ceramics:

| Material | Melting/Decomposition | State at 1600°C | State at 2200°C | Notes |
|---|---|---|---|---|
| Silica glass fibers (FR4) | 1600-1700°C | Melting | Liquid | Forms slag matrix |
| Zirconia (ZrO₂ from returns) | 2716°C | Solid | Solid | Concentrated |
| Rare earth oxides (Y,La,Ce,Nd) | 2200-2400°C | Solid | Solid | Concentrated |
| Titanium dioxide (TiO₂) | ~1840°C (decomp) | Decomposing | Solid | Ilmenite-derived |
| Alumina (Al₂O₃) | 2072°C | Solid | Partial melt | From anodized Al |
| Silicon carbide (SiC) | 2700°C (subl) | Solid | Solid | From ZrB₂-SiC drum wear |
| Zircon sand (ZrSiO₄) | 1676°C (dissoc) | Dissociating | ZrO₂ + SiO₂ | **Critical reaction** |

### 10.2 Zircon Sand Processing — Critical CSMFAB Material Recovery

At 1700°C, zircon sand (ZrSiO₄) dissociates:
$$\text{ZrSiO}_4 \xrightarrow{1676^\circ\text{C}} \text{ZrO}_2 + \text{SiO}_2$$

This is a **disproportionation reaction** — not melting, but solid-state dissociation. The kinetics are temperature-dependent:

**Dissociation rate (shrinking core model):**
$$\frac{dX}{dt} = \frac{3k}{\rho r_0} (1-X)^{2/3}$$
Where $k = k_0 \exp(-E_a/RT)$, $E_a \approx 520 \text{ kJ/mol}$ for zircon.

At 1700°C: ~60% dissociation in 20 min (validated by TGA)
At 2000°C: ~95% dissociation in 10 min
At 2200°C: >99% dissociation in 5 min

**Process strategy:** Ramp to 2200°C, hold 10 min for complete dissociation. SiO₂ joins slag matrix; ZrO₂ remains as discrete high-density particles (ρ = 5.68 g/cm³) — centrifugally separable!

### 10.3 Stage 8 Output: "Mineral Concentrate Slug" — The Treasure Chest

The partially fused slag-like material exiting **Port 8** (2200°C set-point) is rich in Zr, Ti, rare earth oxides, Al₂O₃, SiO₂. This is the **primary input for the Materials Study Part V critical mineral recovery program.**

**Chemical analyses of Port 8 output from mixed electronics recycling (per ton input):**

| Component | Concentration | Source | Downstream Use |
|---|---|---|---|
| ZrO₂ | 0.5-3% | ITO-bearing LCD glass | 3Y-TZP powder, ZrB₂ synthesis |
| TiO₂ | 1-4% | White pigments, ilmenite | TiO₂ pigment, Ti metal |
| REE oxides | 0.1-2% | Magnets, phosphors, catalysts | Nd, Sm, Co, Dy recovery |
| Al₂O₃ | 15-25% | Anodized Al, aluminosilicates | Alumina ceramic, YInMn |
| SiO₂ | 40-60% | Glass, PCB substrate | Slag flux, silica fume |
| Fe₂O₃ | 2-5% | Residual magnetic | Recycle to Stage 7 |
| Carbon (unoxidized) | 2-5% | Char residue | Reductant for ZrB₂ |

**Physical form:** Partially vitrified slag, 50-200 mm chunks, density 2.8-3.2 g/cm³. Collected in ZrO₂-lined bin, crushed (ceramic crusher), fed to hydromet refinery.

### 10.4 Induction Heating in Stage 8 — Conduction Only

- Frequency: 1 kHz (Zone 8)
- Power: 200-500 kW (maximum — heating refractory oxides by conduction from hot SiC drum wall and residual carbon)
- No inductive coupling to oxides (all are insulators: ρ > 10⁶ Ω·m)
- Heating mechanism: **Radiation + conduction from drum wall** (drum at 2200°C) + **resistive heating of residual carbon** (carbon conducts at high T)
- SiC drum wall radiates: $q = \varepsilon \sigma T^4 \approx 0.8 \times 5.67 \times 10^{-8} \times 2473^4 = 1.6 \text{ MW/m}^2$

### 10.5 Centrifuge & Discharge

- Drum speed: 300 RPM (G = 50.2) — consolidation, not separation
- Port 8 opens at 2200°C (Ti₃AlC₂ actuator, 11.5 mm deflection at 2160°C ΔT)
- Discharge: Semi-solid slag plugs, intermittent
- Collection: ZrO₂-lined trough, air-cooled to 800°C, then crushed

### 10.6 Stage 8 Control Parameters

| Parameter | Setpoint | Tolerance | Sensor |
|---|---|---|---|
| Drum temperature | 1600→2200°C ramp | ±10°C | FBG Zone 8 (W-fiber) |
| Drum rotation | 300 RPM | ±10 RPM | Optical encoder |
| Ar pressure | 3.0 bar | ±0.2 bar | Pressure transducer |
| Port 8 mass flow | Intermittent | Visual/weight | Load cell on bin |
| Dissociation completeness | >95% ZrSiO₄ | XRD spot-check | Offline lab |

---


## 11. Gas Capture Integration — Stage-by-Stage Zero-Emission Architecture

All process gases are captured in a closed-loop system (detailed in CSMFAB000000000111). Zero stack emissions — every molecule is accounted for.

### 11.1 Stage-by-Stage Gas Treatment Trains

| Stage | Gas Stream | Primary Components | Treatment Train | Capture Efficiency |
|---|---|---|---|---|
| 0 | Acoustic exhaust | N₂, dust | Cyclone + HEPA | 99.9% particulate |
| 1 | Port 1 vapor | H₂O (95%), VOCs (5%) | BFRP condenser (10°C) → Activated carbon (Stage 3 char) | >99.5% H₂O, >95% VOC |
| 2 | Port 2 vapor | Polymer decomp, HCl | NaHCO₃ scrubber → Carbon bed | >99% HCl, >90% organics |
| 3 | Port 3 pyrolysis gas | CO, CH₄, H₂, CO₂, HBr, BTX | Cyclone → Quench → NaHCO₃ → Compressor → Plasma torch | >95% combustible, >99% HBr |
| 4 | Port 4 metal vapor | Zn, Pb, Cd, In vapor | Condensation traps (400°C → 150°C staged) | >99.9% metal capture |
| 5 | Port 5 Al vapor | Minimal (Al low vp) | Al₂O₃ filter | >99.9% |
| 6 | Port 6 Cu vapor | Minimal | Cu₂O filter | >99.9% |
| 7 | Port 7 Fe vapor | Minimal | Fe₂O₃ filter | >99.9% |
| 8 | Port 8 mineral vapor | SiO, refractory oxides | High-temp ceramic candle filter (1200°C) | >99.5% |

### 11.2 Stage 1-2: Water & Organic Vapor Train (Train A+B)

**Train A — Moisture Condenser (Stage 1 outlet, Port 1):**
- BFRP shell-and-tube heat exchanger
- Cooling: PEX-a circuit, 10°C chilled water (CSMFAB000000000012)
- Condensation efficiency: >99.5% at 10°C dew point
- Liquid water: ICP-MS analyzed, reused or discharged
- Non-condensables (N₂ + trace VOCs) → Train B

**Train B — Organic Vapor Condensation (Stage 2 outlet):**
- Activated carbon bed: 200 L, 50 kg carbon (from Stage 3 char!)
- Elegant closed cycle: char from Stage 3 used to adsorb Stage 1/2 organics
- Capture: >95% for C₃+ hydrocarbons
- Regeneration: Thermal swing at 200°C during Stage 3 char production
- Breakthrough monitoring: PID detector at bed outlet

### 11.3 Stage 3: Pyrolysis Gas Recovery (Train C)

**Train C — Pyrolysis Gas Recovery (Stage 3 outlet, Port 3):**
1. Cyclone separator — removes char fines (>10 μm, returned to char bin)
2. Quench scrubber (150°C) — condenses tars, water, heavy organics
3. NaHCO₃ scrubber — neutralizes HBr (from FR4), residual HCl
4. Gas composition after scrubbing: CO 20%, H₂ 15%, CH₄ 8%, CO₂ 18%, N₂ balance
5. Compressor → storage sphere OR direct feed to plasma torch
6. Calorific value: ~20 MJ/m³ — recoverable energy for process heat

### 11.4 Stage 4-5: Metal Vapor Condensation (Train D+E)

**Train D — Acid Gas Scrubber (Stages 2-4):**
- HCl (from PVC), HBr (from FR4), HF (from fluoropolymers), SO₂ (from sulfates)
- Dual-stage: Venturi scrubber (95% removal) → Packed tower (99.9% removal)
- Reagent: NaOH/Na₂CO₃ solution, pH controlled at 8.5
- Products: NaCl, NaBr, NaF, Na₂SO₄ brines → crystallizer → solid salts

**Train E — Metal Vapor Condenser (Stages 4-5 outlets, Ports 4-5):**
- Staged condensation traps:
  - Trap 1 (400°C): Zn (bp 907°C), Cd (bp 767°C) — condense as liquid
  - Trap 2 (250°C): Pb (bp 1749°C, but low vp at 250°C), In (bp 2072°C)
  - Trap 3 (100°C): Hg (if present), residual organics
- Collection efficiency: >99.9% for target metals
- Condensate: Metal-rich liquid → electrorefining

### 11.5 Stage 6-8: High-Temperature Filtration

**Stages 6-7:** Minimal gas evolution (inert atmosphere maintained). Trace metal vapor captured by:
- Ceramic candle filters (Al₂O₃, 0.5 μm pore) at 800°C
- Periodic pulse-jet cleaning (N₂ back-pulse)
- Collected dust → returned to appropriate stage port

**Stage 8:** Silica vapor (SiO), refractory oxide fume
- High-temp ceramic filtration: SiC candles at 1200°C
- Capture efficiency: >99.5%
- Collected fume: High-purity SiO₂ + ZrO₂ → recycle to Stage 8 feed

### 11.6 Final Gas Treatment — CO₂ Capture & N₂ Recovery

**CO₂ Separation (from Train C pyrolysis gas + combustion):**
- Amine absorption (30% MEA) at 40°C, strip at 120°C
- CO₂ purity: >99% — sequestration or reuse as inert atmosphere
- Capture rate: 85-90% of CO₂ in pyrolysis gas

**N₂ Recovery:**
- Membrane separation (95% N₂ purity) from purge streams
- Recycled to drum atmosphere supply
- Makeup N₂: <5% of total consumption

### 11.7 Plasma Torch Polisher — Final Gas Treatment

Any residual organics, toxics, tars → **5000°C plasma torch** (CSMFAB000000000111):
- DC transferred arc, Ar/H₂ plasma gas
- Complete mineralization: organics → CO₂ + H₂O; metals → oxides
- Syngas output (CO + H₂) if operated sub-stoichiometric
- Slag output: Inert vitrified ceramic, TCLP-passing
- Power: 150 kW, treats 500 Nm³/h

---


## 12. Control System — Dwell-Hold-Verify Protocol

### 12.1 Distributed Control Topology

**Master PLC:** Siemens S7-1500 (radiation-hardened, in BFRP enclosure)
- Coordinates 8 zone controllers, drum drive, gas system, safety PLC
- Cycle time: 1 ms (fast I/O), 10 ms (thermal control)
- Redundant: Hot-standby backup PLC (switchover < 50 ms)

**Zone Controllers:** 8 × GaN inverter local controllers (EtherCAT)
- Each controls: inverter frequency, power, FBG temperature feedback
- Local PID: 1 kHz update, ±5°C setpoint tracking
- Autonomous resonance tracking (no master intervention)

**Safety System:** Independent SIL-3 safety PLC (separate power, separate network)
- Hardwired interlocks (not software-dependent)
- Monitors: pressure, temperature, rotation, vibration, gas composition
- Trip time: < 10 ms from sensor to coil shutdown

**FBG Interrogator:** 8-channel optical, 1 kHz sample rate, ±1°C accuracy
- 384 sensors total (48 per zone)
- WDM + TDM multiplexing, 16 sensors per fiber
- Data to master PLC via EtherCAT

**Mass Spec Interface:** RS-485 to central historian (1 Hz per port)
- Inline magnetic sector MS at each port discharge
- Elemental composition logged per batch

**Operator HMI:** Ruggedized tablet (isolated Wi-Fi, no cloud connectivity)
- Real-time: zone temperatures, port flows, gas composition, drum status
- Historical: batch records, trend plots, alarm logs
- Manual override: stage hold, emergency stop, parameter adjust (±10%)

### 12.2 Dwell-Hold-Verify Protocol — Core Control Algorithm

The fundamental control philosophy: **each stage holds temperature until the target element clears.**

```
FOR each stage in [1..8]:
    RAMP to stage target temperature (±5°C via FBG)
    HOLD at target temperature
    WHILE port_mass_flow > 1% of peak_flow:
        MONITOR port flow (Coriolis, 10 Hz)
        MONITOR slug composition (inline MS, 1 Hz)
        ADJUST zone power to maintain T ±5°C
        LOG: time, T, flow, composition
    VERIFY clearance: composition matches target element class
    LOG stage clearance timestamp
    RAMP to next stage target
```

**Transition criteria (all must be met):**
1. Port mass flow < 1% of stage peak flow (sustained 60 s)
2. Inline MS shows target element concentration < 5% in port stream
3. FBG temperatures stable within ±3°C for 30 s
4. No safety interlocks active

### 12.3 Model Predictive Control (MPC) — Thermal Trajectory Optimization

**MPC Horizon:** 30 min (thermal inertia of drum + charge)
**Constraints:**
- Zone temperatures: ±5°C of profile
- Vessel pressure: < 3 bar (N₂/Ar)
- Drum speed: < 500 RPM
- Zone power: < rated max per zone
- Gas flows: within design limits

**Objective Function:**
$$\min \sum_{k=1}^{H} \left( w_1 \Delta t_k + w_2 E_k - w_3 \sum_{i} P_{i,k} \right)$$
Where $w_1$=batch time weight, $w_2$=energy weight, $w_3$=purity weight, $P_{i,k}$=purity of element $i$ at step $k$.

**Update rate:** 1 Hz (receding horizon)
**Solver:** Real-time iteration SQP (warm-started from previous solution)

### 12.4 Adaptive Batch-to-Batch Tuning

After each batch, MPC model parameters updated:
- Drum thermal capacitance (from cool-down curve)
- Charge thermal mass (from ramp energy vs. ΔT)
- Phase transition enthalpies (from dwell power integrals)
- Heat loss coefficients (from steady-state power at hold)

**Kalman Filter State Estimation:**
- Measured: 384 FBG temps, 8 zone currents, drum speed, 8 port flows, vessel pressure, gas composition
- Estimated: 3D internal temperature field (100×100×50 grid), phase fractions per element class, slug mass per port, drum wear

### 12.5 Anomaly Detection — Autoencoder on FBG Patterns

**Autoencoder architecture:** LSTM encoder-decoder (64 hidden units)
- Input: 384 FBG spatial-temporal sequence (10 s window)
- Trained on: 500 normal batches (offline)
- Threshold: 3σ reconstruction error on validation set
- Action on anomaly: Auto-hold current stage, alert operator, log full state

### 12.6 Hardwired Interlocks (Not Software)

| Interlock | Trigger | Action | Reset |
|---|---|---|---|
| Drum rotation | < 10 RPM in Stage 4+ | Emergency N₂ vent + coil shutdown | Manual + safety PLC |
| Vessel pressure | > 3 bar | Emergency N₂ vent + coil shutdown | Pressure < 1.5 bar |
| FBG sensor loss | Any zone > 3 sensors failed | Immediate zone power cut | Sensor replacement |
| Vessel temperature | > 200°C (external) | Water deluge (external only) | T < 100°C |
| Door open | Any access door | All power cut, N₂ purge | Door closed + key reset |
| Ar/O₂ analyzer | O₂ > 1% in Ar stages | Switch to N₂, reduce power | O₂ < 0.1% |

---


## 13. Performance Specifications & Economic Model

### 13.1 Process Performance Specifications

| Parameter | Specification | Test Method |
|---|---|---|
| Throughput | 500 kg/batch (mixed feedstock) | Weigh scale ±0.1% |
| Batch cycle time | 3.5-5 hours | Timer (ramp + dwell + cool) |
| Elemental recovery (target classes) | >95% | Mass balance + assay |
| Port purity (target element class) | >90% | Inline MS + lab assay |
| Gas capture efficiency | >99.9% (closed loop) | Mass balance (in vs. out) |
| Energy consumption | 800-1200 kWh/ton feedstock | kWh meter on 480V supply |
| Carrington immunity | Full (zero conductive paths) | GIC simulation + test |
| Structural materials | 100% CSMFAB-certified | BOM audit |
| Operating pressure | 0.5-3 bar N₂/Ar | Pressure transducer ±0.01 bar |
| Max temperature | 2200°C (Stage 8) | FBG (W-fiber) ±10°C |
| Drum speed range | 0-500 RPM | Optical encoder ±1 RPM |
| Induction power | 500 kW total (8 zones) | Power analyzer ±1% |
| Temperature control | ±5°C (FBG feedback) | PID tuning validation |
| Port activation accuracy | ±3°C of setpoint | Ti₃AlC₂ actuator calibration |

### 13.2 Elemental Recovery by Stage (Validated by Mass Balance)

| Stage | Target Class | Recovery | Purity | Key Loss Mechanism |
|---|---|---|---|---|
| 1 | H₂O | >99.5% | >99.9% | Entrainment in N₂ |
| 2 | Polymers | >90% | Mixed | Char entrapment |
| 3 | Carbon (char) | 85-95% of C | 80-95% C | Gasification loss |
| 4 | In | >95% | 60-80% (raw) | Alloying with Sn |
| 4 | Zn/Pb/Sn | >95% | 85-95% | Vaporization (Zn) |
| 5 | Al | >95% | 85-97% | Oxidation (minimal) |
| 6 | Cu | >98% | 95-99% | Anode slime (PMs) |
| 6 | Au/Ag | >99% | In Cu slug | Electrorefining |
| 7 | Fe | >95% | >90% | Slag entrainment |
| 7 | REE (Nd,Sm,Co) | >90% | In Fe slug | Hydromet recovery |
| 8 | Zr/Ti/REE oxides | >85% | Concentrate | Slag dissolution |

### 13.3 Economic Model — Revenue per Batch (2026 Prices)

#### 13.3.1 Elemental Revenue

| Element | Price (USD/kg) | Recovery (kg/batch) | Revenue/Batch |
|---|---|---|---|
| Gold | 98,000 | 0.15 | $14,700 |
| Silver | 1,100 | 1.5 | $1,650 |
| Palladium | 45,000 | 0.08 | $3,600 |
| Indium | 580 | 0.5 | $290 |
| Neodymium | 120 | 2.0 | $240 |
| Dysprosium | 350 | 0.3 | $105 |
| Copper | 9.5 | 40 | $380 |
| Aluminum | 2.5 | 60 | $150 |
| Zirconium (as ZrO₂) | 8 | 15 | $120 |
| **Total Elemental Revenue** | | | **$21,235/batch** |

#### 13.3.2 Operating Cost per Batch

| Cost Item | Amount (USD) |
|---|---|
| Electricity (1000 kWh @ $0.08/kWh) | $80 |
| N₂/Ar gas (500 Nm³ @ $0.09/Nm³) | $45 |
| Water cooling (makeup + treatment) | $5 |
| Consumables (molds, seals, filters, char) | $120 |
| Labor (2 operators × 5 hrs × $35/hr) | $350 |
| Maintenance reserve (1% CAPEX/batch) | $200 |
| **Total OPEX per Batch** | **$800** |

#### 13.3.3 Economics Summary

- **Gross margin:** $20,435/batch (96%)
- **Annual batches (300 days, 6 batches/day):** 1,800
- **Annual revenue:** $38.2M
- **Annual OPEX:** $1.44M
- **CAPEX (single Forge, estimated):** ~$12M
  - ZrB₂-SiC drum: $2.5M
  - GaN inverters (8×): $1.2M
  - FBG system: $0.8M
  - BFRP vessel: $1.5M
  - Gas system: $2.0M
  - Controls/safety: $1.0M
  - Installation/commissioning: $3.0M
- **Payback:** <4 months at full utilization
- **IRR (10 yr, 80% utilization):** >150%

### 13.4 Scaling Laws — From 226L to Industrial Scale

| Parameter | Lab (226L) | Pilot (2,000L) | Industrial (20,000L) |
|---|---|---|---|
| Drum diameter | 600 mm | 1,200 mm | 2,400 mm |
| Drum length | 800 mm | 1,770 mm | 4,420 mm |
| Volume | 226 L | 2,000 L | 20,000 L |
| Throughput/batch | 500 kg | 4,500 kg | 45,000 kg |
| Induction power | 500 kW | 4.5 MW | 45 MW |
| Ports | 8 | 16 | 32 |
| Cycle time | 4 hrs | 5 hrs | 6 hrs |

**Scaling exponents:**
- Throughput ∝ D²·L (volume)
- Induction power ∝ D²·L (volume)
- Cooling water ∝ D·L (surface area)
- Structural mass ∝ D²·L (volume)
- Capital cost ∝ D^2.5·L^0.5 (economy of scale)

---

