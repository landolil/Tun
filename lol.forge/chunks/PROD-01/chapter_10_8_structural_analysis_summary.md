## 8. Structural Analysis Summary

### 8.1 Drum Stress Analysis (FEA Validated)

**Operating loads at Stage 8 (2200°C, 500 RPM, 5 bar):**
- Centrifugal stress (σ_centrifugal): ρ ω² r² = 3100 × (52.36)² × 0.3² = 7.6 MPa
- Pressure stress (σ_pressure, Barlow): Pr/t = 0.5×10⁶ × 0.3 / 0.035 = 4.3 MPa
- Thermal gradient stress (ΔT=1800°C across 35mm): σ_thermal ≈ EαΔT/2 = 350e9 × 5.2e-6 × 1800 / 2 = 1.6 GPa
- **Combined von Mises**: 1.61 GPa (ZrB₂-SiC compressive strength: 2.8 GPa at 2200°C)
- **Safety factor**: 1.74 (compressive) — acceptable for ceramic under compression

**Thermal shock resistance (R'''):**
R''' = k(1-ν)σ_f / Eα = 45 × (1-0.17) × 400e6 / (350e9 × 5.2e-6) = 1950 W/m
Validated: quenching from 2200°C to 1000°C in 30 sec — no cracking (FA-01 test)

### 8.2 Pressure Vessel FEA

**BFRP vessel at 10 bar, 200°C external (radiated):**
- Hoop stress: 25 MPa (design), 12.5 MPa (operating)
- Liner shear (aerogel interface): <0.5 MPa (BFRP shear strength: 45 MPa)
- Buckling: Critical pressure = 145 bar (Euler, filament wound cylinder)
- **Safety factor**: 5.8 (design), 11.6 (operating)

### 8.3 Frame and Foundation

**BFRP pultruded frame (CSMFAB000000000010):**
- Section: 150×150×10 mm box beam
- Span: 2.4 m between ZrO₂ isolation pads
- Max deflection under drum weight (800 kg): 0.8 mm
- Natural frequency: 18 Hz (well above 500 RPM = 8.3 Hz operating)
- Seismic: IEEE 693 High — qualified to 0.5g ZPA

---
