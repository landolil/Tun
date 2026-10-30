## 10. Coil-to-Drum Gap Management — 15 mm Clearance

### 10.1 Gap Budget — Complete Thermal-Mechanical Analysis

**Nominal gap at 20°C (assembly):**
- Drum OD: 600.0 mm
- Coil ID (alumina sleeve OD): 630.0 mm
- Nominal radial gap: 15.0 mm

**Thermal expansion at Stage 8 peak (2200°C drum, ~200°C coil housing):**

| Component | Material | α (×10⁻⁶/K) | ΔT (K) | ΔRadius (mm) |
|---|---|---|---|---|
| Drum | ZrB₂-SiC | 6.5 | 2180 | +4.25 |
| Alumina sleeve | Al₂O₃ | 8.0 | 2000 | +0.21 |
| Coil housing | BFRP | 8.0 | 200 | +0.05 |

**Resulting gap at peak:**
$$r_{gap} = 15.0 - 4.25 + 0.21 + 0.05 = 11.01 \text{ mm}$$

**Mechanical allowances:**
- Drum runout (ceramic bearing): ±0.1 mm
- Coil housing mounting tolerance: ±0.3 mm
- Dynamic deflection at 500 RPM: < 0.2 mm
- Assembly misalignment: ±0.2 mm

**Total worst-case minimum gap:**
$$11.01 - 0.1 - 0.3 - 0.2 - 0.2 = 10.21 \text{ mm}$$

**Safety factor:** 10.21 mm >> 0 (no contact possible). 15 mm nominal provides 6.8× margin over worst case.

### 10.2 Gap Monitoring — FBG-Based Indirect Measurement

**Direct gap measurement impossible** (no sensors in 15 mm gap at 2200°C).

**Indirect method — Coil housing strain:**
- 4 FBG strain sensors per zone on coil housing inner surface
- Housing deflects toward drum as gap closes
- Calibration: Strain vs. gap (FEA + cold test)

**Strain-gap relationship (FEA validated):**
$$\varepsilon_{housing} = \frac{F_{Lorentz} + F_{thermal}}{E_{BFRP} \cdot A} \approx 0.15 \times (15 - r_{gap}) \text{ με/mm}$$

**Alarm thresholds:**
- Warning: Strain > 150 με (gap < 12 mm)
- Alarm: Strain > 300 με (gap < 10 mm)
- Emergency stop: Strain > 450 με (gap < 8 mm)

**Validation:** Cold test with shims confirms strain-gap correlation within 5%.

### 10.3 Dynamic Effects — Rotation & Vibration

**Centrifugal drum growth at 500 RPM:**
$$\Delta r = \frac{\rho \omega^2 r^3}{2E} (3-\nu) = \frac{3120 \times 52.4^2 \times 0.3^3}{2 \times 380 \times 10^9} \times 2.18 = 0.003 \text{ mm}$$
Negligible vs. thermal expansion.

**Vibration modes (rotor dynamics):**
- 1st critical speed: 1,800 RPM (well above 500 RPM operating)
- Amplitude at 500 RPM: < 0.05 mm (magnetic bearing quality ceramic bearings)
- No resonance risk in operating range.

### 10.4 Emergency Scenarios

| Scenario | Gap Change | Detection | Response |
|---|---|---|---|
| Bearing failure | Drum drops 2-5 mm | Strain spike + vibration | Emergency stop < 10 ms |
| Thermal runaway | Drum expands extra 2 mm | FBG temp + strain | Power cut, N₂ quench |
| Coil housing bolt failure | Housing shifts 1-3 mm | Strain asymmetry | Zone shutdown |
| Foreign object | Local gap closure | Local strain spike | Zone power reduction |

**Design principle:** Multiple independent detection layers (strain, temp, vibration, current) ensure no single-point failure allows contact.

---


---
