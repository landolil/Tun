# NEXT_runner_017.md — lol.forge Runner 017 Instructions
## Phase 3 Completion: PROD-36, PROD-37, PROD-38

**Runner**: 017
**Phase**: Phase 3 — Data, Config, Security (Cyber-Physical Security, Digital Twin, Configuration Management)
**Documents**: PROD-36, PROD-37, PROD-38
**Target**: 3 documents × (900+ lines body + 200 lines combined intro) = ~3300 lines total

---

## Document Specifications

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

### PROD-37: Data Management & Digital Twin
**Target**: 900+ lines body + 200 lines combined heuristic intro
**Source Documents**: PROD-10 (Power Electronics), PROD-23 (Control), PROD-24 (Thermal Model), PROD-28 (QA), PROD-34 (Training), PROD-35 (HFE), PROD-36 (Cyber), FOLLOW-29 (ML Process Control)
**Key Sections** (13 + appendices):
1. Data Architecture Overview (OT historian, IT data lake, twin sync)
2. Sensor Fusion Framework (480+ sensors, 125 Hz FBG, 1 kHz L1, 100 Hz L2, 10 Hz L3)
3. Digital Twin Physics (PROD-24 thermal model, PROD-25 FEA, PROD-10 EM model)
4. Real-Time Twin Sync (OPC-UA + Kafka, 10 Hz, data diode unidirectional)
5. ML Anomaly Detection (Autoencoder, >3σ flags, scenario auto-generation for PROD-34)
6. Fleet Optimization (Bayesian parameter updates, CMF-RQT/RCT/HSCT tensor feeds)
7. Predictive Maintenance (CBM dashboard, Λ thresholds, work order automation)
8. Training Integration (Simulator scenarios from twin, personalized remediation)
9. Cyber-Physical Interface (Air-gap data diode, OT→IT only, integrity verification)
10. Data Governance (Retention, lineage, GDPR/ITAR, blockchain traceability PROD-28)
11. Visualization & HMI (PROD-35 ISA-101, 3D twin view, anomaly cards)
12. Validation & Verification (V&V plan, UQ, ROM, PROD-24 V&V)
13. Cross-Reference Matrix (PROD-10,23,24,28,34,35,36 → PROD-37 → PROD-38,39,40)
Appendix A: Data Flow Diagram
Appendix B: Sensor Catalog with Rates
Appendix C: ML Model Cards

**Key Specs**:
- Historian: InfluxDB on air-gapped SCADA, 10 Hz full state, 1 Hz compressed
- Twin compute: 512-core HPC, CFD+FEA+EM coupled, 10 Hz update
- ML autoencoder: 384-dim FBG state → latent 32 → reconstruction error >3σ = anomaly
- Data diode: Unidirectional OT→IT, 1 Gbps, protocol break at application layer
- Retention: Hot 30 days, Warm 1 yr, Cold 7 yrs (regulatory), Blockchain permanent

---

### PROD-38: Configuration Management
**Target**: 900+ lines body + 200 lines combined heuristic intro
**Source Documents**: PROD-23 (Control), PROD-27 (Manufacturing), PROD-28 (QA), PROD-34 (Training), PROD-35 (HFE), PROD-36 (Cyber), PROD-37 (Twin), GitOps, IEC 61508 CM
**Key Sections** (13 + appendices):
1. Configuration Management Program Overview (IEC 61508, AS9100, NQA-1)
2. GitOps Workflow (Monorepo, trunk-based, protected branches, signed commits)
3. Engineering Change Order (ECO) Process (Classification, impact analysis, approval, implementation)
4. Baseline Management (As-designed, as-built, as-maintained, as-operated)
5. Firmware & Software Management (SemVer, signed images, SBOM, provenance)
6. Hardware Configuration (Drum generations, vessel lots, module variants, QR traceability)
7. Document Control (PROD-38 owns all PROD/FOLLOW versioning, Git tags, cross-references)
8. Supplier Configuration (AVL baseline, FA data, change notification SCN, requalification)
9. Disaster Recovery (Cold standby config, RTO 4hr, RPO 1hr, golden images, PROD-36)
10. Audit & Compliance (ISO 9001/AS9100/NQA-1, quarterly internal, annual external)
11. Cyber Configuration (IEC 62443 SL-C, firmware integrity, secure boot, PROD-36)
12. Training Configuration (DQR on blockchain, curriculum versioning, PROD-34)
13. Cross-Reference Matrix (All PROD/FOLLOW → PROD-38 → All)
Appendix A: Git Branch/Tag Strategy
Appendix B: ECO Form Template
Appendix C: SBOM Format (CycloneDX)
Appendix D: Configuration Audit Checklist

**Key Specs**:
- Git: Monorepo, main branch protected, signed commits (GPG), PR required
- ECO: 5 classes (Critical/Major/Minor/Documentation/Emergency), 30-day max
- Firmware: L0 FPGA, L1 RTU, L2 PLC, L3 SCADA — all signed, SBOM per release
- Baselines: 4 views (design/build/maintain/operate) linked via UUID
- DR: Golden images for L0/L1/L2/L3, cold standby Forge, config restore <4 hrs
- Audit: Quarterly internal (CM), annual external (AS9100), continuous (twin)

---

## Execution Checklist per Document

For EACH document (PROD-36, PROD-37, PROD-38):

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

- [ ] Create NEXT_runner_018.md for PROD-39, 40
- [ ] Update Master_Todo.md Phase 3 progress table (15/10 → 18/10 at PROD-38)
- [ ] Update Phase 3 completion status
- [ ] Tag milestone: `lol.forge-prod-38`
- [ ] Verify all 38 Product Documents complete (900+ lines each)

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
  [HEARTBEAT] Runner 017 | PROD-36 | research | 45 lines | 0 commits | OK
  ```
- Log to HEARTBEAT_LOLFORGE.md and .heartbeat_state.json

---

## Emergency Contacts

- Git remote: `https://github.com/landolil/Tun.git` (branch: main)
- Source materials: `../seed/CSMFAB/CSMFAB0108/`, `../seed/CSMWip/12_AegisOutfitFabricator/`, `../seed/CSMWip/CSMMinesMagnets/`
- If workspace lost: `git clone https://github.com/landolil/Tun.git && cd Tun/lol.forge && ./scripts/resume_runner.sh --status`

---

*Runner 017 Instructions — Execute PROD-36, PROD-37, PROD-38 sequentially*
*Generated: 2026-11-03 | Previous: Runner 016 (PROD-34, PROD-35 complete)*