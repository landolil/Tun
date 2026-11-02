## 12. Detailed Stage-by-Stage Engineering Deep-Dive

### 12.1 Stage 0 — Acoustic Pre-Liberation: Physics and Engineering

The acoustic mineral liberation subsystem (AMLS) is not a pre-processor — it is the **physical prerequisite** that makes the thermal cascade viable. Without liberation, conductive metals remain encapsulated in insulating matrix, and induction coupling efficiency drops from 90% (free grains) to 40-50% (locked grains).

**Grain Boundary Fracture Mechanics:**
The liberation mechanism targets the grain boundary, not the mineral grain. Rock matrix minerals are held by:
1. Grain boundary adhesion (intergranular cements: silica, carbonates, clays)
2. Mechanical interlocking of irregular grain shapes (fracture surface area)
3. Surface tension of pore fluids (capillary forces at grain contacts)

Low-frequency acoustic waves (20-500 Hz) induce cyclic stress waves through the rock matrix. At resonant frequencies specific to the mineral grain size and matrix constraint, stress concentrations at grain boundaries exceed the grain boundary fracture toughness:

$$\sigma_{boundary} = \frac{4\pi^2 f^2 A \rho r}{K_{IC}} > 1 \Rightarrow \text{liberation}$$

Where A is acoustic amplitude, ρ is grain density, r is grain radius, and K_IC is grain boundary fracture toughness (typically 0.8-2.0 MPa·m^0.5 for silicate-silicate boundaries).

**Matrix-Constrained Resonance Shift:**
A free 0.5 mm zircon grain resonates at ~1.7 MHz (calculated from elastic modulus and geometry). However, embedded in silica matrix, its effective resonance drops to 50-200 Hz — the same seismic band that disaggregates rock during earthquakes. The AMLS intentionally operates in this band.

**Dual-Mode Operation:**
- **Low-Frequency (LF) Mode**: 8 KNbO₃-BaTiO₃ bimorph plates (300 mm diameter, 1 kW each) sweeping logarithmically 20→500 Hz with 30-second dwells. Adaptive resonance tracking via FBG sensors adds 60-second bonus dwells at feedstock-specific resonant peaks (>3 dB above baseline).
- **Ultrasonic (US) Mode**: 8 Langevin probes (4× KNbO₃-BaTiO₃ discs each, 40 kHz, 25 W/cm²) submersed in water bath. Acoustic cavitation liberates mineral grains at micron scale for REE mineral liberation from host rock.

**Cavitation Physics (Rayleigh-Plesset):**
Bubble collapse pressure in ultrasonic cavitation:
$$P_{collapse} = P_0 \left(\frac{R_0}{R_{min}}\right)^{3\kappa} \approx 10^3 \text{ bar locally}$$

Microsecond, localized pressure sufficient to fracture silicate-silicate grain boundaries (fracture toughness 0.8-2 MPa·m^0.5) without destroying mineral crystals themselves (harder, more homogeneous).

**Synergy Factor:**
Combined LF+US effect exceeds sum by 1.3-1.5×. Liberation index increases from ~20% (crushing) to 75-90% (AMLS). Downstream induction coupling recovers to 85-95%.

**Acoustic-Magnetic Coupled (AMC) Mode:**
Simultaneous LF presonation at 50 Hz + pulsed SmCo magnetic field (1.2 T, 10 Hz) separates ferrimagnetic minerals (ilmenite, magnetite) into concentrate stream before thermal processing. Pre-sorting in Stage 0 dramatically improves Stage 7-8 separation specificity — magnetic concentrate reports to Port 7, non-magnetic to Port 8.

### 12.2 Stage 1 — Drying and Volatiles Removal: Thermal Engineering

**Target Materials and Phase Transitions:**
- Free surface water: Tb = 100°C at 1 atm (P = 1.013 bar)
- Crystal-bound water in hydrated minerals:
  - Gypsum (CaSO₄·2H₂O): dehydrates at 107-120°C (two-step: 107°C hemihydrate, 120°C anhydrite)
  - Borax (Na₂B₄O₇·10H₂O): dehydrates at 100-140°C (complete at 140°C)
  - Kaolin (Al₂Si₂O₅(OH)₄): partially dehydrates at 150°C, complete at 500°C
- Low-boiling organics: alcohols (MeOH 65°C, EtOH 78°C), acetone (56°C) from cleaning agents
- Solvents from PCB flux: terpineol Tb=218°C (begins at 150°C)

**Heating Method — IR from SiC Glow Bars:**
Induction heating is not effective at 80-150°C (targets are non-conductive). Alternative: infrared irradiation from SiC glow bars positioned in static heating elements at drum top.

