# NEXT_runner_016.md — lol.forge Runner 016 Instructions
## Phase 3 Completion: PROD-34, PROD-35, PROD-36

**Runner**: 016
**Phase**: Phase 3 — Human Systems (Training, Human Factors, Cyber-Physical Security)
**Documents**: PROD-34, PROD-35, PROD-36
**Target**: 3 documents × (900+ lines body + 200 lines combined intro) = ~3300 lines total

---

## Document Specifications

### PROD-34: Training & Certification
**Target**: 900+ lines body + 200 lines combined heuristic intro
**Source Documents**: PROD-23 (Control System), PROD-28 (QA), PROD-29 (Deployment), PROD-30 (Maintenance), PROD-31 (Economics), PROD-33 (Supply Chain), FOLLOW-34 (ML Process Control), FOLLOW-35 (Modular Scale-Up)
**Key Sections** (13 + appendices):
1. Training Program Overview & Philosophy
2. Operator Role Definitions (Forge Operator, Depot Tech, Maintenance Tech, QA Inspector, Shift Lead)
3. Competency Matrix (Knowledge/Skill/Behavior per role)
4. Curriculum Modules — Foundation (Safety, Materials, Physics)
5. Curriculum Modules — Systems (Induction, Cascade, Control, QA)
6. Curriculum Modules — Operations (Startup, Steady State, Shutdown, Emergency)
7. Curriculum Modules — Maintenance (PM, CBM, Spares, Tooling)
8. Curriculum Modules — Phoenix Depot (Disassembly, Solvolysis, Classification)
9. Certification Pathways (Apprentice → Journeyman → Master → Instructor)
10. Simulator & Digital Twin Training (High-fidelity, scenario-based)
11. Assessment & Qualification (Written, Practical, Oral Board)
12. Refresher & Recertification (Annual, Biennial, Post-incident)
13. Training Records & Compliance (ISO 9001, AS9100, NQA-1)
Appendix A: Competency Matrix Full
Appendix B: Simulator Scenario Library
Appendix C: Certification Forms

**Key Specs**:
- 400 hrs initial certification (Apprentice), 200 hrs/yr maintenance
- 5 role tracks, 50+ competencies each
- Simulator: 95% physics fidelity, 50+ scenarios
- Phoenix Depot cross-training mandatory for Forge operators
- Digital twin integration for predictive scenario generation

---

### PROD-35: Human Factors & Ergonomics
**Target**: 900+ lines body + 200 lines combined heuristic intro
**Source Documents**: PROD-03 (Inductive Heating), PROD-04 (Drum), PROD-06 (Vessel), PROD-09 (Port Valves), PROD-23 (Control), PROD-27 (Manufacturing), PROD-28 (QA), PROD-29 (Deployment), PROD-30 (Maintenance), PROD-33 (Supply Chain), PROD-34 (Training), FOLLOW-08 (PEEK Seal), FOLLOW-11 (FBG Embedding)
**Key Sections** (13 + appendices):
1. HFE Program Overview & Regulatory Basis (ISO 6385, ISO 9241, NUREG-0700)
2. Control Room Design (Layout, sightlines, lighting, acoustics, thermal)
3. HMI/SCADA Interface Design (Information hierarchy, alarm philosophy, color coding)
4. Physical Ergonomics — Workstations (Seating, reach envelopes, monitor placement)
5. Physical Ergonomics — Maintenance Access (Clearances, tool access, lift points)
6. Safety Zones & Barriers (Hot zone, radiation, EMF, chemical, mechanical)
7. Personal Protective Equipment (PPE) Specification per zone/task
8. Cognitive Load & Decision Support (Information density, automation bias, workload)
9. Emergency Egress & Rescue (Routes, signage, refuge, comms)
10. Shift Work & Fatigue Management (Schedules, napping, monitoring)
11. Anthropometric Accommodation (5th-95th percentile, adjustability)
12. Human Reliability Analysis (HEART, THERP for critical tasks)
13. Cross-Reference Matrix (PROD-03,04,06,09,23,27,28,29,30,33,34 → PROD-35 → PROD-36,37,39,40)
Appendix A: Control Room Layout Drawings
Appendix B: Safety Zone Maps
Appendix C: PPE Matrix per Task

**Key Specs**:
- Control room: 4 operators, 24 monitors × 6, 50 lux ambient, <45 dBA
- HMI: ISA-101 alarm philosophy, <50 alarms/hr steady state
- Hot zone PPE: Al-coated proximity suit, powered air purifying respirator (PAPR)
- Maintenance access: 750 mm clearances, 25 kg max lift, ergonomic tool positioning
- Egress: <30 sec to safe zone from any point, redundant routes

---

