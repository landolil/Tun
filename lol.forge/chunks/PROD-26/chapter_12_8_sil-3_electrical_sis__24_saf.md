## 8. SIL-3 Electrical SIS — 24 Safety Instrumented Functions

### 8.1 SIF Register (Electrical Subset)

| SIF Tag | Function | SIL | Sensors (2oo3) | Final Element | Response | PFD<sub>avg</sub> |
|---------|----------|-----|----------------|---------------|----------|-------------------|
| **SIF-00-01** | Drum over-temp (any zone) | 3 | 3× FBG/zone | All inverters OFF | <50 ms | 1×10⁻⁴ |
| **SIF-00-02** | Vessel over-pressure (>5 bar) | 3 | 3× Pressure | Vent + inverters OFF | <50 ms | 1×10⁻⁴ |
| **SIF-00-03** | Atmosphere breach (pO₂ >10⁻⁶) | 3 | 3× ZrO₂ pO₂ | N₂ purge + OFF | <50 ms | 1×10⁻⁴ |
| **SIF-00-04** | Cooling water loss (<10 L/min) | 3 | 3× Flow | Ramp to 20% | <100 ms | 2×10⁻⁴ |
| **SIF-00-05** | FBG comms loss (>10/zone) | 2 | RTU heartbeat | Zone limit 50% | <500 ms | 5×10⁻⁴ |
| **SIF-00-06** | Drum rotation loss (<10 RPM) | 2 | 2× Encoder | Inverters OFF | <100 ms | 2×10⁻⁴ |
| **SIF-00-07** | Ground fault (NGR >5 A) | 3 | NGR monitor | All OFF + isolate | <50 ms | 1×10⁻⁴ |
| **SIF-00-08** | GIC event (dV/dt > threshold) | 2 | Grid monitor | Ride-through mode | <10 ms | 5×10⁻⁴ |
| **SIF-00-09** | Port valve position mismatch | 2 | Valve FBG | Block stage advance | <500 ms | 5×10⁻⁴ |
| **SIF-00-10** | Carousel index timeout | 2 | Position sensor | Hold + alarm | <1 s | 1×10⁻³ |

### 8.2 SIS Architecture — Physical Independence

```
SIS HIERARCHY (DEDICATED HARDWARE):
┌─────────────────────────────────────────────────────────────────┐
│                    PLANT SIS MASTER (FPGA)                      │
│  • 24 SIL-3 SIF logic (2oo3 voting)                            │
│  • Dedicated PMMA POF ring (VLAN 10, TSN 200 μs slice)         │
│  • No shared power, CPU, memory, network with BPCS             │
│  • Proof test: CT-04 quarterly partial-stroke, annual full     │
└─────────────────────────┬───────────────────────────────────────┘
                          │
          ┌───────────────┼───────────────┐
          ▼               ▼               ▼
   ┌──────────┐     ┌──────────┐     ┌──────────┐
   │ ZONE RTU │     │ ZONE RTU │     │ ZONE RTU │   (×8)
   │  SIS FPGA│     │  SIS FPGA│     │  SIS FPGA│
   │  (Artix) │     │  (Artix) │     │  (Artix) │
   └────┬─────┘     └────┬─────┘     └────┬─────┘
        │               │               │
        ▼               ▼               ▼
   3× FBG/zone      3× FBG/zone      3× FBG/zone
   (physically separated angular positions)
```

**Common Cause Failure (β-factor) Analysis:**
- Sensor separation: 3 FBG/zone at 120° intervals → β < 0.01
- Power: Dedicated isolated DC-DC per RTU → β < 0.005
- Network: Dedicated TSN VLAN + time slice → β < 0.005
- Software: Diversity (FPGA vs. ARM vs. PLC) → β < 0.01
- **Total β < 0.03** (well below 0.1 limit for SIL-3)

### 8.3 Proof Test Schedule (CT-04)

| Test | Frequency | Method | Duration |
|------|-----------|--------|----------|
| **Partial Stroke (Online)** | Quarterly | SIF logic injection via TSN | 5 min/zone |
| **Full Function (Offline)** | Annual | Simulated trip conditions | 2 hr/zone |
| **Valve/Actuator Stroke** | Annual | Full travel, timed | 30 min/valve |
| **Sensor Calibration** | Annual | Reference source, 3-point | 1 hr/zone |
| **Communication Test** | Monthly | TSN latency, PTP sync | 10 min |

**PFD<sub>avg</sub> Calculation:** Σ(PFD<sub>sensor</sub> + PFD<sub>logic</sub> + PFD<sub>actuator</sub>) × (1-β) = 2.3×10⁻³ (meets SIL-3 system <10⁻²)

---