SiC glow bars: silicon carbide resistive elements (CSMFAB000000000002-type). Surface temperature: 800-900°C; emitted IR at ~3.6 μm wavelength — absorbed by water strongly (water absorption peaks: 3.0 and 6.3 μm).

Energy balance for 50 kg charge at 30% moisture (15 kg water):
Latent heat: 15 kg × 2257 kJ/kg = 33.8 MJ
Sensible heat (20→100°C): 15 kg × 4.18 kJ/kg·K × 80 K = 5.0 MJ
Total: ~39 MJ = 10.8 kWh over 20 min = 32.4 kW average

**Drum Rotation:** 5-10 RPM (slow, gentle tumbling — uniform drying, prevents clumping)
**Atmosphere:** N₂ at 1.2 bar (prevents explosive H₂/organic vapor combinations)
**Duration:** 20 minutes (sufficient for 50 kg charge with <30% moisture content)

**Water and Volatile Recovery:**
Exiting vapor (mostly H₂O) exits through Port 1 (150°C set-point):
- Condensed in BFRP heat exchanger (chilled to 10°C by PEX-a cooling circuit)
- Liquid water collected: analyzed for metal content (ICP-MS), either purified and reused or discharged
- Organic vapors: trace quantity passes through activated carbon bed (char from Stage 3!)
- Elegant closed cycle: char from Stage 3 later used to adsorb Stage 1/2 organics

### 12.3 Stage 2 — Thermoplastic Polymer Flow: Melt Centrifuge Physics

**Polymer Melting Behavior (12 Polymers):**

| Polymer | Tm/Onset (°C) | Melt Viscosity (Pa·s) | Melt Density (g/cm³) | Sources |
|---|---|---|---|---|
| LDPE | 105-115 | 200-500 | 0.78 | Film, bags, coating |
| HDPE | 120-140 | 300-800 | 0.78 | Pipe, bottles, containers |
| PP | 130-171 | 150-400 | 0.74 | Auto interior, packaging |
| PS | 100-240 (flash) | 1000-5000 | 0.96 | Electronics housings |
| PVC | 160-210 | 500-2000 | 1.15 | Wire insulation, pipes |
| ABS | 200-250 | 2000-10000 | 1.03 | Electronics, dashboards |
| PA6 | 220-230 | 150-500 | 1.08 | Mechanical parts |
| PA66 | 255-265 | 200-600 | 1.10 | Engine parts |
| PET | 250-260 | 500-2000 | 1.33 | Bottles, film |
| PC | 267-290 | 1000-5000 | 1.20 | Lenses, covers |
| PEEK | 341 | 100-300 | 1.22 | CSM own off-cuts |
| PTFE | 327 | 10^7-10^9 | 2.15 | Wire insulation, gaskets |

**Combined melt window:** 105°C to 450°C — achievable in single stage by slow ramp (10°C/min).

**Melt Centrifuge Physics:**
As polymers melt they become viscous (viscosity η at melt: 10²-10⁴ Pa·s). Centrifugal force drives molten polymer outward.

At 50 RPM (G=1.4): Low centrifugal forces allow polymers to pool but not fully stratify.
At 150 RPM (G=12.6): Adequate for polymer-polymer density separation.
- HDPE melt density: 0.78 g/cm³
- PEEK melt density: 1.22 g/cm³
- PP density: 0.74 g/cm³

Density difference relative to G-force creates stratified annular layers.
Heavy polymers (PEEK, PC) form outer annular band.
Light polymers (PP, LDPE) form inner annular band.

Port 2 at drum OD (Port open at 200°C): primarily discharges highest-density polymer melt first.
As temperature rises through 450°C, lower-density polymers also flow.

**Output:** Mixed polymer slug exiting Port 2, quenched in BFRP mold. This "mixed polymer block" is a downstream input for:
- Elium® reformulation (MMA-compatible melt blending)
- BFRP matrix additive (modified impact resistance)
- Future CSM product: polymer filament for 3D printing

**PVC Warning — Chlorine Management:**
PVC releases HCl vapor at 160-200°C during dehydrochlorination. Critical process control:
- Stage 2 atmosphere: mildly basic N₂ (trace NaHCO₃ aerosol injection — powder spray system)
- NaHCO₃ + HCl → NaCl (salt) + H₂O + CO₂: neutralization occurs in-drum
- Residual HCl: monitored by inline optical HCl sensor (PMMA fiber + absorption spectroscopy at 3.4 μm)
- If HCl concentration > 50 ppm: drum temperature hold until HCl level drops
- NaCl residue: exits as dissolved mineral in Stage 3 char

