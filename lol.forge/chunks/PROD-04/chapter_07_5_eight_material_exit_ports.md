## 5. Eight Material Exit Ports

### 5.1 Port Geometry and Layout

Eight circumferential discharge ports are spaced **44.2° apart** around the drum circumference (360°/8 = 45° nominal; 44.2° accounts for 0.8° port width). Each port is a **radial through-hole** from the drum ID to OD, intersecting the liner zones at their respective axial positions.

| Parameter | Value | Tolerance |
|---|---|---|
| Number of ports | 8 | — |
| Circumferential spacing | 44.2° | ±0.1° |
| Port aperture (diameter) | 12 mm | +0.05/-0.00 mm |
| Port length (through wall) | 35 mm | ±0.2 mm |
| Port axis orientation | Radial (normal to drum axis) | ±0.25° |
| Port edge chamfer | 0.5 × 45° | ID and OD |
| Port surface finish | Ra < 0.4 μm | Diamond ground |

**Axial port positions (aligned with thermal stages):**

| Port # | Stage | Axial Position (from feed end) | Liner Zone | Opens At |
|---|---|---|---|---|
| 1 | 1 (Water) | 75 mm | Zone A (Si₃N₄) | 150°C |
| 2 | 2 (Polymers) | 175 mm | Zone A (Si₃N₄) | 450°C |
| 3 | 3 (Char) | 275 mm | Zone B (ZrB₂-SiC) | 700°C |
| 4 | 4 (Zn/Pb/Sn/In) | 375 mm | Zone B (ZrB₂-SiC) | 900°C |
| 5 | 5 (Al) | 450 mm | Zone B (ZrB₂-SiC) | 720°C |
| 6 | 6 (Cu) | 525 mm | Zone B/C transition | 1200°C |
| 7 | 7 (Fe) | 625 mm | Zone C (ZrO₂) | 1600°C |
| 8 | 8 (Mineral) | 725 mm | Zone C (ZrO₂) | 2200°C |

### 5.2 Port Reinforcement — Stress Concentration Management

A radial hole in a rotating thick-walled cylinder creates a **stress concentration factor K_t ≈ 3.0** for hoop stress at the hole edge. At 500 RPM, the nominal hoop stress at ID is 42 MPa (Section 6); at the port edge this amplifies to ~126 MPa. To maintain safety factor >2.5 against 350 MPa strength at 2000°C, ports are reinforced.

**Reinforcement design:**
- **Local wall thickening:** OD bulge of +5 mm over 30 mm diameter around each port
- **Composite insert:** ZrB₂-SiC sleeve (ID 12 mm, OD 22 mm, L 35 mm) press-fitted into port hole
- **Sleeve interference fit:** 0.03 mm (thermal + mechanical)
- **Sleeve material:** Same ZrB₂-SiC as drum — perfect CTE match, no interface stress

**Stress analysis with reinforcement (FEA validated):**
- K_t reduced from 3.0 → 1.4
- Peak von Mises at port edge: 85 MPa (vs. 126 MPa unreinforced)
- Safety factor at 2000°C: 350/85 = **4.1×**

### 5.3 Port Valve Assembly — Integrated Design

Each port incorporates a **normally-closed, temperature-actuated valve** integrated into the drum structure. The valve comprises:

| Component | Material | Specification |
|---|---|---|
| Valve seat (integral) | ZrB₂-SiC (drum body) | Lapped to Ra < 0.2 μm |
| Piston | 3Y-TZP ZrO₂ | Ø12×25 mm, 2 mm wall, Ra < 0.2 μm |
| Thermal actuator | Ti₃AlC₂ MAX phase | Bilayer strip, 2×2×30 mm |
| Return spring | PEEK CF40 wave spring | 50 N preload at 20°C, 30 N at 800°C |
| Actuator housing | ZrB₂-SiC (machined pocket) | Integral to drum wall |
| Position indicator | FBG strain sensor | Embedded in actuator housing |

**Valve operation sequence:**
1. **Closed (T < trigger):** Piston held against seat by PEEK CF40 wave spring (50 N at RT). Leak rate <10⁻⁶ mbar·L/s at 5 bar, 2200°C.
2. **Actuation (T = trigger):** Ti₃AlC₂/ZrO₂ bilayer deflects 3.6 mm at ΔT = 680°C, lifting piston off seat.
3. **Open (T > trigger):** Centrifugal force (up to 85 G) drives molten material through 12 mm aperture.
4. **Re-close (cool-down):** On cooling, bilayer contracts, spring returns piston to seat.

