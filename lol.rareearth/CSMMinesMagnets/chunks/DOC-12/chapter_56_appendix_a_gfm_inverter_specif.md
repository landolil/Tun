# Appendix A: GFM Inverter Specification Sheet (Aegis-Forge 10 MW Module)

| Parameter | Specification | Standard |
|-----------|---------------|----------|
| **Rated Power** | 10 MW (12 MW overload 1 min) | IEEE 2800 |
| **DC Voltage Range** | 800–1200 V (1.5 kV DC bus via DC/DC) | — |
| **AC Voltage** | 13.8 kV (collection) / 33 kV (transmission) | NTSyCS |
| **Topology** | 3L-NPC, SiC MOSFET (1200 V) | — |
| **Control Modes** | Droop, VSM, dVOC (selectable) | IEEE 2800 |
| **Synthetic Inertia** | H = 2–6 s (programmable) | CEN/ACESOL |
| **FFR Response** | < 100 ms (RoCoF), < 200 ms (f-dev) | CEN |
| **Fault Current** | 2.5 pu / 100 ms, 3.0 pu / 20 ms | IEEE 2800, CEN |
| **Ride-Through** | 0.15 pu / 200 ms, 49–51 Hz / 90 min | NTSyCS, CEN |
| **THDv (PCC)** | < 2% (rated), < 3% (all conditions) | IEEE 519 |
| **Blackstart** | Soft ramp (τ=3 s V, τ=5 s f) | IEEE 1547.1 |
| **Islanding Detection** | RoCoF > 0.5 Hz/s, ΔV > 15%, PLL loss | IEEE 1547 |
| **Islanding Transition** | < 50 ms (solid-state breaker) | IEEE 2030.7 |
| **Parallel Operation** | Droop sharing ±2%, virtual impedance | IEEE 1547 |
| **Harmonic Compensation** | 10% current headroom (selective) | IEEE 519 |
| **Operating Temp** | -40°C to +55°C (Atacama rated) | MIL-STD-810 |
| **Altitude** | 0–4500 m (derating > 3000 m) | IEC 60068 |
| **Cybersecurity** | IEC 62443 SL-2, DNP3/SunSpec | IEC 62443 |
| **Certification** | UL 1741 SB, IEEE 1547.1-2020, IEEE 2800 | UL/IEEE |

---
