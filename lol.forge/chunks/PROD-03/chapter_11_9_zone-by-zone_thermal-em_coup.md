## 9. Zone-by-Zone Thermal-EM Coupling Analysis

### 9.1 Coupled Physics Model

The thermal-electromagnetic problem in each zone is governed by:

**Maxwell's Equations (frequency domain):**
$$\nabla \times \mathbf{E} = -j\omega \mu \mathbf{H}$$
$$\nabla \times \mathbf{H} = \mathbf{J} + j\omega \varepsilon \mathbf{E}$$
$$\mathbf{J} = \sigma \mathbf{E} \quad \text{(in conductors)}$$

**Heat Equation (with EM source):**
$$\rho c_p \frac{\partial T}{\partial t} = \nabla \cdot (k \nabla T) + Q_{EM}$$
$$Q_{EM} = \frac{1}{2} \sigma |\mathbf{E}|^2 = \frac{1}{2} \frac{|\mathbf{J}|^2}{\sigma} \quad \text{(Joule heating)}$$

**Coupling:** $\sigma(T)$, $\mu(T)$, $k(T)$, $c_p(T)$ — all temperature dependent.

**Solution approach:** Staggered iteration at each time step:
1. Solve EM at current T → get $Q_{EM}(r,z)$
2. Solve thermal with $Q_{EM}$ → get new $T(r,z)$
3. Update material properties → repeat until convergence

### 9.2 Zone 1-2 (100 kHz, Stages 1-2) — Indirect Heating

**Charge state:** Organics, polymers, water — all insulators ($\sigma \approx 0$)
**Heating mechanism:** Air/N₂ convection from coil surface + radiation

**EM analysis:**
- Coil current: 50 A RMS at 100 kHz
- Coil surface B-field: 0.05 T
- No eddy currents in charge (insulators)
- Power to charge: Convection ($h \approx 50$ W/m²K) + Radiation ($\varepsilon \sigma T^4$)

**Thermal profile:**
- Coil temperature: 120°C (water cooled)
- Gas temperature: 80→450°C (ramp)
- Drum inner surface: 80→450°C (FBG measured)
- Heat flux to charge: ~10 kW/m² (convection dominant)

**Coupling efficiency:** N/A (no direct EM coupling). Induction heats coil → coil heats gas → gas heats charge.

### 9.3 Zone 3 (50 kHz, Stage 3) — Zn/Pb Onset

**Charge state:** Zn particles melting (420°C), Pb particles (327°C), organics pyrolyzing
**Frequency:** 50 kHz — penetration depth δ_Zn = 0.35 mm, δ_Pb = 0.65 mm

**EM analysis:**
- Coil current: 800 A RMS
- B_gap: 0.1 T
- Zn particles (5-10 mm): d/δ = 14-28 → surface heating only
- But Zn melts → forms pools → coalesces → larger effective d

**Power density in Zn particle (10 mm sphere):**
$$P = \frac{\pi^2 B^2 d^3 f^2}{20 \rho} = \frac{\pi^2 \times 0.1^2 \times 0.01^3 \times 50000^2}{20 \times 6 \times 10^{-8}} = 2.0 \text{ kW per particle}$$

**Thermal coupling:**
- Zn melting: 420°C, latent heat 112 kJ/kg
- Pyrolysis gases: Endothermic (absorb heat)
- Drum wall: 450→660°C

### 9.4 Zone 4-5 (10 kHz, Stages 4-5) — Aluminum Optimal

**Charge state:** Al melting (660°C), Zn/Pb/Sn cleared, Cu/Fe solid
**Frequency:** 10 kHz — δ_Al = 0.9 mm (optimal for 1-5 mm pieces)

**EM analysis:**
- Coil current: 1600 A RMS
- B_gap: 0.2 T
- Al particles (2-20 mm): d/δ = 2-22 → good coupling
- Cu particles (5-20 mm): d/δ = 7-28 → shielded (skin effect)
- Fe particles: d/δ > 10 → shielded, plus Fe solid

