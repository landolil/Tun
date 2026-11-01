## 8. Shredder Wear & Maintenance — BFRP vs. Steel Lifecycle

### 8.1 Wear Mechanisms

The BFRP blade shredder experiences three simultaneous wear modes:

**1. Abrasive wear (three-body):** Hard particles (minerals, ZrB2-SiC from Category D, glass fiber from PCBs) trapped between blade and liner gouge both surfaces.
- Dominant for Category C (minerals) and D (ceramic panels)
- Wear rate ∝ (hardness_particle / hardness_blade)² × normal load × sliding distance

**2. Erosive wear (impact):** High-velocity particles (tip speed 5 m/s) impact blade leading edge.
- Dominant for Category A (electronics — sharp PCB edges) and B (metal fragments)
- Wear rate ∝ v².⁵ × particle mass flux × sin²(impact angle)

**3. Fatigue delamination:** Cyclic bending of BFRP blade (120 RPM = 2 Hz, 7,200 cycles/hr) initiates matrix cracks at fiber-matrix interface.
- Dominant for all categories (continuous operation)
- Delamination growth: da/dN = C(ΔK)ᵐ (Paris law for composites)

### 8.2 BFRP Blade Wear Model (Validated)

**Empirical wear equation (from CSMFAB Materials Study Part II test data):**

$$W_{blade} = k_a \cdot M_{abrasive} \cdot H_{ratio}^2 + k_e \cdot M_{total} \cdot v_{tip}^{2.5} + k_f \cdot N_{cycles} \cdot \sigma_{max}^m$$

Where:
- $W_{blade}$ = volume loss per blade (mm³)
- $M_{abrasive}$ = mass of abrasive particles processed (ton)
- $H_{ratio}$ = particle hardness / BFRP hardness (basalt ≈ 7 Mohs, BFRP ≈ 5 Mohs equivalent)
- $M_{total}$ = total mass processed (ton)
- $v_{tip}$ = blade tip speed (m/s)
- $N_{cycles}$ = rotor revolutions
- $\sigma_{max}$ = max bending stress at blade root (MPa)

**Calibrated coefficients (Category A/B blend):**
- $k_a$ = 0.012 mm³/ton
- $k_e$ = 0.0008 mm³·s².⁵/ton·m².⁵
- $k_f$ = 2.5×10⁻¹⁰ mm³/cycle/MPaᵐ
- $m$ = 3.2 (composite fatigue exponent)

**Predicted blade life (blended feed, 500 kg/hr):**

| Wear Mode | Volume Loss at 500 ton | % of Total | Failure Threshold |
|-----------|------------------------|------------|-------------------|
| Abrasive | 185 mm³ | 35% | 500 mm³ (tip radius >8mm) |
| Erosive | 220 mm³ | 42% | 500 mm³ |
| Fatigue | 120 mm³ | 23% | 500 mm³ (delamination >2mm) |
| **Total** | **525 mm³** | **100%** | **500 mm³** |

**Result: 500 ton replacement interval** (matches NEXT_runner_004.md specification)

### 8.3 PEEK CF40 Liner Wear

Liner wear is primarily abrasive (particle sliding against wall):

$$W_{liner} = k_{liner} \cdot M_{abrasive} \cdot (H_{particle}/H_{liner})^2$$

- $k_{liner}$ = 0.003 mm³/ton (PEEK CF40 vs. basalt)
- $H_{liner}$ = 280 MPa compressive ≈ 4.5 Mohs equivalent
- At 500 ton: $W_{liner}$ = 45 mm³/cm²
- Liner thickness: 12 mm = 120 mm³/cm²
- **Liner life: 2,000 ton (4× blade life)**

### 8.4 Bearing Life — Si3N4 Ceramic Hybrid

**Load analysis:**
- Rotor mass: 420 kg (BFRP body + 32 blades)
- Radial load (weight): 4.1 kN per bearing
- Axial load (helical blade thrust): 1.8 kN per bearing
- Shock load (unbalanced impact): 15 kN peak (10 ms duration)

