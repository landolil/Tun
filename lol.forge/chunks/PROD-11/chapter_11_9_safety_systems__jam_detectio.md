## 9. Safety Systems — Jam Detection, Fire Suppression, Explosion Venting

### 9.1 Hazard Analysis (HAZOP Summary)

| Node | Deviation | Cause | Consequence | Safeguard |
|------|-----------|-------|-------------|-----------|
| Shredder rotor | Jam (stall) | Oversize object, blade failure, bearing seizure | Motor overload, rotor damage, projectile | Torque monitor, shear pin, E-stop |
| Shredder chamber | Fire | Li-ion battery, hot work, friction spark | Toxic smoke, structural damage | N2 inerting, IR detection, suppression |
| Shredder chamber | Dust explosion | Organic dust (plastic, wood) + air + ignition | Pressure rupture, flame propagation | N2 inerting (<5% O2), vent panels |
| Magnet belt | Ferrous carryover | Magnet degradation, belt misalignment | Shredder damage, contamination | Field monitor, auto-divert |
| Moisture gate | False low reading | Sensor fouling, calibration drift | Wet feed to drum, steam explosion | Dual sensor, cross-check, auto-cal |
| Pre-dry chamber | Over-temperature | Heater failure, N2 flow loss | Material ignition, chamber damage | Dual FBG, independent E-stop |

### 9.2 Jam Detection & Rotor Protection

**Primary: Torque monitoring (ultrasonic motor current signature)**
- Motor current monitored at 10 kHz via PMMA POF link
- Baseline: 45 A RMS (steady state, 500 kg/hr)
- Jam signature: Current spike >120 A for >200 ms
- Response: Frequency cut → motor torque drops to zero in 5 ms (ultrasonic motor inherent)
- Mechanical shear pin: BFRP composite pin (designed fracture at 18,000 Nm)
- Shear pin fracture → rotor freewheels → kinetic energy dissipates in 3 sec

**Secondary: Vibration-based jam detection (FBG)**
- 8 FBG accelerometers on rotor body (axial + radial)
- Jam signature: 1× RPM amplitude >10 mm/s + harmonic series
- Response time: <50 ms (FPGA processing)
- Independent of motor current — detects mechanical binding before electrical overload

**Tertiary: Acoustic emission (AE) — PZT-free**
- KNbO3-BaTiO3 AE sensors on chamber wall (same transducers as Stage 0)
- Detects impact transients >80 dB AE (blade fracture, foreign object)
- Locates source by TDOA (time difference of arrival)
- Triggers E-stop before catastrophic failure

### 9.3 Fire Suppression — Nitrogen Inerting + Water Mist

**Why not conventional suppression?**
- Water on hot metal (Stage 4-8 temps) → steam explosion
- CO2 on Mg/Al fines → thermite reaction
- Dry chemical → contaminates dielectric citadel

**Solution: N2 inerting (primary) + fine water mist (secondary, only if N2 fails)**

**N2 Inerting System:**
- Shredder chamber, acoustic pre-chamber, pre-dry chamber: all N2 atmosphere
- O2 target: <5% (below limiting oxygen concentration for all feedstock organics)
- N2 supply: 500 L liquid N2 dewar (7-day autonomy) + PSA generator (backup)
- Flow: 50 m³/hr continuous purge + 200 m³/hr on fire detection
- O2 monitoring: Zirconia probe (PMMA POF signal) at 3 locations
- Response time: <10 sec to <5% O2

**Water Mist (backup only):**
- Nozzles: 8× ZrO2 ceramic, 50 µm droplet, 100 bar
- Activation: IR detector (3.4 µm flame band) + temperature >200°C
- Flow: 2 L/min per nozzle (16 L/min total)
- Duration: 60 sec (then auto-shutoff to prevent water accumulation)
- Drain: BFRP sump → N2-purged holding tank

### 9.4 Explosion Venting — Passive Pressure Relief

**Dust explosion risk:** Organic dust (plastic, wood, paper) Kst = 150-200 bar·m/s. At 500 kg/hr, dust concentration in chamber can exceed MEC (Minimum Explosible Concentration) during upset.

**Vent design (per NFPA 68):**
- Chamber volume: 2.4 m³ (rotor swept volume + headspace)
- Vent area: 0.12 m² (two 0.06 m² panels, opposite sides)
- Panel material: PEN (Polyethylene Naphthalate) — non-conductive, bursts at 0.5 bar
- Discharge: Directed to BFRP vent duct → atmospheric flare (burns off organics)
- Flameless venting: ZrO2 ceramic mesh in duct (quenches flame, <500°C exit)

**Vent calculation:**
$$A_v = \frac{V^{2/3} \cdot K_{st}^{1/2}}{P_{red}^{1/2} \cdot C}$$
Where V=2.4 m³, Kst=200, Pred=0.5 bar, C=0.5 → Av=0.11 m² (0.12 m² provided)

### 9.5 Emergency Stop Architecture — All-Dielectric

**E-stop chain (SIL-3, Cat 4 per ISO 13849):**
```
[OPERATOR E-STOP] (mechanical, 2 NC contacts)
        |
        v
[SAFETY PLC] (KNbO3-BaTiO3 logic, no semiconductors in safety path)
        |
        +---> [ULTRASONIC MOTOR] → Frequency cut (5 ms)
        +---> [MAGNET BELT] → Mechanical brake (spring-applied)
        +---> [N2 INERTING] → Full flow valves (pneumatic, spring-open)
        +---> [WATER MIST] → Deluge valves (pneumatic, spring-open)
        +---> [VENT PANELS] → Pyrotechnic release (backup, non-electric)
        +---> [DRUM FEED GATE] → Pneumatic close (spring-close)
```

**No copper wires in safety circuit.** All signals via PMMA POF (light = safe, dark = trip). Safety PLC is KNbO3-BaTiO3 piezoelectric logic array — zero semiconductors, immune to EMP/GIC.

### 9.6 Li-ion Battery Detection & Ejection

**Specific hazard:** Category A feedstock may contain undetected Li-ion cells. In shredder: mechanical crush → thermal runaway → 800°C jet flame + HF gas + projectile.

**Detection layer 1: X-ray transmission (at infeed hopper)**
- 160 kV microfocus source, linear detector array
- Resolution: 0.5 mm, detects cylindrical cells >10 mm
- Throughput: 500 kg/hr (matches feed rate)
- AI classification: 99.5% recall, 0.1% false positive

**Detection layer 2: Eddy current (post-magnet, pre-shredder)**
- Detects conductive non-ferrous (Al can, Cu cell tabs)
- Complementary to X-ray (catches pouch cells)

**Ejection system:**
- Detected battery → air jet (N2, 10 bar) diverts to blast container
- Blast container: ZrB2-SiC lined, 50 L, vented to flare
- Capacity: 20 cells/hr (far above expected <1/hr)
- Logged, tracked, sent to dedicated battery recycling


---
