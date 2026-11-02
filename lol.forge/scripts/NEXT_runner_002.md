# NEXT_runner_002.md — lol.forge Runner 002 Instructions
## Phase 1: Foundation Architecture — PROD-02, PROD-03 Completion

**Generated:** 2026-10-29 04:00:00 UTC
**Runner:** 002
**Phase:** Phase 1 — Product Documents 1-10
**Estimated Duration:** 1-2 sessions

---

## Status from Runner 001

### COMPLETED: PROD-01
- **Document:** PROD-01 System Overview & Architecture (903 lines)
- **Intros:** Williams (20 lines), Keymaker (33 lines), El Segundo (49 lines), Combined (122 lines)
- **Chunks:** 32 chapters in chunks/PROD-01/ with MANIFEST.json verified
- **Compressed:** docs/PROD-01_System_Overview_&_Architecture.md.gz
- **Git:** Committed and pushed to origin/kilo/dapper-cove-299

### IN PROGRESS: PROD-02, PROD-03
- **PROD-02 Source:** Vol 2 read (391 lines) — Thermal Cascade Process Engineering
- **PROD-03 Source:** Vol 1 coil bank + Materials Study Part I — Inductive Heating Zone Design

---

## Assigned Documents

### PROD-02: Thermal Cascade Process Engineering
**Source:** Aegis-Forge Vol 2 (CSMFAB000000000109) — 391 lines
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Priority:** Critical — Core process definition

### PROD-03: Inductive Heating Zone Design
**Source:** Aegis-Forge Vol 1 (coil bank section) + Materials Study Part I
**Target:** 900+ lines body + 200 lines combined heuristic intro
**Priority:** High — Enables thermal cascade

---

## SUBTASK METHODOLOGY — CRITICAL FOR AVOIDING TIMEOUTS

### The Golden Rule: **No Subtask > 30 Seconds Wall Time**

Every logical step MUST be broken into micro-subtasks that complete in <30 seconds. Treat each micro-subtask as a large task with full verification.

### Micro-Subtask Template

```
# MICRO-SUBTASK: [Specific Action]
## Command:
[exact command to run]
## Expected Output:
[what success looks like]
## Verification:
[how to verify completion]
## Timeout: 30 seconds max
```

### PROD-02 Micro-Subtask Breakdown (Example)

**Instead of:** Write Section 2 - Stage 0 Acoustic Pre-Liberation (100+ lines)

**Break into:**
1. Write Section 2 header + physics overview (20 lines)
2. Write Low-frequency liberation equations (15 lines)
3. Write KNbO₃-BaTiO₃ transducer specs (15 lines)
4. Write Ultrasonic cavitation physics (15 lines)
5. Write Bubble collapse pressure derivation (10 lines)
6. Write Stage 0 output specifications (10 lines)
7. Verify section line count

**Each micro-subtask:** Single `python3 -c ...` write append, then `wc -l` verify

### PROD-03 Micro-Subtask Breakdown (Example)

**Instead of:** Write Section 3 - Zone 1-2 Design (100+ lines)

**Break into:**
1. Write Zone 1-2 header + frequency justification (15 lines)
2. Write Coil geometry for Zone 1 (15 lines)
3. Write Coil geometry for Zone 2 (15 lines)
4. Write Power calculations for organics heating (15 lines)
5. Write Water cooling specs (15 lines)
6. Write Insulation requirements (15 lines)
7. Verify section line count

---

## PROD-02 Detailed Micro-Subtasks

### Phase A: Document Structure (5 micro-subtasks)
- [ ] 2A.1: Write document header (CSMFAB000000000109)
- [ ] 2A.2: Write Section 1 - Thermal Cascade Principles (30 lines)
- [ ] 2A.3: Write Section 1.1 - Cascade Temperature Ramp Protocol table
- [ ] 2A.4: Write Section 1.2 - Stage 0 overview
- [ ] 2A.5: Verify header + Section 1 line count

### Phase B: Stages 0-3 (8 micro-subtasks)
- [ ] 2B.1: Write Stage 0 - Acoustic Pre-Liberation physics (25 lines)
- [ ] 2B.2: Write Stage 0 - Low-frequency equations (20 lines)
- [ ] 2B.3: Write Stage 0 - Ultrasonic cavitation (20 lines)
- [ ] 2B.4: Write Stage 0 - Output specs (15 lines)
- [ ] 2B.5: Write Stage 1 - Drying/Volatiles target materials (25 lines)
- [ ] 2B.6: Write Stage 1 - SiC glow bar IR heating (25 lines)
- [ ] 2B.7: Write Stage 1 - Water/volatile recovery (20 lines)
- [ ] 2B.8: Verify Stages 0-1 line count

