## 9. Ceramic Bearing System

### 9.1 Bearing Requirements and Selection

The drum rotates at up to 500 RPM, supported at both ends by **full ceramic bearings** — no metallic components anywhere in the rotating assembly. Requirements:

| Requirement | Value | Basis |
|---|---|---|
| Speed | 500 RPM (max) | Process requirement |
| Radial load | 8.9 kN (drum weight + charge) | 178 kg × 9.81 / 2 bearings |
| Axial load | 4.3 kN (thermal growth push) | Section 7.7 |
| Operating temp (bearing) | 200°C max | Vessel temperature limit |
| Lubrication | Dry / N₂ atmosphere | No oil in process chamber |
| Life (L10) | 10,000 hours | Design target |
| Materials | 100% ceramic | Carrington immunity |

**Selected configuration:** **Si₃N₄ races + 3Y-TZP ZrO₂ balls + PEEK CF40 cage**

### 9.2 Material Properties

**Si₃N₄ races (per Materials Study Part I):**
- Density: 3.20 g/cm³
- Hardness: 16 GPa Vickers
- Flexural strength: 850 MPa (RT), 700 MPa (200°C)
- Fracture toughness: 6.5 MPa·m⁰·⁵
- Elastic modulus: 310 GPa
- CTE: 3.2×10⁻⁶/K
- Surface finish (raceway): Ra < 0.05 μm (superfinished)

**3Y-TZP ZrO₂ balls (per Materials Study Part I):**
- Density: 6.05 g/cm³
- Hardness: 12 GPa Vickers
- Flexural strength: 1200 MPa (RT), 800 MPa (200°C)
- Fracture toughness: 10 MPa·m⁰·⁵ (transformation toughening)
- Elastic modulus: 205 GPa
- CTE: 10.5×10⁻⁶/K
- Grade: G5 (sphericity 0.13 μm, diameter variation 0.25 μm)

**PEEK CF40 cage (per Materials Study Part IV):**
- Density: 1.42 g/cm³
- Tensile strength: 220 MPa (RT), 150 MPa (200°C)
- CTE: 30×10⁻⁶/K
- Continuous service: 260°C
- Wear rate vs. Si₃N₄: <0.01 mm/1000 hrs

### 9.3 Bearing Geometry — Angular Contact, Double Row

**Bearing type:** 30° angular contact, double row, split inner race
**Dimensions (per bearing):**
- Bore (shaft): 80 mm
- OD (housing): 140 mm
- Width: 52 mm (2 × 26 mm rows)
- Ball diameter: 15 mm
- Number of balls per row: 16
- Contact angle: 30° (optimized for combined radial/axial)

**Why angular contact?** Combined radial (8.9 kN) + axial (4.3 kN) loading. 30° contact angle provides:
- Radial capacity: C_r = 125 kN
- Axial capacity: C_a = 72 kN
- **Radial SF:** 125/8.9 = 14×
- **Axial SF:** 72/4.3 = 16.7×

### 9.4 Life Calculation (ISO 281 / ISO 14728 for Ceramics)

**Dynamic load rating (C):**
For hybrid ceramic bearings (Si₃N₄ races, ZrO₂ balls):
$$C = f_{cm} \cdot f_{m} \cdot Z^{2/3} \cdot D_w^{1.8} \cdot \cos\alpha^{0.7}$$
Where f_cm = 1.2 (ceramic material factor), f_m = 1.0, Z = 16, D_w = 15 mm, α = 30°
$$C \approx 1.2 \times 16^{2/3} \times 15^{1.8} \times \cos30°^{0.7} = \mathbf{125 \text{ kN}}$$

**Equivalent dynamic load (P):**
$$P = X F_r + Y F_a$$
For 30° contact, F_a/F_r = 4.3/8.9 = 0.48 > 0.43 → X = 0.41, Y = 0.87
$$P = 0.41 \times 8.9 + 0.87 \times 4.3 = 7.4 \text{ kN}$$

