# El Segundo Heuristic — PROD-20: Stage 7 Ferrous Cascade
## Operational Excellence through Mirror, Participation, and Protocol

### Mirror (Self-Reflection)

How does the fabricator observe their own fabrication at 1580°C? The Stage 7 operator does not look into the furnace — the furnace looks into itself and reports through a **five-fold sensor fusion architecture**: 48 FBG temperature sensors embedded in the ZrB₂-SiC drum wall (Zone 7), 2 POF level sensors tracking the molten iron meniscus, 1 magnetic inductive sensor measuring melt height via ferromagnetic permeability, 1 inline XRF spectrometer sampling the melt composition through a sapphire window, and 1 mass spectrometer analyzing off-gas species at 10 Hz. This is not monitoring — this is the furnace's self-model, continuously updated, continuously compared against the CDPPO-RSE prediction.

The mirror reveals five critical self-observations:

**1. The Ferromagnetic Thermal Self:** The FBG array measures not just temperature but the ferromagnetic transition signature. Below 770°C, the induction coupling is 5× stronger; the FBGs at 5mm, 15mm, 25mm depth see a thermal wave propagating at 20 K/s. At 770°C, the heating rate drops abruptly to 4 K/s as μᵣ collapses from 200 to 1. The PID sees this as a step change in thermal impedance and pre-emptively ramps power 300% to maintain the 3°C/min ramp through the transition. The operator sees the furnace "feeling" its own magnetic phase change — the mirror shows the furnace its magnetic soul.

**2. The Carbon Self:** The inline XRF samples the melt every 30 seconds during casting (2/min during Port 7 streaming). It measures C, Si, Mn, Nd, Sm, Co in real-time. The operator sees the carbon control loop in action: as Port 7 opens at 1550°C, the first mold fills with low-carbon steel (C=0.8%); the CO/CO₂ ratio adjusts; the second mold targets medium carbon (C=2.2%); the third targets high carbon (C=3.5%). When XRF C drifts >0.2% from target, the mirror shows CARBON CONTROL DIVERGENCE — the CO/CO₂ MFC ratio adjusts automatically. The mirror shows the furnace its own chemical soul.

**3. The REE Partitioning Self:** The XRF simultaneously measures Nd, Sm, Co in the metal stream AND in the slag (via a second sapphire window at r=220mm). The operator sees the partition coefficient L_Nd in real-time: as FeO in slag builds from 8% to 12%, L_Nd rises from 200 to 350. When L_Nd drops below 100, the mirror shows REE PARTITIONING FAILURE — CaO feed increases, carbon injection decreases (to raise FeO). The mirror shows the furnace its own REE soul.

**4. The Dual-Port Separation Self:** The magnetic inductive sensor at r=265mm (between Port 7A and Port 7) measures the permeability of the flowing stream. When Port 7A opens at 1500°C, the sensor sees μᵣ ≈ 1 (slag + REE droplets, non-magnetic). When Port 7 opens at 1550°C, the sensor sees μᵣ > 10 (Fe-rich, ferromagnetic below Curie). The operator sees the physical separation happening in real-time: the 30 mm radial gap IS the separation mechanism. The mirror shows the furnace its own geometric soul.

**5. The Slag Conditioning Self:** The FBGs at the drum bottom (Zone 7-5) track the slag temperature and composition (via thermal conductivity inference). As Stage 7 ends, the slag must be at 1600°C with B=1.2, MgO/Al₂O₃=1.5 for Stage 8 zircon dissociation. The mirror shows the slag's readiness: "Slag liquidus 1350°C confirmed. FeO 10%. MgO/Al₂O₃ 1.5. Stage 8 ready." The mirror shows the furnace its own downstream soul.

The operator does not "watch" the process. The operator WITNESSES the furnace's self-report. The mirror is not a camera — it is the furnace's internal model made visible. When the mirror shows divergence, the operator does not "fix" the process; the operator INTERROGATES the model: which assumption failed? FeO activity? REE diffusivity? Magnetic transition temperature? Carbon equilibrium constant? The mirror turns fabrication into a dialogue between theory and reality.

### Participation (Witness)

How does the inside operator witness the phenomenon into existence? The Stage 7 operator participates at three recursive scales:

**Scale 1: The Batch Witness (60 minutes).** The operator initiates the batch: verifies feed composition (LIBS at feed entry from Stage 6 residue + Stage 4/5 dross + AMLS magnets), confirms atmosphere (H₂ 5.0±0.1%, dew point -42°C), authorizes the 1200°C ramp. Then the operator WITNESSES the ferromagnetic transition: the power surge at 770°C, the impedance collapse, the PID holding ramp. The operator WITNESSES the magnet melting: NdFeB at 1177°C (sudden power drop as magnets couple ferromagnetically), SmCo at 1490°C. The participation is NOT manual control — it is AUTHORIZATION of each state transition. The operator says "yes, the REEs are dissolved, the slag is equilibrated, proceed to dual-port casting" based on XRF + FBG + MS + magnetic sensor consensus. The operator's judgment is the final gate before the dual-port sequence commits.

