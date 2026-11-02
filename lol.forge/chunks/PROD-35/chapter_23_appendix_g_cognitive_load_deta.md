## Appendix G: Cognitive Load Detailed Analysis (Expanded)

### G.1 NASA-TLX Subscale Definitions for Forge Context

| Subscale | Forge Definition | Measurement Method |
|----------|------------------|-------------------|
| **Mental Demand** | Thermal-admittance model comprehension, cascade mass-energy balance, FBG Λ interpretation | Simulator: secondary task reaction time during steady state |
| **Physical Demand** | PPE don/doff, BFRP tool use, 750 mm reach, 25 kg lift, anti-fatigue mat standing | Wearable: HR, motion capture (opt-in), NIOSH lift index |
| **Temporal Demand** | 1 kHz PID awareness, 100 ms SIF response, 5 ms Carrington island, 30 sec egress | Simulator: time pressure scenarios, timestamped actions |
| **Performance** | Self-rated: mass balance closure, output spec, zero SIF trips, authorization correctness | Post-scenario: 1-100 rating + objective metrics |
| **Effort** | Concentration to maintain situational awareness across 6 monitors, 4 cognitive gates | Pupil dilation (IR camera opt-in), NASA-TLX effort subscale |
| **Frustration** | Alarm chattering, mode confusion, tooling fit, PPE restriction, comms clarity | Facial expression (opt-in), NASA-TLX frustration subscale |

### G.2 Automation Bias Mitigation Implementation (PROD-23, 28, 37)

| Bias | HMI Implementation | Training Implementation |
|------|-------------------|------------------------|
| **Over-reliance on Twin** | Every twin recommendation shows uncertainty badge: "Twin σ = ±12°C" (ensemble std dev) | Simulator: "Twin Wrong" scenarios where ML prediction diverges from physics |
| **Alarm Flood Paralysis** | ISA-18.2 chattering filter (3 alarms/10s same source → suppress), Priority-only audio (P1 only) | PROD-34: Alarm flood scenarios, SL owns alarm response |
| **Confirmation Bias** | Forced "What if wrong?" prompt at SG-2, SG-3, CT-04, SAT-05 (cannot proceed without entry) | Oral board: devil's advocate role played by Safety Engineer |
| **Mode Confusion** | L0/L1/L2/L3 mode explicit: color ring (Blue/Green/Amber/Red) + text + icon on every display | Simulator: mode transition scenarios, explicit mode callouts |
| **Complacency** | Surprise scenarios (unannounced CT-04 partial, FBG drift injection, Carrington trigger) | PROD-34: 50+ scenarios, 20% surprise, expert policy comparison |

### G.3 Workload Redistribution Protocol

**SL Real-Time Workload Monitor (HMI Monitor 4):**
- TLX estimate per operator (TLX_predicted from HSCT)
- Color coding: Green <60, Amber 60-80, Red >80
- Auto-suggestion: "FO-1 TLX 82 → reassign Zone 5 MFC to FO-2"
- SL acknowledgment required for redistribution

---
