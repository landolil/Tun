## 3. BFRP-Blade Shredder Design — Dielectric Comminution

The shredder is the first mechanical process in the Aegis-Forge I and must maintain the zero-metal constraint. No steel blades, no steel housing, no steel bearings.

### 3.1 Shredder Architecture

| Parameter | Specification |
|-----------|---------------|
| **Rotor Diameter** | 800 mm |
| **Rotor Length** | 1200 mm (matches drum length) |
| **Blade Count** | 32 BFRP blades (8 rows × 4 helical) |
| **Blade Material** | Basalt fiber / Elium® unidirectional composite |
| **Blade Cross-Section** | 50 mm × 20 mm × 8 mm (tapered to 4 mm edge) |
| **Liner Material** | PEEK CF40 (replaceable panels, bolted) |
| **Housing** | BFRP/Elium® filament wound, 25 mm wall |
| **Drive** | KNbO₃-BaTiO₃ ultrasonic motor (CSMFAB000000000020) |
| **Speed Range** | 50–300 RPM (variable via piezoelectric drive) |
| **Torque** | 15 kN·m peak (stall) |
| **Throughput** | 5–8 ton/hr (feedstock dependent) |
| **Output Size** | P80 < 150 mm, P50 < 80 mm |

### 3.2 BFRP Blade Engineering (CSMFAB Materials Study Part II)

The blades are manufactured from in-house basalt fiber and Elium® resin — the crown-jewel of CSMFAB domestic production.

**Blade Layup:** [0°/±45°/90°]₂ₛ symmetric, 60% fiber volume fraction
- **0° plies (4):** Primary tensile/compressive load (basalt roving, 4800 tex)
- **±45° plies (4):** Shear and torsional stiffness
- **90° plies (2):** Transverse strength, impact resistance

**Blade Manufacturing Process (VARTM):**
1. **Preform preparation:** Basalt UD tape laid up on aluminum mandrel (reusable)
2. **Mandrel placement:** Mandrel inserted into matched metal mold (BFRP tooling)
3. **Vacuum infusion:** Elium® 150 resin drawn under -0.9 bar vacuum
4. **Cure:** Room temperature 2 hrs + post-cure 80°C 4 hrs
5. **Demold:** Mandrel extraction, blade trimming (waterjet, BFRP nozzle)
6. **Edge preparation:** CNC grind primary bevel, h-BN coating via PVD
7. **QC:** UT scan for voids, 3-point bend test (sample per batch)

**Blade Edge Geometry:**
- **Primary bevel:** 25° included angle, 2 mm land
- **Secondary micro-bevel:** 35°, 0.5 mm (self-sharpening in service)
- **Edge reinforcement:** h-BN nanoparticle coating (50 μm) for wear resistance

**Blade Life Model (CSMFAB Materials Study Part II):**

| Feedstock Category | Blade Life (ton) | Wear Mechanism |
|--------------------|------------------|----------------|
| Category A (Electronics) | 400–500 | Abrasive (SiO₂, Al₂O₃ in PCBs) |
| Category B (Metals) | 600–800 | Adhesive (Al, Cu buildup), fatigue |
| Category C (Rock/Ore) | 200–300 | High abrasion (quartz, basalt) |
| Category D (Phoenix) | 800–1000 | Low abrasion (ceramic, composite) |

**Replacement Protocol:** Blade row (4 blades) replaced as set. Full rotor change: 30 min downtime. PEEK CF40 liner panels: 2000 ton life.

### 3.3 PEEK CF40 Liners (CSMFAB Materials Study Part IV)

The shredder housing interior is lined with replaceable PEEK CF40 panels:
- **Panel dimensions:** 600 mm × 400 mm × 12 mm (12 panels per housing half)
- **Mounting:** 8 × M8 PEEK CF40 bolts per panel, torque 15 Nm
- **Wear indicator:** Integrated h-BN tracer layer at 6 mm depth — visual inspection reveals wear
- **Temperature rating:** 260°C continuous (well above shredder operating temp <80°C)
- **Chemical resistance:** Impervious to oils, solvents, battery electrolytes

### 3.4 Shredder Dynamics and Vibration Analysis

The rotor operates at up to 300 RPM (5 Hz) with significant unbalanced forces:
- **Critical speeds:** 1st bending 420 RPM, 2nd bending 1150 RPM (well above operating range)
- **Balance grade:** G2.5 (ISO 21940) — residual unbalance <5 g·mm per blade row
- **Bearing loads:** Radial 8 kN, Axial 2 kN (thrust from helical blade angle)
- **Vibration monitoring:** 3-axis FBG accelerometers at each bearing (PMMA POF)

---