- [ ] 2B.9: Write Stage 2 - Polymer melt table (25 lines)
- [ ] 2B.10: Write Stage 2 - Melt centrifuge physics (25 lines)
- [ ] 2B.11: Write Stage 2 - PVC/HCl management (20 lines)
- [ ] 2B.12: Write Stage 2 - Output specs (15 lines)
- [ ] 2B.13: Verify Stage 2 line count

- [ ] 2B.14: Write Stage 3 - Pyrolysis reactions (25 lines)
- [ ] 2B.15: Write Stage 3 - Char yields table (20 lines)
- [ ] 2B.16: Write Stage 3 - FR4 decomposition details (20 lines)
- [ ] 2B.17: Write Stage 3 - Char applications (20 lines)
- [ ] 2B.18: Write Stage 3 - Gas management (20 lines)
- [ ] 2B.19: Verify Stage 3 line count

### Phase C: Stages 4-8 (10 micro-subtasks)
- [ ] 2C.1: Write Stage 4 - Low-temp metals table (25 lines)
- [ ] 2C.2: Write Stage 4 - Indium First Strategy (25 lines)
- [ ] 2C.3: Write Stage 4 - Induction selectivity (20 lines)
- [ ] 2C.4: Verify Stage 4 line count

- [ ] 2C.5: Write Stage 5 - Aluminum window physics (25 lines)
- [ ] 2C.6: Write Stage 5 - Centrifuge parameters (20 lines)
- [ ] 2C.7: Write Stage 5 - Slug composition (20 lines)
- [ ] 2C.8: Verify Stage 5 line count

- [ ] 2C.9: Write Stage 6 - Copper recovery sources (25 lines)
- [ ] 2C.10: Write Stage 6 - Precious metals with copper (25 lines)
- [ ] 2C.11: Write Stage 6 - PCB economics (20 lines)
- [ ] 2C.12: Verify Stage 6 line count

- [ ] 2C.13: Write Stage 7 - Ferrous table (25 lines)
- [ ] 2C.14: Write Stage 7 - RE magnet recovery (25 lines)
- [ ] 2C.15: Write Stage 7 - Iron slug specs (20 lines)
- [ ] 2C.16: Verify Stage 7 line count

- [ ] 2C.17: Write Stage 8 - Mineral residue list (25 lines)
- [ ] 2C.18: Write Stage 8 - Zircon dissociation (25 lines)
- [ ] 2C.19: Write Stage 8 - Mineral concentrate analysis (25 lines)
- [ ] 2C.20: Verify Stage 8 line count

### Phase D: Cross-Cutting Sections (8 micro-subtasks)
- [ ] 2D.1: Write Section 11 - Complete Thermal Ramp Protocol with equations
- [ ] 2D.2: Write Section 12 - Gas Management per Stage table
- [ ] 2D.3: Write Section 13 - Control System Integration
- [ ] 2D.4: Write Section 14 - Performance Specifications Table
- [ ] 2D.5: Write Section 15 - Feedstock Blending Strategy
- [ ] 2D.6: Write Section 16 - Economic Model per Stage
- [ ] 2D.7: Write Section 17 - Risk Assessment FMEA
- [ ] 2D.8: Write Section 18 - Conclusion + Downstream Links

### Phase E: Verification & Intros (6 micro-subtasks)
- [ ] 2E.1: Verify total line count >= 900 (`wc -l`)
- [ ] 2E.2: Generate Williams intro (`python3 scripts/generate_intros.py --doc PROD-02 --type prod`)
- [ ] 2E.3: Verify Williams/Keymaker/El Segundo/Combined line counts
- [ ] 2E.4: Split into chunks (`python3 ../../__Python_Tools/write_large_file.py split ...`)
- [ ] 2E.5: Manifest + Verify chunks
- [ ] 2E.6: Compress document

---

## PROD-03 Detailed Micro-Subtasks

### Phase A: Document Structure (4 micro-subtasks)
- [ ] 3A.1: Write document header (CSMFAB000000000XXX)
- [ ] 3A.2: Write Section 1 - Induction Heating Physics Principles (40 lines)
- [ ] 3A.3: Write Section 2 - 8-Zone Coil Bank Architecture overview (30 lines)
- [ ] 3A.4: Verify header + Sections 1-2 line count

