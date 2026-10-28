# TODO.md — lol.forge Active Task List
## Current Session Tasks (Updated in Real-Time)

**Project**: lol.forge — Carrington Storm Motors Forge
**Current Runner**: 001
**Phase**: Phase 1 — Product Documents 1-10
**Session Date**: 2026-10-28

---

## Active Tasks (Runner 001)

### PROD-01: System Overview & Architecture
- [ ] Research: Read Aegis-Forge Vol 1 (CSMFAB000000000108)
- [ ] Research: Extract component diagram, 8-stage table, material BOM, drum specs, coil bank
- [ ] Write: Document header, Purpose & Design Mandate
- [ ] Write: Operating Principle — Thermophysical Cascade Separation
- [ ] Write: Machine Architecture — Full System Description
- [ ] Write: Outer Pressure Vessel & Safety System
- [ ] Write: All-Aegis Material Bill of Construction (24-row table)
- [ ] Write: Feedstock Specifications (Categories A-D)
- [ ] Verify: Body ≥ 900 lines
- [ ] Intro: Williams heuristic (~67 lines)
- [ ] Intro: Keymaker heuristic (~67 lines)
- [ ] Intro: El Segundo heuristic (~67 lines)
- [ ] Intro: Combined (~200 lines)
- [ ] Chunk: Split, manifest, verify, compress
- [ ] Commit: Git add, commit, push

### PROD-02: Thermal Cascade Process Engineering
- [ ] Research: Read Aegis-Forge Vol 2 (CSMFAB000000000109)
- [ ] Research: Extract cascade ramp, all 8 stages, equations
- [ ] Write: Thermal Cascade Engineering — Science of Sequential Separation
- [ ] Write: Stage 0 Acoustic Pre-Liberation (LF + ultrasonic physics)
- [ ] Write: Stage 1 Drying & Volatiles (IR, SiC glow bars, water recovery)
- [ ] Write: Stage 2 Polymer Flow (14 polymers, melt centrifuge, PVC HCl)
- [ ] Write: Stage 3 Pyrolysis & Char (thermoset decomp, char uses, gas mgmt)
- [ ] Write: Stage 4 Low-Temp Metals (Pb/Sn/Zn/In, indium-first strategy)
- [ ] Write: Stage 5 Aluminum Window (660-720°C, centrifuge params)
- [ ] Write: Stage 6 Copper & Precious Metals (5kHz, Au/Ag/Pd recovery)
- [ ] Write: Stage 7 Ferrous Cascade (2kHz, RE magnet recovery)
- [ ] Write: Stage 8 Mineral Residue & Zircon (1676°C dissociation)
- [ ] Verify: Body ≥ 900 lines
- [ ] Intro: Generate 3 heuristics + combined
- [ ] Chunk: Split, manifest, verify, compress
- [ ] Commit: Git add, commit, push

### PROD-03: Inductive Heating Zone Design
- [ ] Research: Vol 1 coil bank + Materials Study coil specs
- [ ] Write: Induction Coil Bank — 8 Independent Zones
- [ ] Write: Coil Construction (Cu tube, Al₂O₃ sleeve, PEX-a cooling, BFRP housing)
- [ ] Write: Induction Frequency Zones Table (100kHz→1kHz, power 0-500kW)
- [ ] Write: Induction Power Control (GaN inverters, FBG sensors, PID ±5°C)
- [ ] Write: Zone-by-Zone Engineering Detail
- [ ] Write: Total Installed Power (500kW, 3-phase 480V)
- [ ] Verify: Body ≥ 900 lines
- [ ] Intro: Generate 3 heuristics + combined
- [ ] Chunk: Split, manifest, verify, compress
- [ ] Commit: Git add, commit, push

---

## Session Tracking

### Memory Log (memory/2026-10-28.md)
- [ ] Append session start entry
- [ ] Log each document completion
- [ ] Log git commits
- [ ] Log any blockers
- [ ] Append session end entry

### Master_Todo.md Updates
- [ ] Check off Phase 0 milestones
- [ ] Check off Runner 001 subtasks as completed
- [ ] Update progress table

### Next Runner Preparation
- [ ] Create NEXT_runner_002.md with PROD-04, PROD-05, PROD-06 assignments

---

## Completed This Session

*Updated as tasks complete*

---

## Blockers

*None currently*

---

## Commands Quick Reference

```bash
# Check current task
cat TODO.md | grep -A 2 "Active Tasks"

# Update task status (manual edit TODO.md)
# Or use: sed -i 's/\[ \]/[x]/' TODO.md for specific lines

# Log to memory
echo "### $(date -u +%H:%M) — PROD-01 research complete" >> memory/2026-10-28.md

# Verify line count
wc -l docs/PROD-01_System_Overview.md

# Heartbeat update
echo "$(date -u +%Y-%m-%dT%H:%M:%SZ) Runner 001 PROD-01 writing 340 lines OK" >> HEARTBEAT_LOLFORGE.md
```

---

*TODO.md is the real-time task tracker. Update immediately on task status change.*
*Master_Todo.md is the master plan. TODO.md is the daily execution view.*