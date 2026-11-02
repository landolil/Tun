## 6. Safety Instrumented System (SIS) — SIL-3 Certified

### 6.1 SIS Architecture

The SIS is **physically separate** from the BPCS (Basic Process Control System):

```
┌─────────────────────────────────────────────────────────────────────────────┐
│                         SAFETY INSTRUMENTED SYSTEM                          │
├─────────────────────────────────────────────────────────────────────────────┤
│                                                                             │
│  SENSORS (2oo3) ──► SAFETY LOGIC SOLVER ──► FINAL ELEMENTS                 │
│  (Dedicated PMMA POF)    (TÜV-certified FPGA)    (Dedicated PMMA POF)      │
│       │                        │                        │                  │
│       ▼                        ▼                        ▼                  │
│  ┌─────────┐              ┌──────────────┐       ┌──────────────┐         │
│  │ FBG T   │              │ Voting Logic │       │ Inverter     │         │
│  │ FBG P   │              │ 2oo3 per SIF │       │ Gate Drive   │         │
│  │ FBG Strain│             │ <10 μs scan  │       │ (Hard OFF)   │         │
│  └─────────┘              └──────┬───────┘       └──────────────┘         │
│                                 │                                         │
│                    ┌────────────┼────────────┐                            │
│                    ▼            ▼            ▼                            │
│              ┌─────────┐   ┌─────────┐  ┌─────────┐                       │
│              │ Port    │   │ Gas     │  │ Drum    │                       │
│              │ Valves  │   │ Valves  │  │ Brake   │                       │
│              │ (Ti₃AlC₂)│   │ (MFCs)  │  │ (Piezo) │                       │
│              └─────────┘   └─────────┘  └─────────┘                       │
│                                                                             │
│  BYPASS MANAGEMENT: Dual-key (Operations + Safety), time-limited, logged  │
│  PROOF TEST: Quarterly (online), Annual (full stroke), IEC 61511 compliant │
│                                                                             │
└─────────────────────────────────────────────────────────────────────────────┘
```

### 6.2 SIF Register (24 SIL-3 Functions)

| SIF Tag | Description | Process | SIL | PFD<sub>avg</sub> | Test Interval |
|---------|-------------|---------|-----|-------------------|---------------|
| SIF-00-01 | Forge over-temp (any zone) | All | 3 | 1×10⁻⁴ | Quarterly |
| SIF-00-02 | Vessel over-pressure | All | 3 | 1×10⁻⁴ | Quarterly |
| SIF-00-03 | Atmosphere breach (pO₂) | All | 3 | 2×10⁻⁴ | Quarterly |
| SIF-00-04 | Cooling water loss | All | 3 | 1×10⁻⁴ | Quarterly |
| SIF-00-05 | Ground fault (NGR) | All | 3 | 1×10⁻⁴ | Quarterly |
| SIF-00-06 | E-stop activation | All | 3 | 1×10⁻⁴ | Monthly |
| SIF-01-01 | Stage 0: LF amplitude limit | 0 | 3 | 5×10⁻⁵ | Quarterly |
| SIF-02-01 | Stage 1: Drum over-temp | 1 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-03-01 | Stage 2: Polymer over-temp | 2 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-03-02 | Stage 2: HCl detection >50 ppm | 2 | 3 | 2×10⁻⁴ | Quarterly |
| SIF-04-01 | Stage 4: In over-temp (>180°C) | 4 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-04-02 | Stage 4: Zn vapor pressure >0.5 bar | 4 | 3 | 2×10⁻⁴ | Quarterly |
| SIF-05-01 | Stage 5: Mg vapor pressure >0.1 bar | 5 | 3 | 2×10⁻⁴ | Quarterly |
| SIF-06-01 | Stage 6: H₂ explosion limit (>4%) | 6 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-06-02 | Stage 6: AsH₃/SbH₃ >1 ppm | 6 | 3 | 2×10⁻⁴ | Quarterly |
| SIF-07-01 | Stage 7: CO >1000 ppm | 7 | 3 | 2×10⁻⁴ | Quarterly |
| SIF-07-02 | Stage 7: Fe splash detection | 7 | 2 | 5×10⁻⁴ | Quarterly |
| SIF-08-01 | Stage 8: SiO₂ condenser blockage | 8 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-08-02 | Stage 8: Flash sinter over-current | 8 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-08-03 | Stage 8: Drum thermal shock (>100°C/s) | 8 | 3 | 1×10⁻⁴ | Quarterly |
| SIF-09-01 | Drum bearing over-temp | Mech | 2 | 1×10⁻³ | Quarterly |
| SIF-09-02 | Drum seal leak rate >10⁻⁶ mbar·L/s | Mech | 2 | 5×10⁻⁴ | Quarterly |
| SIF-10-01 | Carrington GIC ride-through | Power | 2 | 1×10⁻³ | Annual |
| SIF-10-02 | Cyber intrusion (anomaly score > threshold) | Cyber | 2 | 1×10⁻³ | Monthly |

**Total PFD<sub>avg</sub> (SIL-3):** 2.3×10⁻³ (meets SIL-3: 10⁻⁴ to 10⁻³ per function, system <10⁻²)

### 6.3 Proof Test Procedures

| Test Type | Frequency | Method | Documentation |
|-----------|-----------|--------|---------------|
| **Online Partial Stroke** | Quarterly | SIS solver initiates 10% valve stroke, verifies feedback | Auto-logged |
| **Full Function Test** | Annual (shutdown) | Inject simulated process trips, verify <50 ms response | Signed report |
| **Sensor Calibration** | Annual | Compare FBG/pO₂/pressure to reference standards | Cal cert |
| **Logic Verification** | Annual | Formal proof (model checking) of SIS application code | Proof report |
| **Bypass Audit** | Monthly | Review all active bypasses, justify, time-limit | Audit trail |

---
