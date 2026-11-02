# Combined Heuristic Introduction
## PROD-38 Configuration Management
### Carrington Storm Motors Forge — Aegis-Forge I Thermal Cascade Inductive Material Separator

---

### Williams Heuristic — Architectural Clarity

#### Constraint (The Lock)
**The Forge cannot be configured by conventional CM systems.** A 2200°C induction furnace with zero-metal hot zone, 384 dielectric FBG sensors, GaN inverters at 100 kHz, SIL-3 SIFs on TSN, physical air-gap, and a Phoenix Protocol circular supply chain has no precedent in any CM framework. Conventional CM assumes: (a) metallic hardware with standard part numbers, (b) copper Ethernet with IP-addressable devices, (c) software/firmware deployed via network, (d) centralized historian with SQL backend, (e) supplier management via ERP with standard BOMs. The Forge violates all five: hardware is ceramic/composite with QR-coded UUIDs, network is PMMA POF with no IP addresses, firmware updates via hardware data diode + TUF, historian is InfluxDB on air-gapped SCADA with merkle integrity, suppliers provide in-house synthesized materials with flash-sinter trial data. The constraint is **physics** — a single untracked configuration change in the drum liner thickness alters thermal stress by 35 MPa (PROD-24); a single unsigned firmware bitstream destroys GaN drivers at 6 V threshold; a single unverified supplier powder batch causes 1000× resistivity flash failure. The configuration baseline is not a database — it is a dielectric requirement.

#### Necessity (The Key)
**The empirical gap is the absence of any CM framework that manages configuration across four physical baselines (As-Designed, As-Built, As-Maintained, As-Operated) linked by UUIDs, with firmware signed by HSM triads, distributed via TUF over a hardware data diode, validated by digital twin at 10 Hz, and anchored to blockchain for regulatory traceability.** No existing standard addresses: (a) CUUID linkage across design/build/maintain/operate for ceramic/composite hardware with no metal tags, (b) SemVer firmware for FPGA/RTU/PLC/SCADA/Twin with triple HSM signatures (Builder+CM+Safety), (c) TUF repository with in-toto attestations distributing over unidirectional data diode, (c) ROM/ML model versioning tied to Git tags with PROD-24/37 validation gates, (d) supplier AVL with 12 Tier 1 requiring SLSA Level 3, SBOM, pen test, secure boot, (e) DR with 4-hour RTO using cold standby golden images validated by CT-04 SIF proof tests. The solution is inevitable because the Forge's physics demands it: the same Git tag chain that versions PROD documents versions the FPGA bitstream that drives the GaN switch that creates the magnetic field that heats the drum that the FBG measures — one cryptographic chain from requirements to physics.

#### Commitment (The Turn)
This document commits to three non-negotiables:
1. **Single Git monorepo as source of truth** — All PROD/FOLLOW docs, firmware, configs, schemas, ROM, ML models, AVL, curriculum versioned together with signed commits, protected branches, tag chain `fpga→rtu→plc→scada→twin→prod`. No external CM tool, no separate databases.
2. **Four baselines immutable via CUUID** — Every configuration item carries a Configuration UUID linking As-Designed tag, As-Built FA data, As-Maintained PM records, As-Operated twin state. Broken linkage = NCR auto-generated, production hold.
3. **Triple-signature firmware chain** — Every SFP signed by HSM-Builder (provenance), HSM-CM (authorization), HSM-Safety (SIL-3 envelope). No firmware deploys without all three. TUF repository enforces this at data diode ingress.

These commitments are irreversible. They define the Forge's configuration immune system. Any deviation requires SCSC unanimous approval and re-validation of the SIL-3 SIF proof test (CT-04) which is the gate to hot commissioning.

---

### Keymaker Heuristic — Implementation Precision

#### The Empirical Lock
**Fabrication fidelity gap:** Conventional CM tools — GitLab, GitHub Enterprise, Azure DevOps, Jira + Confluence, Polarion, Jama, DOORS — assume: (a) IP-connected repositories with web-based review, (b) standard SemVer for software only, hardware tracked separately in PLM/ERP, (c) firmware deployed via network (Jenkins, ArgoCD, Flux), (d) supplier data in ERP with manual BOM sync, (e) DR via cloud backup/restore with RTO hours-days. They cannot model: (a) physically air-gapped Git repo where the only CI/CD is sneakernet + data diode pull, (b) unified SemVer across FPGA bitstream, RTU firmware, PLC program, SCADA containers, Twin software, ROM export, ML models — all in one tag chain, (c) firmware distribution via TUF over hardware data diode with staged rollout (1 zone → 1 stage → full) gated by CT-04 SIF proof tests, (d) CUUID linking As-Designed Git tag → As-Built FA data package → As-Maintained PM record → As-Operated twin merkle root, (e) supplier AVL as versioned YAML in Git with SCN-triggered ECOs, FA requirements per tier, requal periods. The lock is that **no existing CM tool computes the Forge's configuration physics where the Git tag IS the firmware signature, the CUUID IS the hardware traceability, the TUF target IS the deployment gate, the CT-04 test IS the merge criterion, and the blockchain anchor IS the audit evidence.**

#### The Mathematical Key
**The single computational primitive is the Baseline Convergence Operator (BCO) evaluated at each ECO gate:**

```
BCO[ECO, CI_set, baseline_set] → {PASS, FAIL, CONDITIONAL}

baseline_set = {
  As_Designed:   tag_d  // Git tag, signed, cross-ref matrix valid
  As_Built:      tag_b  // FA data packages signed, CT-01..10 passed
  As_Maintained: tag_m  // PM records current, spares match, mods tracked
  As_Operated:   tag_o  // Recipes versioned, twin sync <3σ, certs valid
}

CUUID = hash(tag_d || tag_b || tag_m || tag_o || CI_spec_hash)

ECO_gate(eco_class):
  if eco_class == CRITICAL:
    require: BCO(eco, CI_affected, {tag_d', tag_b, tag_m, tag_o}) == PASS
           ∧ CT-04 partial-stroke (6 SIFs) PASS
           ∧ Safety + Cyber unanimous
  if eco_class == MAJOR:
    require: BCO(eco, CI_affected, {tag_d', tag_b', tag_m', tag_o'}) == PASS
           ∧ CT-04 full proof (24 SIFs) PASS
           ∧ CCB majority
  if eco_class == MINOR:
    require: BCO(eco, CI_affected, {tag_d'}) == PASS
           ∧ Regression test PASS
```

**This one operator generates the entire CM program:** GitOps workflow, ECO lifecycle, baseline linkage, firmware signing, supplier SCN, DR validation, audit evidence, cyber config, training config. Every parameter in this document is a projection of BCO evaluated at ECO class × CI type × baseline × gate.

**The atomic computation is the CUUID hash chain:**
```
CUUID = SHA-256(
  Git_tag_designed   ||  // e.g., "prod-v3.2.1"
  Git_tag_built      ||  // e.g., "build-v3.2.0"
  Git_tag_maintained ||  // e.g., "maintain-v3.2.1"
  Git_tag_operated   ||  // e.g., "operate-v3.2.2"
  CI_spec_hash          // SHA-256 of PROD spec section for this CI
)
```
This 256-bit value is the **configuration DNA** — immutable, traceable, verifiable at any point in the lifecycle. The QR code on the drum flange encodes this. The blockchain anchor records this. The digital twin validates this at 10 Hz.

#### The Turn (Both Directions)

**Theory → History Validation:**
- BCO predicts CUUID linkage catches drum liner change (ECO-1042) → matches PROD-24 stress analysis: 35 MPa delta detected at As-Built gate
- BCO predicts triple-signature firmware blocks unsigned bitstream → matches PROD-10 EMC test: unsigned FPGA caused shoot-through in lab
- BCO predicts TUF staged rollout prevents fleet-wide bad deploy → matches PROD-36 red team: malicious firmware contained at Zone 3 gate
- BCO predicts AVL SCN triggers ECO for GaN supplier process change → matches PROD-33: SUP-001 site move caught, 3 FA required
- BCO predicts DR cold standby restores in <4 hrs → matches PROD-29 SAT rehearsal: 3 hr 42 min full restore

**History → Theory Correction:**
- Drum Gen-2 FBG channel count increase (48→64/zone) → added CI-02-01 variant tracking to CUUID spec hash
- Supplier SUP-002 ZrB₂ batch impurity shift → added flash-sinter trial to FA requirements, updated AVL requal period 12→6 mo
- FPGA bitstream timing closure failure at 100 kHz → added HIL 10⁶ cycles to CT-01, updated BCO Critical gate
- Twin ROM drift >3σ after 6 months → added monthly ROM checksum to As-Operated baseline, auto-retrain trigger
- Emergency ECO-1045 (SIF-12 logic error) → added 4-hour Critical path, verbal CM+Safety approval, CT-04 within 7 days

