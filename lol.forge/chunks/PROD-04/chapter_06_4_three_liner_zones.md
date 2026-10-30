## 4. Three Liner Zones

### 4.1 Design Philosophy — Zoned Thermal-Chemical Compatibility

The drum inner surface experiences **radically different environments** along its 800 mm length during the thermal cascade. A single liner material cannot satisfy the competing demands of:
- **Stages 1-3 (80-700°C):** Polymer melt adhesion prevention, char abrasion resistance, thermal shock from rapid cycling
- **Stages 4-6 (420-1200°C):** Molten metal (Zn, Pb, Sn, In, Al, Cu) corrosion resistance, oxidation resistance, thermal conductivity
- **Stages 7-8 (1200-2200°C):** Extreme oxidation resistance, phase stability, minimal reaction with refractory oxides

**Solution:** Three axially segmented liner zones, each optimized for its thermal-chemical regime. Zones are **mechanically attached** (not bonded) to accommodate differential thermal expansion.

### 4.2 Zone A — Si₃N₄ Scratch Coat (0-250 mm axial)

**Coverage:** Feed-end 250 mm (Stages 1-3: drying, polymer flow, pyrolysis)

| Property | Value | Rationale |
|---|---|---|
| Material | Si₃N₄ (β-phase, 92% dense) | Non-wetting to polymers, high hardness |
| Thickness | 2.0 mm | Wear allowance + thermal gradient moderation |
| Attachment | 12 × ZrO₂ ceramic pins (Ø6×20 mm) | Mechanical, allows radial growth |
| Pin pattern | 3 rows × 4 circumferential | Uniform constraint, CTE accommodation |
| Surface finish (ID) | Ra < 0.4 μm | Prevents polymer adhesion |
| Max operating temp | 1400°C | Well above Stage 3 (700°C) |

**Si₃N₄ properties (per Materials Study Part I):**
- Density: 3.20 g/cm³
- Flexural strength: 850 MPa (RT), 700 MPa (1200°C)
- Fracture toughness: 6.5 MPa·m⁰·⁵ (with 6% Y₂O₃/Al₂O₃ sintering aids)
- Thermal conductivity: 30 W/m·K (RT), 22 W/m·K (1000°C)
- CTE: 3.2 × 10⁻⁶/K (20-1000°C)
- Hardness: 16 GPa Vickers
- Oxidation: Forms protective SiO₂ scale >1200°C

**Function in Zone A:**
- **Polymer release:** Si₃N₄ surface energy (γ ≈ 1.8 J/m²) prevents wetting by molten PE, PP, PVC, ABS — polymer slugs release cleanly at Port 2
- **Char abrasion resistance:** Hardness 16 GPa resists erosion by carbon char particles at Stage 3
- **Thermal shock tolerance:** Low CTE (3.2×10⁻⁶/K) moderates thermal gradient into drum wall during rapid Stage 1-2 ramps
- **Pin attachment:** 12 ZrO₂ pins (CTE 10.5×10⁻⁶/K) create **compliant constraint** — pins shear before liner or drum fractures during differential expansion

### 4.3 Zone B — ZrB₂-SiC Working Surface (250-550 mm axial)

**Coverage:** Central 300 mm (Stages 4-6: low-temp metals, Al, Cu)

| Property | Value | Rationale |
|---|---|---|
| Material | ZrB₂-SiC (same as drum body, 12 vol% ZrB₂) | Chemical compatibility, thermal match |
| Thickness | 3.0 mm | Enhanced wear resistance for metal flow |
| Attachment | 18 × ZrO₂ ceramic pins (Ø6×20 mm) | Mechanical, matches drum CTE |
| Pin pattern | 3 rows × 6 circumferential | Higher constraint for metal flow loads |
| Surface finish (ID) | Ra < 0.6 μm | Smooth metal flow, minimal nucleation sites |
| Max operating temp | 1800°C | Above Stage 6 (1200°C) |

**Material match rationale:** Zone B uses the **identical composition** as the drum body (ZrB₂-SiC, 12 vol% ZrB₂, flash-sintered). This achieves **perfect CTE match** (α = 5.8-6.5×10⁻⁶/K) — zero thermal stress at the liner/drum interface across the entire operating range. The 3 mm thickness provides wear allowance for 10,000 hours of molten metal flow (Zn, Pb, Sn, In, Al, Cu) at up to 85 G centrifugal force.

**Function in Zone B:**
- **Molten metal compatibility:** ZrB₂-SiC is inert to all target metals (Zn, Pb, Sn, In, Al, Cu) — no dissolution, no intermetallic formation
- **Oxidation resistance:** Forms protective (Zr,Si)O₂ scale at 1200°C+; B₂O₃ vapor pressure managed by 12 vol% ZrB₂
- **Thermal conductivity:** 45→28 W/m·K (RT→1500°C) efficiently couples induction heat to charge
- **Structural continuity:** Same material = same modulus, same strength, same creep behavior — no interface stress concentration

