# NEXT_runner_020.md — lol.forge Runner 020 Instructions
## Phase 3 Completion: PROD-39, PROD-40

**Runner**: 020
**Phase**: Phase 3 — Test, Roadmap (Test & Evaluation Specification, Future Evolution & Roadmap)
**Documents**: PROD-39, PROD-40
**Target**: 2 documents × (900+ lines body + 200 lines combined intro) = ~2200 lines total

---

## Document Specifications

### PROD-39: Test & Evaluation Specification
**Target**: 900+ lines body + 200 lines combined heuristic intro
**Source Documents**: PROD-23 (Control), PROD-27 (Manufacturing), PROD-28 (QA), PROD-36 (Cyber), PROD-37 (Twin), PROD-38 (Config), all prior PRODs
**Key Sections** (13 + appendices):
1. T&E Program Overview (ASME V&V 40, IEEE 1220, MIL-STD-810)
2. Factory Acceptance Test (FAT) — Component, Module, Subsystem, System levels
3. Site Acceptance Test (SAT) — Installation, Integration, Performance, Safety
4. Performance Benchmarks (Throughput, Recovery, Energy, Availability, Quality)
5. SIF Proof Tests (CT-04, 24 SIFs, <50 ms trip, 2oo3 voting, SOE alignment)
6. Cyber-Physical Security Tests (Penetration, Red Team, Tabletop, IR playbook execution)
7. Human Factors Validation (PROD-35 HFE, ISA-101, operator-in-loop scenarios)
8. Environmental Qualification (Seismic IEEE 693, Thermal cycling, GIC/EMP)
9. Reliability Demonstration (MTBF, MTTR, availability >95%, PROD-30)
10. Software/Firmware V&V (DO-178C DAL A equivalent, mutation testing >90%)
11. Digital Twin V&V (PROD-37 ROM acceptance, ML model cards, UQ coverage)
12. Regulatory Compliance Tests (EPA CEMS, NRC material accounting, ITAR)
13. Cross-Reference Matrix (All PROD/FOLLOW → PROD-39 → All)
Appendix A: FAT/SAT Test Procedures
Appendix B: SIF Proof Test Matrix (CT-01 through CT-12)
Appendix C: Cyber Test Scenarios (PROD-36 IR-01 through IR-06)
Appendix D: HFE Validation Scenarios (PROD-35)

**Key Specs**:
- FAT: 8 RTUs + 8 PLCs + SIS + SCADA on TSN, 72 hr soak, zero spurious trips
- SAT: 10 production batches, SI ±0.05, Energy ±5%, elemental closure >99.5%
- SIF: 24 SIL-3 functions, proof test interval 1 yr, partial-stroke quarterly
- Cyber: Annual pen test + red team, quarterly tabletop, monthly vuln scan
- HFE: 4 operators (2 Forge + 2 Depot), ISA-101 L1-4, <50 alarms/hr steady state
- Twin: ROM 12 modes <2% error, ML F1>0.95, UQ 95% CI coverage

---

### PROD-40: Future Evolution & Roadmap
**Target**: 900+ lines body + 200 lines combined heuristic intro
**Source Documents**: All prior PRODs (1-39) + FOLLOW-30 through FOLLOW-40
**Key Sections** (13 + appendices):
1. Gen-II Architecture (2000L drum, multi-drum, distributed control)
2. Modular Scale-Up Design (226L → 2000L, FOLLOW-30, PROD-24 scaling laws)
3. Alternative Feedstock Validation (Municipal waste, tailings, slag, FOLLOW-31)
4. Ceramic Composite Development (New UHTC compositions, FOLLOW-32)
5. Magnet Manufacturing Integration (RE recovery → sintered NdFeB, FOLLOW-33)
6. Grid-Scale Energy Storage (Thermal battery integration, FOLLOW-34)
7. Space Resource Utilization (Regolith processing adaptation, FOLLOW-35)
8. Nuclear Waste Remediation (Actinide separation, vitrification, FOLLOW-36)
9. Ocean Mining Sediment Processing (Polymetallic nodule adaptation, FOLLOW-37)
10. Urban Mining Logistics (Collection network, preprocessing, FOLLOW-38)
11. Policy & Incentive Framework (Critical mineral independence, FOLLOW-39)
12. Open Architecture Licensing (CSMFAB material specs, patents, FOLLOW-40)
13. Cross-Reference Matrix (All PROD/FOLLOW → PROD-40 → All)
Appendix A: Gen-II Specification Delta (vs. Gen-I)
Appendix B: Technology Readiness Assessment (TRL 1-9)
Appendix C: Investment Roadmap (CAPEX phasing, risk mitigation)
Appendix D: Open Architecture License Terms