**The primitive absorbs history** — each anomaly tightens a gate, adds a signature, extends a requal period, but the BCO structure across four baselines and five ECO classes remains invariant. The CM program is not a compliance checklist — it is the physical manifestation of baseline convergence evaluated across 80 documents, 12 CI categories, 12 Tier-1 suppliers, 4 firmware layers, and infinite ECO generations.

---

### El Segundo Heuristic — Operational Excellence

#### Mirror (Self-Reflection)
**How does the fabricator observe their own fabrication?** The Forge's CM system is instrumented at every node with the same rigor as the thermal cascade:

- **Git Commit Mirror (Per Commit):** Every commit to main/release — signature verified, lint passed, typecheck passed, test passed, split-chunks verified. The CI pipeline *sees* the change before it enters the baseline. Unsigned commit = rejected. Broken chunk = rejected. Failed test = rejected.
- **ECO Gate Mirror (Per ECO):** Every ECO at CCB — BCO evaluated, Safety verdict, Cyber verdict, QA verdict, traceability matrix updated. The CCB *watches* the configuration converge. Conditional approval = mandatory follow-up ECO tracked.
- **Baseline Drift Mirror (Per Batch):** Every production batch — As-Operated vs. As-Designed Δx measured by twin (PROD-37). CUUID linkage verified. Firmware hashes vs. TUF targets compared. SBOM diff computed. The twin *watches* the configuration hold.
- **Supplier Mirror (Per SCN):** Every supplier change notification — impact analysis logged, FA data received, requalification scheduled. The AVL *watches* the supply chain stabilize.
- **DR Mirror (Per Quarter):** Every DR rehearsal — cold standby booted, golden images verified, RTO/RPO measured, blockchain continuity checked. The standby *watches* the recovery capability persist.

**The fabricator sees the CM system as a distributed verification network.** Every commit, ECO, batch, SCN, rehearsal is a measurement. Every measurement updates BCO. Every BCO update adjusts gates, signatures, requal periods, rehearsal frequency.

#### Participation (Witness)
**How does the inside operator witness the phenomenon into existence?** The Configuration Manager does not "administer a tool" — they **witness the configuration becoming the Forge's genetic code**:

1. **CM at ECO Gate (CCB Meeting)** witnesses the BCO evaluation: As-Designed tag, As-Built FA data, As-Maintained PM record, As-Operated twin state — four baselines converging on one CUUID. They *witness* the configuration becoming truth — no database, only physics-enforced cryptographic linkage.
2. **Safety Engineer at Firmware Signing** witnesses the HSM ceremony: Builder key + CM key + Safety key — three signatures on one SFP. They *witness* the SIL-3 envelope becoming code — no algorithm accepts the risk, only human judgment at the boundary of consequence.
3. **Supplier Quality at SCN Disposition** witnesses the FA data package: 3 units, CT tests, material certs, process records. They *witness* the supply chain becoming trust — no ERP entry, only empirical validation.
4. **Shift Lead at DR Rehearsal** witnesses the cold standby boot: Git clone → golden images → firmware verify → twin sync → CT-04 SIF proof. They *witness* the recovery becoming capability — no runbook, only muscle memory.
5. **Auditor at Continuous Twin Audit** witnesses the 10 Hz CUUID verification: Process state vs. As-Operated baseline, merkle chain intact, firmware hashes matching. They *witness* the configuration becoming immortal — no sampling, only continuous proof.

**No dashboards without gates. No approvals without signatures. No baselines without CUUIDs. Direct sensory-motor coupling to the BCO tensor.** The CM's hands are on the HSM, the Git tag, the CUUID, the SCN, the DR script. They are inside the BCO.

#### Protocol (Recursive)
**What recursive sequence guarantees fidelity at each scale?**

**Per Commit (Seconds — Micro):**
```
git push → CI: signature → lint → typecheck → test → chunks → merge gate
```

**Per ECO (Days — Meso):**
```
INITIATE → ANALYZE (impact, risk, CIs) → REVIEW (CCB: Safety, Cyber, QA, Ops, SC, Training)
→ APPROVE (BCO PASS) → IMPLEMENT (feature branch, signed commits) → VERIFY (CT tests, regression, twin)
→ CLOSE (tags updated, DQR blockchain, lessons learned)
```

**Per Batch (Hours — Macro):**
```
Batch start: As-Operated tag verified, recipes versioned, operator certs valid
Batch run: Twin sync <3σ, CUUID linkage intact, firmware hashes match TUF
Batch end: As-Maintained updated (PM records), As-Operated updated (twin merkle)
```

**Per Quarter (Foundational):**
```
1. BCO Theory → History: All ECOs, all batches, all SCNs, all DR rehearsals vs. predictions
2. History → Theory: Update gates, signatures, requal periods, rehearsal scripts
3. Internal CM Audit: Checklist D.1-D.6, evidence package, blockchain anchors
4. DR Rehearsal: Full cold standby → RTO/RPO → CT-04 → lessons learned
5. AVL Requal: Tier 1 suppliers — FA data, process audit, SCN review
6. Version Sync: All tags (prod, follow, fpga, rtu, plc, scada, twin, rom, ml, sec, avl, curr, sim)
```

**Per Year (Strategic):**
```
1. Architecture Review: 4 baselines still valid? New CI types? New threat models?
2. Standards Audit: ISO 10007, AS9100, NQA-1, IEC 61508, IEC 62443 SL-4, ISO 9001
3. External CM Audit: Registrar verifies full CM program, supplier CM, DR test
4. Roadmap Sync: PROD-40 Gen-II → CM evolution (multi-drum, distributed Git, quantum signatures)
5. Cross-Domain Sync: Forge ↔ Depot ↔ Supply Chain CM contracts → CUUID ↔ DQR ↔ AVL
```

**The protocol is the BCO evaluated recursively across time scales.** Per-commit → Per-ECO → Per-batch → Per-quarter → Per-year. Each evaluation corrects the previous. The CM system does not drift — it converges.

---

### Synthesis: The Three Prongs as One

The Williams Constraint (air-gap, dielectric, SIL-3, zero-metal, Carrington-immune, circular supply) **defines the feasible region** of configuration management. The Keymaker Key (BCO operator across four baselines) **navigates the feasible region** to the optimal CM architecture — single Git monorepo, CUUID linkage, triple-signature firmware, TUF over data diode, CT-04 gated deployment. The El Segundo Protocol (recursive evaluation at 5 time scales) **guarantees the operating point is held** against ECO drift, supplier changes, firmware rot, twin divergence, and disaster scenarios.

**Together they form the Forge's configuration immune system:** It rejects conventional CM tools (Williams), computes the optimal baseline convergence operator (Keymaker), and self-corrects at every temporal scale (El Segundo). This is not a CM program — it is a **genetic integrity engine** that runs on physics, not policies.

*End of Combined Heuristic Introduction — ~200 lines*
*To be prepended to PROD-38 Configuration Management body*# PROD-38: Configuration Management
## CSMFAB000000000138 — Aegis-Forge I Planetary Centrifugal Inductive Material Separation
### Series: TCIMS (Thermal Cascade Inductive Material Separator) | Volume: Configuration Management & Change Control
**Document Number:** CSMFAB000000000138 (Product Document 38 of 40)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** 2026-11-03 | **Classification:** Product Specification — Foundation Technology

---

## 1. Configuration Management Program Overview

### 1.1 Purpose & Scope

This document establishes the Configuration Management (CM) program for the Aegis-Forge I Thermal Cascade Inductive Material Separator, governing all hardware, software, firmware, documentation, and data configurations across the system lifecycle — from design through manufacturing, deployment, operations, maintenance, and Phoenix Protocol circular returns.

The CM program implements **IEC 61508** (Functional Safety), **AS9100** (Aerospace Quality), **NQA-1** (Nuclear Quality), **ISO 10007** (Configuration Management), and **IEC 62443** (Industrial Cybersecurity) requirements in a unified framework tailored to the Forge's unique constraints: zero-metal hot zone, all-dielectric control network, physical air-gap, and Carrington-class GIC immunity.

### 1.2 CM Program Principles