### 4.4 Zone C — 3Y-TZP ZrO₂ Thermal Barrier (550-800 mm axial)

**Coverage:** Discharge-end 250 mm (Stages 7-8: Fe, mineral residue)

| Property | Value | Rationale |
|---|---|---|
| Material | 3Y-TZP ZrO₂ (3 mol% Y₂O₃ stabilized) | Highest temp capability, phase stability |
| Thickness | 4.0 mm | Maximum thermal barrier for vessel protection |
| Attachment | 12 × ZrO₂ ceramic pins (Ø8×25 mm) | Larger pins for higher thermal loads |
| Pin pattern | 3 rows × 4 circumferential | Matches Zone A pattern |
| Surface finish (ID) | Ra < 1.0 μm | Acceptable for slag/mineral flow |
| Max operating temp | 2400°C | Above Stage 8 (2200°C) |

**3Y-TZP properties (per Materials Study Part I):**
- Density: 6.05 g/cm³
- Flexural strength: 1200 MPa (RT), 800 MPa (1500°C)
- Fracture toughness: 10 MPa·m⁰·⁵ (transformation toughening)
- Thermal conductivity: 2.5 W/m·K (RT), 3.0 W/m·K (1500°C) — **lowest of the three zones**
- CTE: 10.5 × 10⁻⁶/K (20-1000°C), 11.2 × 10⁻⁶/K (1000-2000°C)
- Phase stability: Tetragonal → monoclinic transformation suppressed by 3% Y₂O₃ to >2000°C

**Function in Zone C:**
- **Thermal barrier:** Low k (2.5-3.0 W/m·K) reduces heat flux to drum wall by 10× vs. Zone B — protects drum structural integrity at Stage 8
- **Slag/mineral resistance:** ZrO₂ is thermodynamically stable against silicate slags, TiO₂, ZrO₂, REE oxides — no fluxing reaction
- **Transformation toughening:** Stress-induced t→m transformation at crack tip provides R-curve behavior — damage tolerance at thermal shock
- **CTE mismatch management:** Higher CTE (10.5×10⁻⁶/K) vs. drum (6.5×10⁻⁶/K) → liner in **compression** at temperature (beneficial for ceramics). Pins sized for shear accommodation.

### 4.5 Liner Zone Transition Details

| Transition | Location | Design |
|---|---|---|
| Zone A → B | 250 mm | 10 mm taper overlap, shared pin row |
| Zone B → C | 550 mm | 10 mm taper overlap, shared pin row |

**Overlap joint:** Adjacent liners taper from full thickness to 1 mm over 10 mm axial distance. The **shared pin row** (6 pins at each transition) passes through both liners into the drum body. This creates a **continuous load path** while allowing each zone to expand independently.

### 4.6 Thermal Gradient Across Liners (Stage 8, Steady State)

| Position | Gas Temp (°C) | Liner ID Temp (°C) | Liner OD Temp (°C) | Drum Wall Temp (°C) | ΔT Across Liner |
|---|---|---|---|---|---|
| Zone A (125 mm) | 800 | 780 | 750 | 720 | 60°C |
| Zone B (400 mm) | 1400 | 1350 | 1100 | 950 | 400°C |
| Zone C (675 mm) | 2200 | 2150 | 1800 | 1400 | 750°C |

**Heat flux reduction by Zone C:**
- Without Zone C (bare drum): q = k·ΔT/t = 28 × 800 / 0.035 = 640 kW/m²
- With Zone C: q = (ΔT_total) / (t_C/k_C + t_drum/k_drum) = 800 / (0.004/2.5 + 0.035/28) = **64 kW/m²**
- **10× reduction** in heat flux to drum structure at Stage 8

### 4.7 Liner Manufacturing and Installation

**Si₃N₄ liner (Zone A):**
- Pressed and sintered as 4 curved tiles (200 mm arc × 250 mm L)
- Sintering: 1800°C, 2 h, N₂ + 6% Y₂O₃/Al₂O₃
- Post-sinter: diamond grind ID/OD, pin holes drilled (ultrasonic)

**ZrB₂-SiC liner (Zone B):**
- Flash-sintered as 6 curved tiles (100 mm arc × 300 mm L)
- Same process as drum body (Section 3)
- Tiles matched to drum curvature (±0.1 mm)

**3Y-TZP liner (Zone C):**
- Isostatically pressed (200 MPa) as 4 curved tiles
- Sintered: 1500°C, 4 h, air
- HIP: 150 MPa, 1400°C, 2 h (full density)

**Installation sequence:**
1. Drum mounted vertically (feed end up) on assembly fixture
2. Zone C installed first (bottom): pins inserted, liners seated, pins peened
3. Zone B installed: overlap joint with Zone C aligned, pins inserted through both
4. Zone A installed last (top): overlap joint with Zone B aligned, pins inserted
5. All pin heads laser-welded (ZrO₂ fiber laser) for positive retention
6. Final ID scan: roundness <25 μm, taper <10 μm over 800 mm

---