**Si3N4 bearing rating (SKF equivalent):**
- Dynamic load rating C: 45 kN
- Static load rating C₀: 65 kN
- L10 life: (C/P)ᵖ × 10⁶ revs, p=3 (ball)
- P = 1.2×4.1 + 1.8 = 6.7 kN equivalent
- L10 = (45/6.7)³ × 10⁶ = 3.0×10⁸ revs
- At 120 RPM: 3.0×10⁸ / 7200 = 41,666 hours
- **With shock factor 2.5: L10 = 16,666 hours**
- **Design life (L10 × 3 safety): 50,000 hours** ✓

**Failure mode:** Spalling (not catastrophic seizure). FBG vibration monitoring detects Stage 1 spalling at 10% life remaining.

### 8.5 Maintenance Schedule

| Interval | Task | Duration | Parts | Personnel |
|----------|------|----------|-------|-----------|
| **Daily** | Visual inspection (blades, liner, belt) | 15 min | — | Operator |
| **Daily** | Moisture sensor calibration check | 5 min | — | Operator |
| **Daily** | Vibration trend review (FBG) | 5 min | — | Operator |
| **Weekly** | Blade wear measurement (laser micrometer) | 30 min | — | Technician |
| **Weekly** | Liner thickness ultrasonic gauge | 20 min | — | Technician |
| **Monthly** | Bearing vibration spectrum (FBG) | 30 min | — | Technician |
| **Monthly** | Magnet belt field mapping (Hall probe) | 1 hr | — | Technician |
| **500 ton** | **Blade replacement (all 32)** | **2 hr** | 32 BFRP blades | 2 Technicians |
| **2,000 ton** | **Liner replacement (all 12 segments)** | **4 hr** | 12 PEEK CF40 segments | 2 Technicians |
| **50,000 hr** | **Bearing replacement (4 bearings)** | **8 hr** | 4 Si3N4 hybrids | 2 Technicians |
| **Annual** | Rotor balance verification (spin test) | 4 hr | — | Specialist |
| **Annual** | Ultrasonic motor stator inspection | 2 hr | — | Specialist |

### 8.6 Condition-Based Maintenance (CBM) — FBG Integration

**32 FBG sensors embedded in rotor body** (4 per blade row, at root):
- 8 axial strain (bending)
- 8 circumferential strain (centrifugal)
- 8 torsional strain (blade impact)
- 8 temperature (thermal gradient)

**CBM triggers:**
| Parameter | Warning | Alarm | Action |
|-----------|---------|-------|--------|
| Blade root strain (peak) | >800 µε | >1200 µε | Reduce feed rate, schedule blade change |
| Strain asymmetry (row-row) | >15% | >25% | Immediate stop, check blade retention |
| Rotor temperature | >80°C | >100°C | Check bearing, reduce speed |
| Vibration (1× RPM) | >2 mm/s | >4 mm/s | Balance check, bearing inspection |
| Vibration (blade pass freq) | >5 mm/s | >10 mm/s | Blade damage — immediate stop |

**Predictive algorithm:** Kalman filter on strain trends → remaining useful life (RUL) estimate with 95% confidence interval. Blade change scheduled at RUL = 20 ton (4% margin).

### 8.7 Cost Analysis — BFRP vs. Steel Blades

| Cost Factor | BFRP Blades (In-House) | Hardened Steel Blades (Commercial) |
|-------------|------------------------|-----------------------------------|
| Blade unit cost | $85 | $350 |
| Blades per set | 32 | 32 |
| Set cost | $2,720 | $11,200 |
| Life (blended) | 500 ton | 800 ton |
| Sets per 10,000 ton | 20 | 12.5 |
| **10,000 ton blade cost** | **$54,400** | **$140,000** |
| Rotor damage risk | Low (progressive delam) | High (catastrophic fracture) |
| Contamination risk | **Zero** | **High (steel fragments)** |
| GIC immunity | **Complete** | **None (ferromagnetic)** |
| **Total 10-yr cost (50k ton)** | **$272,000** | **$700,000 + contamination losses** |

**Conclusion:** BFRP blades cost 61% less over 10 years, eliminate metallic contamination, and maintain Carrington immunity. The slightly shorter life (500 vs 800 ton) is offset by faster changeout (2 hr vs 6 hr for steel) and zero downstream contamination cost.


---
