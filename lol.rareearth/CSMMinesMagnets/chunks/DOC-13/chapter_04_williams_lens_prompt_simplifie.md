# Williams lens prompt (simplified)
WILLIAMS_PROMPT=
Analyze the canonical document through the Williams heuristic:
1. CONSTRAINT (The Lock): What irreducible principle forces this design?
   - Cite Chilean Constitution, Mining Code, Physics, CSM motor physics
2. NECESSITY (The Key): What empirical gap does this resolve? Why inevitable?
   - Cite failure modes of alternatives, measured gaps
3. COMMITMENT (The Turn): What non-negotiable commitments become protocol axioms?
   - Cite governance vetoes, equity thresholds, technical minimums
Output: ~67 lines. Voice: 'The lock is X. The key is Y. The turn is Z.'

```

Each lens receives the **full canonical document** and produces **only its triad** — no awareness of other lenses.

#### 1.5.3 Variant Generation & Synthesis

The `generate_heuristic_intros.sh` script:
1. Reads canonical document
2. Runs 5 parallel LLM calls (one per heuristic lens)
3. Validates each variant against its quality gate
4. Runs **Combined synthesis** — a 6th LLM call that takes all 5 variants + canonical traceability matrix → produces Combined intro
5. Writes 6 files to `FinishedWork/intros/`
6. Verifies line counts, differentiation, no-new-claims

**Combined Synthesis Prompt**:
```
Synthesize the 5 heuristic variants into a single ~200-line intro that:
- Presents all 5 triads in sequence (Williams → Keymaker → El Segundo → Baker Street → SHIELD)
- Shows how they interlock (Williams Constraint = Keymaker Lock; Keymaker Turn = El Segundo Protocol; etc.)
- Makes NO new claims beyond what appears in the 5 variants or canonical document
- Serves as the 'executive logic certificate' for the document
```

---

### 1.6 Heuristic Taxonomy Table

| Dimension | Williams | Keymaker | El Segundo | Baker Street | SHIELD |
|-----------|----------|----------|------------|--------------|--------|
| **Ontological Category** | Architectural Necessity | Fabrication Fidelity | Recursive Observation | Forensic Truth | Strategic Posture |
| **Epistemic Mode** | Deductive (from constraints) | Constructive (from primitives) | Reflexive (self-referential) | Abductive (inference to best) | Pragmatic (survival-oriented) |
| **Temporal Orientation** | Timeless (constraints don't change) | Bidirectional (predict↔validate) | Recursive (now observes now) | Historical (evidence from past) | Long-horizon (decades/centuries) |
| **Failure Mode** | Conflation (optionality illusion) | Unverified key (theory≠history) | Broken recursion (no self-measure) | Evidence gap (uncited claim) | Panic horizon (short-termism) |
| **Success Metric** | 0 orphan claims | 100% binary verification | Recursive closure depth | 0 uncited assertions | Layered mitigation coverage |
| **Document Phase Ownership** | Phase 1, 3b, 13 | Phase 2a, 3a, 13 | Phase 1, 2b, 13 | Phase 2b, 3a, 13, 14 | Phase 3a, 3b, 13, 15 |

---

### 1.7 Voice Signature Definitions

Each heuristic voice is defined by **forbidden and required linguistic patterns**:

| Heuristic | Required Patterns | Forbidden Patterns |
|-----------|-------------------|-------------------|
| **Williams** | The lock is, The key is, The turn is, Forces, Inevitable, Non-negotiable | Should, Could, May, Option, Alternative, Preference |
| **Keymaker** | Lock:, Key:, Turn:, Bidirectional, Verification vector, Binary | Likely, Probably, Generally, Mostly, Approximately |
| **El Segundo** | Mirror:, Participation:, Protocol:, Recursive, Witness, Self-measure | External, Observer, Independent, Objective, Neutral |
| **Baker Street** | Exhibit, Evidence, Deduction, Eliminate, Impossible, Remains, Truth | Allegedly, Reportedly, Sources indicate, Believed to, Suggests |
| **SHIELD** | Calm:, Resilience:, Continuity:, Horizon, Layered, Absorbs, Endures, Resumes | Urgent, Crisis, Emergency, Immediate, Deadline, Panic |

---

### 1.8 Application Scope

CSMOPP applies to **all 60 documents** in the CSMMinesMagnets pipeline:

- **Phase 1** (3 docs): Foundation intelligence — Williams/El Segundo dominant
- **Phase 2** (12 docs): Brokerage architecture — Keymaker/Williams/Baker Street dominant  
- **Phase 3** (12 docs): Technical specifications — Keymaker/SHIELD/Williams dominant
- **Phase 4** (10 docs): Regional deep dives — All five balanced per region
- **Phase 5** (10 docs): Community-specific — El Segundo/Baker Street dominant
- **Phase 6** (10 docs): Technology transfer — Keymaker/SHIELD/Williams dominant
- **Phase 7** (10 docs): Strategic synthesis — All five at maximum integration
- **Phase 8** (5 docs): Final integration — SHIELD continuity dominant

**No document is exempt**. Even DOC-13 (this document) generates its own heuristic intros — the framework documents itself.

---

### 1.9 Version Control

CSMOPP versions track **heuristic evolution**, not just document versions:

| Version | Date | Change | Affected Heuristics |
|---------|------|--------|---------------------|
| 1.0 | 2026-10-22 | Initial 4-heuristic framework (Williams, Keymaker, El Segundo, Combined) | All |
| 1.1 | 2026-10-24 | Added Baker Street (forensic rigor for regulatory docs) | Baker Street |
| 1.2 | 2026-10-28 | Added SHIELD (Carrington-class horizon for grid docs) | SHIELD |
| 1.3 | 2026-11-01 | Formalized composition matrix, variant differentiation, pipeline invariants | All |
| **1.4** | **2026-11-02** | **This document — canonical specification** | **All** |

**Versioning Rule**: Heuristic framework version increments only when:
- A new heuristic is added (1.1, 1.2)
- Composition matrix changes (1.3)
- Pipeline invariants change (1.4)
- Quality gate thresholds change

Individual document heuristic intros do **not** increment framework version.

---

### 1.10 Integration with DOC-14 and DOC-15

CSMOPP is the **logic layer** for two critical pipeline documents:

**DOC-14: Document Conflation Audit**
- Uses **Baker Street** evidence chains to detect cross-document contradictions
- Uses **Keymaker** binary verification to confirm resolution
- Uses **Williams** constraint mapping to identify root-cause overlaps
- Uses **El Segundo** recursive audit protocol (audit audits itself)
- Uses **SHIELD** horizon check: will this conflation matter in 2030?

**DOC-15: Session Resume Framework**
- **SHIELD** Continuity triad IS the resume protocol (Calm→Resilience→Continuity)
- **El Segundo** Protocol triad IS the heartbeat/task-timer/git-commit sequence
- **Keymaker** Turn validation: Theory (resume protocol) ↔ History (successful resumes)
- **Williams** Constraint: Ephemeral workspace → GitHub persistence (irreducible)
- **Baker Street** Evidence: Every resume produces verifiable artifacts

---

### 1.11 Quality Gate Formulas

The following formulas are **enforced by automation** (not aspirational):

```latex
% Document-level gates (every document)
L_{doc} \geq 900                                    % Lines
F_{doc} \geq 20                                     % Formula sections
R_{doc} \geq 15                                     % Cross-references
S_{doc} \geq 8                                      % Standards cited
C_{doc} = 0                                         % Conflation flags
T_{doc} = \text{Present}                            % Traceability matrix

