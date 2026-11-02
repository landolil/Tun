## 9. Fatigue & Damage Tolerance

### 9.1 Drum Fatigue (ZrB₂-SiC)

| Cycle Type | Frequency | Stress Range | Cycles/Year | N_f | SF |
|------------|-----------|--------------|-------------|-----|----|
| Thermal (full) | 6/day | 225 MPa | 2,200 | >10⁶ (with NDT) | >450× |
| Thermal (ramp) | 12/day | 180 MPa | 4,400 | >10⁷ | >2,200× |
| Pressure | 6/day | 2.5 MPa | 2,200 | ∞ | ∞ |
| Rotation | Continuous | 0 (steady) | — | — | — |

**Damage tolerance (initial flaw a₀ = 50 μm UT detection limit):**
- Critical flaw at 225 MPa: a_c = K_IC²/(πσ²) = 112 μm
- Paris law: da/dN = 10⁻¹²(ΔK)³⁰ (air, 1400°C)
- ΔK = 3.5 MPa·m⁰·⁵ (ΔT = 2180°C)
- N_f (50→112 μm) = 4.2×10⁶ cycles
- **Inspection interval: 500 batches (3 months) → a_max = 54 μm < a_c**

### 9.2 Vessel Fatigue (BFRP)

| Cycle Type | Frequency | Stress Range | Cycles/Year | N_f | SF |
|------------|-----------|--------------|-------------|-----|----|
| Pressure (0→5 bar) | 6/day | 25 MPa | 2,200 | >10⁸ | >45,000× |
| Thermal (20→200°C) | 6/day | 50 MPa | 2,200 | >10⁶ | >450× |
| Combined | 6/day | 75 MPa | 2,200 | >5×10⁶ | >2,200× |

**Damage mechanism:** Matrix microcracking at strain >2×10⁻³
- Operating strain range: 1.35×10⁻³ < threshold
- **No progressive damage accumulation expected**

### 9.3 Frame Fatigue

**Seismic events:** 2 DBE in 20 years (IEEE 693)
**Operational vibration:** Drum rotation (500 RPM = 8.33 Hz), frame modes >15 Hz — no resonance
**Vibration fatigue (continuous):**
- Acceleration at frame: 0.02g RMS (measured)
- Stress range: 2 MPa → N_f > 10⁹ cycles

### 9.4 Bearing Fatigue (Si₃N₄/ZrO₂)

**Rolling contact fatigue (ISO 281):**
- L10 = 35,800 hrs (Section 9.4 PROD-04)
- Design life: 10,000 hrs → **SF = 3.6×**
- Weibull L10: 10% fail at 35,800 hrs
- **Recommended replacement: 25,000 hrs (PM interval)**

---
