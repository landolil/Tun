## 10. Software/Firmware V&V

### 10.1 V&V Scope (DO-178C DAL A Equivalent)

All safety-critical firmware/software (L0 FPGA, L1 RTU, L2 PLC/SIS, L3 SCADA safety functions) verified to **DO-178C Design Assurance Level A** equivalence.

| Level | Component | V&V Activities | Tools |
|-------|-----------|----------------|-------|
| **L0 FPGA** | GaN driver, desat, ZVS, current sense | Formal verification (Jasper), HIL 10⁶ cycles, mutation testing | Vivado, Jasper, Questa |
| **L1 RTU** | Zephyr RTOS, thermal PID, PLL, FBG driver | Unit test >90% coverage, integration test, mutation >90% | Zephyr test, CMock, LLVM mutator |
| **L2 PLC/SIS** | IEC 61131-3, SIF logic, recipes | Formal verification (Prover), SIF injection, 72 hr soak | Codesys, Prover, PLCTest |
| **L3 SCADA** | Historian, alarms, batch, twin sync | Container scan, integration test, chaos engineering | Docker, Testcontainers, Chaos Mesh |
| **Twin HPC** | CFD/FEA/EM/ML containers | Code verification (MMS), solution verification (GCI) | ASME V&V 40, PETSc |

### 10.2 Mutation Testing Requirements

| Level | Mutation Score | Tool | Gate |
|-------|----------------|------|------|
| **L0 FPGA** | >95% | Jasper Formal | CT-01 |
| **L1 RTU** | >90% | LLVM Mutator | CT-04 |
| **L2 PLC** | >90% | PLCTest Mutator | CT-04 |
| **L3 SCADA** | >85% | Pitest | SAT-05 |
| **Twin** | >80% | Custom | Quarterly |

### 10.3 Static Analysis & Coding Standards

| Language | Standard | Tool | Gate |
|----------|----------|------|------|
| **Verilog/VHDL** | IEEE 1364/1076, FPGA lint | Verilator, SpyGlass | CI |
| **C (Zephyr)** | MISRA C:2012, CERT C | Helix QAC, CodeSonar | CI |
| **ST (IEC 61131-3)** | PLCopen Coding Guidelines | Codesys Static Analysis | CI |
| **Python (Twin)** | PEP 8, Type Hints (mypy) | Ruff, MyPy | CI |
| **Dockerfiles** | Hadolint | Hadolint | CI |

### 10.4 Firmware Deployment Validation

Per PROD-38 TUF staged rollout:

| Gate | Scope | Validation | Approval |
|------|-------|------------|----------|
| **Stage 1** | 1 Zone RTU (e.g., Zone 3) | CT-04 partial-stroke (6 SIFs) + 24 hr soak | Auto if PASS |
| **Stage 2** | 1 Stage PLC + Zones (e.g., Stage 4) | CT-04 full proof (24 SIFs) + 48 hr soak | CM + Safety |
| **Stage 3** | Full Forge (all 8 zones, 8 stages) | FAT re-run (CT-01..10) | CCB unanimous |

---