% Heuristic intro gates (every document)
L_{williams} \in [60, 75]                           % Williams intro lines
L_{keymaker} \in [60, 75]                           % Keymaker intro lines
L_{elsegundo} \in [60, 75]                          % El Segundo intro lines
L_{bakerstreet} \in [60, 75]                        % Baker Street intro lines
L_{shield} \in [60, 75]                             % SHIELD intro lines
L_{combined} \in [190, 210]                         % Combined intro lines

% Variant differentiation (automated check)
D_{wk} > \theta_{differentiation}                   % Williams vs Keymaker distance
D_{we} > \theta_{differentiation}                   % Williams vs El Segundo distance
... (all 10 pairwise combinations)

% Pipeline gates (every runner)
G_{commit} \leq 5 \text{ subtasks}                  % Git commit frequency
G_{push} = G_{commit}                               % Push every commit
G_{heartbeat} \leq 120s                             % Heartbeat interval
G_{subtask} \leq 30s                                % Subtask timeout
```

---

### 1.12 Cross-Reference to AGENTS.md

This document **is the canonical specification** for the heuristics referenced in AGENTS.md sections:
- Heuristic Personality Framework (CSMOPP) (AGENTS.md:158-169)
- Quality Gates (Every Document) (AGENTS.md:146-156)  
- Runner Workflow step 3: Author full 900-line documents with heuristic intros (AGENTS.md:88-98)
- Key Commands → `generate_heuristic_intros.sh` (AGENTS.md:115-135)

**Conflation Check**: This document supersedes AGENTS.md heuristic descriptions. AGENTS.md is the **operational summary**; DOC-13 is the **authoritative specification**. Any discrepancy → DOC-13 wins.

---

### 1.13 Chapter 1 Summary

The CSMOPP framework is a **five-heuristic translation layer** that converts canonical brokerage intelligence documents into logic-verified artifacts. Each heuristic owns an irreducible execution risk dimension:

1. **Williams** — Sovereignty-strategy constraint (the lock that cannot be picked)
2. **Keymaker** — Execution fidelity gap (the binary verification that closes it)  
3. **El Segundo** — Recursive self-formation (the protocol that witnesses itself)
4. **Baker Street** — Legal-forensic ambiguity (the evidence chain that eliminates doubt)
5. **SHIELD** — Horizon risk (the layered calm that endures Carrington events)

The pipeline architecture ensures **every document passes through all five lenses** via automated variant generation from a single canonical source. Quality gates enforce **internal consistency per heuristic** and **differentiation across heuristics**. The Combined intro provides **executive logic certification**.

This chapter establishes the framework. Chapters 2–6 provide **deep specifications** for each heuristic. Chapter 7 specifies the **translation pipeline tooling**. Chapter 8 provides **historical traceability** across DOC-01..12. Chapter 9 provides the **master traceability matrix** for the framework itself.

---

*End of Chapter 1. Next: Chapter 2 — Williams Heuristic Deep Specification.*
---
