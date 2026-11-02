# PROD-03 Inductive Heating Zone Design — Combined Introduction

**Author:** Aegis-Forge Synthesis  
**Generated:** 2026-11-02 10:40:00 UTC

---

### Constraint (The Lock)

The induction system is forced by **Maxwell's Equations in a Rotating Ceramic Drum** — eddy current heating requires conductive material, hysteresis heating requires ferromagnetic material, and neither works on ceramics. The constraint is irreducible: you cannot inductively heat ZrB₂-SiC (the drum). Therefore, the coils *must* couple only to the feedstock inside, through a 15mm air gap + 3mm alumina insulation + 35mm ZrB₂-SiC drum wall. The frequency, power, and zone geometry are not design choices — they are the unique solution to coupling energy into a rotating, stratified, multi-material charge through a ceramic wall.

This constraint manifests as **frequency as material selector**: at Stage 5 (660°C), aluminum must melt while copper (1085°C) and iron (1538°C) remain solid. But copper couples to induction 15× better than aluminum at same frequency. The key is **low frequency (1-2 kHz) penetrates deep for large ferrous pieces; high frequency (50-100 kHz) couples to surface for thin copper traces and aluminum**. The 8-zone frequency ladder (100 kHz → 1 kHz) is the unique mapping from material conductivity/permeability to skin depth.

The skin depth equation δ = √(2ρ/ωμ) is the design equation — no free parameters. The coil-to-drum gap (15mm) is not a tolerance; it is the minimum clearance for thermal expansion + rotor dynamics + safety margin. The copper tube conductor (the ONLY copper in the machine) is justified as a winding — not a structural GIC-coupling element — isolated from the drum by the full dielectric stack. The GaN resonant inverters are not a technology choice; silicon cannot switch at 500kW/zone with required efficiency. The FBG optical sensors are not a preference; metallic thermocouples would couple to induction fields and act as GIC antennas.

---

### Necessity (The Key)

The lock is the **selective heating gap** — at Stage 5 (660°C), aluminum must melt while copper (1085°C) and iron (1538°C) remain solid. But copper couples to induction 15× better than aluminum at same frequency. Iron couples 25-50× better (ferromagnetic below Curie). The key is **frequency as material selector**: low frequency (1-2 kHz) penetrates deep for large ferrous pieces; high frequency (50-100 kHz) couples to surface for thin copper traces and aluminum. The 8-zone frequency ladder (100 kHz → 1 kHz) is the unique mapping from material conductivity/permeability to penetration depth.

The necessity is proven by the **Indium First Strategy** dependency: Stage 4 at 50 kHz must heat Zn/Pb without melting Al (660°C). At 50 kHz, skin depth in Al is 0.54mm — insufficient for bulk Al pieces, so Al remains solid while Zn (δ=0.38mm) and Pb (δ=0.67mm) melt selectively. Stage 5 at 10 kHz gives Al δ=2.1mm (optimal) while Cu at 10 kHz has δ=1.3mm but is solid at 700°C. Stage 6 at 5 kHz gives Cu δ=4mm (penetrates wire). Stage 7 at 2 kHz exploits Fe ferromagnetism below 770°C for 2-10× power density enhancement.

Without this frequency ladder, the cascade cannot achieve selective melting. The induction system *is* the frequency selector — the physics that makes the cascade possible.

---

### Commitment (The Turn)

We commit:

1. **Copper tube only conductor** — the only copper in the machine, water-cooled, isolated by 15mm air gap + 3mm alumina + 35mm ZrB₂-SiC. No copper in structural roles.

2. **Alumina ceramic insulation** — no polymer insulation survives 2200°C. Al₂O₃ sleeve over copper tube, CTE-matched for thermal cycling.

3. **GaN resonant inverters** — silicon fails at 500kW/zone. Zero-voltage switching at resonance. Optical gate drive (no copper control wires).

