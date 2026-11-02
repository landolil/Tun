## Appendix A: Control System Quick-Reference Card

```
AEGIS-FORGE I — CONTROL SYSTEM FIELD REFERENCE
===============================================

HIERARCHY:
  L0 Cell (FPGA)     : 100 kHz — GaN gate, desat, ZVS
  L1 Zone RTU (8×)   : 1 kHz   — Thermal PID, Resonance PLL, FBG
  L2 Stage PLC (8×)  : 100 Hz  — Cascade, Interlocks, Recipe
  L3 Plant SCADA     : 10 Hz   — Historian, Alarms, Batch, Twin

KEY SPECS:
  Sensors:      384 FBG T, 64 FBG ε, 16 POF Level, 8 Pyro, 8 MS, 8 XRF
                16 pO₂, 24 Pressure, 32 MFC, 16 AE, 2 Encoder, 8 E-Stop
  Actuators:    16 GaN gates, 32 Varactor, 48 Cap bank, 32 MFC, 8 Port valves
                1 Carousel, 8 Flux, 16 Quench, 1 Drum drive, 4 Crane
  Network:      TSN 1 Gbps dual-ring, FRER, 1 ms cycle, 4 VLANs
  Time Sync:    PTP (IEEE 1588v2), GM GPS+OCXO, <1 μs accuracy
  Safety:       24 SIL-3 SIFs, 2oo3 voting, <50 ms response
  GIC Immunity: Floating secondary, NGR 5A, all-dielectric PMMA POF
  Cyber:        Air-gapped OT, data diode, ML anomaly (FOLLOW-29)

CONTROL CYCLES:
  Thermal PID:      1 ms (RTU) — Kp/Ki/Kd per zone (Table 3.3)
  Resonance PLL:    10 ms (RTU) — V_DS zero-cross → varactor/cap bank
  Cascade:          10 ms (PLC) — Stage setpoints + feedforward
  SCADA:            100 ms — Historian, alarms, batch, twin

CRITICAL SETPOINTS:
  Max drum T:       2200°C (FBG)
  Max vessel P:     5 bar
  Min pO₂:          10⁻¹⁵ atm (ZrO₂ probe)
  Min cooling flow: 10 L/min
  Max GIC ride:     100 A/m (indefinite on backup)
  E-stop response:  <50 ms (optical loop)

EMERGENCY:
  SIF trip    → All inverters OFF, drum coast, N₂ purge
  GIC event   → Ride-through (caps), island, LiFePO₄ backup
  Cooling loss→ Ramp to 20% power, alarm
  FBG loss    → Zone power 50%, investigate
  Cyber alert → Isolate VLAN, data diode hold, SOC notify

KEY EQUATIONS:
  PID:       u = Kp·e + Ki∫e + Kd·de/dt + FF
  PLL:       ΔV = Kp·φ_err + Ki∫φ_err
  Skin depth: δ = √(2ρ/ωμ)
  Power:     P = π²B²d²f²V/6ρ (non-mag) or πB²fV/μ (mag)
  TSN:       1 ms cycle, 4 slices (SIS/RTU/PLC/SCADA)
```

---
