## 7. Moisture Pre-check & Pre-dry — Detailed Engineering

### 7.1 Capacitive Moisture Sensor — Dielectric Spectroscopy

**Principle:** Water has dielectric constant εᵣ ≈ 80 at RF frequencies. Dry solids: εᵣ = 2-10. The bulk dielectric constant of a particle bed scales linearly with volumetric moisture content (Lichtenecker-Rother mixing rule):

$$\log \varepsilon_{bulk} = (1-\phi) \log \varepsilon_{solid} + \phi \log \varepsilon_{water}$$

Where $\phi$ = volumetric water fraction.

**Sensor design:**
- Parallel-plate capacitor, 300×300 mm plates, 80 mm gap
- Fringing field penetrates 50 mm into particle bed on belt
- Measurement frequency: 100 MHz (minimizes ionic conduction effects)
- Excitation: 1 Vpp sine, phase-sensitive detection
- Sampling: 10 Hz continuous, averaged over 1 sec
- Temperature compensation: Integrated PT1000 (optical FBG) on sensor face

| Parameter | Specification |
|-----------|---------------|
| Measurement range | 0-50% moisture (wet basis) |
| Accuracy | ±1% absolute (0-30%), ±2% (30-50%) |
| Response time | <100 ms (single particle transit) |
| Belt speed compensation | Algorithmic (encoder sync) |
| Calibration | Per-category (A/B/C/D) — 4 stored curves |
| Drift | <0.1%/month (auto-zero at empty belt) |
| Housing | BFRP, PEN window, PMMA POF signal |

**Signal processing:**
```
Raw capacitance → ε_bulk → φ_volumetric → moisture_wet_basis
moisture_wet_basis = φ_volumetric * ρ_water / ρ_bulk * 100%
```
Bulk density ρ_bulk measured by gamma attenuation (separate sensor) or assumed per category.

### 7.2 Pre-dry Chamber — Atmospheric IR Drying

When moisture >25%, feed diverts to the pre-dry chamber — a BFRP-lined tunnel with SiC IR emitter panels (same as Stage 1 glow bars) operating at 80°C in nitrogen atmosphere.

```
PRE-DRY CHAMBER:

[INFEED from moisture gate] → [BFRP TUNNEL, 3m × 0.8m × 0.6m]
        |
        |  Zone 1: 60°C (pre-heat, 3 min)
        |  [SiC glow bars, 15 kW, PMMA POF control]
        |
        |  Zone 2: 80°C (primary dry, 10 min)
        |  [SiC glow bars, 25 kW, FBG temp feedback]
        |  N2 flow: 50 m³/hr (counter-current)
        |
        |  Zone 3: 60°C (cool-down, 2 min)
        |  [No heat, N2 purge]
        |
        v
[EXIT moisture sensor] → [Drum feed gate IF <15%]

SPECIFICATIONS:
- Throughput: 200 kg/hr (peak surge capacity)
- Energy: 1.2 kWh/kg water removed
- N2 consumption: 0.25 kg/kg water (closed loop with Stage 1 condenser)
- Residence time: 15 min (3+10+2)
- Exit moisture target: <15% (verified by duplicate sensor)
- Safety: O2 <5% (N2 inerting), LEL monitor (organic vapor)
```

### 7.3 Moisture-Power Coupling Analysis

**Why 25% threshold?** At 500 kg/hr feed rate:
- 10% moisture = 50 kg/hr H₂O = 31 kW latent (Zone 1-2 capacity: 100 kW total)
- 25% moisture = 125 kg/hr H₂O = 78 kW latent (exceeds Zone 1-2)
- 40% moisture = 200 kg/hr H₂O = 125 kW latent (cascades to Zone 3)

**Pre-dry energy economics:**
- Pre-dry at 80°C: 1.2 kWh/kg water (atmospheric, large ΔT, efficient)
- In-drum at 100°C: 1.8 kWh/kg water (pressurized, competing with induction)
- **Savings: 0.6 kWh/kg water = 33% energy reduction**

At 500 ton/yr throughput, 10% avg moisture = 50 ton/yr water = 30,000 kWh/yr saved = $2,400/yr (at $0.08/kWh). At 25% moisture surges, savings compound.

### 7.4 Control Integration

**Moisture gate state machine:**
```
STATE: MEASURING
  → moisture < 15%: STATE: PASS → drum feed gate
  → moisture 15-25%: STATE: PASS (with warning log)
  → moisture > 25%: STATE: DIVERT → pre-dry chamber

STATE: DIVERT
  → pre-dry chamber loads batch (max 50 kg)
  → STATE: DRYING (15 min timer + exit sensor)
  → exit moisture < 15%: STATE: RELEASE → drum feed gate
  → exit moisture ≥ 15%: EXTEND 5 min, re-check (max 3 cycles)
  → 3 cycles failed: ALARM, manual intervention

STATE: BYPASS (maintenance mode)
  → All material direct to drum (operator override)
  → Logged, requires supervisor PIN
```

**Data logging:** Every measurement (10 Hz) logged to historian (PMMA POF to control room). Moisture histogram per batch, per category, per shift — feeds predictive maintenance for upstream suppliers.


---
