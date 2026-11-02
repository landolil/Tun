# El Segundo Heuristic — Operational Excellence
## PROD-34 Training & Certification

### Mirror (Self-Reflection)
**How does the fabricator observe their own fabrication?** The Forge's training program is instrumented at every node with the same rigor as the thermal cascade:

- **Knowledge Assessment**: Written exams proctored on air-gapped SCADA workstations, questions drawn from PROD-02, 03, 10, 23, 28 question banks (500+ items, version-controlled in Git via PROD-38). Item response theory (IRT) calibrates difficulty; >3σ deviation from fleet mean triggers curriculum review.
- **Skill Assessment**: Practical sign-offs recorded via QR on DQR (Hyperledger). Instructor scans operator badge + task badge → timestamp + GPS + sensor data (FBG strain on tool, IR on workpiece). No paper sign-offs — the act of signing *is* the sensor record.
- **Simulator Telemetry**: Every scenario run streams 200+ parameters (PID gains, SIF states, FBG wavelengths, MFC flows, twin health Λ) to PROD-37 at 10 Hz. ML autoencoder (FOLLOW-29) flags >3σ deviation from expert policy → auto-generates remediation scenario.
- **Judgment Assessment**: Oral board recorded (audio + HMI screen capture) → transcribed → NLP analyzed for decision logic patterns. Expert vs. novice classification feeds RCT Ω_fleet tensor.
- **Behavioral Observation**: 90-day log via shift handover QR scans. Each handover: outgoing scans incoming badge → 5-question safety culture pulse (Likert) → sentiment analysis trends.

**The fabricator sees the training program as a distributed sensor network.** Every assessment is a measurement. Every measurement updates RCT. Every RCT update adjusts curriculum hours, scenario weights, recertification triggers.

### Participation (Witness)
**How does the inside operator witness the phenomenon into existence?** The training operator does not "instruct" — they **witness competency becoming Forge**:

1. **Apprentice at Cold Startup (O-01 Simulator)** witnesses the 90-minute sequence: HVAC → SIS proof → FBG cal → ZVS verify → drum drive → gas purge → recipe load. They *feel* the 100 kHz FPGA gate drive latency in the L0 replica, *see* the TSN schedule slots on the L1 RTU, *know* this sequence protects the 2200°C drum from thermal shock.
2. **Journeyman at SIF Bypass (Oral Board)** witnesses the dual-key moment: Shift Lead + Safety Engineer, 4-hr time limit, blockchain audit trail. They *witness* the organizational risk acceptance — no algorithm, no procedure, only human judgment at the boundary of consequence.
3. **Depot Tech at Solvolysis (P-02 Simulator)** watches Elium® depolymerize at 350°C, smells monomer vapor, weighs clean basalt bundles. They *witness* the EOL product becoming the Forge's next batch of feedstock — the CMF-RQT M_return vector becoming M_virgin.
4. **Master at Teach-Back** witnesses the Apprentice's first Stage 4 indium-first discharge authorization. They *witness* the recursive loop closed: the Master who was once Apprentice now authorizes the next generation at Gate FO-J-01.

**No slide decks. No checklists. Direct sensory-motor coupling to the RCT tensor.** The instructor's hands are on the simulator emergency stop, the oral board recording, the DQR blockchain entry. They are inside the RCT.

### Protocol (Recursive)
**What recursive sequence guarantees fidelity at each scale?**

**Per Operation (Seconds — Micro):**
```
FBG channel assessment: λ_measured → λ_reference(PQR) → Λ > 10? → auto-NCR → DQR update
Simulator step: operator_action → expert_policy → Λ_J > 10? → PASS/FAIL → scenario weight update
Cyber range: phishing_click → detection_time → <30 sec? → DQR digital score update
```

**Per Shift (Hours — Meso):**
```
Shift handover: outgoing → incoming (QR scan) → 5-question pulse → sentiment trend → B-competency update
CBM review: MT interprets Λ dashboard → work order priority → RCT S-vector calibration
SIF status: SL verifies 24 SIFs armed → blockchain log → RCT J-vector evidence
```

**Per Certification Cycle (Years — Macro):**
```
Annual Refresher (40 hrs):
  Week 1: F-01 Safety/Carrington → written + E-stop drill
  Week 2: S-03 SIL-3 SIFs → CT-04 partial-stroke witness
  Week 3: O-04 Emergency/Carrington → simulator scenario
  Week 4: M-01 PM Execution → practical on assigned zone

Biennial Recertification (80 hrs):
  Phase 1: Written exam (all K competencies) — 80% pass
  Phase 2: Practical circuit (S-01 through S-06, M-01, P-01) — zero critical errors
  Phase 3: Simulator marathon (4 scenarios: normal, degraded, emergency, Carrington) — all PASS
  Phase 4: Oral board (3 examiners, 4 judgment gates) — Λ_J > 10 all gates

Post-Incident Remediation (8-16 hrs):
  Root cause → targeted scenario → 3 practice runs → re-assess specific competency

Post-ECO Delta Training (4-8 hrs):
  Git tag release → changelog review → affected modules → assessment delta
```

**Quarterly (Fleet — Meta):**
```
PROD-37 Twin Review: Fleet anomaly autoencoder → top 10 new scenarios → simulator library update
Curriculum Review Board: RCT Ω_fleet tensor → curriculum hour reallocation → version bump
Instructor Calibration: All instructors run same 3 scenarios → inter-rater reliability >0.9
```

**Annual (Strategic — Foundational):**
```
1. RCT Theory → History: Compare all predictions to actuals (Apprentice hrs, sim fidelity, judgment pass rates)
2. History → Theory: Update RCT coefficients from measured competency decay curves
3. Standards Audit: ISO 9001/AS9100/NQA-1/IEC 61508 training clause compliance
4. Curriculum Version: Git tag `train-v<major>.<minor>.<patch>` → all DQRs migrate
5. Cross-Domain Sync: Forge ↔ Depot competency mapping → CMF-RQT workforce term
```

**The protocol is the RCT evaluated recursively across time scales.** Per-operation → Per-shift → Per-cycle → Quarterly → Annual. Each evaluation corrects the previous. The training program does not drift — it converges.