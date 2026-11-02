## Appendix B: Simulator Scenario Library (50+ Scenarios)

### B.1 Normal Operations (10)

| ID | Scenario | Duration | Key Metrics |
|----|----------|----------|-------------|
| SIM-N-01 | Cold Startup to Ready | 90 min | All SIFs armed, FBG cal PASS, ZVS >99.9% |
| SIM-N-02 | Category A Feed (Virgin) | 4 hrs | Mass balance >99%, energy <130 kWh/ton |
| SIM-N-03 | Category B Feed (Mixed) | 4 hrs | Stage 2 PVC <5%, HCl capture >99% |
| SIM-N-04 | Category C Feed (EOL) | 4 hrs | Blend ratio 50±2%, In recovery >6.4g |
| SIM-N-05 | Category D Feed (Legacy) | 4 hrs | Stage 0 liberation >95%, Hg capture |
| SIM-N-06 | Steady State 8-hr | 8 hrs | Zero SIF trips, all outputs spec |
| SIM-N-07 | Blend Ratio Shift 40→60% | 2 hrs | MFC ±2%, Stage 4 In recovery tracks |
| SIM-N-08 | Normal Shutdown | 30 min | Cascade drain, induction ramp, gas purge |
| SIM-N-09 | Shift Handover | 15 min | DQR log complete, anomaly handover |
| SIM-N-10 | Batch Recipe Change | 10 min | ISA-88 XML load, UUID generation |

### B.2 Degraded Operations (15)

| ID | Scenario | Trigger | Operator Action |
|----|----------|---------|-----------------|
| SIM-D-01 | Zone 3 FBG Drift | Λ > 10 Ch 45 | Acknowledge NCR, switch to model-based T_inner |
| SIM-D-02 | Zone 5 Varactor Saturation | Bias >28V | Engage 8-bit cap bank + slag feedforward |
| SIM-D-03 | Port 4 Valve Slow Actuation | >75 ms | Reduce RPM, extend dwell, log for MT |
| SIM-D-04 | MFC Drift (Ar Zone 2) | >2% span | Manual override, verify LIBS composition |
| SIM-D-05 | TSN Frame Loss (VLAN 20) | FRER activate | Verify SCADA data quality, log for MT |
| SIM-D-06 | PTP Holdover (GNSS loss) | OCXO 24h | Monitor drift <1μs, prepare for island |
| SIM-D-07 | Cooling Flow Reduction | Zone 1 cold plate | Reduce Zone 1 power 20%, verify thermal |
| SIM-D-08 | Slag Viscosity High | Stage 3 torque | Increase flux injection, verify port flow |
| SIM-D-09 | Drum Bearing Vibration | >2× baseline | Schedule bearing replace, reduce RPM 10% |
| SIM-D-10 | Coil Housing Strain | FBG strain >50 με | Reduce power, verify no delam (AE) |
| SIM-D-11 | LIBS Misclassification | D3 vs D4 | Manual override, send sample to lab |
| SIM-D-12 | Crate Cycle >480 | RFID portal | Pull crate for solvolysis recycle |
| SIM-D-13 | Elium® Viscosity Drift | >170 mPa·s | Reject IBC, initiate vendor CAPA |
| SIM-D-14 | Indium Purity Dip | <99.9% | Hold Stage 4 output, verify hydromet |
| SIM-D-15 | REE Oxide Contamination | Th >10 Bq/g | Segregate slag, notify radiation safety |

### B.3 Emergency (10)

| ID | Scenario | SIF Triggered | SL Decision |
|----|----------|---------------|-------------|
| SIM-E-01 | E-Stop Stage 6 Peak | SIF-18 (Overtemp Z6) | Verify all zones safe, capture twin state |
| SIM-E-02 | H₂ Leak Stage 4 | SIF-12 (H₂ >4% LEL) | Evacuate, N₂ purge, fire suppression |
| SIM-E-03 | Drum Crack (AE) | SIF-03 (Vibration) | Controlled cool-down 10°C/min |
| SIM-E-04 | TSN Partition | SIF-24 (Comms Loss) | FRER failover, PTP holdover |
| SIM-E-05 | GaN Desat Zone 7 | SIF-21 (Overcurrent) | L0 FPGA trip, L1 isolate, L2 hold |
| SIM-E-06 | Port 6B Valve Jam | SIF-15 (Port Fail) | Quench N₂, manual override if avail |
| SIM-E-07 | Carrington Storm | SIF-22/23 (GIC) | 5ms island, 30min monitor, staged reconnect |
| SIM-E-08 | Flash Sinter Field Loss | SIF-08 (Field) | Abort sinter, log V/I, safe cool |
| SIM-E-09 | SIS Voter Disagreement | 2oo3 fail | Dual-key bypass if justified, else shutdown |
| SIM-E-10 | Cyber Intrusion (OT) | SIF-24 + PROD-36 | Isolate VLAN, capture forensics |

### B.4 Carrington Storm (5)

| ID | Scenario | Severity | Duration |
|----|----------|----------|----------|
| SIM-C-01 | Minor Storm | 1000 nT/s | 2 hrs |
| SIM-C-02 | Major Storm | 3000 nT/s | 6 hrs |
| SIM-C-03 | Carrington-Class | 5000 nT/s | 12 hrs |
| SIM-C-04 | Multi-Storm Sequence | 3× 2000 nT/s | 24 hrs |
| SIM-C-05 | Storm + Zone Fault | 4000 nT/s + Z4 fault | 8 hrs |

### B.5 Phoenix Depot (10)

| ID | Scenario | Focus |
|----|----------|-------|
| SIM-P-01 | D1 Intact Aegis Disassembly | 15-min auto cycle |
| SIM-P-02 | D2 BFRP Solvolysis Batch | Monomer >99%, fiber 95% |
| SIM-P-03 | D3 Ceramic Core Hydromet | Zr/Y gel → 3Y-TZP |
| SIM-P-04 | D4 Glaze Ionic Liquid | In 99.9%, Y 98%, Co 98% |
| SIM-P-05 | D5 Electronics Stage 0 | Discharge → shred → AMLS |
| SIM-P-06 | D6 LiFePO₄ Discharge | SOC log → hydromet |
| SIM-P-07 | D7 MAX Phase Chloride | Ti 95%, Al 90% |
| SIM-P-08 | LIBS Anomaly (D3→D4) | Manual re-classify |
| SIM-P-09 | Crate Damage (Cycle 450) | Pull for recycle |
| SIM-P-10 | Blend Ratio Optimization | Gate fee $75/ton → 55% EOL |

---
