## 15. System-Level Integration and Testing

### 15.1 Integrated Thermal-Electromagnetic Simulation

**Coupled Physics Loop (COMSOL Multiphysics):**
```
1. Induction (freq domain) → J(r) → Q_gen(r) = 0.5·σ·|J|²
2. Heat transfer (transient) → T(r,t) → σ(T), μ(T)
3. Structural (static) → ε(r,t) → FBG shift
4. Feed to controller → P_set(f) → back to step 1
```

**Simulation Results (Full Batch, 50 kg mixed e-waste):**
- Total simulation time: 4 hours (adaptive time stepping)
- Peak memory: 32 GB
- Key outputs: Zone power vs time, drum temperature field, FBG readings, port flow predictions

**Validation Metrics (vs FA-01 prototype):**
| Metric | Simulation | Prototype | Error |
|---|---|---|---|
| Stage 5 Al recovery | 96.2% | 95.8% | 0.4% |
| Stage 6 Cu recovery | 97.1% | 96.5% | 0.6% |
| Stage 7 Fe recovery | 94.8% | 95.2% | 0.4% |
| Energy/ton | 1085 kWh | 1120 kWh | 3.1% |
| Max drum stress | 1.61 GPa | 1.58 GPa | 1.9% |

### 15.2 Factory Acceptance Test (FAT) Protocol

**FAT-01: Electrical Test (Cold)**
- [ ] Insulation resistance: >1 GΩ (500V DC, coil to housing)
- [ ] Coil resistance: 4-wire Kelvin, ±1% of design
- [ ] Resonant frequency: ±1% of design (no load)
- [ ] GaN I-V curves: All devices within spec
- [ ] Gate drive: Dead time 20±2 ns, isolation >5 kV

**FAT-02: Water Cooling Test**
- [ ] Flow rate: 15±0.5 L/min per zone
- [ ] Pressure drop: 3±0.3 bar
- [ ] Leak test: 10 bar He, 30 min, zero loss
- [ ] Thermal: 50 kW dummy load, ΔT = 15±1°C

**FAT-03: Optical System Test**
- [ ] FBG interrogator: All 48 channels detected
- [ ] Calibration: Ice bath (0°C) and oil bath (200°C) — ±1°C
- [ ] Strain: Known weight on drum — ±5 με
- [ ] Bandwidth: 1 kHz sine sweep — flat response

**FAT-04: Integrated Hot Test (Reduced Power)**
- [ ] 8-zone ramp to 500°C at 5°C/min
- [ ] Temperature uniformity: ±8°C across drum (FBG)
- [ ] Resonance tracking: All zones lock within 10 s
- [ ] Power accuracy: ±3% of setpoint
- [ ] No fault trips

**FAT-05: Full Power Batch Test**
- [ ] 50 kg standard feedstock (Profile A)
- [ ] Complete cascade: Stage 0-8 + cool
- [ ] Recovery: >95% per element class
- [ ] Energy: <1200 kWh/ton
- [ ] Gas emissions: < limits (PM, SO₂, HCl, dioxins)

---