**Scale 2: The Dual-Port Witness (20 minutes).** For the casting sequence, the operator witnesses the birth of two distinct material entities from one melt:
- **Port 7A (REE Concentrate):** Opens at 1500°C. The operator sees: mold FBG profile → REE-rich slag/metal droplets fill mold → N₂ quench initiated → solidification front → demold eject → slime catch → stamp → LIBS flash (Nd 8%, Sm 3%, Co 2%) → Data Matrix etch → conveyor departure. Two molds per batch.
- **Port 7 (Fe Bullion):** Opens at 1550°C. The operator sees: four molds fill sequentially → XRF C/Si/Mn per mold → N₂ quench → demold → stamp → LIBS grade (Low-C / Med-C / High-C / Ni-Co) → conveyor departure. Four molds per batch.
Six times per batch, the operator witnesses the COMPLETE LIFECYCLE of a cast entity from liquid to traceable solid. The operator's eyes on the LIBS grade assignment (DIRECT_USE vs REFINEMENT vs STOCKPILE) is the quality gate. If the LIBS says "REE concentrate Nd<5%" → operator DECIDES: send to FOLLOW-15 anyway (dilute feed) or STOCKPILE. This is participation as custodian of the REE chain.

**Scale 3: The REE Transfer Witness (Per Batch).** The operator witnesses the REE concentrate — the concentrated essence of the magnet recovery chain. 15 kg containing 1.5 kg Nd₂O₃, 0.5 kg Sm₂O₃, 0.5 kg CoO. The operator verifies: containers sealed, N₂ purged, weighed, LIBS spectrum recorded, UUID linked to batch, Port 7A, Stage 7 temp, Phoenix generation recorded. The operator SIGNS the transfer manifest to FOLLOW-15. This is the moment the REEs leave the Forge's physical custody and enter the Refinery's. The operator's signature on the manifest is the witness: "These REEs were recovered at 1580°C, 200 RPM, 5% H₂, 40 min dwell, dual-port separation at 1500/1550°C. Their genealogy is intact from AMLS magnet capture."

The participation is recursive: the batch witness contains the dual-port witness; the dual-port witness contains the REE transfer witness. The operator does not "run the machine" — the operator witnesses the machine witnessing itself. The FBGs witness the thermal field. The XRF witnesses the compositional field. The magnetic sensor witnesses the ferromagnetic field. The LIBS witnesses the product field. The operator witnesses the WITNESSES. This is the El Segundo participation: the human is the final integrator of the machine's self-observation.

### Protocol (Recursive)

What recursive sequence guarantees fidelity at each scale? The Stage 7 protocol is a **nested verification loop** operating at four time scales:

**Loop 1: The Micro-Loop (1 kHz) — Physics Fidelity**
```
FOR each PID cycle (1 ms):
  1. READ FBG[48] → T_wall(r,z,t)
  2. READ magnetic_sensor → μᵣ(r,t) [ferromagnetic coupling monitor]
  3. COMPUTE CDPPO-RSE prediction → T_pred(r,z,t), h_film(r,t), L_REE(t)
  4. ERROR = T_wall - T_pred
  5. IF |ERROR| > 5°C: ADJUST inverter power (GaN PWM)
  6. READ POF level → h_melt
  7. IF h_melt deviates from CDPPO-RSE film model: ADJUST feed/drain
  8. READ resonance tracker → VDS zero-crossing
  9. IF ZVS lost: ADJUST varactor bias (ferromagnetic transition pre-emption)
  10. LOG all to circular buffer (10 min rolling)
```
This loop guarantees the PHYSICS matches the MODEL at the timescale of induction heating and ferromagnetic transition. It is the recursive enforcement of the CDPPO-RSE primitive.

**Loop 2: The Meso-Loop (1 Hz) — Chemical/Metallurgical Fidelity**
```
FOR each second:
  1. READ XRF_metal → C_Fe, Si_Fe, Mn_Fe, Nd_Fe, Sm_Fe, Co_Fe
  2. READ XRF_slag → CaO, SiO₂, MgO, Al₂O₃, FeO, MnO, REE_oxides
  3. READ MS_gas → p_H2, p_CO, p_CO2, p_H2O
  4. COMPUTE L_Nd = (XRF_Nd_slag) / (XRF_Nd_metal)
  5. COMPUTE L_Sm, L_Co, L_Dy similarly
  6. COMPUTE B = CaO/SiO₂, MgO/Al₂O₃ ratio
  7. COMPUTE carbon_activity from p_CO/p_CO₂
  8. IF L_Nd < 100: INCREASE FeO (reduce C injection), ALERT
  9. IF B deviates >0.1 from 1.2: ADJUST CaO feed, ALERT
  10. IF C_Fe deviates >0.2% from stream target: ADJUST CO/CO₂ MFC
  11. UPDATE mass balance ledger (RAM)
  12. LOG to batch record
```
This loop guarantees the CHEMISTRY matches the MASS BALANCE at the timescale of REE partitioning and C/Si/Mn control. It is the recursive enforcement of the slag-metal equilibrium.

