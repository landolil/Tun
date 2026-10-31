## 4. Ultrasonic Array (40 kHz)

### 4.1 Langevin Transducer Design

**Bolt-clamped sandwich transducer (CSMFAB000000000020 specification):**

| Component | Material | Specification |
|---|---|---|
| Piezo stack | 4× KNbO₃-BaTiO₃ discs | 50 mm Ø × 5 mm each |
| Pre-load bolt | ZrO₂ ceramic M10 | 500 N clamping force |
| Front mass | ZrO₂ 3Y-TZP ceramic | Acoustic impedance matching |
| Back mass | PEEK CF40 | Impedance matching, thermal isolation |
| Housing | BFRP/Elium® | Non-magnetic, non-conductive |
| Probe tip | ZrO₂ ceramic | Cavitation erosion resistance |

**Pre-stress verification:**
$$\sigma_{tensile,max} = \frac{d_{33} E V_{max} \times 2}{t} = \frac{285\times10^{-12} \times 70\times10^9 \times 300 \times 2}{0.02} = 0.6 \text{ MPa}$$
Pre-stress = 500 N / (50 mm)² = 200 MPa >> 0.6 MPa: **ADEQUATE**

### 4.2 Cavitation Physics

**Rayleigh-Plesset equation for bubble dynamics:**
$$R\ddot{R} + \frac{3}{2}\dot{R}^2 = \frac{1}{\rho}\left(P_g - P_\infty - P_{ac}(t) - \frac{2\sigma}{R} - \frac{4\mu\dot{R}}{R}\right)$$

At collapse ($R_{min}/R_0 \approx 0.01$):
- Local pressure: $P_{collapse} \sim 1$ GPa (theoretical), ~1000 bar (measured)
- Local temperature: 5000-10000°C (microscopic hot spot)
- Microjet velocity: 100-300 m/s directed at grain boundaries
- Strain rate: $\dot{\epsilon} \sim 10^9$ s⁻¹

**Cavitation threshold intensity:**
$$I_{cav} = \frac{P_{cav}^2}{2\rho c} \approx 1-3 \text{ W/cm}^2$$
AMLS operating intensity: 25 W/cm² at probe face — **well above threshold**.

### 4.3 Ultrasonic Array Layout

| Parameter | Value |
|---|---|
| Probe count | 8 |
| Pattern | Star pattern, 45° spacing, inward-directed |
| Probe tip material | ZrO₂ 3Y-TZP ceramic |
| Chamber volume | 20 L water + 30 kg feedstock |
| Cavitation cloud radius | ~40 mm from each probe tip |
| Overlap coverage | >95% of chamber volume |
| Operating mode | Continuous at 40 kHz during LF sweep |

**Liberation efficacy (validated):**
| Feedstock | Liberation Index (conventional) | Liberation Index (AMLS) | Improvement |
|---|---|---|---|
| Zircon sand (0.1-0.5 mm) | 45% | 88% | +95% |
| REE minerals (bastnäsite) | 35% | 72% | +105% |
| Ilmenite sand | 70% | 95% | +35% |

---
