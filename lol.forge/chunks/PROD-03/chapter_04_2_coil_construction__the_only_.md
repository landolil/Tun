## 2. Coil Construction — The Only Copper in the Machine

### 2.1 Copper Tube Conductor — Specifications & Justification

**Why copper tube?** The induction coil is the **single permitted use of copper** in the Aegis-Forge I. This is not a compromise — it is a physics necessity. Induction heating requires a conductor with:
- High electrical conductivity (σ = 5.8×10⁷ S/m for Cu)
- High thermal conductivity (k = 400 W/m·K) for water cooling
- Ductility for winding into multi-layer coils
- Compatibility with alumina ceramic insulation

**Copper tube specifications:**
- Outer diameter: 25 mm
- Wall thickness: 2.5 mm (20 mm ID for water cooling)
- Material: C12200 (phosphorus-deoxidized, high conductivity)
- Temper: Annealed (for winding) → work-hardened in service
- Length per zone: ~12 m (12 turns × π × 630 mm drum OD × 3 layers)
- Total copper mass: ~45 kg (all 8 zones combined)

**Justification for copper (not aluminum, not Litz):**
- Aluminum: 60% conductivity of Cu → 1.7× larger cross-section → won't fit in 15 mm gap
- Litz wire: Individual strands oxidize at 2200°C ambient; no high-temp insulation survives
- Copper tube: Water-cooled internally → conductor stays <80°C; alumina sleeve protects from radiated heat

### 2.2 Alumina Ceramic Insulation Sleeve — Al₂O₃ Wrapped

**Why alumina?** The coil operates at 100 kHz to 1 kHz, with 500 kW total, 15 mm from a drum that reaches 2200°C. The insulation must:
- Withstand continuous 2200°C radiative exposure (drum surface)
- Maintain dielectric strength at temperature (no polymer survives >300°C)
- Have low loss tangent at 100 kHz (tan δ < 0.001)
- Match CTE to copper (α_Cu = 17×10⁻⁶/K, α_Al₂O₃ = 8×10⁻⁶/K — managed by compliance layer)

**Alumina sleeve specifications:**
- Material: 99.6% Al₂O₃, dense ceramic tube (same as CSMMECH motor insulation)
- Wall thickness: 3 mm
- Inner diameter: 26 mm (1 mm clearance over Cu tube)
- Length: 100 mm per zone (matches coil axial length)
- Installation: Slid over copper tube before winding; high-temp ceramic cement (Al₂O₃-SiO₂) at ends
- Dielectric strength: >15 kV/mm at 2000°C
- Thermal conductivity: 30 W/m·K at 1000°C (conducts heat to water cooling)

**CTE mismatch management:** Copper expands 17×10⁻⁶/K; alumina 8×10⁻⁶/K. Over ΔT = 2000°C (20°C → 2020°C):
- Cu expansion: 25 mm × 17×10⁻⁶ × 2000 = 0.85 mm diameter increase
- Al₂O₃ expansion: 26 mm × 8×10⁻⁶ × 2000 = 0.42 mm diameter increase
- Gap closes by 0.43 mm — accommodated by 1 mm initial clearance + compliant mica washer at ends

### 2.3 Water Cooling — PEX-a Circuit Through Copper Tube Bore

**Cooling requirement:** Each zone dissipates 5-50 kW in copper losses (I²R). At 500 kW/zone peak, copper current reaches 2800 A RMS. I²R loss in copper:
- Resistance per zone: R = ρL/A = 1.7×10⁻⁸ × 12 / (π × (12.5² - 10²)×10⁻⁶) = 0.38 mΩ
- At 2800 A: P_loss = I²R = 2800² × 0.00038 = 3 kW (conduction only)
- Plus proximity effect, skin effect: ~5 kW/zone at peak
- Water must remove 5 kW with ΔT < 20°C