### Phase B: Zone-by-Zone Design (8 zones × 4 micro-subtasks = 32 micro-subtasks)
- [ ] 3B.1-3B.4: Zone 1-2 (100 kHz) - header, geometry, power, cooling
- [ ] 3B.5-3B.8: Zone 3 (50 kHz) - header, geometry, power, cooling
- [ ] 3B.9-3B.12: Zone 4-5 (10 kHz) - header, geometry, power, cooling
- [ ] 3B.13-3B.16: Zone 6 (5 kHz) - header, geometry, power, cooling
- [ ] 3B.17-3B.20: Zone 7 (2 kHz) - header, geometry, power, cooling
- [ ] 3B.21-3B.24: Zone 8 (1 kHz) - header, geometry, power, cooling
- [ ] 3B.25-3B.28: Zone comparison table + frequency ladder
- [ ] 3B.29-3B.32: Verify each zone section line count

### Phase C: Deep Engineering (8 micro-subtasks)
- [ ] 3C.1: Write Section 9 - Coil Electromagnetic Design (turns, B-field, current table)
- [ ] 3C.2: Write Section 10 - GaN Resonant Inverter Design (topology, efficiency)
- [ ] 3C.3: Write Section 11 - FBG Sensor Network (384 sensors, multiplexing)
- [ ] 3C.4: Write Section 12 - PID Control System (±5°C)
- [ ] 3C.5: Write Section 13 - Water Cooling System (PEX-a, flow rates)
- [ ] 3C.6: Write Section 14 - Thermal Management (microchannel cold plates)
- [ ] 3C.7: Write Section 15 - Safety Interlocks (hardwired)
- [ ] 3C.8: Write Section 16-18 - Performance, Maintenance, Conclusion

### Phase D: Verification & Intros (6 micro-subtasks)
- [ ] 3D.1: Verify total line count >= 900
- [ ] 3D.2: Generate heuristic intros
- [ ] 3D.3: Verify intro line counts
- [ ] 3D.4: Split into chunks
- [ ] 3D.5: Manifest + Verify chunks
- [ ] 3D.6: Compress document

---

## COMMANDS QUICK REFERENCE

```bash
# Append to document (micro-subtask pattern)
python3 << 'PYEOF'
from pathlib import Path
content = ## Section Title
Content here...

Path(docs/PROD-02_Thermal_Cascade_Process_Engineering.md).write_text(
    Path(docs/PROD-02_Thermal_Cascade_Process_Engineering.md).read_text() + \n + content
)
PYEOF

# Verify line count after each micro-subtask
wc -l docs/PROD-02_Thermal_Cascade_Process_Engineering.md

# Generate intros
python3 scripts/generate_intros.py --doc PROD-02 --type prod

# Chunk/verify/compress
python3 ../../__Python_Tools/write_large_file.py split docs/PROD-02_Thermal_Cascade_Process_Engineering.md chunks/PROD-02 chapter .md
python3 ../../__Python_Tools/write_large_file.py manifest chunks/PROD-02
python3 ../../__Python_Tools/write_large_file.py verify chunks/PROD-02
python3 ../../__Python_Tools/write_large_file.py compress docs/PROD-02_Thermal_Cascade_Process_Engineering.md

# Git commit after each document
git add -A
git commit -m lol.forge: PROD-02 Thermal Cascade — 900+ lines + 200 line combined intro
git push
```

---

## SUCCESS CRITERIA FOR RUNNER 002

- [ ] PROD-02 complete: ≥900 lines body + 200 lines combined intro + chunks verified
- [ ] PROD-03 complete: ≥900 lines body + 200 lines combined intro + chunks verified
- [ ] Master_Todo.md updated with PROD-02, PROD-03 completions
- [ ] TODO.md updated
- [ ] memory/2026-10-29.md appended with session log
- [ ] NEXT_runner_003.md created
- [ ] Git committed and pushed (2+ commits)

---

## HEARTBEAT PROTOCOL

```bash
# Every micro-subtask completion, print:
[HEARTBEAT] Runner 002 | PROD-02 | Stage 0 LF equations | 15 lines added | 245 total | OK
[HEARTBEAT] Runner 002 | PROD-02 | Stage 0 ultrasonic | 20 lines added | 265 total | OK
...
```

**If any micro-subtask exceeds 30 seconds: STOP, commit progress, report blocker.**

---

## NEXT RUNNER PREVIEW (Runner 003)

**Documents:** PROD-04 (ZrB₂-SiC Drum), PROD-05 (Acoustic Liberation), PROD-06 (BFRP Vessel)
**Source:** Aegis-Forge Vol 1 (drum, ports, vessel), Vol 3 (acoustic)
**Focus:** Physical hardware engineering deep-dives

---

*Execute micro-subtasks sequentially. Verify after each. Commit frequently.*
*Runner 002 — Thermal Cascade & Inductive Heating — Begin.*