## Appendix J: Human Reliability Analysis Detailed Calculations (Expanded)

### J.1 HEART Method Application

**Generic Task Types & Nominal HEPs (Williams, 1986):**

| Type | Description | Nominal HEP | 5th-95th %ile |
|------|-------------|-------------|---------------|
| A | Totally familiar, routine, well-designed | 0.0004 | 0.00008–0.004 |
| B | Shift/restore system, procedure | 0.003 | 0.0006–0.03 |
| C | Complex, high comprehension | 0.016 | 0.003–0.05 |
| D | Fairly simple, routine | 0.009 | 0.002–0.03 |
| E | Emergency, abnormal | 0.05 | 0.01–0.15 |
| F | Restore, time pressure | 0.003 | 0.0006–0.03 |

**Error Producing Conditions (EPCs) for Forge Context:**

| EPC | Description | Forge Multiplier | Justification |
|-----|-------------|------------------|---------------|
| 1 | Unfamiliarity | ×17 | New tech (FBG, TSN, GaN) — mitigated by PROD-34 training (×0.5) |
| 2 | Time shortage | ×11 | Carrington 5ms, SIF 50ms — mitigated by automation (×0.5) |
| 3 | Low signal-to-noise | ×10 | Alarm flood — mitigated by ISA-18.2 (×0.3) |
| 4 | Mismatch (mental model) | ×8 | Digital twin vs. reality — mitigated by PROD-34 sim (×0.5) |
| 5 | No/inadequate procedures | ×5 | ISA-88 recipes — mitigated by PROD-29 SOPs (×0.2) |
| 6 | Poor human-machine interface | ×5 | ISA-101 HMI — mitigated by PROD-35 validation (×0.2) |
| 7 | Physical stress | ×4 | PPE, heat, noise — mitigated by PPE design (×0.5) |
| 8 | Mental stress | ×4 | Authorization gates — mitigated by PROD-34 judgment training (×0.5) |

### J.2 THERP Method for Sequential Tasks

**Example: SG-2 Flange Torque Ceremony (PROD-28 Gate SG-2)**

| Step | Action | THERP Table | HEP | Recovery |
|------|--------|-------------|-----|----------|
| 1 | Retrieve torque wrenches (2) | 20-7 (Selection) | 0.003 | Buddy cross-check |
| 2 | Position on bolt 1 | 20-13 (Positioning) | 0.001 | Visual verify |
| 3 | Apply 160 N·m ±5 | 20-14 (Force) | 0.005 | AE silence + dual-wrench |
| 4 | Repeat bolts 2-24 | 20-7 (Repetition) | 0.003×23 | Sequential verify |
| 5 | Re-check all 24 | 20-17 (Inspection) | 0.01 | AE silence final 10 N·m |
| 6 | Log completion | 20-7 (Documentation) | 0.003 | QR scan + SL sign |

**Total HEP (with recovery):** ~0.009 (matches HEART calculation)

---

*End of PROD-35 Human Factors & Ergonomics (Fully Expanded)*
*Document: 900+ lines body + 200-line combined heuristic intro*
*Cross-referenced: PROD-03,04,06,09,10,23,26-30,33,34,37 + FOLLOW-08,11,29*