| Principle | Forge Implementation |
|-----------|---------------------|
| **Single Source of Truth** | Git monorepo (this document's repository) — all PROD/FOLLOW docs, firmware, configs, schemas versioned together |
| **Traceability** | Every artifact linked via UUID to requirements, tests, changes, and deployment instances |
| **Baseline Integrity** | Four baselines (As-Designed, As-Built, As-Maintained, As-Operated) maintained with signed gates |
| **Change Control** | ECO process with classification, impact analysis, multi-discipline review, staged deployment |
| **Auditability** | Immutable Git history + blockchain anchors (DQR) + quarterly internal / annual external audits |
| **Cyber Integrity** | Signed firmware, SBOM per release, secure boot, SLSA Level 3 build pipeline (PROD-36) |

### 1.3 Configuration Item (CI) Taxonomy

All configuration items are classified into the following hierarchy:

```
CI-01  SYSTEM CONFIGURATION
  CI-01-01  Forge Instance (site-specific: Forge-001, Forge-002, ...)
  CI-01-02  System Architecture Baseline (PROD-01, PROD-23, PROD-38)
  CI-01-03  Interface Control Documents (ICDs) — all internal/external interfaces

CI-02  HARDWARE CONFIGURATION
  CI-02-01  Drum Assembly (ZrB₂-SiC, liner zones, FBG embeds, ports) — serialized
  CI-02-02  BFRP Pressure Vessel (filament wound, aerogel, glaze, flanges) — serialized
  CI-02-03  Induction Coil Bank (8 zones, windings, supports, water cooling) — lot tracked
  CI-02-04  Port Valve System (Ti₃AlC₂ actuators, ceramic pistons, PEEK seals) — serialized
  CI-02-05  Carousel & Feed System (BFRP shredder, LIBS, magnetic sep) — serialized
  CI-02-06  Gas Capture & Fume Solidification (scrubbers, plasma torch, carbon beds)
  CI-02-07  Slug Cooling & Output (ZrO₂ molds, quench system, mass spec)
  CI-02-08  Frame & Foundation (BFRP, seismic isolation, thermal breaks)
  CI-02-09  Ancillary Equipment (cranes, hoists, tooling, fixturing)

CI-03  ELECTRONICS & FIRMWARE CONFIGURATION
  CI-03-01  L0 FPGA Bitstreams (8× Zone RTU, 1× SIS, 1× PTP GM) — signed, versioned
  CI-03-02  L1 RTU Firmware (Zephyr RTOS, thermal PID, PLL, FBG driver) — SemVer
  CI-03-03  L2 PLC Programs (8× Stage PLC, IEC 61131-3, SIS logic) — signed
  CI-03-04  L3 SCADA Software (Linux, InfluxDB, OPC-UA, Kafka, HMI) — containerized
  CI-03-05  Digital Twin HPC Software (CFD/FEA/EM/ML containers) — versioned
  CI-03-06  Inverter GaN Driver Firmware (bootloader, Class E tuning LUT) — signed
  CI-03-07  TSN Switch Firmware (gate control lists, VLAN config, PTP) — signed
  CI-03-08  Data Diode Firmware (protocol translation, merkle, rate limit) — signed

CI-04  DOCUMENTATION CONFIGURATION
  CI-04-01  Product Documents (PROD-01 through PROD-40) — this repo, Git tags
  CI-04-02  Follow-up Documents (FOLLOW-01 through FOLLOW-40) — this repo
  CI-04-03  Heuristic Intros (Williams/Keymaker/El Segundo/Combined) — this repo
  CI-04-04  Test & Evaluation Specs (PROD-39, CT procedures) — this repo
  CI-04-05  Operations & Maintenance Manuals (PROD-29, 30) — this repo
  CI-04-06  Training Curriculum (PROD-34 DQR blockchain) — this repo
  CI-04-07  Regulatory Submissions (PROD-32 permits, certifications) — this repo

CI-05  DATA & MODEL CONFIGURATION
  CI-05-01  Material Property Database (50+ materials, Hermite correlations) — PROD-24
  CI-05-02  ROM Export (POD-Galerkin, 12 modes, JSON) — PROD-24, PROD-37
  CI-05-03  ML Model Cards (autoencoder, CPAT, ROM surrogate) — PROD-37, FOLLOW-29
  CI-05-04  Fleet Parameter Posteriors (HMC chains, 20 params) — PROD-37
  CI-05-05  Sensor Calibration Data (FBG λ₀, TC curves, EM gains) — per-instance
  CI-05-06  Digital Twin State Snapshots (merkle roots, 10 Hz) — blockchain anchored

CI-06  SUPPLIER CONFIGURATION
  CI-06-01  AVL Baseline (Tier 1: 12 critical, Tier 2: 47 standard) — PROD-33
  CI-06-02  First Article Data (FA-01 through FA-14 per supplier) — signed
  CI-06-03  Supplier Change Notifications (SCN) — tracked to ECO
  CI-06-04  Requalification Records (periodic, change-triggered) — PROD-28
```

### 1.4 CM Organization & Responsibilities

| Role | Responsibility | Authority |
|------|----------------|-----------|
| **Configuration Manager (CM)** | Owns PROD-38, CM program, Git repo, baselines, audits | Approve/reject ECOs, authorize baseline releases |
| **Change Control Board (CCB)** | Multi-discipline review of Major/Critical ECOs | Approve/reject Major/Critical ECOs, authorize Emergency ECOs |
| **Safety Engineering** | SIL-3 SIF impact analysis on all changes | Veto any change affecting SIF envelope (24 functions) |
| **Cyber Security (PROD-36)** | Firmware integrity, SBOM, supply chain, secure boot | Veto firmware/software changes failing SLSA Level 3 |
| **Quality Assurance (PROD-28)** | FA data, NCR disposition, audit execution | Hold shipments on NCR, verify ECO closure |
| **Operations (PROD-29)** | As-Operated baseline, recipe management, shift handover | Authorize production baseline, report field anomalies |
| **Maintenance (PROD-30)** | As-Maintained baseline, PM records, spare tracking | Update maintenance baseline, trigger ECOs on mods |
| **Supply Chain (PROD-33)** | AVL management, SCN processing, requalification | Approve/disqualify suppliers, initiate ECOs |
| **Training (PROD-34)** | DQR blockchain, curriculum versioning, simulator config | Certify operators on baseline, report competency gaps |

---

## 2. GitOps Workflow

### 2.1 Repository Structure

The single source of truth is the **lol.forge Git monorepo** (`https://github.com/landolil/Tun.git`, `lol.forge/` subdirectory):

```
lol.forge/
├── docs/                    # PROD-XX, FOLLOW-XX documents (this repo)
├── intros/                  # Heuristic intros (Williams/Keymaker/El Segundo/Combined)
├── chunks/                  # Chapter chunks for large docs (split_chunks.js)
├── scripts/                 # Automation (split_chunks.js, generate_intros.py, etc.)
├── Framework/               # Core framework docs (AGENTS.md, Master_Todo.md, etc.)
├── Research/                # Source materials (CSMFAB, CSMWip)
├── FinishedWork/            # Completed verified documents
├── Logs/                    # Processing logs
├── memory/                  # Daily session logs (YYYY-MM-DD.md)
├── HEARTBEAT_LOLFORGE.md    # Heartbeat configuration
├── .heartbeat_state.json    # Heartbeat state
├── RESUME_SESSION_LOLFORGE.md  # Session resume context
├── TODO.md                  # Active task tracker
├── Master_Todo.md           # Master plan
└── NEXT_runner_XXX.md       # Runner instructions
```

### 2.2 Branching Strategy

| Branch | Purpose | Protection | Merge Policy |
|--------|---------|------------|--------------|
| **main** | Production baseline — only tagged releases | Required PR, 2 approvals (CM + Safety), signed commits, status checks | Fast-forward only from release branches |
| **release/vX.Y.Z** | Release candidate — FAT/SAT validation | Required PR, CCB approval, CT-01 through CT-10 passed | Merge to main via tag `prod-vX.Y.Z` |
| **feature/** | ECO implementation — one branch per ECO | Required PR, 1 approval (discipline lead), signed commits | Squash merge to release branch after CCB |
| **hotfix/** | Emergency ECO — production hotfix | CM + Safety approval, expedited review | Direct to main + release branch, tagged `hotfix-vX.Y.Z` |
| **develop** | Continuous integration — nightly builds | Status checks only (no approvals required) | Auto-merge from feature/ after CI pass |

### 2.3 Commit & Tag Conventions

**Commit Message Format:**
```
<type>(<scope>): <subject>  [ECO-XXXX]

<body>

Signed-off-by: Name <email>
GPG-Signature: <key-id>
```

**Types:** `feat` (new capability), `fix` (defect correction), `docs` (documentation), `config` (configuration), `cm` (CM process), `security` (cyber), `safety` (SIL-3), `test` (test updates), `chore` (maintenance)

**Tag Format:**
- `prod-v<major>.<minor>.<patch>` — Production baseline (e.g., `prod-v3.2.1`)
- `fat-v<major>.<minor>` — FAT baseline (e.g., `fat-v1.0`)
- `sat-v<major>.<minor>` — SAT baseline (e.g., `sat-v1.0`)
- `eco-<number>` — ECO implementation (e.g., `eco-1042`)
- `fpga-v<major>.<minor>.<patch>` — L0 FPGA bitstream
- `rtu-v<major>.<minor>.<patch>` — L1 RTU firmware
- `plc-v<major>.<minor>.<patch>` — L2 PLC program
- `scada-v<major>.<minor>.<patch>` — L3 SCADA software
- `twin-v<major>.<minor>.<patch>` — Digital twin software
- `rom-v<major>.<minor>.<patch>` — ROM export (PROD-24)
- `ml-v<major>.<minor>.<patch>` — ML models (PROD-37)
- `sec-v<major>.<minor>.<patch>` — Security baseline (PROD-36)

**Git Tag Chain (Cryptographic Proof):**
```
fpga-v1.3.7 → rtu-v2.1.4 → plc-v3.0.1 → scada-v1.2.0 → twin-v2.0.0
    ↓            ↓            ↓            ↓            ↓
prod-v3.2.1 ← fat-v1.0 ← sat-v1.0 ← eco-1042 ← eco-1038
```

### 2.4 Signed Commits & Verification

- **All commits to main/release branches MUST be GPG-signed** (developer YubiKey or HSM)
- **CI pipeline verifies signatures** — rejects unsigned commits
- **GitHub Vigilant Mode enabled** — flags unverified signatures
- **Commit signature chain** provides cryptographic provenance from requirements → code → test → deployment

### 2.5 Protected Branch Rules (GitHub)

```yaml
# .github/branch-protection/main.yml
required_pull_request_reviews:
  required_approving_review_count: 2
  dismiss_stale_reviews: true
  require_code_owner_reviews: true
  required_review_thread_resolution: true
required_status_checks:
  strict: true
  contexts:
    - "ci/lint"
    - "ci/typecheck"
    - "ci/test"
    - "ci/signature-verify"
    - "ci/split-chunks-verify"
enforce_admins: true
required_linear_history: true
allow_force_pushes: false
allow_deletions: false
required_conversation_resolution: true
```

---

## 3. Engineering Change Order (ECO) Process

### 3.1 ECO Classification

| Class | Criteria | Max Lead Time | Approval | Deployment |
|-------|----------|---------------|----------|------------|
| **Critical** | Safety (SIL-3), Security (SL-C), Regulatory, Data integrity | 72 hours | CCB unanimous + Safety + Cyber | Staged: 1 zone → 1 stage → full (CT-04 re-test each) |
| **Major** | Performance, reliability, new capability, interface change | 30 days | CCB majority + discipline leads | Staged: 1 zone → 1 stage → full (CT-04 partial) |
| **Minor** | Bug fix, documentation, parameter tuning, cosmetic | 14 days | Discipline lead + CM | Direct to next release branch |
| **Documentation** | Spec clarification, typo, format, non-technical | 7 days | CM only | Direct to main |
| **Emergency** | Production stoppage, imminent safety/security risk | 4 hours | CM + Safety (verbal), CCB ratification within 24h | Direct to main + hotfix tag, CT-04 within 7 days |

### 3.2 ECO Lifecycle

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│  INITIATE   │────►│  ANALYZE    │────►│   REVIEW    │────►│  APPROVE    │
│  (Any role) │     │  (Originator)│     │   (CCB)     │     │  (CCB/Lead) │
└─────────────┘     └─────────────┘     └─────────────┘     └──────┬──────┘
                                                                     │
                    ┌─────────────┐     ┌─────────────┐     ┌────────┴──────┐
                    │   CLOSE     │◄────│  VERIFY     │◄────│  IMPLEMENT    │
                    │  (Originator)│     │  (QA/Ops)   │     │  (Developers) │
                    └─────────────┘     └─────────────┘     └───────────────┘
```

**Detailed Steps:**

1. **INITIATE** — Any role submits ECO request via GitHub Issue template:
   - Title: `ECO-XXXX: <class> - <one-line summary>`
   - Description: Problem statement, proposed change, affected CIs, urgency
   - Auto-assigned ECO number (sequential)

2. **ANALYZE** — Originator (with discipline leads) performs:
   - Impact analysis: affected CIs, test cases, downstream documents, suppliers
   - Risk assessment: SIL-3 impact (PROD-23 Table 6.2), cyber impact (PROD-36 CPAT), schedule
   - Implementation plan: branch name, tasks, test requirements, rollback procedure
   - Cost/schedule estimate

3. **REVIEW** — CCB convenes (weekly for Major, ad-hoc for Critical/Emergency):
   - Safety Engineering: SIL-3 impact verdict (no impact / re-analysis / re-cert)
   - Cyber Security: SL-C impact, firmware signing, SBOM update, supply chain
   - QA: Test plan adequacy, NCR linkage, FA requirements
   - Operations: Production impact, recipe changes, operator retraining
   - Supply Chain: AVL impact, SCN issuance, requalification needs
   - Training: DQR impact, simulator updates, curriculum changes

4. **APPROVE** — CCB decision recorded in GitHub Issue:
   - **Approved**: Implementation branch created, ECO moves to IMPLEMENT
   - **Conditional**: Approved with mandatory conditions (additional test, phased deploy)
   - **Deferred**: Moved to backlog with rationale
   - **Rejected**: Closed with rationale

5. **IMPLEMENT** — Developers work on `feature/eco-XXXX` branch:
   - All changes in single branch (atomic ECO)
   - Signed commits, PR to release branch
   - CI passes: lint, typecheck, test, signature-verify, split-chunks-verify
   - Documentation updated (PROD docs, intros, cross-references)

6. **VERIFY** — QA validates implementation:
   - Unit/integration tests pass (mutation >90%)
   - CT tests executed per test plan (PROD-39)
   - Regression: prior FAT/SAT baselines re-run (automated in CI)
   - Digital twin validation: ROM/ML model cards updated (PROD-37)

7. **CLOSE** — Originator confirms:
   - All acceptance criteria met
   - As-Built/As-Maintained/As-Operated baselines updated
   - DQR blockchain updated (PROD-28, 34)
   - ECO Issue closed with `Closed: ECO-XXXX verified in prod-vX.Y.Z`

### 3.3 ECO Metrics & KPIs

| Metric | Target | Measurement |
|--------|--------|-------------|
| **Critical ECO cycle time** | ≤ 72 hours | Initiate → Approve |
| **Major ECO cycle time** | ≤ 30 days | Initiate → Approve |
| **ECO rejection rate** | < 10% | Rejected / Total submitted |
| **Emergency ECO ratio** | < 5% of total | Emergency / Total approved |
| **Post-deployment defects** | 0 Critical, ≤ 2 Major/quarter | PROD-28 NCRs linked to ECO |
| **Rollback frequency** | 0 per year | Hotfix reverts |

---

## 4. Baseline Management

### 4.1 Four Baseline Views

The Forge maintains four configuration baselines, each a signed Git tag with associated artifacts:

| Baseline | Scope | Tag Format | Update Trigger | Consumers |
|----------|-------|------------|----------------|-----------|
| **As-Designed** | Engineering intent — PROD docs, ICDs, schemas, models | `design-vX.Y.Z` | ECO approval (Major/Critical) | Engineering, CCB, QA |
| **As-Built** | Manufacturing realization — FA data, CT results, serial numbers | `build-vX.Y.Z` | FAT completion (CT-01..10 passed) | QA, Deployment, Supply Chain |
| **As-Maintained** | Maintenance state — PM records, modifications, spare levels | `maintain-vX.Y.Z` | PM completion, field modification ECO | Maintenance, Reliability |
| **As-Operated** | Operational state — recipes, parameters, operator certs, twin state | `operate-vX.Y.Z` | Batch recipe auth, shift handover, twin sync | Operations, Training, Fleet |

### 4.2 Baseline Linkage via UUID

Every configuration item carries a **Configuration UUID (CUUID)** linking all four views:

```json
{
  "cuuid": "CI-02-01-DRUM-2026-00042",
  "ci_type": "CI-02-01",
  "description": "Drum Assembly, Forge-003, Liner B ZrB₂-SiC",
  "baselines": {
    "as_designed": {
      "tag": "design-v3.2.1",
      "spec": "PROD-04 rev 3.2.1",
      "drawing": "DRW-DRUM-042 rev C"
    },
    "as_built": {
      "tag": "build-v3.2.0",
      "serial": "DRM-2026-00042",
      "fat_data": "CT-01 through CT-10 passed 2026-10-15",
      "material_certs": ["BATCH-ZRB2-2026-087", "BATCH-SIC-2026-112"]
    },
    "as_maintained": {
      "tag": "maintain-v3.2.1",
      "last_pm": "CT-08 2026-11-01 (2000 hr reline)",
      "modifications": ["ECO-1042: Liner B thickness +2mm"],
      "spare_status": "Spare DRM-2026-00043 staged"
    },
    "as_operated": {
      "tag": "operate-v3.2.2",
      "current_recipe": "CAT-B-2026-11 v2.1",
      "twin_state": "merkle_root a3f2... block 142857",
      "operator_certs": ["OP-2026-042", "OP-2026-088"]
    }
  },
  "lifecycle": {
    "created": "2026-06-15",
    "manufactured": "2026-10-01",
    "deployed": "2026-10-20",
    "next_pm": "2027-04-01",
    "phoenix_return_est": "2031-10-20"
  }
}
```

### 4.3 Baseline Integrity Verification

**Per Baseline Gate (Automated in CI):**
```
verify_baseline(baseline_tag):
  1. Git tag exists and is signed by CM key
  2. All CIs in baseline have CUUIDs
  3. Cross-reference matrix complete (PROD-38 Sec 13)
  4. For As-Built: all CT tests passed, FA data packages signed
  5. For As-Operated: twin merkle chain intact, recipes versioned
  6. Blockchain anchor verified (DQR, 3 org signatures)
  7. SBOM generated and signed for all firmware (CI-03)
  8. PROD-24 ROM export checksum matches tag
  9. PROD-37 ML model cards versioned
  10. PROD-36 CPAT parameters versioned
```

**Failure Action:** CI pipeline blocks tag creation; manual CM override required with NCR.

---

## 5. Firmware & Software Management

### 5.1 Semantic Versioning (SemVer 2.0)

All firmware/software follows **SemVer** with Forge-specific constraints:

| Component | Version Scheme | Example | Increment Rules |
|-----------|----------------|---------|-----------------|
| L0 FPGA | MAJOR.MINOR.PATCH | `fpga-v2.1.3` | MAJOR: ISA change; MINOR: new zone support; PATCH: timing fix |
| L1 RTU | MAJOR.MINOR.PATCH | `rtu-v3.0.1` | MAJOR: PID algorithm; MINOR: new FBG channels; PATCH: bug fix |
| L2 PLC | MAJOR.MINOR.PATCH | `plc-v4.2.0` | MAJOR: SIS logic; MINOR: recipe schema; PATCH: interlock fix |
| L3 SCADA | MAJOR.MINOR.PATCH | `scada-v1.5.3` | MAJOR: DB schema; MINOR: HMI screen; PATCH: alarm fix |
| Digital Twin | MAJOR.MINOR.PATCH | `twin-v2.0.0` | MAJOR: physics coupling; MINOR: ML model; PATCH: ROM update |
| ROM Export | MAJOR.MINOR.PATCH | `rom-v2.1.3` | MAJOR: mode count; MINOR: material corr; PATCH: coefficient |
| ML Models | MAJOR.MINOR.PATCH | `ml-v3.2.1` | MAJOR: architecture; MINOR: retrain; PATCH: threshold |

### 5.2 Signed Firmware Images

Every firmware release produces a **Signed Firmware Package (SFP)**:

```json
{
  "package": "sfp-rtu-v3.0.1.tar.gz.sig",
  "component": "CI-03-02",
  "version": "rtu-v3.0.1",
  "git_commit": "a1b2c3d4e5f6...",
  "git_tag": "rtu-v3.0.1",
  "builder": "CI-CD Pipeline (SLSA Level 3)",
  "build_timestamp": "2026-11-03T10:45:00Z",
  "sbom": "sbom-rtu-v3.0.1.cyclonedx.json",
  "in_toto": "in-toto-link-rtu-v3.0.1.json",
  "signatures": [
    {
      "role": "builder",
      "key_id": "HSM-BUILDER-01",
      "algorithm": "RSA-PSS-SHA256",
      "signature": "MEUCIQD..."
    },
    {
      "role": "cm",
      "key_id": "HSM-CM-01",
      "algorithm": "RSA-PSS-SHA256",
      "signature": "MEUCIQD..."
    },
    {
      "role": "safety",
      "key_id": "HSM-SAFETY-01",
      "algorithm": "RSA-PSS-SHA256",
      "signature": "MEUCIQD..."
    }
  ],
  "verification": {
    "sha256": "a3f2...",
    "reproducible_build": true,
    "slsa_level": 3,
    "tuf_target": "targets/rtu/v3.0.1/target.json"
  }
}
```

### 5.3 Software Bill of Materials (SBOM)

Every firmware/software release includes a **CycloneDX SBOM** (PROD-36 requirement):

```xml
<?xml version="1.0" encoding="UTF-8"?>
<bom xmlns="http://cyclonedx.org/schema/bom/1.5"
     serialNumber="urn:uuid:3e671680-3c7e-4c2e-8e6a-9f8b7c5d4e3f"
     version="1">
  <metadata>
    <timestamp>2026-11-03T10:45:00Z</timestamp>
    <tools>
      <tool>
        <vendor>Carrington Storm Motors</vendor>
        <name>sbom-generator</name>
        <version>1.2.0</version>
      </tool>
    </tools>
    <component type="application">
      <group>com.csmfab.forge</group>
      <name>rtu-firmware</name>
      <version>3.0.1</version>
      <purl>pkg:github/landolil/Tun/lol.forge/firmware/rtu@3.0.1</purl>
      <hashes>
        <hash alg="SHA-256">a3f2...</hash>
      </hashes>
    </component>
  </metadata>
  <components>
    <component type="library">
      <group>org.zephyrproject</group>
      <name>zephyr-rtos</name>
      <version>3.5.0</version>
      <purl>pkg:github/zephyrproject/zephyr@3.5.0</purl>
      <licenses><license><id>Apache-2.0</id></license></licenses>
    </component>
    <component type="library">
      <group>com.csmfab</group>
      <name>thermal-admittance-lib</name>
      <version>2.1.4</version>
      <purl>pkg:github/landolil/Tun/lol.forge/lib/thermal@2.1.4</purl>
    </component>
    <component type="library">
      <group>com.csmfab</group>
      <name>fbge-driver</name>
      <version>1.3.0</version>
      <purl>pkg:github/landolil/Tun/lol.forge/lib/fbg@1.3.0</purl>
    </component>
  </components>
  <services>
    <service>
      <group>com.csmfab.forge</group>
      <name>twin-sync-service</name>
      <version>2.0.0</version>
      <dataClassification>confidential</dataClassification>
    </service>
  </services>
</bom>
```

### 5.4 TUF Repository & Staged Rollout

**The Update Framework (TUF)** manages firmware distribution across the air-gap:

```
┌─────────────────────────────────────────────────────────────────┐
│                        TUF REPOSITORY (IT Side)                 │
│  ┌─────────┐  ┌─────────┐  ┌─────────┐  ┌─────────┐           │
│  │ Root    │──►│ Targets │──►│ Snapshot│──►│ Timestamp│        │
│  │ Keys    │   │ (Signed)│   │ (Signed)│   │ (Signed)│        │
│  └─────────┘   └────┬────┘   └────┬────┘   └────┬────┘        │
│                    │             │             │              │
│                    ▼             ▼             ▼              │
│  ┌─────────────────────────────────────────────────────────┐  │
│  │              in-toto Attestations (per SFP)             │  │
│  │  layout → inspect → build → sign → package → deploy     │  │
│  └─────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
                              │
                              │ DATA DIODE (OT→IT only for metadata pull)
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                      FORGE OT NETWORK                           │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────────────────┐  │
│  │ TUF Client  │  │ Staging     │  │ Deployment Controller   │  │
│  │ (SCADA L3)  │──►│ VLAN 50     │──►│ (Per-Zone Rollout)    │  │
│  │ Verifies    │  │ (Read-Only) │  │ 1 zone → 1 stage → full │  │
│  │ Root/Sig    │  │              │  │ CT-04 at each gate      │  │
│  └─────────────┘  └─────────────┘  └─────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
```

**Rollout Gates:**
| Gate | Scope | CT-04 Re-test | Approval |
|------|-------|---------------|----------|
| **Stage 1** | 1 Zone RTU (e.g., Zone 3) | Partial-stroke SIFs (6/24) | Auto if all pass |
| **Stage 2** | 1 Stage PLC + Zone RTUs (e.g., Stage 4) | Full SIF proof (24/24) | CM + Safety |
| **Stage 3** | Full Forge (all 8 zones, 8 stages) | Full FAT (CT-01..10) | CCB unanimous |

---

## 6. Hardware Configuration

### 6.1 Drum Generations & Traceability

| Generation | Spec Baseline | Key Changes | Serial Range | Status |
|------------|---------------|-------------|--------------|--------|
| **Gen-1** | PROD-04 rev 1.0 | Initial design, Liner A/B/C, 48 FBG/zone | DRM-2025-00001 to 00010 | Retired (test) |
| **Gen-2** | PROD-04 rev 2.1 | Liner B +2mm, FBG 64/zone, YInMn glaze | DRM-2026-00011 to 00050 | Production |
| **Gen-3 (ECO-1042)** | PROD-04 rev 3.2 | Liner B +2mm, FBG 64/zone, YInMn glaze, port reinforcement | DRM-2026-00051+ | In production |

**QR Traceability:** Each drum carries laser-etched QR code on cold flange:
```
CUUID:CI-02-01-DRUM-2026-00042|GEN:3|BATCH:ZRB2-2026-087|FAT:CT01-10|DATE:20261015
```

### 6.2 Vessel Lots & Filament Winding Parameters

| Lot | Spec Baseline | Layup | Aerogel | Glaze | Serial Range |
|-----|---------------|-------|---------|-------|--------------|
| **VSL-2026-A** | PROD-06 rev 2.0 | ±18°/90° | 50 mm λ=0.010 | YInMn Blue SRI=115 | VSL-2026-001 to 010 |
| **VSL-2026-B (ECO-1038)** | PROD-06 rev 2.1 | ±18°/90° | 50 mm λ=0.010 | YInMn Blue SRI=115, +crack detect | VSL-2026-011+ |

### 6.3 Module Variants & Interchangeability

| Module | Variants | Interchangeability | Qualification |
|--------|----------|---------------------|---------------|
| **Zone RTU** | Standard (all 8) | Fully interchangeable | FA: 3 units CT-01..10 |
| **Inverter** | Z1-2 (100 kHz), Z3 (50 kHz), Z4-5 (10 kHz), Z6 (5 kHz), Z7 (2 kHz), Z8 (1 kHz) | Frequency-specific only | FA: 1 per frequency |
| **Port Valve** | Port 1A-8B (16 total) | Position-specific (actuator stroke) | FA: 2 per position |
| **TSN Switch** | 2× Core, 8× Edge | Core ↔ Core, Edge ↔ Edge | FA: 1 core, 2 edge |

### 6.4 Hardware Change Control

Hardware modifications follow **ECO process (Sec 3)** with additional gates:

1. **Engineering Prototype** — 1 unit built, CT tests, FA data package
2. **First Article (3 units)** — Production line, full CT, supplier FA
3. **Production Cut-in** — ECO-approved, staged per Sec 3.1, serial number break
4. **Field Retrofit** — ECO class Major/Critical, scheduled PM window, As-Maintained update

---

## 7. Document Control

### 7.1 PROD/FOLLOW Document Versioning

PROD-38 **owns versioning** for all 80 documents (40 PROD + 40 FOLLOW):

| Document | Current Version | Git Tag | Baseline | Review Cycle |
|----------|-----------------|---------|----------|--------------|
| PROD-01 through PROD-40 | 1.0 - 3.x | `prod-vX.Y.Z` | As-Designed | Annual + ECO-triggered |
| FOLLOW-01 through FOLLOW-40 | 1.0 - 2.x | `follow-vX.Y.Z` | As-Designed | Annual + ECO-triggered |
| Heuristic Intros | 1.0 | `intro-vX.Y.Z` | As-Designed | With parent document |

### 7.2 Cross-Reference Management

PROD-38 maintains the **Cross-Reference Matrix (Sec 13)** linking all documents:

```
PROD-XX  ──upstream──►  PROD-YY  ──downstream──►  PROD-ZZ
    │                       │                        │
    ▼                       ▼                        ▼
Interface:           Interface:              Interface:
- ICD-XX-YY          - ICD-YY-ZZ            - ICD-ZZ-XX
- Data contract      - Data contract        - Data contract
- Version constraint - Version constraint   - Version constraint
```

**Version Constraint Rules:**
- Downstream document version ≥ Upstream document version (major.minor)
- Patch versions independent (bug fixes don't propagate)
- Breaking changes (major increment) require CCB + all downstream ECOs

### 7.3 Document Change Workflow

Document changes follow **ECO process (Sec 3)** with `docs` type commits:

1. **ECO submitted** — `ECO-XXXX: docs - Update PROD-XX Section Y.Y`
2. **Impact analysis** — Cross-reference matrix check, downstream consumers notified
3. **Draft in feature branch** — Markdown edits, intros regenerated if technical change
4. **Review** — Discipline lead + CM approval (Documentation class ECO)
5. **Merge** — Squash to release branch, tag `prod-vX.Y.Z` or `follow-vX.Y.Z`
6. **Baseline update** — As-Designed tag updated, cross-references refreshed

---

## 8. Supplier Configuration

### 8.1 Approved Vendor List (AVL) Baseline

The AVL is a **Configuration Item (CI-06-01)** versioned in Git:

```yaml
# avl-baseline.yaml (versioned, signed)
avl_version: "3.2.1"
avl_tag: "avl-v3.2.1"
last_updated: "2026-11-03T10:45:00Z"
approved_by: "CM-001, Safety-001, SupplyChain-001"

tier_1_critical:  # 12 suppliers — require SBOM, signed firmware, pen test, SLSA L3
  - id: "SUP-001"
    name: "GaN Systems"
    component: "GS66516T GaN HEMT"
    spec: "PROD-10 Sec 2.2"
    requirements: [SBOM, SIGNED_FIRMWARE, PEN_TEST, SLSA_L3, SECURE_BOOT]
    fa_qty: 3
    requal_period: "12 months"
    scn_process: "MANDATORY"
  - id: "SUP-002"
    name: "CoorsTek"
    component: "ZrB₂-SiC Powder"
    spec: "PROD-04 Sec 2, PROD-24 Table 2.1"
    requirements: [COA, PARTICLE_SIZE, IMPURITY, FLASH_SINTER_TRIAL]
    fa_qty: 3
    requal_period: "6 months"
    scn_process: "MANDATORY"
  # ... 10 more Tier 1

tier_2_standard:  # 47 suppliers — standard QA
  - id: "SUP-020"
    name: "Kamenny Vek"
    component: "Basalt Fiber Roving"
    spec: "PROD-12 Sec 3.1"
    requirements: [COA, TENSILE, CTE, MOISTURE]
    fa_qty: 1
    requal_period: "24 months"
    scn_process: "NOTIFICATION"
  # ... 46 more Tier 2
```

### 8.2 Supplier Change Notification (SCN)

Suppliers **must notify** CSMFAB of any change affecting form, fit, function, or quality:

| Change Type | Examples | SCN Required | Forge Action |
|-------------|----------|--------------|--------------|
| **Major** | Process change, material substitution, site relocation, ownership | YES — 90 days prior | ECO Critical/Major, requalification (3 FA), CT tests |
| **Minor** | Parameter adjustment within spec, tooling refresh, software patch | YES — 30 days prior | ECO Minor, review FA data, sample test |
| **Administrative** | Name change, contact update, cert renewal | NOTIFICATION — 7 days | Update AVL record only |

**SCN Workflow:**
1. Supplier submits SCN via CSMFAB portal (or email with signed PDF)
2. CM logs SCN, assigns tracking number `SCN-YYYY-NNN`
3. Discipline lead performs impact analysis (links to ECO if needed)
4. QA schedules requalification (if Major) or sample verification (if Minor)
5. CCB reviews and approves/rejects
6. AVL baseline updated (new `avl-vX.Y.Z` tag)
7. Supplier notified of disposition

### 8.3 First Article (FA) Requirements

| Supplier Tier | FA Quantity | Tests Required | Data Package |
|---------------|-------------|----------------|--------------|
| **Tier 1 Critical** | 3 units | Full CT-01..10 subset per component | Signed FA report + material certs + process records |
| **Tier 2 Standard** | 1 unit | Key characteristics (per spec) | COA + dimensional + functional test |
| **New Supplier** | 5 units | Full qualification per PROD-28 | Full FA data package + process audit |

---

## 9. Disaster Recovery

### 9.1 DR Strategy & Objectives

| Objective | Target | Mechanism |
|-----------|--------|-----------|
| **RTO (Recovery Time Objective)** | ≤ 4 hours | Cold standby Forge config, golden images, pre-staged spares |
| **RPO (Recovery Point Objective)** | ≤ 1 hour | Historian backup (1 Hz compressed), blockchain anchor (100 s) |
| **MTTR (Mean Time To Restore)** | ≤ 2 hours (single Forge) | Automated restore scripts, validated quarterly |
| **Data Integrity** | Zero loss (merkle) | SHA-256 merkle chain, DQR blockchain, cross-site replication |

### 9.2 Cold Standby Configuration

**Per Forge Site:** One cold standby configuration package stored off-site (geographically separate, EMP-hardened):

| Component | Storage | Update Frequency | Validation |
|-----------|---------|------------------|------------|
| **Git Repo Mirror** | Encrypted LTO-9 + S3 Glacier | Continuous (push mirror) | Quarterly full clone verify |
| **Golden Images (L0-L3)** | Encrypted NVMe (offline) | Per ECO deployment | Quarterly boot + CT-04 |
| **ROM/ML Models** | Encrypted NVMe | Per twin update | Quarterly twin validation |
| **SBOM/In-toto** | Encrypted NVMe | Per firmware release | Quarterly SLSA verify |
| **AVL/SCN Records** | Encrypted NVMe | Continuous (Git mirror) | Quarterly audit |
| **DQR Blockchain Snapshot** | Encrypted NVMe | Per 1000 blocks | Quarterly chain verify |
| **Site-Specific Config** | Encrypted NVMe | Per As-Operated update | Quarterly SAT rehearsal |

### 9.3 DR Activation Procedure

```
DR ACTIVATION (Shift Lead Authority):
1. DECLARE: Shift Lead declares DR event (site loss, cyber, GIC, seismic)
2. NOTIFY: CCB, CSMFAB HQ, Safety, Cyber, Regulatory (per PROD-32)
3. MOBILIZE: Deploy cold standby config to alternate site (pre-identified)
4. RESTORE:
   a. Clone Git mirror → verify signatures, tags, merkle chain
   b. Load golden images (L0 FPGA, L1 RTU, L2 PLC, L3 SCADA)
   c. Load ROM/ML models → verify checksums
   d. Restore historian from 1 Hz backup → verify merkle continuity
   e. Re-establish data diode → verify IT→OT integrity
   f. Re-establish PTP → verify <1 μs sync across all nodes
   g. Run CT-04 partial-stroke (6 SIFs) → verify safety envelope
5. VALIDATE: 30-min soak, zero spurious alarms, twin sync <3σ
6. AUTHORIZE: Shift Lead + Safety Engineer dual-key → resume production
7. DOCUMENT: NCR auto-generated, ECO if permanent, lessons learned
```

### 9.4 Golden Image Management

Golden images are **immutable, signed, versioned artifacts**:

| Image | Build Source | Signature | Test Validation | Storage |
|-------|--------------|-----------|-----------------|---------|
| **L0 FPGA** | `fpga-vX.Y.Z` tag | HSM-CM + HSM-SAFETY | HIL 10⁶ cycles, CT-04 SIS | Offline NVMe + LTO |
| **L1 RTU** | `rtu-vX.Y.Z` tag | HSM-CM + HSM-BUILDER | 72 hr soak, mutation >90% | Offline NVMe + LTO |
| **L2 PLC** | `plc-vX.Y.Z` tag | HSM-CM + HSM-SAFETY | Formal verify + SIF injection | Offline NVMe + LTO |
| **L3 SCADA** | `scada-vX.Y.Z` tag | HSM-CM | Container scan, integration test | Offline NVMe + LTO |
| **Twin** | `twin-vX.Y.Z` tag | HSM-CM | ROM <2% error, ML F1>0.95 | Offline NVMe + LTO |
| **ROM** | `rom-vX.Y.Z` tag | HSM-CM | GCI <2%, PROD-24 validation | Offline NVMe + LTO |

---

## 10. Audit & Compliance

### 10.1 Audit Schedule

| Audit | Frequency | Scope | Auditor | Standard |
|-------|-----------|-------|---------|----------|
| **Internal CM Audit** | Quarterly | All baselines, ECO closure, CUUID linkage, Git tags | CM + QA | ISO 10007, AS9100 |
| **External CM Audit** | Annual | Full CM program, supplier CM, DR test | AS9100 Registrar | AS9100, NQA-1 |
| **SIL-3 SIF Audit** | Annual (PROD-28 CT-04) | 24 SIFs, 2oo3, SOE, proof test | Safety + TÜV | IEC 61508, ISA-84 |
| **Cyber Audit** | Annual (PROD-36) | IEC 62443 SL-4 evidence, pen test, red team | Cyber + External | IEC 62443, NERC CIP |
| **Quality Audit** | Quarterly (PROD-28) | NCR trends, FA data, supplier performance | QA | ISO 9001, AS9100 |
| **Regulatory Audit** | Per permit (PROD-32) | EPA CEMS, NRC material, ITAR | Regulatory + Agency | 40 CFR, 10 CFR, 22 CFR |

### 10.2 Continuous Audit via Digital Twin (PROD-37)

The digital twin provides **continuous configuration audit**:

| Check | Frequency | Alert Threshold |
|-------|-----------|-----------------|
| **Baseline drift** (process vs. twin) | 10 Hz | Δx RMS > 3σ |
| **Firmware hash mismatch** | Boot + weekly | Any mismatch |
| **SBOM drift** (deployed vs. TUF) | Weekly | Any new CVE > CVSS 7 |
| **CUUUID linkage broken** | Per batch | Any CI without 4 baselines |
| **ECO closure overdue** | Daily | > 30 days Major, > 72 hrs Critical |
| **AVL expiration** | Daily | Any Tier 1 > requal_period |

### 10.3 Audit Evidence Package

Each audit produces an **Evidence Package** stored in Git + DQR blockchain:

```
audit-package-YYYY-MM-DD/
├── audit_plan.pdf
├── checklist_completed.xlsx
├── findings/
│   ├── FIND-001_major_cm_drift.md
│   ├── FIND-002_minor_docs_outdated.md
│   └── ...
├── evidence/
│   ├── git_tag_verification.log
│   ├── cuuid_linkage_report.json
│   ├── eco_closure_report.csv
│   ├── sbom_verification.log
│   ├── dr_test_results.pdf
│   └── blockchain_anchor_receipts.json
├── dispositions/
│   ├── FIND-001_CAPA_ECO-1045.md
│   └── ...
├── auditor_signatures.json
└── cm_approval.pdf
```

---

## 11. Cyber Configuration (IEC 62443 SL-C)

### 11.1 Security Level Mapping

| SL-C | Forge Implementation | Evidence |
|------|---------------------|----------|
| **SL-C 1** | All components identified in CI taxonomy (Sec 1.3) | CI registry, CUUID linkage |
| **SL-C 2** | Version control (Git), change control (ECO), access control (IAM) | Git history, ECO records, PROD-36 IAM |
| **SL-C 3** | Signed firmware (HSM), SBOM (CycloneDX), secure boot, TUF | SFP packages, SBOMs, in-toto, TUF repo |
| **SL-C 4** | Supply chain integrity (SLSA L3), hardware root of trust, tamper detection (FBG) | SLSA attestations, HSM keys, PROD-36 FBG tamper |

### 11.2 Firmware Integrity Verification

**Boot-time (Every Power Cycle):**
```
1. FPGA: Bitstream SHA-256 vs. HSM-stored golden hash → mismatch = halt
2. RTU: Firmware SHA-256 vs. TUF target → mismatch = halt + alert
3. PLC: Program CRC vs. signed manifest → mismatch = halt + alert
4. SCADA: Container image digest vs. signed SBOM → mismatch = alert
5. Twin: ROM/ML model checksums vs. Git tags → mismatch = alert
```

**Runtime (Continuous):**
- FBG tamper detection → CPAT update (PROD-36)
- TSN frame anomaly → CPAT update (PROD-36)
- PTP offset > 1 μs → CPAT update (PROD-36)
- Weekly SBOM diff vs. TUF repo → drift = block deploy + vendor CAPA

### 11.3 Secure Boot Chain

```
HSM Root CA (Offline, air-gapped)
    │
    ├── HSM-CM (Configuration Manager) → signs Git tags, ECO approvals
    ├── HSM-BUILDER (CI/CD Pipeline) → signs SFP packages, SBOMs
    ├── HSM-SAFETY (Safety Engineering) → signs SIL-3 artifacts, CT-04
    ├── HSM-CYBER (Cyber Security) → signs CPAT params, TUF root
    └── HSM-OPS (Operations) → signs batch recipes, operator certs

Each Forge node (FPGA, RTU, PLC, SCADA, Twin, Switch, Diode):
  - Stores HSM-CM + HSM-BUILDER + HSM-SAFETY public keys
  - Verifies signature chain: artifact → builder → CM → root
  - Rejects any artifact with broken chain
```

---

## 12. Training Configuration (PROD-34 Integration)

### 12.1 DQR Blockchain Configuration

The **Digital Qualification Record (DQR)** on Hyperledger Fabric (3 orgs: Forge, Depot, Regulator) is a Configuration Item:

| DQR Element | Version Control | Update Trigger | Retention |
|-------------|-----------------|----------------|-----------|
| **Operator Certificates** | Blockchain transaction | PROD-34 certification | Permanent |
| **Curriculum Versions** | Git tag `curr-vX.Y.Z` + blockchain | ECO Documentation/Major | Permanent |
| **Simulator Scenarios** | Git tag `sim-vX.Y.Z` + blockchain | PROD-37 monthly generation | Permanent |
| **Competency Assessments** | Blockchain transaction | Per shift, per scenario | 7 years |
| **Remediation Records** | Blockchain transaction | PROD-34 personalized | 7 years |

### 12.2 Simulator Configuration Management

| Simulator Component | Config Baseline | Version Sync |
|---------------------|-----------------|--------------|
| **Physics Engine** | PROD-37 ROM export (`rom-vX.Y.Z`) | Auto on ROM ECO |
| **ML Anomaly Models** | PROD-37 ML model cards (`ml-vX.Y.Z`) | Auto on ML ECO |
| **HMI Replica** | PROD-35 ISA-101 screens | Auto on HMI ECO |
| **Scenario Packs** | PROD-37 monthly export | Auto on scenario generation |
| **RCT Tensor** | PROD-34 RCT state | Auto per training session |

---

## 13. Cross-Reference Matrix

| This Document | Upstream Source | Downstream Consumer | Interface |
|---------------|-----------------|---------------------|-----------|
| CM Program (Sec 1) | PROD-23 (Arch), PROD-27 (Mfg), PROD-36 (Cyber) | PROD-39 (T&E), PROD-40 (Roadmap) | CI taxonomy, principles |
| GitOps (Sec 2) | PROD-23 (Config), PROD-38 (self) | All PROD/FOLLOW | Branch/tag/commit policy |
| ECO Process (Sec 3) | PROD-23 (Safety), PROD-28 (QA), PROD-36 (Cyber) | All PROD/FOLLOW | ECO classes, CCB, lifecycle |
| Baselines (Sec 4) | PROD-23 (Arch), PROD-27 (Mfg), PROD-29 (Ops), PROD-30 (Maint) | PROD-39 (T&E), PROD-37 (Twin) | 4 baselines, CUUID linkage |
| Firmware (Sec 5) | PROD-10 (Power), PROD-23 (Control), PROD-36 (Cyber), PROD-37 (Twin) | PROD-29 (Deploy), PROD-30 (Maint) | SemVer, SFP, SBOM, TUF |
| Hardware (Sec 6) | PROD-04 (Drum), PROD-06 (Vessel), PROD-09 (Ports), PROD-27 (Mfg) | PROD-28 (QA), PROD-29 (Deploy), PROD-30 (Maint) | Generations, lots, QR trace |
| Document Control (Sec 7) | All PROD/FOLLOW | All PROD/FOLLOW | Version constraints, cross-ref |
| Supplier Config (Sec 8) | PROD-33 (Supply Chain), PROD-28 (QA) | PROD-33 (AVL), PROD-39 (T&E) | AVL baseline, SCN, FA |
| DR (Sec 9) | PROD-29 (Deploy), PROD-30 (Maint), PROD-36 (Cyber), PROD-37 (Twin) | PROD-39 (T&E SAT) | RTO/RPO, golden images |
| Audit (Sec 10) | PROD-28 (QA), PROD-32 (Reg), PROD-36 (Cyber), PROD-37 (Twin) | PROD-32 (Compliance), PROD-39 (T&E) | Schedule, continuous, evidence |
| Cyber Config (Sec 11) | PROD-36 (Cyber), PROD-23 (Control), PROD-10 (Power) | PROD-36 (SL-C), PROD-39 (Cyber test) | SL-C mapping, secure boot |
| Training Config (Sec 12) | PROD-34 (Training), PROD-35 (HFE), PROD-37 (Twin) | PROD-34 (DQR), PROD-39 (HFE val) | DQR blockchain, sim config |

---

## Appendix A: Git Branch/Tag Strategy

### A.1 Branch Naming Convention

```
main                          # Production baseline (tags only)
release/v3.2                  # Release 3.2 candidate
feature/eco-1042-drum-liner   # ECO-1042 implementation
feature/eco-1038-vessel-glaze # ECO-1038 implementation
hotfix/eco-1045-critical-sif  # Emergency ECO-1045
develop                       # Nightly integration
```

### A.2 Tag Naming Convention

| Tag Pattern | Example | Description |
|-------------|---------|-------------|
| `prod-v<M>.<m>.<p>` | `prod-v3.2.1` | Production baseline (all PROD docs) |
| `follow-v<M>.<m>.<p>` | `follow-v2.1.0` | Follow-up baseline (all FOLLOW docs) |
| `fat-v<M>.<m>` | `fat-v1.0` | FAT baseline |
| `sat-v<M>.<m>` | `sat-v1.0` | SAT baseline |
| `eco-<NNNN>` | `eco-1042` | ECO implementation commit |
| `fpga-v<M>.<m>.<p>` | `fpga-v1.3.7` | L0 FPGA bitstream |
| `rtu-v<M>.<m>.<p>` | `rtu-v2.1.4` | L1 RTU firmware |
| `plc-v<M>.<m>.<p>` | `plc-v3.0.1` | L2 PLC program |
| `scada-v<M>.<m>.<p>` | `scada-v1.2.0` | L3 SCADA software |
| `twin-v<M>.<m>.<p>` | `twin-v2.0.0` | Digital twin software |
| `rom-v<M>.<m>.<p>` | `rom-v2.1.3` | ROM export |
| `ml-v<M>.<m>.<p>` | `ml-v3.2.1` | ML models |
| `sec-v<M>.<m>.<p>` | `sec-v1.4.0` | Security baseline |
| `avl-v<M>.<m>.<p>` | `avl-v3.2.1` | AVL baseline |
| `curr-v<M>.<m>.<p>` | `curr-v2.1.0` | Curriculum version |
| `sim-v<M>.<m>.<p>` | `sim-v1.3.0` | Simulator version |

### A.3 Tag Signature Verification

```bash
# Verify production baseline tag
git tag -v prod-v3.2.1
# Output: gpg: Good signature from "CM Key <cm@csmfab.com>"
#         gpg: Good signature from "Safety Key <safety@csmfab.com>"

# Verify firmware tag
git tag -v rtu-v2.1.4
# Output: gpg: Good signature from "Builder Key <builder@csmfab.com>"
#         gpg: Good signature from "CM Key <cm@csmfab.com>"
```

---

## Appendix B: ECO Form Template

```markdown
# ECO-XXXX: <CLASS> - <ONE-LINE SUMMARY>

## 1. INITIATION
- **Originator:** Name, Role, Date
- **Urgency:** Critical / Major / Minor / Documentation / Emergency
- **Problem Statement:** 
- **Proposed Change:** 

## 2. IMPACT ANALYSIS
- **Affected CIs:** (List CUUIDs)
- **Affected Documents:** (PROD/FOLLOW numbers)
- **SIL-3 Impact:** None / Re-analysis / Re-cert (Safety verdict)
- **Cyber Impact:** None / SBOM update / SLSA re-build / Pen test (Cyber verdict)
- **Schedule Impact:** Days to implement, test, deploy
- **Cost Estimate:** $USD
- **Rollback Procedure:** 

## 3. IMPLEMENTATION PLAN
- **Branch:** `feature/eco-XXXX-description`
- **Tasks:** 
  - [ ] Task 1
  - [ ] Task 2
- **Test Requirements:** CT tests, regression, twin validation
- **Deployment Gates:** Per Sec 3.1 staging

## 4. REVIEW & APPROVAL
- **CCB Meeting:** Date, attendees
- **Safety Verdict:** 
- **Cyber Verdict:** 
- **QA Verdict:** 
- **Operations Verdict:** 
- **Supply Chain Verdict:** 
- **Training Verdict:** 
- **Decision:** Approved / Conditional / Deferred / Rejected
- **Conditions (if any):** 

## 5. VERIFICATION
- **Test Results:** Links to CT reports
- **Regression Results:** 
- **Twin Validation:** 
- **As-Built/As-Maintained/As-Operated Updates:** 

## 6. CLOSURE
- **Production Tag:** `prod-vX.Y.Z`
- **DQR Blockchain Tx:** 
- **Lessons Learned:** 
- **Closed By:** Name, Date
```

---

## Appendix C: SBOM Format (CycloneDX 1.5)

See Section 5.3 for complete example. Key requirements:

1. **Component Types:** application, library, framework, operating-system, device, firmware, file
2. **Required Fields:** group, name, version, purl, hashes (SHA-256), licenses
3. **Services:** Include external services (twin-sync, data-diode, historian)
4. **Vulnerabilities:** Include VEX (Vulnerability Exploitability eXchange) for known CVEs
5. **Signing:** SBOM signed by HSM-BUILDER + HSM-CM (detached signature)
6. **Publication:** Published to TUF repository as `targets/<component>/<version>/sbom.cdx.json`

---

## Appendix D: Configuration Audit Checklist

### D.1 Baseline Integrity

- [ ] All 4 baselines have current signed tags
- [ ] All CIs have CUUIDs with 4-baseline linkage
- [ ] Cross-reference matrix complete and current
- [ ] Git tag chain cryptographically verified
- [ ] No unsigned commits on main/release branches

### D.2 ECO Process

- [ ] All open ECOs tracked in GitHub with status
- [ ] No Critical ECO > 72 hours without approval
- [ ] No Major ECO > 30 days without approval
- [ ] Emergency ECOs ratified within 24 hours
- [ ] All closed ECOs have verification evidence

### D.3 Firmware & Software

- [ ] All deployed firmware has SFP with 3 signatures (Builder, CM, Safety)
- [ ] All firmware has CycloneDX SBOM in TUF repo
- [ ] All firmware has in-toto attestations
- [ ] SLSA Level 3 build pipeline passing
- [ ] Secure boot verification passing on all nodes
- [ ] Weekly SBOM diff vs. TUF — no unexplained drift

### D.4 Hardware

- [ ] All deployed hardware has QR traceability to CUUID
- [ ] As-Built baseline matches deployed serial numbers
- [ ] Spare inventory matches As-Maintained baseline
- [ ] Supplier AVL current, no expired requalifications
- [ ] SCN log complete, all dispositions recorded

### D.5 Disaster Recovery

- [ ] Cold standby config verified within last quarter
- [ ] Golden images boot-tested within last quarter
- [ ] DR rehearsal (tabletop or full) within last quarter
- [ ] RTO/RPO targets met in last rehearsal
- [ ] Blockchain anchor continuity verified

### D.6 Audit & Compliance

- [ ] Internal CM audit completed last quarter
- [ ] External CM audit completed last year
- [ ] SIL-3 SIF audit (CT-04) completed last year
- [ ] Cyber audit (IEC 62443 SL-4) completed last year
- [ ] All findings from prior audits closed or tracked to ECO
- [ ] Continuous twin audit alerts < 3σ threshold

---

*End of PROD-38 Configuration Management*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*
*Document Number: CSMFAB000000000138 | Revision: 1.0*