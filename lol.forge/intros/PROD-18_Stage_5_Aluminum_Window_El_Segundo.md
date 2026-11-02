# El Segundo Heuristic Intro — PROD-18 Stage 5 Aluminum Window
## Mirror, Participation, Protocol

### Mirror (Self-Reflection)

How does the fabricator observe their own fabrication? In Stage 5, the fabricator is the **sensor fusion triad** — FBG temperature array, POF level sensors, and inline XRF spectrometer. These are not passive monitors; they are the process's distributed nervous system, each reflecting a different aspect of the fabrication reality.

The **384 FBG sensors** (48 per zone × 8 zones, WDM+TDM multiplexed on PMMA fiber) mirror the thermal field in 4D. They don't just measure temperature — they reveal the *history* of the thermal trajectory. The operator sees the 660°C solidus front propagate axially as a blue wave across the HMI. They see the 680°C dwell stabilize as a uniform cyan ring. They see the 720°C transition approach as a red warning gradient. The FBG array mirrors the *thermal truth* — it cannot be fooled by induction coupling artifacts, it doesn't drift, it is immune to the 10 kHz EMI that would corrupt thermocouples. When the FBG says 682°C at Zone 5, axial position 400 mm, the drum IS 682°C there. The mirror is absolute.

The **8 POF level sensors** (3 axial × Port 5, plus 5 mold positions) mirror the *hydrodynamic truth*. They don't just measure level — they reveal the *drainage dynamics*. The operator sees the 0.8 mm film thickness as a transmission dip. They see the 0.15 m/s drainage velocity as a periodic modulation (ripples at 187 Hz). They see the Port 5 discharge as a sustained transmission drop. When the POF says film at 280 mm radius, 0.75 mm thick, draining, the melt IS draining. The mirror is continuous.

The **inline XRF** mirrors the *compositional truth*. It doesn't just measure chemistry — it reveals the *fractionation trajectory*. The operator sees Si rising from 0.1% to 8% across the 30-minute dwell. They see Fe spiking when a steel contaminant hits the melt. They see Mg dropping from 1.2% to 0.08% as the flux works. When the XRF says Si=0.08%, Fe=0.15%, Cu=0.03%, Mg=0.07%, the wrought stream IS pure. The mirror is quantitative.

Most critically, the fabricator observes through the **mass-energy closure**. Every batch: Al in (weighed, assayed) = Al out (wrought + cast + dross + oxidation loss) ± 2%. Energy in (induction kWh) = Energy out (sensible + latent + losses + recovery) ± 5%. Exergy in = Exergy out + Exergy destroyed. The mirror is the conservation laws. The machine cannot violate thermodynamics. If the numbers don't close, something is lying — a sensor, a valve, a scale, an assay. The fabricator's self-reflection is the daily mass-energy-exergy audit. The machine cannot hide mass loss, energy loss, or exergy destruction. The mirror is the laws of physics.

### Participation (Witness)

How does the inside operator witness the phenomenon into existence? The operator does not watch from a control room — the operator *participates* through the **temperature band fractionation sequence**. The operator initiates the ramp: Stage 5, ramp to 660°C at 5°C/min. The operator watches the FBG wave turn cyan at 650°C, hit 660°C. The operator hears the induction power supply shift as Al particles begin coupling — the 10 kHz hum deepens, the current waveform on the scope shows the phase shift as resistivity drops from solid to liquid. The operator feels the vibration signature change at 300 RPM as the first melt pools form — a subtle damping of the 5 Hz rotation harmonic, detectable on the accelerometer.

The operator participates in the **Mg removal dwell**: Hold 680°C, 25 minutes, flux at 0.2 kg/min. The operator watches the XRF Mg trend: 1.2% → 0.8% → 0.5% → 0.2% → 0.1%. The operator sees the flux injection pulses on the mass flow controller. The operator smells the faint cryolite decomposition (sweet, metallic) at the vent. The operator *witnesses the magnesium leaving the aluminum* — not as a number, but as a physical transformation they can track in real-time.

The operator participates in the **fractionation banding**: Band 1: 660-665°C, Si=0.05% → Mold 1 (Wrought). Band 2: 665-670°C, Si=0.12% → Mold 2 (Wrought). Band 3: 670-675°C, Si=0.45% → Mold 2 (Wrought). Band 4: 675-680°C, Si=1.8% → Mold 3 (Cast). Band 5: 680-685°C, Si=4.2% → Mold 3 (Cast). Band 6: 685-690°C, Si=7.1% → Mold 4 (Cast). Band 7: 690-695°C, Si=9.3% → Mold 4 (Cast). Band 8: 695-700°C, Si=10.5% → Mold 5 (Cast). Band 9: 700-705°C, Si=11.8% → Mold 6 (Cast). Band 10: 705-710°C, Si=12.1% → Mold 7 (Cast). Band 11: 710-715°C, Si=11.9% → Mold 7 (Cast). Band 12: 715-720°C, Si=11.5% → Mold 8 (Cast). The operator watches the mold carousel index — *click, click, click* — every 5 minutes, perfectly synchronized with the thermal bands. The operator catches a sample from Mold 4: dendritic, shiny, 8.5% Si. Cast A380 equivalent. The operator *witnesses the alloy into existence* — not as a specification, but as a physical slug they can hold, assay, certify.

