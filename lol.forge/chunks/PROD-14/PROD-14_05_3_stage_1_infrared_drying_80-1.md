## 3. Stage 1: Infrared Drying (80-150°C)

### 3.1 Target Materials & Physics

#### 3.1.1 Moisture Species and Release Temperatures

| Moisture Type | Source | Release Temp | Mechanism |
|---------------|--------|--------------|-----------|
| **Free surface water** | All wet feeds | 80-100°C | Evaporation |
| **Crystal-bound water** | Gypsum (CaSO₄·2H₂O) | 107-120°C | Dehydration |
| **Crystal-bound water** | Borax (Na₂B₄O₇·10H₂O) | 100-140°C | Dehydration |
| **Crystal-bound water** | Kaolin (Al₂Si₂O₅(OH)₄) | 150°C | Partial dehydration |
| **Low-boiling organics** | Alcohols, acetone residues | 80-150°C | Vaporization |
| **PCB flux solvents** | Terpineol (Tb=218°C) | >150°C | Begins at Stage 1 end |

#### 3.1.2 Why Infrared (Not Induction)?

Induction heating is ineffective at 80-150°C because:
- Target materials (water, hydrated minerals, organics) are **non-conductive** (ρ > 10⁸ Ω·m)
- Induction couples to conductivity (eddy currents) and permeability (hysteresis)
- Water has ε'' (dielectric loss) peak at 3 µm and 6 µm — ideal for IR absorption

**IR absorption spectrum of water:**
- Primary peak: 3.0 µm (O-H stretch)
- Secondary peak: 6.3 µm (H-O-H bend)
- SiC glow bar emission peak: ~3.6 µm at 800-900°C surface temp
- **Match:** SiC IR output overlaps water absorption peak → high coupling efficiency

---

### 3.2 IR Emitter Specifications

#### 3.2.1 SiC Glow Bar Design

**Emitter type:** Silicon carbide resistive elements (CSMFAB000000000002-type) — same material used in Ancient Hearth stove burner.

