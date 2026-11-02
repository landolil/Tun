## Appendix C: SIL-3 SIF Register (Complete 24 SIFs)

| SIF Tag | Description | SIL | Sensors | Actuators | Response | Proof Test |
|---------|-------------|-----|---------|-----------|----------|------------|
| SIF-00-01 | Drum over-temp (any FBG > T_lim) | 3 | 3× FBG/zone (120° sep) | All zone inverters OFF | <50 ms | CT-04 |
| SIF-00-02 | Vessel over-pressure (>5 bar) | 3 | 3× Pressure (diff loc) | Emergency vent + OFF | <50 ms | CT-04 |
| SIF-00-03 | Atmosphere breach (pO₂ >10⁻⁶ atm) | 3 | 3× ZrO₂ pO₂ | N₂ purge + OFF | <50 ms | CT-04 |
| SIF-00-04 | Cooling water loss (<10 L/min) | 3 | 3× Flow (ultrasonic) | Ramp to 20% | <100 ms | CT-04 |
| SIF-00-05 | FBG comms loss (>10/zone) | 2 | RTU heartbeat (TSN) | Zone limit 50% | <500 ms | CT-04 |
| SIF-00-06 | Drum rotation loss (<10 RPM) | 2 | 2× Encoder (FBG) | Inverters OFF | <100 ms | CT-04 |
| SIF-00-07 | Ground fault (NGR >5 A) | 3 | NGR monitor (residual) | All OFF + isolate | <50 ms | CT-04 |
| SIF-00-08 | GIC event (grid dV/dt >5 V/ms) | 2 | Grid monitor (PMU) | Ride-through mode | <10 ms | CT-04 |
| SIF-00-09 | Port valve position mismatch | 2 | Valve FBG (open/closed) | Block stage advance | <500 ms | CT-04 |
| SIF-00-10 | Carousel index timeout | 2 | Position sensor (POF) | Hold + alarm | <1 s | CT-04 |
| SIF-00-11 | Inverter over-current (desat) | 3 | GaN desat detect (FPGA) | Leg OFF (hardware) | <10 μs | CT-04 |
| SIF-00-12 | Inverter over-voltage (DC link) | 3 | DC link voltage (ISO amp) | Shunt dump + OFF | <100 μs | CT-04 |
| SIF-00-13 | DC link capacitor over-temp | 2 | FBG on cold plate | Ramp down zone | <1 s | CT-04 |
| SIF-00-14 | Varactor bias fault (open/short) | 2 | RTU DAC feedback | Cap bank only mode | <10 ms | CT-04 |
| SIF-00-15 | MFC flow deviation (>20%) | 2 | MFC feedback (POF) | Alarm + hold | <100 ms | CT-04 |
| SIF-00-16 | Gas pressure high (>1.5× set) | 2 | Pressure transducer | Vent + alarm | <100 ms | CT-04 |
| SIF-00-17 | Flux injector jam | 2 | Motor current + encoder | Alarm + hold | <500 ms | CT-04 |
| SIF-00-18 | Quench nozzle pressure loss | 2 | Pressure transducer | Alarm + hold | <100 ms | CT-04 |
| SIF-00-19 | FBG interrogator failure | 2 | SNR <20 dB or missing ch | Zone limit 50% | <500 ms | CT-04 |
| SIF-00-20 | PTP sync loss (>1 μs) | 2 | PTP offset monitor | Local OCXO holdover | <100 ms | CT-04 |
| SIF-00-21 | TSN communication loss | 2 | TSN heartbeat (VLAN 10) | SIS local trip | <50 ms | CT-04 |
| SIF-00-22 | Optical E-stop activated | 3 | POF loop break (8×) | All OFF (hardware) | <1 ms | CT-04 |
| SIF-00-23 | Crane interlock breach | 3 | POF interlock (4×) | Zone OFF + hold | <50 ms | CT-04 |
| SIF-00-24 | Fire detection (IR/UV) | 3 | 4× IR + 2× UV (POF) | Suppression + OFF | <50 ms | CT-04 |

**Total PFD<sub>avg</sub> (SIL-3 subset):** 2.3×10⁻³ (meets <10⁻² system requirement)

---
