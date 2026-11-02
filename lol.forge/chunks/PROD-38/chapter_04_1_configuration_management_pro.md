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