### 12.4 Stage 3 — Pyrolysis and Carbon Char Formation: Reaction Engineering

**Thermoset Decomposition Kinetics:**
At temperatures above 450°C, thermosetting polymers undergo thermal decomposition:

Global pyrolysis reaction:
$$\text{Polymer} \xrightarrow{\Delta, 500°C} \text{Char (C)} + \text{Gas (CO, CO}_2\text{, H}_2\text{O, H}_2\text{)}$$

**Carbon Yields from Pyrolysis (by weight):**
- Epoxy resin: 15-25% char yield
- FR4 substrate (glass-epoxy): 40-50% char (from glass fiber mass)
- Rubber/elastomer: 25-40% char
- Phenolic resin: 50-60% char (high carbon yield)
- Cellulosic materials: 20-30% char

**FR4 PCB Substrate Temperature Profile:**
- T_onset: 350-420°C (depends on halogen content)
- T_peak weight loss: 480-520°C (main decomposition)
- Residue at 700°C: ~20% (SiO₂ glass fibers + inorganic fillers + carbon char)

**Char Properties and Applications:**
At 600-700°C, char from pyrolysis:
- Carbon content: 80-95% C (high after partial oxidation/volatilization)
- Surface area: 200-800 m²/g (activated carbon-like porosity from volatile evolution)
- Specific resistance: 10⁻³ to 10⁻¹ Ω·m
- Applications:
  1. Activated carbon for organic vapor adsorption (used immediately in Stage 1 gas treatment!)
  2. Carbon black substitute for rubber compounding
  3. Graphite precursor for further purification
  4. Carburizing agent for steel (reduces iron oxide)
  5. Carbon electrodes for electrochemical processes

**Char exits Port 3:** Dry, granular discharge collected in ZrO₂-lined ceramic bin. Weight: approximately 8-15% of original organic input.

**Combustion Gas Management:**
At 500-700°C with residual oxygen: full combustion produces CO₂ + H₂O.
Under N₂ atmosphere (oxygen-starved): pyrolysis gases include CO, CH₄, H₂, BTX aromatics.

**CSM Operating Choice:** Maintain <2% O₂ in drum atmosphere (N₂ sweep). Operate in partial pyrolysis mode → higher char yield, lower gas yield. Combustible pyrolysis gases (CO, CH₄, H₂) routed to gas management system. Calorific value ~18-22 MJ/m³ (comparable to town gas) — recoverable energy.

### 12.5 Stage 4 — Low-Temperature Metals: The Indium First Strategy

**Target Metal Separation (5 Metals):**

| Metal | Tm (°C) | Typical Sources | Expected Purity (Raw) | Induction ρ (Ω·m) |
|---|---|---|---|---|
| Indium (In) | 156.6 | ITO glass, LCD panels | Very dilute | 8.4×10⁻⁸ |
| Tin (Sn) | 231.9 | Solder (Sn60/Pb40), tin plate | 30-60% Sn (alloyed) | 1.1×10⁻⁷ |
| Sn-Pb eutectic | 183 | Electronic solder joints | 63% Sn / 37% Pb | ~2×10⁻⁷ |
| Bismuth (Bi) | 271.5 | Low-temp fusible alloys | Variable | 1.3×10⁻⁷ |
| Lead (Pb) | 327.5 | Lead solder, batteries, weights | 85-95% Pb | 2.0×10⁻⁷ |
| Zinc (Zn) | 419.5 | Die-cast, galvanized steel | 85-95% Zn | 5.96×10⁻⁸ |
| Zinc alloy (Zamak) | 380-390 | Die-cast automotive, hardware | Zn/Al/Cu alloy | ~5×10⁻⁸ |

**Critical Separation — Indium at 156.6°C:**
At its melting point, only In liquefies — all other metals remain solid. The ultra-low-temp In separation produces an indium-rich liquid at Port 4 (set to 160°C for In pass).

**Indium First Strategy — Process Innovation:**
Heat Stage 4 slowly: 155°C, 157°C, 160°C — In liquefies immediately.
Centrifuge at 400 RPM for 5 minutes at exact 160°C.
Port 4 opens: In-rich liquid (mixed with residual organics) discharges.
Downstream refining of this stream yields 99.9% In via electrodeposition — feeds YInMn production!

This makes the Aegis-Forge I a **domestic Indium recovery machine** — reducing critical mineral dependency.

