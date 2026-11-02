## 7. Curriculum Modules — Operations (Startup, Steady State, Shutdown, Emergency)

### 7.1 Module O-01: Cold Startup Sequence (16 hrs)

**Procedure (PROD-29):**
1. Facility systems: HVAC, N₂/Ar/He, cooling water, LiFePO₄ UPS, TSN/PTP
2. SIS proof test (CT-04 partial): verify 24 SIFs trip <50 ms
3. FBG calibration check (CT-06): 5 reference temps, all 384 ch R² >0.999
4. Induction zones cold: verify ZVS at 100 kHz, FBG baseline, varactor sweep
5. Drum drive: piezo motor 0→500 RPM, FBG strain baseline
6. Gas systems: MFC zero/span, leak check, purge sequences
7. SCADA: recipe load (ISA-88 XML), batch UUID generation, twin sync

**Assessment**: Simulator — execute cold startup to "Ready for Feed" in <90 min

### 7.2 Module O-02: Hot Commissioning & Steady State (24 hrs)

**Procedure (PROD-29):**
1. Feed introduction: Category A-D per PROD-13, LIBS verify, MFC setpoints
2. Stage 0-1: Acoustic liberation → IR drying, monitor FBG drum thermal
3. Stage 2-3: Polymer melt → pyrolysis, centrifuge RPM, port valve sequence
4. Stage 4-5: Indium-First → Al window, centrifugal density stratification
5. Stage 6-7: Copper/PM → Ferrous/REE, dual-port REE separation
6. Stage 8: Zircon dissociation, 3Y-TZP flash sinter, drum material loop
7. Continuous: Blend ratio MFC (±2%), off-gas MS, slug mass spec, energy balance

**Assessment**: Simulator — run 8-hour steady state, zero SIF trips, >99% mass balance

### 7.3 Module O-03: Normal & Emergency Shutdown (16 hrs)

**Normal Shutdown:**
1. Feed stop → cascade drain (30 min), induction ramp down (zone 8→1)
2. Gas purge: N₂ all lines, H₂ isolation, cooling maintain
3. Drum stop: 500→0 RPM, quench nozzles if >200°C
4. SIF status: verify all armed, log final state

**Emergency Shutdown (E-Stop):**
1. Optical E-stop loop broken → <1 ms all GaN gates off, MFCs close
2. LiFePO₄ UPS: SIS + SCADA + TSN + PTP on backup indefinite
3. H₂ isolation: pneumatic valves fail-safe closed (<50 ms)
4. Post-E-stop: SIF health check, FBG thermal shock check, twin state capture

**Assessment**: Simulator — E-stop at Stage 6 peak, verify all safety functions <50 ms

### 7.4 Module O-04: Emergency Response & Carrington Ride-Through (16 hrs)

**Scenarios:**
- **Carrington GIC Storm**: 5 ms grid disconnect, 10 ms island mode, 30 min grid stable → staged reconnect (PROD-23, 26)
- **Induction Zone Fault**: GaN desat → L0 FPGA trip, L1 RTU isolates zone, L2 PLC cascade hold
- **Drum Crack (AE detection)**: Felicity ratio <1.0 → L1 RTU alerts, L2 PLC initiates controlled cool-down
- **H₂ Leak**: MS detection → SIF trip, N₂ purge, evacuation if >4% LEL
- **TSN Partition**: FRER failover, PTP holdover (24 hr OCXO), L3 SCADA alarm

**Assessment**: Tabletop + Simulator — Carrington scenario, verbal walkthrough of SL decisions

---