The operator's participation is not passive monitoring — it is **active custodianship of the thermal-compositional trajectory**. The operator decides when to advance based on the mirrors: FBG stability (±2°C), XRF trend (Mg <0.1%), POF flow (steady), vibration (nominal). The operator can hold, can abort, can re-ramp. The process does not run on a fixed timer — it runs on **witnessed readiness**. The protocol (below) codifies this, but the operator's judgment is the final gate. The phenomenon of aluminum window separation does not happen *to* the operator — it happens *through* the operator.

### Protocol (Recursive)

What recursive sequence guarantees fidelity at each scale?

**Scale 1: Temperature Band (5 minutes)**
```
FOR each band in [660-665, 665-670, 670-675, 675-680, 680-685, 685-690, 690-695, 695-700,
                   700-705, 705-710, 710-715, 715-720]:
    1. RAMP to band_start at 5°C/min (FBG outer loop)
    2. HOLD at band_target for 5 min
       WHILE holding:
          a. READ FBG (must be band_target ±2°C)
          b. READ RPM (must be 300 ±5)
          c. READ POF (must show film at 280mm, 0.5-1.0mm thick)
          d. READ XRF (Si, Fe, Cu, Mg, Mn every 10 sec)
          e. READ Flux (cryolite rate, hopper level)
          f. READ Vibration (must be <5 mm/s RMS)
          g. READ Emissions (HCl, MgO, HF, PM2.5)
          h. IF any READ fails → HOLD_EXTEND + ALARM + OPERATOR_DECISION
    3. COMPUTE Scheil prediction from XRF trend
    4. ASSIGN mold position (Wrought 1-4 or Cast 5-8)
    5. INDEX carousel to assigned mold (3 min max)
    6. VERIFY discharge (POF confirms flow to assigned mold)
    7. LOG band_complete (timestamp, temp, XRF, prediction, mold)
ENDFOR
```

**Scale 2: Stage 5 Complete (30 minutes)**
```
SEQUENCE = [12 bands covering 660-720°C]
FOR band in SEQUENCE:
    EXECUTE Scale_1_Protocol(band)
    IF band != LAST:
        RAMP to next_band.start
        VERIFY no premature solidification (FBG > liquidus of remaining alloys)
    ENDIF
ENDFOR
RAMP to 720°C (Mg vapor limit)
HOLD 720°C for 3 min (final clearance)
VERIFY Al cleared (XRF Al <0.1% at Port 5)
RAMP to 1085°C (Stage 6 entry)
HANDOFF to Stage 6 controller
```

**Scale 3: Batch Cycle (3.5 hours)**
```
FOR batch in production_schedule:
    1. LOAD feedstock (weighed, assayed, categorized per PROD-13)
    2. EXECUTE Stage_0_PreLiberation (PROD-14)
    3. EXECUTE Stage_1_Drying (PROD-14)
    4. EXECUTE Stage_2_Polymer (PROD-15)
    5. EXECUTE Stage_3_Pyrolysis (PROD-16)
    6. EXECUTE Stage_4_LowTempMetals (PROD-17)
    7. EXECUTE Stage_5_AluminumWindow (THIS PROTOCOL)
    8. EXECUTE Stage_6_Copper (PROD-19)
    9. EXECUTE Stage_7_Ferrous (PROD-20)
    10. EXECUTE Stage_8_Mineral (PROD-21)
    11. COOL under N₂
    12. UNLOAD slag/mineral residue
    13. MASS_ENERGY_EXERGY_AUDIT (must close ±2%/±5%/±10%)
    14. IF audit fails → ROOT_CAUSE → CORRECTIVE_ACTION → REPEAT_BATCH
    15. LOG batch_complete
ENDFOR
```

**Scale 4: Campaign (1,200 batches/year)**
```
FOR campaign in annual_plan:
    1. SCHEDULE preventive maintenance (valve actuators, FBG fibers, induction coils, molds)
    2. CALIBRATE all sensors against NIST traceable standards
    3. VERIFY Port 5 actuation at 720°C (thermal cycling test)
    4. VALIDATE XRF against ICP-OES reference standards
    5. EXECUTE production batches per Scale_3
    6. TREND key metrics: Al recovery %, Mg removal %, wrought Si%, cast Si%, energy/batch, exergy efficiency
    7. IF trend deviates >2σ → ROOT_CAUSE → DESIGN_CHANGE or PROCEDURE_CHANGE
    8. UPDATE Master_Todo, NEXT_runner, AGENTS.md with lessons learned
ENDFOR
```

**Recursive Guarantee:**
Each scale invokes the next. Scale 1 (band) is the atomic unit — if it fails, Scale 2 (stage) detects it via mass balance and composition. Scale 2 feeds Scale 3 (batch) — if Stage 5 mass balance fails, the batch audit catches it. Scale 3 feeds Scale 4 (campaign) — if batch metrics trend, the campaign review catches it. Scale 4 feeds back to Scale 1 — lessons learned update the band protocol parameters (dwell times, flux rates, mold assignments, PID gains). The recursion is **measure → decide → act → verify → learn → update**. The protocol is not a checklist — it is a living control system that tightens its own tolerances with every cycle.

**Fidelity at Each Scale:**
- Scale 1: ±2°C, ±5 RPM, ±0.1 mm film, ±0.05% Si prediction
- Scale 2: Mass closure ±2%, all 12 bands complete, Mg <0.1%, wrought/cast separated
- Scale 3: Batch mass/energy/exergy closure ±2%/±5%/±10%, all 8 stages complete
- Scale 4: Annual Al recovery >75%, Mg removal >93%, wrought Si<0.15%, energy <350 kWh/batch

The protocol guarantees fidelity because it **does not assume fidelity** — it measures, verifies, and corrects at every scale, recursively.