4. **FBG optical sensors** — no metallic thermocouples in process chamber. 48 sensors, 1 kHz, ±1°C, fully dielectric.

5. **Independent zone control** — each 100mm zone PID-controlled to ±5°C. Resonance tracking ±2% auto-tune.

The induction system does not 'heat.' The induction system *witnesses material conductivity into melt*.

These commitments are non-negotiable because they derive from the constraint. Violating any breaks the physics: copper structure couples to GIC; polymer insulation burns; silicon inverters fail; thermocouples corrupt measurement; coupled zones destroy thermal zoning.

---

### The Empirical Lock

The lock is the **coil-to-drum coupling problem** — 15mm gap, rotating drum, 8 zones, 500kW total, ceramic wall. How to deliver precise energy to each material layer without heating the drum? The key is the **resonant inverter + FBG feedback loop**: each zone's inverter adjusts frequency in real-time to maintain resonance as feedstock composition changes. The coil current *is* the measurement of coupling efficiency. The key has no adjustable teeth — resonance is a physical lock, not a control parameter.

The lock deepens at the **material selectivity problem**: mixed feedstock contains Al, Cu, Fe, Zn, Pb simultaneously. How to heat only the target material at each stage? The key is the **frequency ladder as material filter** — each zone's frequency selects for the target material's skin depth. The physics of skin depth δ = √(2ρ/ωμ) has no free parameters. The lock is solved by physics, not control.

The lock at the **GIC immunity problem**: 8 GaN inverters switching 1-100 kHz, 800V DC bus, 500kW total. Any conductive loop is a GIC antenna. The key is **all-dielectric control**: PMMA optical fiber for FBG, optical gate drive for GaN, BFRP frame on ZrO₂ isolation pads. Zero conductive paths to earth ground. The DC ground monitor detects >10A DC and isolates.

---

### The Mathematical Key

The key is the **zone as resonant cell** — each 100mm zone is a tuned LC circuit:

| Zone | Stages | Freq | Target Material | Penetration | Power |
|---|---|---|---|---|---|
| 1-2 | 1-2 | 100 kHz | Organics (indirect) | Air/N₂ heating | 0-50 kW |
| 3 | 3 | 50 kHz | Zn, Pb | 2-3 mm | 50-80 kW |
| 4-5 | 4-5 | 10 kHz | Al | 4-5 mm | 80-150 kW |
| 6 | 6 | 5 kHz | Cu | 8-10 mm | 100-200 kW |
| 7 | 7 | 2 kHz | Fe/Steel | 15+ mm | 150-350 kW |
| 8 | 8 | 1 kHz | Minerals | Conduction only | 200-500 kW |

The frequency ladder is the periodic table's conductivity map. The key turns when Zone 5 at 10 kHz melts Al but not Cu — the skin depth in Cu at 10 kHz / 700°C is 2mm, insufficient for bulk Cu pieces.

The **LLC Resonant Converter Key**: Series-resonant topology with GaN switches. Resonant frequency f_r = 1/(2π√(L_r C_r)). Quality factor Q = Z₀/R_ac. Gain M(f_n) = 1/√((1-f_n²)² + (f_n/Q)²(1-f_n²/f_m,n²)²). Operating at f_n ≈ 1 (ZVS). Frequency tracking ±2% maintains resonance. The key has no adjustable teeth — resonance is a physical lock.

The **FBG Interrogation Key**: Wavelength-encoded temperature. Δλ/λ₀ = S_T ΔT + S_ε Δε. Dual-grating decoupling (bare vs polyimide coated) separates temperature from strain. Autoencoder anomaly detection on 48-channel strain field. The key turns when the forge detects its own malfunction before the operator does.

---

### The Turn (Both Directions)

**Key → Lock:**
Input: Feedstock conductivity map → 8-zone frequency assignment. Output: Selective melting at each stage. Validation: Only target material liquefies per stage.