**PEX-a cooling circuit (CSMFAB000000000012):**
- Tubing: PEX-a (cross-linked polyethylene), 16 mm OD × 2.2 mm wall
- Temperature rating: 95°C continuous, 110°C peak (water temp, not pipe surface)
- Pressure rating: 10 bar at 95°C
- Flow rate per zone: 15 L/min (calculated for 5 kW, ΔT = 8°C)
- Total cooling flow: 8 zones × 15 = 120 L/min (within 50 L/min spec — zones not all at peak simultaneously)
- Manifold: ZrO₂ ceramic fittings (no metal in hot zone)
- Return temperature: <50°C (mixed with Stage 1 condenser return)

**Circuit topology:** Parallel flow per zone → common return → plate heat exchanger → chiller. Each zone has:
- Flow meter (turbine, PEEK body)
- Temperature sensors (FBG on supply/return)
- Isolation valve (PEEK ball valve, ceramic ball)

### 2.4 Coil Housing — BFRP/Elium® Composite Casing

**Why BFRP?** The coil housing must:
- Hold 12 turns of copper tube in precise geometry
- Withstand Lorentz forces (J × B) at 500 kW
- Survive 2200°C radiative environment (protected by YInMn glaze)
- Be non-conductive, non-ferromagnetic (Carrington immunity)
- Match drum thermal expansion (BFRP α ≈ 8×10⁻⁶/K axial)

**BFRP/Elium® housing specifications:**
- Material: Basalt fiber / Elium® thermoplastic resin (CSMFAB000000000001)
- Layup: [0°/±45°/90°]₂s (quasi-isotropic, 16 plies)
- Wall thickness: 8 mm
- Curing: 120°C vacuum bag, 2 h (Elium® thermoplastic — recyclable)
- Mounting: ZrO₂ ceramic standoffs to vessel support ring (8 per zone)
- Alignment: ±0.5 mm axial, ±0.3 mm radial (critical for 15 mm gap)

**Lorentz force analysis:** At 2800 A, B_peak = 0.35 T (Zone 8):
- Force per turn: F = BIL = 0.35 × 2800 × (π × 0.63) = 1,940 N
- Total radial force per zone: 12 turns × 1,940 = 23,300 N (2.4 tonnes)
- Housing stress: 23,300 N / (0.8 m × 0.1 m) = 0.29 MPa (trivial for BFRP 1100 MPa tensile)
- Axial force (end turns): ~500 N per end — restrained by ZrO₂ standoffs

### 2.5 Coil-to-Drum Gap — 15 mm Clearance Management

**Gap budget at 20°C (assembly):**
- Drum OD: 600 mm
- Coil ID (alumina sleeve OD): 630 mm
- Nominal gap: 15 mm

**Gap at 2200°C (Stage 8 peak):**
- Drum thermal expansion (ZrB₂-SiC, α = 6.5×10⁻⁶/K): ΔD = 600 × 6.5×10⁻⁶ × 2180 = 8.5 mm
- Coil housing expansion (BFRP, α = 8×10⁻⁶/K): ΔD = 630 × 8×10⁻⁶ × 200 = 1.0 mm (housing sees lower T)
- Alumina sleeve expansion: ΔD = 26 × 8×10⁻⁶ × 2000 = 0.4 mm
- **Resulting gap: 15 - 4.25 (drum radius) + 0.5 (housing) - 0.2 (alumina) = 11 mm minimum**

**Runout & vibration allowance:**
- Drum runout (ceramic bearing): < 0.1 mm
- Coil housing mounting tolerance: ±0.3 mm
- Dynamic deflection at 500 RPM: < 0.2 mm
- **Total minimum gap under worst case: 11 - 0.6 = 10.4 mm**

**Safety margin:** 10.4 mm >> 0 (no contact possible). The 15 mm nominal gap provides 6× margin over worst-case thermal expansion.

**Gap monitoring:** FBG strain sensors on coil housing (4 per zone) detect housing deflection → indirect gap measurement. Alarm if housing strain exceeds threshold indicating gap < 5 mm.

---


---
