## 6. Seismic Qualification (IEEE 693 High)

### 6.1 Site Seismic Hazard

| Parameter | Value | Basis |
|-----------|-------|-------|
| **Site Class** | C (Very Dense Soil/Soft Rock) | Vs30 = 760 m/s (CPT-2026-01) |
| **Sₛ (0.2s)** | 0.75g | USGS 2024 NSHM, 2% in 50 yr |
| **S₁ (1.0s)** | 0.30g | USGS 2024 NSHM |
| **Fₐ** | 1.0 | ASCE 7-22 Table 11.4-1 |
| **Fᵥ** | 1.3 | ASCE 7-22 Table 11.4-2 |
| **Sₘₛ** | 0.75g | Fₐ × Sₛ |
| **Sₘ₁** | 0.39g | Fᵥ × S₁ |
| **S𝒹ₛ** | 0.50g | ⅔ Sₘₛ |
| **S𝒹₁** | 0.26g | ⅔ Sₘ₁ |
| **Seismic Design Category** | D | ASCE 7-22 Table 11.6-1 |

### 6.2 Required Response Spectra (RRS) — IEEE 693 High

| Period (s) | RRS (g) | Anchored To |
|------------|---------|-------------|
| 0.01 | 0.50 | S𝒹ₛ |
| 0.10 | 1.20 | 2.4 × S𝒹ₛ |
| 0.30 | 1.00 | S𝒹₁ / T |
| 1.00 | 0.26 | S𝒹₁ |
| 3.00 | 0.09 | S𝒹₁ / T |

### 6.3 Test Response Spectra (TRS) — Multi-Axis

| Component | Test Method | TRS Envelope | Acceptance |
|-----------|-------------|--------------|------------|
| **Drum + Frame** | Shake Table (3-axis simultaneous) | 1.5× RRS (IEEE 693 High) | HCLPF >1.6g |
| **Vessel + Aerogel** | Shake Table (vertical + 1 horizontal) | 1.5× RRS | No delamination, glaze intact |
| **Coil Bank** | Sine sweep + random | 1.5× RRS | Resonance unchanged, ZVS stable |
| **Power Electronics** | Sine sweep (per IEC 60068-2-57) | 1.5× RRS | No component displacement |
| **TSN/POF Network** | Random vibration | 1.5× RRS | <0.5 dB added loss |
| **Isolators** | Static + dynamic stiffness | 2.5 MN/m ±5% vertical | Force-deflection curve |

### 6.4 High Confidence Low Probability of Failure (HCLPF)

**Method:** Conservative Deterministic Failure Margin (CDFM) + FEA (PROD-25)

| Component | Failure Mode | Median Capacity | βᵣ | βᵤ | HCLPF | Target |
|-----------|--------------|-----------------|-----|-----|-------|--------|
| **Drum** | Tensile rupture | 420 MPa | 0.15 | 0.15 | 1.85g | >1.6g |
| **Vessel** | Hoop rupture | 1,100 MPa | 0.12 | 0.15 | 2.10g | >1.6g |
| **Frame** | Isolator yield | 3.2 MN | 0.10 | 0.15 | 2.45g | >1.6g |
| **Coil Supports** | Bolt shear | 180 kN | 0.15 | 0.15 | 1.72g | >1.6g |
| **PEX-a Piping** | Fitting pullout | 45 kN | 0.20 | 0.20 | 1.65g | >1.6g |
| **Carousel** | Bearing retainer | 85 kN | 0.15 | 0.15 | 1.78g | >1.6g |

**All HCLPF > 1.6g — IEEE 693 High Qualified.**

---