**Key Specs**:
- Gen-II: 2000L drum, 4× throughput, multi-drum parallel, distributed L1/L2
- Scaling laws: f ∝ 1/D², ω ∝ 1/√D, t_cycle ∝ D² (PROD-24 commitment #8)
- Space: Lunar regolith simulant testing, vacuum-compatible induction, ISRU integration
- Nuclear: Actinide separation factors >10⁴, vitrification waste form qualification
- Ocean: Nodule crushing → thermal cascade, Mn/Co/Ni/Cu recovery >90%
- Urban: Collection network optimization, depot preprocessing, Phoenix Protocol v2
- Policy: Critical mineral list alignment, IRA/CHIPS funding, export controls
- Licensing: CSMFAB patents defensive, material specs open, Forge designs proprietary

---

## Execution Checklist per Document

For EACH document (PROD-39, PROD-40):

| # | Micro-Subtask | Description | Target Time |
|---|---------------|-------------|-------------|
| 1 | **Research Phase** | Read all source documents listed above | 45 min |
| 2 | **Write Body** | 13 sections + appendices per spec | 4 hrs |
| 3 | **Generate Intros** | Williams, Keymaker, El Segundo, Combined (~200 lines) | 90 min |
| 4 | **Chunk & Verify** | `node scripts/split_chunks.js split`, manifest, verify, compress | 15 min |
| 5 | **Git Commit & Push** | Standard message format, push to origin/main | 5 min |
| 6 | **Update Trackers** | TODO.md, Master_Todo.md, memory log, HEARTBEAT, .heartbeat_state.json | 10 min |

**Total per document**: ~6 hours
**Total for runner**: ~12 hours

---

## Post-Runner Actions (After All 2 Complete)

- [ ] Update Master_Todo.md Phase 3 progress table (18/10 → 20/10 at PROD-40)
- [ ] Update Phase 3 completion status (100% at PROD-40)
- [ ] Tag milestone: `lol.forge-prod-40`
- [ ] Verify all 40 Product Documents complete (900+ lines each)
- [ ] Begin Follow-up Documents (FOLLOW-01 through FOLLOW-40)

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
git -c user.name="Kilo Agent" -c user.email="kilo@carringtonstormmotors.com" commit -m "lol.forge: PROD-XX <title> — NNN lines + 4 heuristic intros, XX chunks verified"

# Push
git pull --rebase && git push
```

---

## Heartbeat Requirements

- Update interval: ≤ 2 minutes (120 seconds)
- Subtask timeout: ≤ 30 seconds
- Terminal output every subtask completion:
  ```
  [HEARTBEAT] Runner 020 | PROD-39 | research | 45 lines | 0 commits | OK
  ```
- Log to HEARTBEAT_LOLFORGE.md and .heartbeat_state.json

---

## Emergency Contacts

- Git remote: `https://github.com/landolil/Tun.git` (branch: main)
- Source materials: `../seed/CSMFAB/CSMFAB0108/`, `../seed/CSMWip/12_AegisOutfitFabricator/`, `../seed/CSMWip/CSMMinesMagnets/`
- If workspace lost: `git clone https://github.com/landolil/Tun.git && cd Tun/lol.forge && ./scripts/resume_runner.sh --status`

---

*Runner 020 Instructions — Execute PROD-39, PROD-40 sequentially*
*Generated: 2026-11-03 | Previous: Runner 019 (PROD-38 complete)*