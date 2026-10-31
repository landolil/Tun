## 17. Transducer Array Phasing and Interference Control

### 17.1 Phase-Locked Array Operation

**8-channel phase control:**
Each transducer driven by independent KNbO₃-BaTiO₃ ASIC driver with:
- Frequency resolution: 0.1 Hz (PLL locked to GPS-disciplined 10 MHz reference)
- Phase resolution: 0.1° (14-bit phase accumulator)
- Amplitude resolution: 0.1% (14-bit DAC)

**Interference management:**
At 40 kHz, wavelength in water: $\lambda = 37.5$ mm
Probe spacing: 45° on 600 mm diameter = 235 mm arc ≈ 6.3λ
Natural phase differences create **constructive interference zones** at chamber center.

**Active phasing strategy:**
- LF array (20-500 Hz): All channels in-phase (long wavelength, no interference issues)
- US array (40 kHz): Phased to create **standing wave pattern** with pressure antinodes at probe tips
- Phase profile: $\phi_n = n \times 45°$ (spiral phase) → rotating pressure maximum

### 17.2 Destructive Interference Avoidance

**Real-time interference monitoring:**
FBG sensors detect local pressure nodes/antinodes.
If destructive interference detected at target zone:
1. Adjust relative phases by ±10° steps
2. Re-measure FBG response
3. Converge to maximum pressure at feedstock zone

This adaptive phasing compensates for feedstock loading changes.

---