**L10 life (millions of revolutions):**
$$L_{10} = \left(\frac{C}{P}\right)^3 \times \frac{10^6}{60 n}$$
Where n = 500 RPM
$$L_{10} = \left(\frac{125}{7.4}\right)^3 \times \frac{10^6}{60 \times 500} = 538 \times 33.3 = \mathbf{17,900 \text{ hours}}$$

**With ceramic life factor (a_ISO):**
- Lubrication: N₂ gas film (κ = 0.5, marginal)
- Contamination: Clean (ceramic, no wear debris)
- a_ISO ≈ 2.0 for hybrid ceramics in clean environment
- **Adjusted L10 = 17,900 × 2.0 = 35,800 hours**

**Design target 10,000 hours → Achieved SF = 3.6× on life.**

### 9.5 Lubrication — Dry Running in N₂

**No liquid lubricant** — would contaminate process, carbonize at temperature.
**Mechanism:** **Gas film lubrication** + **solid lubrication transfer**

**N₂ gas film (at 200°C, 1 bar, 500 RPM):**
- Viscosity: 2.6×10⁻⁵ Pa·s
- Film thickness (Hamrock-Dowson): h_min ≈ 0.05 μm
- Lambda ratio: λ = h_min / σ_composite = 0.05 / 0.08 = 0.6 (boundary regime)

**Solid lubrication:**
- Si₃N₄ forms **SiO₂ tribofilm** at 200°C in trace O₂/H₂O
- ZrO₂ balls: self-mating pairs develop smooth transfer layer
- PEEK CF40 cage: transfers thin CF film to raceways

**Wear rate (validated by CSMMECH000000001):**
- Race wear: <0.5 μm/1000 hrs
- Ball wear: <0.2 μm/1000 hrs
- Cage wear: <5 μm/1000 hrs

### 9.6 Thermal Expansion Accommodation

**Shaft:** ZrB₂-SiC (integral with drum, or ZrB₂-SiC sleeve on drive shaft)
- CTE: 5.8-6.5×10⁻⁶/K
- At 200°C: ΔD_shaft = 80 × 5.8×10⁻⁶ × 180 = 0.084 mm

**Inner race (Si₃N₄):** CTE = 3.2×10⁻⁶/K
- ΔD_race = 80 × 3.2×10⁻⁶ × 180 = 0.046 mm
- **Interference loss:** 0.038 mm — managed by initial interference fit

**Housing (PEEK CF40 flange):** CTE = 30×10⁻⁶/K
- ΔD_housing = 140 × 30×10⁻⁶ × 180 = 0.76 mm
- **Clearance increase:** 0.76 - 0.046 = 0.71 mm — outer race floats radially (intentional)

**Axial float:** Outer race has 1.0 mm axial clearance in PEEK housing — accommodates 4.3 kN thermal push (Section 7.7) without preloading balls.

### 9.7 Bearing Installation and Preload

**Assembly sequence:**
1. Inner race (split) mounted on shaft — light interference (0.015 mm at RT)
2. Balls (32 total) placed in rows
3. Outer race placed over balls
4. PEEK CF40 cage snapped in (retains balls)
5. Outer race inserted into flange bore — **clearance fit** (0.05 mm at RT, 0.76 mm at 200°C)
6. Axial clamp: Belleville washer stack (ZrO₂ ceramic) applies 500 N axial preload

**Preload effect:**
- Eliminates ball skidding at startup
- Increases stiffness: K_axial ≈ 500 N/μm
- Preload relieved by thermal growth (Section 7.7) — self-regulating

### 9.8 Condition Monitoring

**FBG sensors (2 per bearing):**
- One on outer race OD (hoop strain → load)
- One on housing bore (temperature compensation)
- Sampling: 1 kHz, resolution 1 με
- Detects: preload loss, ball wear, cage damage, lubrication failure

**Acoustic emission (AE) sensor:**
- Mounted on flange exterior
- 100-500 kHz band
- Detects: ball fracture, race spalling, cage breakup

**Replacement criteria (at 5000 hr inspection):**
- Race wear >5 μm (measured by bore gauge)
- Ball diameter variation >1 μm
- Axial play >0.1 mm
- AE energy >3σ baseline

---
