## Appendix H: Shift Work & Fatigue Detailed Protocols (Expanded)

### H.1 Controlled Napping Protocol (Night Shift)

| Parameter | Specification |
|-----------|---------------|
| **Window** | 0200-0400 (circadian nadir) |
| **Duration** | 20 min max (avoid sleep inertia) |
| **Location** | Z0 Sleep Pods (2 pods, soundproof, 20°C, blackout) |
| **Pre-Nap** | Caffeine 100 mg (if >2 hrs since last), eye mask, earplugs |
| **Post-Nap** | 10 min recovery: light exposure 10,000 lux, hydration, brief walk |
| **Logging** | QR scan pod entry/exit → DQR fatigue log |
| **Eligibility** | All night shift operators (FO, DT, MT, QI, SL) |
| **Exclusion** | Post-incident, post-SIF bypass, <4 hrs sleep prior |

### H.2 Fatigue Biomarkers (Optional Opt-In)

| Biomarker | Sensor | Threshold | Action |
|-----------|--------|-----------|--------|
| **HRV (RMSSD)** | Wrist PPG | <20 ms | Mandatory 20-min nap |
| **PERCLOS** | IR camera on monitor | >15% | SL alert, task redistribution |
| **Reaction Time** | HMI secondary task | >2× baseline | SL alert, task redistribution |
| **Samn-Perelli** | Pre-shift QR | >5 | Restricted duty (no authorization gates) |

### H.3 Shift Handover Structure (30-min Overlap)

| Minute | Activity | QR/DQR Log |
|--------|----------|------------|
| 0-5 | Outgoing: Batch status, anomalies, TLX, 3 concerns | Batch UUID, TLX, concerns text |
| 5-15 | Joint: HMI walkthrough Level 1→4, SIF status, Twin health | HMI screenshot hash, SIF bitmap |
| 15-25 | Incoming: Questions, clarifications, authorization gate preview | Q&A log, gate preview |
| 25-30 | Formal: Badge transfer, responsibility assumption, SL sign-off | Dual-badge QR, SL signature |

---