| Parameter | Specification |
|-----------|---------------|
| **Emitter Count** | 12 (3 per quadrant, axial positions) |
| **Emitter Length** | 200 mm each (total 2.4 m heated length) |
| **Emitter Diameter** | 12 mm OD × 8 mm ID (hollow for N₂ purge) |
| **Surface Temperature** | 800-900°C (controlled) |
| **Peak Emission Wavelength** | 3.6 µm (Wien's law at 850°C) |
| **Power per Emitter** | 5 kW (total 60 kW IR array) |
| **Electrical Supply** | 480V 3-phase, SCR-controlled per quadrant |
| **Emitter Material** | α-SiC (CSMFAB000000000002, flash-sintered) |
| **Emitter Housing** | BFRP/Elium® with Al₂O₃ ceramic mounts |
| **Reflectors** | Polished ZrO₂-coated BFRP (95% IR reflectivity) |
| **Emitter Life** | 10,000 hours (degradation: SiC oxidation → emissivity drop) |

#### 3.2.2 Zoning and Power Distribution

```
DRUM CROSS-SECTION — IR EMITTER ZONES

    Quadrant 1 (Top)     Quadrant 2 (Right)
    [EMITTER 1]          [EMITTER 4]
    [EMITTER 2]          [EMITTER 5]
    [EMITTER 3]          [EMITTER 6]
           │                    │
           │   ROTATING DRUM    │
           │   (ZrB₂-SiC)       │
           ▼                    ▼
    Quadrant 3 (Bottom)  Quadrant 4 (Left)
    [EMITTER 7]          [EMITTER 10]
    [EMITTER 8]          [EMITTER 11]
    [EMITTER 9]          [EMITTER 12]

Each quadrant: Independent SCR control → PID per quadrant
```

**Zoning rationale:**
- Top quadrant: Highest power (feed entry, wettest material)
- Bottom quadrant: Lowest power (material already partially dried)
- Side quadrants: Medium power (uniform radial drying)

**Power profile (typical 20-min cycle):**
| Time (min) | Top | Right | Bottom | Left | Total Power |
|------------|-----|-------|--------|------|-------------|
| 0-5 | 60 kW | 50 kW | 30 kW | 50 kW | 190 kW |
| 5-10 | 55 kW | 45 kW | 25 kW | 45 kW | 170 kW |
| 10-15 | 45 kW | 40 kW | 20 kW | 40 kW | 145 kW |
| 15-20 | 35 kW | 30 kW | 15 kW | 30 kW | 110 kW |

---

### 3.3 Drum Operation During Stage 1

| Parameter | Specification |
|-----------|---------------|
| **Rotation Speed** | 5-10 RPM (slow, gentle tumbling — uniform drying) |
| **Centrifugal G** | 0.07-0.28 G (insufficient for separation — intentional) |
| **Atmosphere** | N₂ at 1.2 bar (prevents explosive H₂/organic vapor combinations) |
| **Duration** | 20 minutes (sufficient for 50 kg charge with <30% moisture) |
| **Temperature Ramp** | 80°C → 150°C over 20 min (3.5°C/min) |
| **Feed Rate** | Vibratory feeder: 2.5 kg/min (50 kg / 20 min) |

---

### 3.4 Moisture Measurement

#### 3.4.1 FBG Humidity Sensors

**Sensor type:** PMMA optical fiber with FBG gratings coated with hygroscopic polymer (PVA-H₃PO₄)

| Parameter | Specification |
|-----------|---------------|
| **Sensor Count** | 8 (2 per quadrant, axial positions) |
| **Wavelength Range** | 1530-1565 nm (C-band, WDM multiplexed) |
| **Humidity Sensitivity** | 5 pm/%RH (calibrated) |
| **Temperature Cross-Sensitivity** | 10 pm/°C (compensated via reference FBG) |
| **Response Time** | <30 seconds (polymer swelling kinetics) |
| **Operating Range** | 0-100% RH, 20-200°C |

**Installation:** FBG fibers routed through drum wall via PEEK CF40 feedthroughs, gratings positioned in drum headspace.

#### 3.4.2 NIR Inline Moisture Analyzer

**Sensor type:** Dual-wavelength NIR absorption (1.45 µm water / 1.72 µm reference)

| Parameter | Specification |
|-----------|---------------|
| **Measurement Principle** | $A = \log_{10}(I_0/I) = \epsilon \cdot c \cdot l$ |
| **Wavelengths** | 1.45 µm (H₂O), 1.72 µm (reference), 1.94 µm (H₂O validation) |
| **Optical Path** | PMMA POF probe through drum port window (sapphire) |
| **Sampling Rate** | 10 Hz |
| **Accuracy** | ±0.5% absolute moisture |
| **Calibration** | Gravimetric reference samples per lot |

#### 3.4.3 Mass Loss Verification (Primary Control)

**Method:** FBG weight sensors on drum support bearings measure real-time mass loss.

| Parameter | Specification |
|-----------|---------------|
| **Sensor Type** | FBG strain gauges on 4 ZrO₂ isolation pads (PROD-04) |
| **Resolution** | ±10 g on 500 kg charge (0.002%) |
| **Integration** | Sum of 4 bearing loads = total drum + charge mass |
| **Water Loss Calculation** | $\Delta m_{H_2O} = m_{initial} - m_{current} - m_{volatiles}$ |
| **Volatile Correction** | NIR hydrocarbon sensor (3.4 µm C-H stretch) |
| **Stage 1 Completion Criteria** | $\Delta m_{H_2O} < 0.5$ kg over 2 consecutive minutes |

---

### 3.5 Water and Volatile Recovery

Exiting vapor (mostly H₂O) exits through **Port 1 (150°C set-point)**:

1. **Condensation:** BFRP heat exchanger (chilled to 10°C by PEX-a cooling circuit)
2. **Liquid water collected:** Analyzed for metal content (ICP-MS), either:
   - Purified (RO + UV) → reused as process water
   - Discharged if <1 ppm metals
3. **Organic vapors:** Trace quantity passes through activated carbon bed (char from Stage 3!)
   - **Elegant closed cycle:** Char from Stage 3 later used to adsorb Stage 1/2 organics
4. **Gas composition monitoring:** Online GC-MS on Port 1 exhaust
   - H₂O (primary), organics (<50 ppm), HCl (<10 ppm if PVC present), NH₃ (<5 ppm)

**Water recovery rate:** 90-95% of input moisture recovered as liquid water.

---
