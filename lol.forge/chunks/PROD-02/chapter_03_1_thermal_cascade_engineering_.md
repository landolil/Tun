## 1. Thermal Cascade Engineering — The Science of Sequential Separation

The Aegis-Forge I exploits a fundamental principle of material science: every substance has a discrete phase transition temperature. By raising the drum's internal temperature in precisely controlled increments — the thermal cascade — each material class becomes liquid, decomposes, or volatilizes in a predictable sequence, enabling clean physical separation.

This is not merely a temperature ramp. It is a **traversal of the periodic table's thermal geography**, where each stage corresponds to a cluster of elemental liquidus temperatures. The cascade writes itself from the physics; the engineer merely implements what the periodic table demands.

### 1.1 The Cascade Temperature Ramp Protocol — Complete Engineering Specification

The complete thermal cycle runs 3.5-5 hours per batch depending on feedstock composition and mass:

```
TIME (min)  TEMP (°C)  STAGE   ACTIVITY                           RAMP RATE
0-15        20-80      Pre     Acoustic mineral liberation        N/A (ambient)
15-35       80-150     1       Moisture removal, volatile organics  3.5 °C/min
35-65       150-450    2       Thermoplastic flow, polymer sep.    10.0 °C/min
65-95       450-660    3       Pyrolysis, char, thermoset comb.     7.0 °C/min
95-120      420-900    4       Low-melting metals: Pb, Sn, Zn      19.2 °C/min (overlap)
120-145     660-720    5       Aluminum separation (pure Al window) 2.4 °C/min
145-175     720-1085   HOLD    Solidus zone: brass, bronze sep.     12.2 °C/min
175-205     1085-1200  6       Copper and copper alloys             3.8 °C/min
205-240     1200-1600  7       Iron, steel, nickel, cobalt          11.4 °C/min
240-270     1600-2200  8       Refractory mineral oxide residue     20.0 °C/min
270-300     2200-cool  Cool    Controlled cool under N₂             -7.3 °C/min
```

**Ramp Rate Engineering:**
Ramp rates are not arbitrary — they are determined by heat transfer physics:
- Stage 1: Limited by water evaporation rate (diffusion-limited)
- Stage 2: Limited by polymer melt viscosity decay (viscosity vs. T)
- Stage 3: Limited by pyrolysis reaction kinetics (Arrhenius)
- Stage 4: Overlap range — sequential sub-stages within single thermal zone
- Stage 5: Slow ramp through 60°C Al window for clean separation
- Stage 6-8: Faster ramps — higher thermal conductivity metals, larger ΔT

### 1.2 Stage 0 — Acoustic Pre-Liberation: Complete Physics and Validation

Before any heating, the feedstock undergoes acoustic pre-treatment in a separate pre-chamber connected to the drum. This is **mandatory** — skipping Stage 0 reduces downstream induction coupling efficiency by 40-60%.

**Physics of Acoustic Mineral Liberation:**

Rock matrix minerals are held together by:
1. Grain boundary adhesion (intergranular cements: silicates, carbonates, clays)
2. Mechanical interlocking of irregular grain shapes
3. Surface tension of pore fluids (capillary forces)

**Low-Frequency Resonant Fatigue (20-500 Hz):**
Cyclic stress waves induce fatigue at grain boundaries. At resonant frequencies specific to the mineral grain size and matrix constraint, stress concentrations exceed grain boundary fracture toughness:

$$\sigma_{boundary} = \frac{4\pi^2 f^2 A \rho r}{K_{IC}} > 1 \Rightarrow \text{liberation}$$

Where:
- A = acoustic amplitude (displacement, m)
- ρ = grain density (kg/m³)
- r = grain radius (m)
- K_IC = grain boundary fracture toughness (MPa·m^0.5, typically 0.8-2.0)

**Matrix-Constrained Resonance Shift (Critical Insight):**
A free 0.5 mm zircon grain resonates at ~1.7 MHz. Embedded in silica matrix, its effective resonance drops to 50-200 Hz — the seismic band. The AMLS intentionally operates in this band.

**LF System Specification:**
- 8 KNbO₃-BaTiO₃ bimorph plates (300 mm diameter, 1 kW each)
- Logarithmic sweep: 20→500 Hz, 20 steps, 30 s dwell/step
- Adaptive: FBG sensors detect resonant peaks (>3 dB), add 60 s bonus dwell
- Water coupling: 10-15 L per batch, 20-30°C, closed loop

**Ultrasonic Cavitation (40 kHz):**
- 8 Langevin probes (4× KNbO₃-BaTiO₃ discs each, 40 kHz, 25 W/cm²)
- Submersed in water bath within pre-chamber
- Acoustic cavitation liberates mineral grains at micron scale

**Cavitation Physics (Rayleigh-Plesset):**
$$R\ddot{R} + 1.5\dot{R}^2 = \frac{P_g - P_\infty - P_{ac} - 2\sigma/R - 4\mu\dot{R}/R}{\rho}$$

At collapse (R_min/R_0 ≈ 0.01):
- P_collapse ~1 GPa locally
- T ~5000-10000°C
- Microjet velocity: 100-300 m/s
- Strain rate: 10^9 s⁻¹

This microsecond, localized pressure fractures silicate-silicate grain boundaries (0.8-2 MPa·m^0.5) without destroying mineral crystals.

**Acoustic-Magnetic Coupled (AMC) Mode:**
Simultaneous LF at 50 Hz + pulsed SmCo magnetic field (1.2 T, 10 Hz) separates ferrimagnetic minerals (ilmenite, magnetite) into concentrate stream before thermal processing. Pre-sorting dramatically improves Stage 7-8 specificity.

**Stage 0 Output Validation (50 Batches):**
| Feedstock Type | Zircon LI | REE LI | Ilmenite LI | Mixed E-waste LI |
|---|---|---|---|---|
| Zircon sand | 88% | 72% | 95% | 85% |
| REE ore | 85% | 75% | 90% | 82% |
| Ilmenite | 90% | 68% | 97% | 88% |
| Phoenix returns | 86% | 71% | 92% | 84% |

All batches exceeded 75% LI target for primary mineral. Downstream induction coupling: 85-95% (vs 40-50% without Stage 0).

---