**Power density in Al sphere (10 mm):**
$$P = \frac{\pi^2 \times 0.2^2 \times 0.01^3 \times 10000^2}{20 \times 4.5 \times 10^{-8}} = 439 \text{ W per particle}$$

**Selectivity verification:**
- Al power: 439 W/particle
- Cu power (same B): 439 × (4.5/2.5) × (10/5)² = 1,580 W — BUT Cu shielded (δ=0.7mm, d=10mm → only surface 0.7mm active)
- Effective Cu volume: surface shell 0.7mm thick → 20% of volume → 316 W effective
- **Al heats 1.4× faster than Cu at same B-field**

**Thermal runaway protection:** As Al melts, ρ increases → heating decreases (self-limiting). PID reduces B-field to maintain T.

### 9.5 Zone 6 (5 kHz, Stage 6) — Copper Deep Penetration

**Charge state:** Cu melting (1085°C), Au/Ag co-melting, Fe solid
**Frequency:** 5 kHz — δ_Cu = 1.0 mm (good for wire/traces)

**EM analysis:**
- Coil current: 2000 A RMS
- B_gap: 0.25 T
- Cu wire (2 mm): d/δ = 2 → full penetration
- Cu bulk (20 mm): d/δ = 20 → surface only, but large mass

**Power to Cu charge:**
$$P_{Cu} \approx 150 \text{ kW (Zone 6)} + 100 \text{ kW (Zone 5 overlap)}$$

**Thermal challenge:** Cu thermal mass = 200 kg × 385 J/kg·K × 1000°C = 77 MJ
- At 250 kW: 300 seconds = 5 min to heat (matches dwell)

### 9.6 Zone 7 (2 kHz, Stage 7) — Ferromagnetic Coupling

**Charge state:** Fe melting (1538°C), Ni/Co, REE magnets
**Frequency:** 2 kHz — δ_Fe (ferro) = 0.3 mm (μ_r=100), δ_Fe (paramag) = 3.5 mm

**Unique physics — Hysteresis heating below Curie (770°C):**
$$P_{hyst} = \eta_h f B^{1.6} V \approx 50 \times P_{eddy} \quad \text{at 2 kHz}$$

**Two regimes:**
1. **< 770°C:** Ferromagnetic → hysteresis + eddy = 50× eddy alone
2. **> 770°C:** Paramagnetic → eddy only at δ=3.5 mm

**Current profile:**
- 1200→1500°C ramp: B increases to maintain power as hysteresis vanishes
- At 1500°C: I = 2400 A, B = 0.3 T, eddy only

**Power delivery:**
- Below Curie: 150 kW sufficient (hysteresis boost)
- Above Curie: 350 kW needed (eddy only, larger δ)

### 9.7 Zone 8 (1 kHz, Stage 8) — Mineral Conduction

**Charge state:** Silica slag, ZrO₂, REE oxides, carbon residue — all insulators
**Frequency:** 1 kHz — no inductive coupling to oxides

**Heating mechanism:** Conduction from drum wall + radiation + carbon resistive heating

**Drum wall at 2200°C:**
- Radiative flux: $q = \varepsilon \sigma T^4 = 0.8 \times 5.67 \times 10^{-8} \times 2473^4 = 1.6 \text{ MW/m}^2$
- Convective (Ar at 3 bar): $h \approx 200$ W/m²K, $q = h \Delta T = 200 \times 2000 = 0.4 \text{ MW/m}^2$
- Total to charge: ~2 MW/m²

**Carbon residue heating:**
- Resistivity at 2000°C: ~0.01 Ω·m (conductive)
- Inductive heating at 1 kHz: δ = 2.2 mm → couples to carbon particles
- Provides internal heat source in slag

**Inverter role:** Maintains drum wall at 2200°C via Zone 8 coil (indirect — heats drum, drum heats charge)

---


---
