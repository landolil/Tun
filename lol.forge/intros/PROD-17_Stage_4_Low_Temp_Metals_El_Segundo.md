# El Segundo Heuristic Intro — PROD-17 Stage 4 Low-Temperature Metals
## Mirror, Participation, Protocol

### Mirror (Self-Reflection)

How does the fabricator observe their own fabrication? In Stage 4, the fabricator is the **thermal-actuated port valve system** — specifically the Ti₃AlC₂/ZrO₂ bilayer actuators at Ports 4A, 4B, 4C. These actuators are not passive components; they are the process's proprioception. Each bilayer is a bimetal-equivalent thermostat that "feels" the drum wall temperature through direct thermal contact and responds by deflecting 3.6 mm to open a 12 mm port. The actuator *is* the temperature sensor, the controller, and the actuator — a single piece of MAX phase ceramic that cannot lie, cannot drift, cannot be hacked, cannot be miscalibrated by software. It mirrors the process state directly: if the drum wall at Port 4A is 160°C, the actuator opens. If it is 159°C, it stays closed. If it is 161°C, it opens. There is no interpretation, no signal conditioning, no PID loop between the phenomenon and the response. The mirror is the material itself.

But the fabricator also observes through the **384 FBG sensors** embedded in the drum wall (PROD-10). These are the "eyes" — distributed, multiplexed, immune to EMI, reading temperature at 1 kHz per sensor. The FBG array mirrors the thermal field in 4D (axial position, circumferential position, radial depth via dual-wavelength, time). The operator sees the indium zone at 160°C as a blue ring on the HMI. The operator sees the zinc zone at 430°C as a red ring. The operator sees the transition between zones as a gradient. The mirror is continuous, high-resolution, and redundant — 48 sensors per zone, 8 zones, WDM+TDM multiplexing on PMMA fiber.