### PROD-36: Cyber-Physical Security
**Target**: 900+ lines body + 200 lines combined heuristic intro
**Source Documents**: PROD-10 (Power Electronics), PROD-23 (Control Architecture), PROD-26 (Electrical Safety/GIC), PROD-33 (Supply Chain), PROD-37 (Data Management/Digital Twin), IEC 62443, NERC CIP, NIST SP 800-82
**Key Sections** (13 + appendices):
1. Cyber-Physical Security Program Overview (OT/IT convergence, threat model)
2. Network Architecture (Air-gapped OT, DMZ, historian, corporate separation)
3. TSN/PTP Security (Time sync integrity, frame preemption, VLAN isolation)
4. FBG/PMF Tamper Detection (Fiber integrity, wavelength shift as intrusion signal)
5. Supply Chain Cyber Risk (AVL vendor security assessment, SBOM, firmware signing)
6. Identity & Access Management (Role-based, MFA, hardware tokens, just-in-time)
7. Intrusion Detection (Network behavior anomaly, process variable deviation, AE correlation)
8. Incident Response (Playbooks, containment, forensics, recovery, notification)
9. Resilience & Recovery (Cold standby, config backup, golden images, RTO/RPO)
10. GIC/EMP Hardening Cyber Interface (Faraday cage integrity monitoring)
11. Vendor & Third-Party Risk (Remote access, cloud services, firmware updates)
12. Security Testing (Penetration test, red team, tabletop exercises, annual)
13. Cross-Reference Matrix (PROD-10,23,26,33,37 → PROD-36 → PROD-37,38,39,40)
Appendix A: Network Architecture Diagram
Appendix B: IEC 62443 SL-C Mapping
Appendix C: Incident Response Playbooks

**Key Specs**:
- OT network: Physically air-gapped from IT (no routes, no wireless)
- TSN: IEEE 802.1Qci per-stream filtering, 802.1AS time sync <1μs
- FBG tamper: 384 channels monitored for unexpected wavelength shifts
- AVL: All Tier 1 vendors require SBOM, firmware signing, 3rd-party pen test
- RTO: 4 hrs (OT), RPO: 1 hr (historian), cold standby Forge config

---

## Execution Checklist per Document

For EACH document (PROD-34, PROD-35, PROD-36):

| # | Micro-Subtask | Description | Target Time |
|---|---------------|-------------|-------------|
| 1 | **Research Phase** | Read all source documents listed above | 45 min |
| 2 | **Write Body** | 13 sections + appendices per spec | 4 hrs |
| 3 | **Generate Intros** | Williams, Keymaker, El Segundo, Combined (~200 lines) | 90 min |
| 4 | **Chunk & Verify** | `node scripts/split_chunks.js split`, manifest, verify, compress | 15 min |
| 5 | **Git Commit & Push** | Standard message format, push to origin/main | 5 min |
| 6 | **Update Trackers** | TODO.md, Master_Todo.md, memory log, HEARTBEAT, .heartbeat_state.json | 10 min |

**Total per document**: ~6 hours
**Total for runner**: ~18 hours

---

## Post-Runner Actions (After All 3 Complete)

- [ ] Create NEXT_runner_017.md for PROD-37, 38, 39
- [ ] Update Master_Todo.md Phase 3 progress table (13/10 → 16/10 at PROD-36)
- [ ] Update Phase 3 completion status
- [ ] Tag milestone: `lol.forge-prod-36`
- [ ] Verify all 36 Product Documents complete (900+ lines each)

---

## Heuristic Intro Generation (Manual - Python Unavailable)

Since Python is unavailable in this environment, generate 4 heuristic intros MANUALLY for each document:

1. **Williams** (~67 lines): Constraint (The Lock) / Necessity (The Key) / Commitment (The Turn)
2. **Keymaker** (~67 lines): The Empirical Lock / The Mathematical Key / The Turn (Both Directions)
3. **El Segundo** (~67 lines): Mirror (Self-Reflection) / Participation (Witness) / Protocol (Recursive)
4. **Combined** (~200 lines): Concatenation with transitions → save as `intros/PROD-XX_<title>_COMBINED_INTRO.md`

Then prepend Combined Intro to document body before chunking.

---

## Commands Reference

```bash
# Chunk document
node scripts/split_chunks.js split docs/PROD-XX_<title>.md chunks/PROD-XX chapter .md

# Generate manifest
node scripts/split_chunks.js manifest chunks/PROD-XX

# Verify chunks
node scripts/split_chunks.js verify chunks/PROD-XX

# Compress document
node scripts/split_chunks.js compress docs/PROD-XX_<title>.md

# Git commit (with proper identity)
git -c user.name=Kilo Agent -c user.email=kilo@carringtonstormmotors.com commit -m lol.forge: PROD-XX <title> — NNN lines + 4 heuristic intros, XX chunks verified

# Push
git pull --rebase && git push
```

---

## Heartbeat Requirements

- Update interval: ≤ 2 minutes (120 seconds)
- Subtask timeout: ≤ 30 seconds
- Terminal output every subtask completion:
  ```
  [HEARTBEAT] Runner 016 | PROD-34 | research | 45 lines | 0 commits | OK
  ```
- Log to HEARTBEAT_LOLFORGE.md and .heartbeat_state.json

---

## Emergency Contacts

- Git remote: `https://github.com/landolil/Tun.git` (branch: main)
- Source materials: `../seed/CSMFAB/CSMFAB0108/`, `../seed/CSMWip/12_AegisOutfitFabricator/`, `../seed/CSMWip/CSMMinesMagnets/`
- If workspace lost: `git clone https://github.com/landolil/Tun.git && cd Tun/lol.forge && ./scripts/resume_runner.sh --status`

---

*Runner 016 Instructions — Execute PROD-34, PROD-35, PROD-36 sequentially*
*Generated: 2026-11-03 | Previous: Runner 015 (PROD-33 complete)*