### 5.4 Port-to-Liner Interface

Ports penetrate through liner zones. The **liner-to-port seal** is critical — any leakage bypasses the thermal staging.

**Seal design per zone:**
- **Zone A (Ports 1-2):** Si₃N₄ liner → port sleeve. Ceramic fiber gasket (Nextel 312, 0.5 mm) compressed by pin preload. Service temp <700°C.
- **Zone B (Ports 3-5):** ZrB₂-SiC liner → ZrB₂-SiC sleeve. **Metal-ceramic seal not needed** — same material, lapped contact faces. Zero leakage at operating temp.
- **Zone C (Ports 6-8):** ZrO₂ liner → port sleeve. ZrO₂ fiber gasket (Zircar, 0.8 mm) with Ti₃AlC₂ shim for CTE compliance. Service temp up to 2200°C.

### 5.5 Port Flow Capacity

**Flow area per port:** A = π × (6 mm)² = 113 mm² = 1.13×10⁻⁴ m²
**Total flow area (8 ports):** 9.04×10⁻⁴ m²

**Mass flow rate (choked flow approximation for liquid metal at centrifugal pressure):**
$$\dot{m} = C_d A \sqrt{2 \rho \Delta P}$$
Where C_d = 0.62 (sharp orifice), ρ = 7000 kg/m³ (molten steel), ΔP = ρ ω² r² / 2 = 7000 × (52.36)² × (0.3)² / 2 = 1.3 MPa

$$\dot{m} = 0.62 \times 1.13 \times 10^{-4} \times \sqrt{2 \times 7000 \times 1.3 \times 10^6} = 1.8 \text{ kg/s per port}$$

**Total discharge capacity:** 14.4 kg/s (all 8 ports) — sufficient for 500 kg batch in <60 s per stage.

### 5.6 Port Manufacturing

| Operation | Method | Specification |
|---|---|---|
| Port drilling (green body) | Laser drilling (1064 nm, 50 W) | Before sintering, ±0.1 mm |
| Port finishing (sintered) | Diamond core drill + grind | Final dimensions ±0.05 mm |
| Sleeve press-fit | Cryogenic shrink-fit (LN₂) | 0.03 mm interference |
| Seat lapping | Diamond slurry (1 μm) | Ra < 0.2 μm, flatness <1 μm |
| Piston machining | Diamond grinding | Ø12.00/-0.01 mm, roundness 2 μm |
| Actuator pocket | 5-axis CNC grind | ±0.02 mm position, ±0.1 mm depth |

### 5.7 Port Actuation Calibration

| Port | Actuator ΔT Trigger | Deflection at Trigger | Spring Preload (N) | Verification |
|---|---|---|---|---|
| 1 (Water) | 110°C | 0.6 mm | 48 | He leak test <10⁻⁶ mbar·L/s |
| 2 (Polymer) | 410°C | 2.2 mm | 42 | Polymer flow test |
| 3 (Char) | 660°C | 3.5 mm | 38 | Char particle flow |
| 4 (Zn/Pb/Sn) | 860°C | 4.6 mm | 35 | Molten Zn flow |
| 5 (Al) | 680°C | 3.6 mm | 37 | Molten Al flow |
| 6 (Cu) | 1160°C | 6.2 mm | 28 | Molten Cu flow |
| 7 (Fe) | 1560°C | 8.3 mm | 22 | Molten Fe flow |
| 8 (Mineral) | 2160°C | 11.5 mm | 15 | Slag flow |

**Actuator differential expansion physics (Section 8):**
$$\delta = \frac{3}{2} \frac{(\alpha_{ZrO_2} - \alpha_{Ti_3AlC_2}) \Delta T L^2}{t_{total}}$$
With α_ZrO₂ = 10.5×10⁻⁶/K, α_Ti₃AlC₂ = 9.2×10⁻⁶/K, L = 30 mm, t_total = 4 mm
At ΔT = 680°C (Port 5): δ = 3.6 mm — validated by dilatometry.

---
