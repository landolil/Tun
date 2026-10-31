## 3. Low-Frequency Array (20-500 Hz)

### 3.1 Array Configuration

| Parameter | Value |
|---|---|
| Transducer count | 8 × KNbO₃-BaTiO₃ bending plate transducers |
| Transducer diameter | 0.3 m each |
| Mounting | Radial around BFRP chamber circumference |
| Frequency range | 20-500 Hz (logarithmic sweep) |
| Power per transducer | 1 kW (8 kW total acoustic input) |
| Sweep pattern | 20 Hz → 500 Hz → 20 Hz (bidirectional) |
| Dwell per frequency | 30 seconds standard, +60 s at resonant peaks |
| Total cycle duration | 15 minutes for 50 kg charge |
| Chamber coupling fluid | 10-15 L water (reclaimed post-Stage 0) |

### 3.2 KNbO₃-BaTiO₃ Bending Plate Transducer Design

**Piezoelectric bimorph construction:**
- Active layers: 2 × KNbO₃-BaTiO₃ discs (300 mm diameter × 3 mm thick)
- Substrate: BFRP/Elium® plate (2 mm, matched CTE)
- Drive mode: d₃₁ bending (opposite polarity on each layer)
- Electrode pattern: Interdigitated for multi-mode excitation

**Material properties (KNbO₃-BaTiO₃ solid solution, x=0.5):**
| Property | Value |
|---|---|
| d₃₃ (piezo coefficient) | 285 pC/N |
| d₃₁ | -120 pC/N |
| kₚ (planar coupling) | 0.58 |
| εᵣ (relative permittivity) | 1200 |
| T_c (Curie temperature) | 310°C |
| Mechanical Q | 85 |
| Density | 5.2 g/cm³ |

**Displacement at 1 kW input (100 Hz):**
$$\delta_{tip} = \frac{d_{31} V L^2}{2 t_p t_s} \approx 50 \mu m$$
Where $L=150$ mm (half-plate), $t_p=3$ mm (piezo), $t_s=2$ mm (substrate), $V \approx 400$ V.

### 3.3 Chamber Resonance and Adaptive Sweep

**BFRP chamber natural frequencies:**
$$f_{chamber,n} = \frac{n c_{air}}{2L} \quad \text{(axial modes)}$$
$$f_{chamber,m} = \frac{\alpha_{mn} c_{air}}{2\pi R} \quad \text{(radial modes)}$$
For 600 mm diameter × 400 mm length chamber:
- Fundamental axial: $f_1 \approx 425$ Hz
- Fundamental radial: $f_{01} \approx 185$ Hz

**Adaptive sweep algorithm (FBG-guided):**
1. Sweep 20→500 Hz logarithmically (20 Hz steps)
2. FBG sensors on chamber wall measure vibration response spectrum
3. DSP (KNbO₃-BaTiO₃ ASIC driver) identifies peaks >3 dB above baseline
4. Extra 60-second dwell at each identified resonant frequency
5. Bidirectional sweep ensures both up/down resonance capture

This feedstock-adaptive sweep maximizes liberation for the specific mineralogy of each charge.

---
