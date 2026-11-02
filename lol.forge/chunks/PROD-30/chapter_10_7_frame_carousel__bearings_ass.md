## 7. Frame, Carousel & Bearings (Assembly A-12)

### 7.1 Annual Frame Dimensions (PROD-30-WI-033)

**Equipment:** CMM (Hexagon Global, 3000×2000×1500 mm, ±2 μm accuracy)
**Points:** 200+ measurement points (bolt holes, lifting lugs, isolator mounts, bearing seats)
**Acceptance:** ±1 mm length, ±0.5 mm diagonal, bolt hole pattern ±0.1 mm
**Comparison:** Baseline (FA CMM report) + thermal growth model (PROD-25)

### 7.2 Biennial Isolator Stiffness Test (PROD-30-WI-034)

**Method:** Static load test (hydraulic jack, 500 kN capacity) + LVDT displacement
**Vertical:** 2.5 MN/m ±5% (250 kN → 0.1 mm deflection)
**Horizontal:** 0.8 MN/m ±5% (80 kN → 0.1 mm deflection)
**Damping:** Logarithmic decrement from free decay >15%
**Acceptance:** Per PROD-25 Sec 4.2 updated values

### 7.3 Monthly Carousel Indexing (PROD-30-WI-035)

**Method:** Encoder (Heidenhain ROC 425, 26-bit) + FBG strain on bearing housing
**Procedure:** 8-position sequence (45° steps), 5 cycles each direction
**Acceptance:** <2 s per index; 0.01° resolution; position repeatability ±0.005°; vibration <0.5 g RMS

### 7.4 Continuous Bearing Vibration Monitoring (PROD-30-WI-036)

**Sensors:** 4× accelerometers (PCB 352C33, 100 mV/g, 0.5–10 kHz) + 2× FBG on bearing housing
**Sampling:** 1 kHz continuous; FFT (0.5–500 Hz); envelope analysis (1–5 kHz)
**Baseline:** Commissioning data (30 days steady operation)
**Alert Logic:**
- Overall RMS >2× baseline → Alert Level 1 (trend)
- Bearing defect frequency (BPFI/BPFO/BSF/FTF) amplitude >6 dB baseline → Alert Level 2 (NCR)
- Spectral kurtosis >4 → Alert Level 3 (immediate inspection)

### 7.5 2000-Batch Bearing Inspection (PROD-30-WI-037)

**Scope:** Si₃N₄ ball / ZrO₂ race hybrid ceramic bearings (4 per carousel)
**Procedure:** Removal → visual + dimensional (CMM) + spin test (1000 RPM, 30 min)
**Acceptance:**
- No spalling, pitting, discoloration on balls/races
- Runout <5 μm (radial + axial)
- Preload torque: 5 N·m ±10% (N₂ film 0.1 bar)
- Vibration at 1000 RPM: <0.5 g RMS
- FBG strain on housing: <50 με static

### 7.6 Quarterly Mold Dimensions (PROD-30-WI-038)

**Scope:** 8× ZrO₂ molds (carousel positions 1-8)
**Equipment:** CMM (per 7.1) + optical comparator (profile)
**Acceptance:** 0.1 mm tolerance (ISO 8062 CT7); wall thickness 25±0.1 mm; base flatness <0.05 mm
**Action if Failed:** Mold replacement (spare set on-site); dimension mapping to slug quality data

---