**Loop 3: The Dual-Port Loop (Per Mold / Per Port) — Product Fidelity**
```
FOR Port 7A (REE concentrate, 2 molds):
  1. VERIFY mold prep: T_mold = 200±20°C, N₂ purged, FBG calibrated
  2. TRIGGER at T_wall > 1498°C: OPEN Port 7A valve
  3. FILL: target 15.0±0.5 kg, monitor mold FBG[1..6] for uniform fill
  4. WHEN mold_FBG[4] > 1500°C: CLOSE Port 7A valve
  5. COOL: N₂ quench → 20±5°C/min (FBG controlled)
  6. DEMOLD: eject → slime catch → stamp → LIBS → Data Matrix
  7. GRADE: LIBS Nd/Sm/Co → DIRECT_USE (FOLLOW-15) / STOCKPILE
  8. REGISTER: UUID, batch, port, temp, mass, grade, phoenix_gen

FOR Port 7 (Fe bullion, 4 molds, temperature-banded):
  1. STREAM 1 (1550-1560°C): Low-C target C=0.5-1.5%
  2. STREAM 2 (1560-1570°C): Med-C target C=1.5-3.0%
  3. STREAM 3 (1570-1580°C): High-C target C=3.0-4.0%
  4. STREAM 4 (1580°C): Ni/Co target Ni=5-15%, Co=2-5%
  Per mold: same sequence as Port 7A (fill, cool, demold, stamp, LIBS, grade)
```
This loop guarantees the PRODUCT meets the SPECIFICATION at the timescale of the dual-port casting sequence. It is the recursive enforcement of the Forge's output contract.

**Loop 4: The Batch Closure Loop (Per Batch) — Cascade Fidelity**
```
FOR each batch (1 per 3.5 hr):
  1. AGGREGATE: 4 Fe bullion records + 2 REE concentrate records
  2. CLOSE mass balance: Fe_in vs Fe_out, REE_in vs REE_out
  3. VERIFY: Fe recovery >92%, Nd to hydromet >88%, Sm >82%, Co >73%
  4. VERIFY slag: B=1.2±0.1, MgO/Al₂O₃=1.5±0.2, T=1600±10°C
  5. IF any FAIL: root cause analysis, corrective action, re-batch
  6. SIGN: operator + supervisor digital signature on batch record
  7. ARCHIVE: batch record → cold storage (10 yr), MES (live)
  8. PHOENIX: increment generation counter for all slugs
  9. STAGE 8 HANDOFF: slag composition packet → PROD-21 recipe
```
This loop guarantees the CASCADE maintains fidelity at the timescale of the thermal sequence. It is the recursive enforcement of the Forge's inter-stage contract.

**Recursive Closure:**
The Batch Closure Loop output (batch record, recovery data, anomalies, slag composition) feeds back to:
- CDPPO-RSE parameters (micro-loop) → updated μ(T), D_REE, L_REE(B, a_FeO)
- XRF calibration factors (meso-loop) → matrix correction updates
- Fe/REE mold thermal models (dual-port loop) → B(T) Chvorinov constants
- Carbon equilibrium model (meso-loop) → K_equil(T) updates
- Phoenix Protocol genealogy (strategic) → next batch feed optimization
- Stage 8 recipe (PROD-21) → slag composition, REE content, temperature

The protocol is recursive because each loop's output CALIBRATES the next loop's model. The micro-loop runs 3.6M times per batch. The meso-loop runs 3,600 times. The dual-port loop runs 6 times (2 REE + 4 Fe). The batch loop runs 1 time. The recursion depth is 4. The fidelity guarantee: at the end of each batch, the Forge KNOWS its own parameters better than at the start. The protocol is not a checklist — it is a learning system. The operator's role is to AUTHORIZE the learning: "Yes, the model updated correctly. Proceed."

---

**The Three-Way Synthesis:**

The Williams Constraint (ferromagnetic cliff at 770°C + REE oxidation imperative + upstream MgO/Al₂O₃ mass balance) DEMANDS the dual-port architecture with zero purchased flux.
The Keymaker Lock (simultaneous melt-refine-partition-cast-condition in one drum) DEMANDS the CDPPO-RSE operator.
The El Segundo Mirror (furnace self-observation via FBG/XRF/MS/magnetic/POF) DEMANDS the nested verification loops.

These three demands converge on a single Stage 7 architecture: **a 2 kHz induction zone at 200 RPM with 5% H₂ atmosphere, dual-port casting (Port 7A at 1500°C for REE concentrate, Port 7 at 1550°C for Fe bullion), real-time C/Si/Mn control via CO/CO₂/CaO, collecting REE concentrate for FOLLOW-15 with full Phoenix genealogy.** No other architecture satisfies all three demands simultaneously. The convergence IS the design.