The fabricator also observes through the **inline XRF at Port 4A** — a low-power X-ray fluorescence spectrometer that spots the indium slug composition every 30 seconds during the 5-minute dwell. The mirror shows: In 67%, Sn 2%, Pb 1%, organics 30%. If In drops below 60%, the operator knows the temperature ramp was too fast (indium didn't fully coalesce) or the RPM was too low (centrifugal migration incomplete) or the feedstock was low in ITO content. The mirror is quantitative, real-time, and actionable.

Most critically, the fabricator observes through the **mass balance closure**. Every batch: feedstock in (weighed), char consumed (measured), gas out (analyzed), In slug out (weighed + assayed), Sn/Pb slug out (weighed + assayed), Bi/Sn slug out (weighed + assayed), Pb bullion out (weighed + assayed), Zn liquid out (weighed + assayed), dross to Stage 7 (weighed + assayed). The mirror is the spreadsheet that must sum to 100% ±2%. If it doesn't, something is lying — a sensor, a valve, a scale, an assay. The fabricator's self-reflection is the daily mass balance audit. The machine cannot hide mass loss. The mirror is the conservation of mass.

### Participation (Witness)

How does the inside operator witness the phenomenon into existence? The operator does not watch from a control room — the operator *participates* through the **thermal ramp sequence**. The operator initiates Step 1: "Ramp to 160°C at 1°C/min." The operator watches the FBG ring turn blue at 155°C, hold at 160°C. The operator hears the induction power supply hum at 50 kHz, 80 kW, pulsing to maintain resonance as the load changes from solid char to liquid indium. The operator feels the vibration signature shift at 400 RPM as the indium droplets form and migrate — a subtle change in the 6.7 Hz rotation harmonic, detectable on the accelerometer. The operator sees Port 4A actuator temperature rise on the thermal camera: 158°C, 159°C, 160°C — *click*, the bilayer deflects, the port opens, a silver-white stream of molten indium arcs into the ZrO₂ collection bin. The operator *witnesses the indium into existence* — not as a number on a screen, but as a physical stream that they can sample, weigh, assay.

The operator participates in Step 2: "Ramp to 200°C." The blue ring expands, turns cyan at 183°C — the Sn-Pb eutectic melting. The operator sees Port 4B actuator temperature approach 200°C. The induction power shifts — Sn and Pb particles couple differently than In, the resonance frequency drifts, the PLL tracks it. *Click* — Port 4B opens, a dull-gray stream of solder alloy pours out. The operator catches a sample in a graphite spoon, quenches it, hands it to the lab. "63/37 Sn/Pb, 50 ppm Cu." The operator nods. The solder exists because the operator ramped, held, centrifuged, opened.

The operator participates in Step 5: "Ramp to 430°C, 400 RPM." The drum is hot now — the wall at Port 4C reads 425°C. The Zn particles in the char matrix are glowing dull red. The induction power is at max — 80 kW into Zone 4. The vapor monitor reads 0.3 ppm Zn — well below the 1 ppm alarm. The operator watches the POF level sensor at r=280 mm: signal drops as liquid Zn rises. *Click* — Port 4C opens, a bright-silver stream of zinc pours into the water-cooled condenser, instantly solidifying into dendritic granules. The operator scoops a handful — warm, metallic, pure. The zinc exists because the operator held 430°C for 10 minutes at 400 RPM under N₂ blanket.

The operator's participation is not passive monitoring — it is **active custodianship of the thermal trajectory**. The operator decides when to advance to the next step based on the mirrors: FBG stability, XRF composition, POF level, vapor monitor, vibration signature. The operator can hold, can abort, can re-ramp. The process does not run on a fixed timer — it runs on **witnessed readiness**. The protocol (below) codifies this, but the operator's judgment is the final gate. The phenomenon of indium separation does not happen *to* the operator — it happens *through* the operator.

### Protocol (Recursive)

What recursive sequence guarantees fidelity at each scale?

**Scale 1: Sub-Stage (5-10 minutes)**
```
FOR each sub-stage in [In_160, SnPb_200, BiSn_280, Pb_340, Zn_430]:
    1. RAMP to target_temp at prescribed_rate (±0.5°C/min through critical range)
    2. HOLD at target_temp for dwell_time
       WHILE holding:
          a. READ FBG_zone_temp (must be target_temp ± tolerance)
          b. READ RPM (must be target_RPM ± 10)
          c. READ POF_level (must show liquid at expected radius)
          d. READ XRF_composition (must match expected purity)
          e. READ vapor_monitor (must be < alarm_threshold)
          f. READ vibration_RMS (must be < 5 mm/s)
          g. IF any READ fails → HOLD_EXTEND + ALARM + OPERATOR_DECISION
    3. ACTUATE port (thermal actuator auto-opens at calibrated temp)
    4. VERIFY discharge (mass flow > threshold within 30 sec)
    5. CLOSE port (spring return confirmed by position sensor)
    6. LOG sub-stage_complete (timestamp, mass, composition, energy)
```

**Scale 2: Stage 4 Complete (25 minutes)**
```
SEQUENCE = [In_160, SnPb_200, BiSn_280, Pb_340, Zn_430]
FOR sub_stage in SEQUENCE:
    EXECUTE Scale_1_Protocol(sub_stage)
    IF sub_stage != LAST:
        RAMP to next_sub_stage.target_temp
        VERIFY no premature melting (FBG shows solid matrix at next MP)
    ENDIF
ENDFOR
RAMP to 660°C (Stage 5 entry)
VERIFY all Stage 4 metals cleared (XRF on Port 4C discharge < 0.1% Zn/Pb/Sn/In)
HANDOFF to Stage 5 controller
```

**Scale 3: Batch Cycle (3.5 hours)**
```
FOR batch in production_schedule:
    1. LOAD feedstock (weighed, assayed, categorized per PROD-13)
    2. EXECUTE Stage_0_PreLiberation (PROD-14)
    3. EXECUTE Stage_1_Drying (PROD-14)
    4. EXECUTE Stage_2_Polymer (PROD-15)
    5. EXECUTE Stage_3_Pyrolysis (PROD-16)
    6. EXECUTE Stage_4_LowTempMetals (THIS PROTOCOL)
    7. EXECUTE Stage_5_Aluminum (PROD-18)
    8. EXECUTE Stage_6_Copper (PROD-19)
    9. EXECUTE Stage_7_Ferrous (PROD-20)
    10. EXECUTE Stage_8_Mineral (PROD-21)
    11. COOL under N₂
    12. UNLOAD slag/mineral residue
    13. MASS_BALANCE_AUDIT (must close ±2%)
    14. IF audit fails → ROOT_CAUSE → CORRECTIVE_ACTION → REPEAT_BATCH
    15. LOG batch_complete
ENDFOR
```

**Scale 4: Campaign (1,200 batches/year)**
```
FOR campaign in annual_plan:
    1. SCHEDULE preventive maintenance (valve actuators, FBG fibers, induction coils)
    2. CALIBRATE all sensors against NIST traceable standards
    3. VERIFY Port 4A/4B/4C actuation temperatures (thermal cycling test)
    4. EXECUTE production batches per Scale_3
    5. TREND key metrics: In recovery %, solder purity, Zn vapor loss, energy/batch
    6. IF trend deviates >2σ → ROOT_CAUSE → DESIGN_CHANGE or PROCEDURE_CHANGE
    7. UPDATE Master_Todo, NEXT_runner, AGENTS.md with lessons learned
ENDFOR
```

**Recursive Guarantee:**
Each scale invokes the next. Scale 1 (sub-stage) is the atomic unit — if it fails, Scale 2 (stage) detects it via mass balance and composition. Scale 2 feeds Scale 3 (batch) — if Stage 4 mass balance fails, the batch audit catches it. Scale 3 feeds Scale 4 (campaign) — if batch metrics trend, the campaign review catches it. Scale 4 feeds back to Scale 1 — lessons learned update the sub-stage protocol parameters (dwell times, RPM, flux rates, actuation temps). The recursion is **measure → decide → act → verify → learn → update**. The protocol is not a checklist — it is a living control system that tightens its own tolerances with every cycle.

**Fidelity at Each Scale:**
- Scale 1: ±1°C, ±10 RPM, ±0.5 mm level, ±2% composition
- Scale 2: Mass closure ±2%, all sub-stages complete, no cross-contamination
- Scale 3: Batch mass closure ±2%, all 8 stages complete, product specs met
- Scale 4: Annual In recovery >99.5%, solder J-STD-006, Zn SHG, energy <350 kWh/batch

The protocol guarantees fidelity because it **does not assume fidelity** — it measures, verifies, and corrects at every scale, recursively.