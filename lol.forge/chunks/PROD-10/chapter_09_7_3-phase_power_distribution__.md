## 7. 3-Phase Power Distribution & GIC Hardening

### 7.1 Input Power Architecture

```
[480V 3-PHASE GRID] to [SURGE PROTECTION: GDT + MOV (dielectric)] 
                      to [EMC FILTER: Common-mode choke (nanocrystalline, no metal)]
                      to [ISOLATION TRANSFORMER: 480V to 480V, 5 kV isolation, electrostatic shield]
                      to [ACTIVE RECTIFIER: 3-phase Vienna PFC, GaN, 800V DC bus]
                      to [DC BUS: 800V, 2 mF film capacitors, pre-charge circuit]
                      to [8x RESONANT INVERTERS (Zone 1-8)]
```

### 7.2 GIC Immunity - The Carrington Requirement

A Carrington-class event (dB/dt = 5000 nT/s) induces geoelectric fields E = 10-20 V/km. For a 10 km grid connection:
- Induced voltage: 100-200 V common-mode on 3-phase lines
- Induced current: Up to 100 A DC-like component on transformer neutrals

**Aegis-Forge I Protection Strategy:**
1. **Isolation Transformer:** 5 kV isolation, electrostatic shield (non-conductive) breaks DC path
2. **Common-Mode Choke:** Nanocrystalline core (no metal windings - wait, choke needs windings)
   - **Correction:** Use **dielectric common-mode filter** - ferrite-free, capacitive/inductive with ceramic conductors
   - Actually: Standard CM choke with copper windings IS the antenna. Solution: **Optical isolation at rectifier input**
   - Active rectifier control via PMMA POF - no gate drive transformers with metal windings
3. **DC Bus Floating:** 800V DC bus completely floating - no ground reference
4. **Zone Inverters:** Each inverter optically isolated, no metallic path to DC bus control
5. **Frame Grounding:** BFRP frame on ZrO2 isolation pads (>10^12 ohm to earth)

**Result:** The only metallic conductors are the 3-phase input lines UPSTREAM of the isolation transformer. The transformer secondary, DC bus, inverters, coils, and all control wiring are **dielectric**. GIC current has no closed loop through the forge.

### 7.3 Harmonic Mitigation

Active rectifier (Vienna topology) achieves:
- THD < 3% at input current
- Power factor > 0.99
- No 5th/7th harmonics (12-pulse equivalent via interleaving)
- DC bus ripple < 1% at 500 kW

Inverter output harmonics (Class E resonant):
- Fundamental only at resonance (sine wave)
- Off-resonance: 3rd, 5th harmonics < 5% (filtered by tank Q)
- EMI: Conducted < CISPR 11 Class A, Radiated < 30 dBuV/m at 30 m

### 7.4 Power Distribution Specifications

| Parameter | Value |
|-----------|-------|
| Input Voltage | 480V +/- 10%, 3-phase, 60 Hz |
| Input Current (max) | 750 A per phase (500 kW / 0.99 PF / sqrt(3) / 480V) |
| Isolation Transformer | 750 kVA, 480V/480V, 5 kV isolation |
| Active Rectifier | 3-phase Vienna PFC, 8 GaN legs, 800V DC |
| DC Bus Capacitance | 2 mF (film, self-healing) |
| Pre-charge Time | 5 seconds (resistive, then contactor) |
| Bus Ripple (500 kW) | < 8V pp (1%) |
| Efficiency (grid to DC) | 98.5% |
| Efficiency (DC to coil) | 97% (inverter) x 95% (coil coupling) = 92% |
| Overall Efficiency | 90.5% (grid to feedstock coupling) |

---
