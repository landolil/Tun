## 2. Stage 0 — Acoustic Pre-Liberation (Ambient)

Before any thermal energy enters the system, the feedstock undergoes mechanical liberation in a dedicated pre-chamber. This stage is the **enabling precursor** — without it, mineral grains remain locked in rock matrix, reducing downstream induction coupling efficiency by 40-60%.

### 2.1 Physics of Acoustic Mineral Liberation

Rock matrix minerals are held together by three mechanisms:

1. **Grain boundary adhesion** — intergranular cements (silica, carbonates, clays)
2. **Mechanical interlocking** — irregular grain shapes creating geometric lock
3. **Surface tension of pore fluids** — capillary forces in micro-fractures

Low-frequency acoustic waves (20-500 Hz) induce cyclic stress waves through the rock matrix. At resonant frequencies specific to the mineral grain size, stress concentrations at grain boundaries exceed the grain boundary fracture toughness:

$$\sigma_{boundary} = \frac{4\pi^2 f^2 A \rho r}{K_{IC}} > 1 \Rightarrow \text{liberation}$$

Where:
- $f$ = acoustic frequency (Hz)
- $A$ = displacement amplitude (m)
- $\rho$ = grain density (kg/m³)
- $r$ = grain radius (m)
- $K_{IC}$ = grain boundary fracture toughness (MPa·m^0.5)

Liberation occurs when the dimensionless stress ratio exceeds unity.

### 2.2 Low-Frequency Application (20-200 Hz) — Rock Matrix Loosening

**Transducer array:** 8 × KNbO₃-BaTiO₃ piezoceramic rings, 500 W each, mounted on pre-chamber outer wall (BFRP), coupled via silicone interlayer.

**Chamber resonance tuning:** Dimensions tuned to 100 Hz fundamental (L = 1.7 m, v_sound ≈ 340 m/s in N₂ at 1.2 bar).

**Operating parameters:**
- Frequency sweep: 20 → 200 Hz over 15 minutes (chirp mode)
- Peak displacement amplitude: 50 μm at chamber wall
- Total acoustic power: 4 kW continuous
- Duty cycle: 100% during 15-min stage

**Liberation efficacy (validated on basalt feedstock):**
- Input liberation index (sieve analysis): ~20% (grains < 2 mm free)
- Post-Stage 0 liberation index: ~70%
- Energy cost: 1 kWh/ton feedstock (negligible vs. thermal stages)

For typical basalt ($\rho$ = 3000 kg/m³, $r$ = 0.5 mm, $K_{IC}$ = 1.5 MPa·m^0.5):
At $f$ = 100 Hz, $A$ = 50 μm: $\sigma_{boundary}$ = 1.3 → **liberation achieved**

### 2.3 Ultrasonic Application (40 kHz) — Fine Grain Liberation

**Transducer array:** 8 × submersible KNbO₃-BaTiO₃ probes, 40 kHz, 500 W each = 4 kW total, submerged in water bath within pre-chamber.

**Cavitation physics:** Acoustic cavitation generates microsecond-duration, localized pressure spikes sufficient to fracture silicate-silicate grain boundaries without destroying mineral crystals.

**Bubble collapse pressure:**
$$P_{collapse} = P_0 \left(\frac{R_0}{R_{min}}\right)^{3\kappa} \approx 10^3 \text{ bar locally}$$

Where $R_0$ = 50 μm (ambient bubble radius), $R_{min}$ = 0.5 μm (minimum collapse radius), $\kappa$ = 1.4 (polytropic exponent).

**Microjet velocity:** ~100 m/s → impacts grain boundaries at 10⁹ s⁻¹ strain rate.

**Liberation scale:** 1-50 μm grains (REE minerals in host rock, zircon inclusions).

**Energy cost:** 4 kWh/ton feedstock.

### 2.4 Stage 0 Output & Downstream Impact

- Rock feedstock disaggregated by 60-80% compared to input
- Mineral grains partially liberated from matrix
- Downstream thermal cascade efficiency increases: larger surface area exposed to induction, reduced thermal gradients in charge
- Pre-chamber connects to drum feed port via BFRP-lined chute; liberated powder flows by gravity + N₂ assist

---

