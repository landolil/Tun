# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-10 — Induction Power Electronics

---

### The Empirical Lock

The lock this document addresses is the **fabrication fidelity gap** — the persistent failure of power electronics to simultaneously achieve: selective heating of mixed material charges, Carrington-event immunity (zero conductive paths to earth), SIL-3 safety at 500 kW, and operation in 2200°C EM fields with 0.1°C temperature resolution. For decades, each has been a separate compromise: high-power induction uses silicon IGBTs (limited to ~20 kHz, no selective heating), temperature measurement uses thermocouples (copper antennas for GIC), cooling uses copper pipes (conductive paths), safety uses relays (slow, mechanical). The lock is precise: any single power electronics system claiming to unify these must deliver 500 kW across 100 kHz → 1 kHz with >97% efficiency, sense temperature through 500 kW of magnetic field with 0.1°C resolution, survive Carrington-level dB/dt, and fit inside a BFRP pressure vessel — all without a single structural metal in the hot zone. The lock is the **all-dielectric power electronics at industrial scale**.

---

### The Mathematical Key

The key is the **frequency ladder + resonance tracking as single computational primitive**. The teeth are cut by the periodic table's conductivity-permeability map itself:

| Zone | Target Stage | Frequency | f (Hz) | Material Selector | Physics |
|------|--------------|-----------|--------|-------------------|---------|
| Z1 | Stage 1: Drying | 100 kHz | 100,000 | Indirect air heating | δ → ∞ for dielectrics |
| Z2 | Stage 2: Polymer | 100 kHz | 100,000 | Indirect air heating | δ → ∞ for polymers |
| Z3 | Stage 3: Pyrolysis | 50 kHz | 50,000 | Zn, Pb (onset) | δ(Zn) ≈ 8 mm |
| Z4 | Stage 4: Low-Temp | 10 kHz | 10,000 | Zn, Pb, Sn, In | δ(Al) ≈ 14 mm |
| Z5 | Stage 5: Aluminum | 10 kHz | 10,000 | Al (optimal) | δ(Al liq) ≈ 27 mm |
| Z6 | Stage 6: Copper | 5 kHz | 5,000 | Cu, PMs (deep) | δ(Cu) ≈ 33 mm |
| Z7 | Stage 7: Ferrous | 2 kHz | 2,000 | Fe, REE (ferro) | μ<sub>r</sub>→1, eddy only |
| Z8 | Stage 8: Mineral | 1 kHz | 1,000 | Silicates, oxides | Thermal conduction only |

The frequency ladder IS the periodic table's conductivity map. Skin depth δ = √(2ρ/ωμ) — the only equation needed. The Class E resonant inverter topology is invariant across the ladder; only the resonant tank (L<sub>r</sub>, C<sub>shunt</sub>) and switched capacitor bank change per zone.

The **Resonance Tracker Key**: the inner loop (100 Hz) measures the switch voltage zero-crossing phase error φ<sub>error</sub> = t<sub>V<sub>DS</sub>=0</sub> - t<sub>gate-on</sub> and adjusts varactor bias ΔV = K<sub>p,PLL</sub>φ<sub>error</sub> + K<sub>i,PLL</sub>∫φ<sub>error</sub>dt to maintain ZVS. The teeth of this key are the varactor array (binary-weighted, 6-bit, ±5% tuning range) and the switched capacitor bank (6-bit, 64 steps). The resonance tracker has no adjustable parameters beyond the PLL gains — the physics of Class E ZVS is deterministic.

The **All-Dielectric Sensing Key**: 384 FBG sensors in PMMA POF, WDM (8 λ) + TDM (6 spatial), 125 Hz/sensor update. The PMMA FBG sensitivity (0.15 nm/°C, 15× silica) enables 0.1°C resolution with a simple VCSEL interrogator. The PMMA POF has >10¹⁵ Ω·m resistivity — zero GIC coupling. The interrogator uses a tunable VCSEL (650-850 nm, 1 kHz sweep) with balanced InGaAs detection. The key has no moving parts, no copper, no EM susceptibility.

---

### The Turn (Both Directions)

**Key → Lock (Theory predicts fabrication):** Input: Feedstock elemental assay → Phase diagram → Thermal cascade profile → Frequency ladder. Output: 8 inverter modules, each tuned to its zone's target material conductivity. Validation: At 10 kHz, aluminum heats 15× faster than zinc. At 2 kHz, iron heats 50× faster than aluminum. At 100 kHz, polymers do not heat. The frequency selector *predicts* the separation. The resonance tracker *predicts* ZVS maintenance across thermal transients. The FBG network *predicts* 0.1°C measurement through 500 kW field. The theory *is* the fabrication recipe.

**Lock → Key (History validates theory):** Input: Historical induction (Coreless furnace 1900s, Channel furnace 1920s, Coreless high-frequency 1960s, Silicon IGBT 1990s, GaN 2010s). Output: Verified that each generation is a *subset* of the frequency ladder + resonance tracking primitive. The coreless furnace is fixed-frequency (1-10 kHz). The channel furnace is line-frequency (50/60 Hz). The high-frequency furnace is 10-100 kHz fixed. The IGBT inverter is 20 kHz max. The GaN inverter is the first to span the full ladder with ZVS. The turn completes when the 8-zone forge produces 8 pure element slugs in a single batch — the frequency selector has witnessed the periodic table into sequence. The lock clicks open. The key turns. The slug *is* the key turning in the lock.

The turn is not a metaphor — it is the moment the resonance tracker locks onto the zero-crossing at 1 kHz while the drum is at 2200°C, the FBG sensors report 0.1°C resolution through 500 kW of magnetic field, and the GaN junctions run at 31°C with PEX-a water cooling. The all-dielectric architecture has been witnessed into existence. The forge *is* the key turning in the lock.
