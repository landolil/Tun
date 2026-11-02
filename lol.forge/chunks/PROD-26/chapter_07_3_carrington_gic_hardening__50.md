## 3. Carrington GIC Hardening — 5000 nT/s Survival

### 3.1 Threat Definition

| Parameter | Value | Source |
|-----------|-------|--------|
| **dB/dt (Carrington)** | 5000 nT/s (5×10⁻⁶ T/s) | 1859 event, IEEE 1656 |
| **Induced E-field** | 1–10 V/km (ground conductivity dependent) | USGS models |
| **GIC Amplitude** | 10–100 A/km (on transmission lines) | Hydro-Québec 1989: 100 A |
| **Duration** | 1–10 min (main impulse), hours (tail) | NOAA GMD models |
| **Frequency Content** | DC to 0.1 Hz (quasi-DC) | GIC is geomagnetically induced |

### 3.2 Vulnerability Analysis

| Component | GIC Coupling Mechanism | Mitigation | Residual Risk |
|-----------|------------------------|------------|---------------|
| **Grid Transformer Primary** | Direct (100 V/km on lines) | GDT 3 kA, floating secondary | None — isolated |
| **Isolation Transformer** | Core saturation (DC bias) | 3% leakage L, 3-phase Δ-Y, no neutral | <1% harmonic increase |
| **DC Link Capacitors** | Common-mode from grid | Floating, no earth ref, 5 A NGR | None |
| **GaN Gate Drivers** | Antenna on control cables | PMMA POF only — zero copper | None |
| **FBG Interrogators** | Antenna on sensor cables | PMMA POF only — zero copper | None |
| **Cooling Water** | Conductive path to earth | PEX-a tubing, DI water 18 MΩ·cm | None |
| **Frame/Structure** | Loop area induction | BFRP frame (ρ>10¹²), no steel | Negligible |

### 3.3 GIC Ride-Through Mode (PROD-23 Section 7)

```
GIC EVENT DETECTION (L3 SCADA + L2 PLC):
  Grid Monitor (dedicated) → dV/dt > 5 V/ms OR NGR current > 2 A
       │
       ▼
  RIDE-THROUGH INITIATION (<5 ms):
  ┌─────────────────────────────────────────────────────────────┐
  │ 1. DC link capacitors sustain inverter power (100 ms hold)  │
  │ 2. Vacuum contactor opens (10 ms) → island from grid        │
  │ 3. LiFePO₄ backup (100 Wh/module) powers controls           │
  │ 4. All zones ramp to 20% power (thermal hold)               │
  │ 5. SIS remains active (dedicated FPGA + POF)                │
  └─────────────────────────────────────────────────────────────┘
       │
       ▼
  GIC EVENT DURATION (1–10 min):
  • Drum rotation maintained (piezo drive, battery)
  • Gas atmospheres maintained (MFC battery backup)
  • FBG/PTP/TSN fully operational (all-dielectric)
  • No data loss — historian buffers locally
       │
       ▼
  GRID RECOVERY (30 min stable):
  1. Verify grid frequency/voltage stable (PLL lock)
  2. Verify drum thermal state (no shock >100°C/s)
  3. Verify SIF health (all 24 SIL-3 OK)
  4. Operator authorization (Shift Lead + Safety Eng)
  5. Staged reconnect with utility coordination
```

### 3.4 Ride-Through Energy Budget

| Load | Power | Duration | Energy | Source |
|------|-------|----------|--------|--------|
| **8× RTU (ARM A53)** | 40 W | 30 min | 20 Wh | LiFePO₄ |
| **8× FPGA (Artix-7)** | 20 W | 30 min | 10 Wh | LiFePO₄ |
| **8× POF Transceivers** | 10 W | 30 min | 5 Wh | LiFePO₄ |
| **SIS FPGA (dedicated)** | 15 W | 30 min | 7.5 Wh | LiFePO₄ |
| **Drum Piezo Drive** | 50 W | 30 min | 25 Wh | LiFePO₄ |
| **MFC Valves (32×)** | 10 W | 30 min | 5 Wh | LiFePO₄ |
| **FBG Interrogators (8×)** | 40 W | 30 min | 20 Wh | LiFePO₄ |
| **PTP Grandmaster (OCXO)** | 5 W | 30 min | 2.5 Wh | LiFePO₄ |
| **Total** | **195 W** | **30 min** | **97.5 Wh** | **100 Wh/module × 8 = 800 Wh** |

**Margin:** 8× headroom — supports 4-hour GIC event with single module failure.

---
