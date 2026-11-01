## 8. Safety Systems — Jam Detection, Fire Suppression, Explosion Venting

### 8.1 Jam Detection

- **Torque monitoring:** Drive motor current sensor (optical, PMMA POF) — >90% rated torque for >5s = jam
- **Vibration monitoring:** FBG accelerometers on housing — >15 mm/s RMS = jam
- **Auto-reverse:** 30s reverse at 50% torque, then forward. 3 cycles max before E-stop.
- **Clearing protocol:** Optical E-stop → hydraulic pusher (PEEK CF40 ram) forces jammed material through.

### 8.2 Hydraulic Jam Clearer

- **Actuator:** PEEK CF40 ram, 100 mm bore × 300 mm stroke, 50 bar
- **Fluid:** PEX-a hydraulic line, biodegradable hydraulic fluid (vegetable-based)
- **Force:** 39 kN at 50 bar (sufficient to clear any jam at 15 kN·m torque)
- **Cycle time:** 10 s extend, 5 s retract
- **Safety:** Mechanical lockout when E-stop engaged

### 8.2 Fire Suppression

- **Detection:** IR flame sensors (InGaAs, PMMA POF) + FBG temperature >150°C
- **Agent:** Novec 1230 (clean agent, zero ODP, zero GWP) — 50 kg stored in BFRP tank
- **Delivery:** 4 nozzles (ZrO₂ ceramic tips) at rotor ends and housing midpoints
- **Activation:** <200 ms from detection, discharge in 10s
- **Post-suppression:** N₂ purge 5 min, then manual inspection required.

### 8.3 Explosion Venting (Battery Thermal Runaway Mitigation)

- **Vent panels:** 4 × BFRP rupture discs (burst pressure 0.5 bar) on housing top
- **Vent area:** 0.5 m² total (NFPA 68 compliant for dust/gas explosion)
- **Ducting:** BFRP duct to gas capture system (PROD-07) — flame arrestor at inlet
- **Suppression:** Novec 1230 pre-discharge if vent activates (pressure rise detection)

---