**Lock → Key:**
Input: Historical induction furnaces (fixed frequency, mixed charge). Output: Verified that single-frequency furnaces *cannot* selectively melt in mixed charge — the cascade's frequency agility is necessary. The turn completes when Zone 5 melts Al slugs while Zone 6 Cu remains solid. The frequency *is* the selector.

The turn is not a metaphor — it is the moment the V/I phase locks at 0° and the Al slug forms at Port 5. The resonance *is* the key turning in the lock. The slug *is* the key turning in the lock.

---

### Mirror (Self-Reflection)

The induction system's mirror is the **coil current waveform** — every harmonic, every phase shift recorded. The coils 'see' the feedstock's changing conductivity as temperature rises. At Stage 4, Zn appears as a sudden current drop (coupling onset); at Stage 7, Fe appears as a current surge (ferromagnetic coupling). The 8-zone current logs are the induction system's self-portrait. The operator participates by witnessing the resonance lock — the inverter 'clicking' into resonance is the system measuring its own coupling.

The mirror deepens with the **FBG temperature field**: 48 channels recording the drum's thermal response to induction power. The spatial-temporal temperature pattern IS the induction system's self-measurement. The autoencoder watches the 48-channel pattern — when the pattern deviates from the 500-batch manifold, the induction system *detects its own malfunction*. The mirror is active self-surveillance.

The mirror reflects the **resonance tracking log**: frequency vs. time for each zone. The inverter's PLL tracks resonance as feedstock composition changes. The phase error signal is the mirror's edge — where coupling efficiency becomes measurable. When phase error exceeds 5°, the system has lost its lock.

The mirror is the **energy accounting**: integrated power per zone per stage = kWh per kg of target element. The difference between theoretical minimum (thermodynamics) and actual is the induction system's measurement uncertainty. When actual = theoretical (within 10%), the mirror is perfectly reflective.

---

### Participation (Witness)

The operator participates by **tuning the resonance** — not as knob-turning but as witnessing the inverter find its lock. When Zone 5 hits 10 kHz and the current stabilizes, the system has 'found' the aluminum. The protocol:
1. Set target frequency for stage
2. Ramp power — watch current vs. voltage phase
3. Resonance lock = phase → 0°
4. PID maintains ±5°C via FBG
5. Log power vs. time = energy per kg

The resonance lock is the recursive self-measurement. The induction system measures its own coupling through the operator's witness of the phase angle.

The participation extends to **feedstock-adaptive tuning**: the operator (via MPC) adjusts frequency setpoints based on XRF assay. High Cu content → Zone 6 frequency shifts lower for deeper penetration. High Fe content → Zone 7 frequency optimized for ferromagnetic coupling. The frequency profile *is* the operator's intent made electromagnetic.

The participation includes **inverter health monitoring**: after each batch, the operator reviews GaN junction temperatures, switching losses, resonant capacitor ESR drift. The inverter *is* the operator's intent made solid-state. The system gets more efficient each batch because the operator participates in its learning.

The ultimate participation: **Phoenix Protocol returns**. Retired Aegis-Forge coils (copper tube, alumina, BFRP housing, GaN inverters) re-enter as Category D feedstock. The operator feeds the forge its own past induction system. The induction system witnesses its own history into new coils. The recursion closes.

---

### Protocol (Recursive)

```
MIRROR:     What material conductivity does this zone's frequency select?
PARTICIPATE: How does the operator witness resonance lock into melt?
PROTOCOL:
  1. Set zone frequency for target material
  2. Ramp power — monitor V/I phase angle
  3. Lock at resonance (phase ~0°)
  4. PID holds T via FBG feedback
  5. Log energy delivered per slug kg
```

The protocol terminates when all 8 zones complete their stages. The energy log is the fixed point.

The protocol is not a checklist — it is the recursion itself. Each batch deepens the mirror. The elemental slug is the fixed point.