**Sequential Separation Within Stage 4:**
After In clearance (5 min at 160°C), ramp through remaining metals:
- 160→240°C: Sn/Pb eutectic clearance (Port 4, 10 min)
- 240→330°C: Bi/Sn clearance (Port 4, 10 min)
- 330→430°C: Pb clearance (Port 4, 10 min)
- 430→500°C: Zn clearance (Port 4, 5 min)

Total Stage 4 dwell: 25 minutes (In 5 + Sn/Pb 10 + Bi/Sn 10 + Pb 10 + Zn 5 = 40 min theoretical, but overlap reduces to 25 min)

**Induction Selectivity for Stage 4 Metals:**
At 420-660°C (Zn melting range):
- Zinc: ρ_Zn = 5.96×10⁻⁸ Ω·m → excellent induction coupling
- Lead: ρ_Pb = 2.0×10⁻⁷ Ω·m → good induction coupling
- At this stage, aluminum is still solid (Tm = 660°C) and provides the "solid matrix"

Induction power (50 kHz, 80 kW): specifically heats Zn/Pb/Sn particles within the solid Al/Cu/Fe matrix. The melt pools at Zn/Pb grain locations, coalesces under G-force, and drains outward.

### 12.6 Stage 5 — Aluminum Separation: The Pure Aluminum Window

**The 60°C Aluminum Window:**
660°C is the liquidus of pure aluminum. Copper melts at 1085°C, iron at 1538°C. The 60°C window between 660°C and 720°C creates a clean aluminum separation stage:
- Only Al, Al alloys (6061: 652°C, 7075: 477-635°C solidus), and Al-Si die cast (577°C eutectic) melt
- All copper, iron, nickel, cobalt remain solid
- Zinc (Tm=419°C) has already been removed in Stage 4

**Centrifuge Parameters for Stage 5:**
- Drum speed: 300 RPM (G=25)
- Aluminum melt viscosity at 700°C: 1.3 mPa·s (extremely fluid — flows easily)
- Centrifugal separation is rapid: 5-minute dwell at 680°C to collect >95% of Al content
- Port 5 set-point: 720°C (opens at Al liquidus + margin)

**Expected Aluminum Slug Composition:**
- Al: 85-97% (depends on input alloy diversity)
- Si: 1-8% (from die-cast A380 / A356)
- Cu: 0.5-3% (from 2024, 7075 alloys)
- Mg: 0.3-1.5%
- Fe: 0.2-0.8%
This mixed alloy slug goes to downstream refining for property-specific casting.

**CSMFAB Relevance:** Recovered aluminum not used directly in Aegis products (which avoid metals), but sold as commercial scrap to fund operations, or used in non-structural tooling (molds, fixtures).

**Induction at Stage 5:**
Coil frequency: 10 kHz (optimal for Al eddy coupling at 700°C).
Skin depth in Al at 700°C: δ = √(2×2.7×10⁻⁸ / (2π×10⁴×4π×10⁻⁷)) = 2.1 mm
Suitable for typical Al scrap thickness (2-10 mm).
Power: 80-150 kW to overcome Al's heat capacity (0.9 J/g·K × 150 kg × 640°C = 86 MJ).

### 12.7 Stage 6 — Copper and Precious Metals: Deep Penetration

**Copper Recovery:**
At 1085°C, copper melts. Copper is present in:
- PCB traces and plated-through holes (20-35% Cu by weight in PCB)
- Motor windings (99.9% Cu)
- Plumbing scrap (99.5% Cu pipe)
- Electrical wire (99.9% Cu)

**Induction Heating of Copper at Stage 6:**
Coil frequency: 5 kHz (penetration depth in Cu at 1100°C: ~4 mm — suitable for wire/trace sizes)
Power: 150-200 kW to overcome Cu's high heat capacity (0.385 J/g·K × 200 kg × 1065°C = 82 MJ)

**Precious Metals with Copper:**
Gold (Tm = 1064°C), Silver (Tm = 961.8°C), Platinum (Tm = 1768°C)
Both Au and Ag melt before or at Stage 6 temperature. They report with copper in Port 6 output.
Downstream electrolytic refining separates these from the Cu slug — this is a REVENUE STREAM.

**PCB Precious Metal Content (per ton of PCBs):**
- Gold: 300-400 g/ton
- Silver: 3,000-5,000 g/ton
- Palladium: 100-200 g/ton
- Copper: 150,000-250,000 g/ton (0.15-0.25 kg/board)

At 2026 gold price $3,200/troy oz → 300g/ton Au = **$30,900/ton PCB in gold alone**

