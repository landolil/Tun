## 21. Acoustic Pre-Processor — Stage 0 Physics Deep Dive

### 21.1 Low-Frequency Liberation (20-200 Hz)

**Transducer array:** 8 × KNbO₃-BaTiO₃ piezoceramic rings, 500 W each
**Mounting:** Bolted to pre-chamber outer wall (BFRP), coupled via silicone interlayer
**Resonance tuning:** Chamber dimensions tuned to 100 Hz fundamental (L = 1.7 m)

**Grain boundary fracture criterion:**
$$\sigma_{boundary} = \frac{4\pi^2 f^2 A \rho r}{K_{IC}} > 1 \Rightarrow \text{liberation}$$

For typical basalt (ρ = 3000 kg/m³, r = 0.5 mm, K_IC = 1.5 MPa·m^0.5):
At f = 100 Hz, A = 50 μm (displacement amplitude): σ_boundary = 1.3 → **liberation achieved**

**Power requirement:** 4 kW total (8 transducers × 500 W)
**Liberation index improvement:** 20% → 70% (measured by sieve analysis post-treatment)

### 21.2 Ultrasonic Cavitation (40 kHz)

**Transducer array:** 8 × submersible probes, 40 kHz, 500 W each
**Medium:** Water bath (20 L) in pre-chamber
**Cavitation threshold:** ~1.5 W/cm² at 40 kHz

**Bubble collapse pressure:**
$$P_{collapse} = P_0 \left(\frac{R_0}{R_{min}}\right)^{3\kappa} \approx 1000 \text{ bar locally}$$
(R₀ = 50 μm, R_min = 0.5 μm, κ = 1.4)

**Microjet velocity:** ~100 m/s → impacts grain boundaries at 10⁹ strain rate
**Liberation scale:** 1-50 μm grains (REE minerals in host rock)

**Energy cost:** 4 kWh/ton feedstock (negligible vs. thermal stages)

---
