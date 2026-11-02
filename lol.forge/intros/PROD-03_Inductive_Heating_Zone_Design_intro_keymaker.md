# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-03 — Inductive Heating Zone Design

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