**Brass/Bronze Separation (Hold Zone 720-1085°C):**
The hold zone between Stage 5 and Stage 6 (720-1085°C) allows brass (Cu-Zn, 900-940°C) and bronze (Cu-Sn, 950-1050°C) to separate before pure copper. These report to Port 6 as Cu-alloy slugs, distinct from pure Cu.

### 12.8 Stage 7 — Ferrous Cascade and REE Magnet Recovery

**Ferromagnetic Induction Coupling:**
Ferrous metals are uniquely efficiently heated by induction (ferromagnetic cores couple at 2-10× the power density of non-ferrous metals). Stage 7 induction system uses LOWEST frequency (2 kHz) for maximum penetration and ferromagnetic coupling.

| Metal | Tm (°C) | Induction Coupling | Curie Temp |
|---|---|---|---|
| Carbon steel | 1370-1400 | Excellent (ferromagnetic <770°C) | 770°C |
| Stainless 304 | 1400-1430 | Good (austenitic, non-magnetic) | N/A |
| Cast iron | 1150-1200 | Excellent (high carbon) | 770°C |
| Nickel | 1455 | Very good (ferromagnetic <358°C) | 358°C |
| Cobalt | 1495 | Good | 1121°C |
| Chromium | 1907 | Remains solid — Stage 8 | N/A |

**Iron Slug Chemical Analysis Target:**
Fe: >90%; C: 2-4%; Si: 1-2%; Mn: 0.5-1%
This low-alloy iron/steel slug can be remelted for general castings or sold as secondary iron.

**Rare Earth Magnets in Stage 7:**
NdFeB Tm = 1177°C → melts in Stage 7 window.
SmCo Tm = 1490°C → melts in Stage 7 as well.
Combined RE-Fe-B and RE-Co melts report to Port 7 with main ferrous stream.
IMPORTANT: This stream contains Nd, Sm, Co — valuable rare earths for new magnet production!
Downstream refining (hydromet leach) separates RE from the Fe matrix.

**Centrifuge Parameters for Stage 7:**
- Drum speed: 350 RPM (G=34)
- Iron melt viscosity at 1500°C: 5.5 mPa·s
- Dwell: 35 minutes (longest stage — high thermal mass, Curie transition)

### 12.9 Stage 8 — Refractory Mineral Residue and Zircon Dissociation

**What Remains at 1600°C+:**
After all organic matter, polymers, metals through iron have been removed, the remaining solids at 1600°C are oxide minerals and refractory ceramics:
- Silica glass fibers (from FR4 PCBs, glass insulation): Tm = 1600-1700°C → begins melting
- Zirconia (ZrO₂ from Aegis product returns): Tm = 2716°C — solid throughout; concentrated
- Rare earth oxides (from magnet returns, ore processing): Y₂O₃, La₂O₃, Nd₂O₃ → remain solid
- Titanium dioxide (TiO₂ from ilmenite processing): decomposes above 2000°C
- Alumina (Al₂O₃): Tm = 2072°C — primarily solid in Stage 8; some partial melt
- Silicon carbide (SiC) residue: sublimation at 2700°C — solid through Stage 8
- Zircon sand (ZrSiO₄): dissociates at 1676°C → ZrO₂ + SiO₂ (valuable dissociation!)

**Zircon Sand Processing — Critical CSMFAB Material Recovery:**
At 1700°C, zircon sand (ZrSiO₄) dissociates:
$$\text{ZrSiO}_4 \xrightarrow{1676°C} \text{ZrO}_2 + \text{SiO}_2$$

The ZrO₂ is then available for:
- Further processing to 3Y-TZP ceramic powder (add Y₂O₃, re-mill, sinter)
- ZrB₂ synthesis (add B₂O₃ + carbon → carbothermal reduction)

The Stage 8 mineral residue that exits Port 8 is a partially fused slag-like material rich in Zr, Ti, rare earth oxides, Al₂O₃, SiO₂. This is the primary input for the Materials Study Part V critical mineral recovery program.

**Output: "Mineral Concentrate Slug" — The Treasure Chest**
Chemical analyses of Port 8 output from mixed electronics recycling (per ton input):
- ZrO₂: 0.5-3% (from ITO-bearing LCD glass)
- TiO₂: 1-4% (from white pigments in plastics, ilmenite-bearing minerals)
- Rare Earth Oxides: 0.1-2% (from magnets, phosphors, catalysts)
- Al₂O₃: 15-25% (from anodized Al oxide, aluminosilicates)
- SiO₂: 40-60% (glass, PCB substrate)
- Carbon (unoxidized): 2-5%
This slag feeds the Phoenix Protocol hydrometallurgical refinery.

---
