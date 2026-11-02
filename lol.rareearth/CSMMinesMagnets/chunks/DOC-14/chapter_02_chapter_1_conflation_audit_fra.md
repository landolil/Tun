## Chapter 1: Conflation Audit Framework — Forensic Methodology for 60-Doc Pipeline

### 1.1 Conflation Audit Origin and Purpose — Pipeline Integrity Constraint

The Document Conflation Audit (DOC-14) is not a review. It is a **forensic integrity verification** mandated by the CSMOPP framework (DOC-13) to ensure that the 60-document pipeline produces **coherent, non-contradictory, audit-grade intelligence** for the Chilean magnetic mineral → Tardigradia Holding Company → Carrington Storm Motors supply chain.

#### 1.1.1 The Constitutional Constraint: Pipeline Integrity

**Williams Lock**: The 60-document pipeline operates under **irreducible constraints** that make conflation audit not optional but forced:

1. **Single Source of Truth**: Chilean magnetic mineral intelligence must resolve to **one coherent narrative** across geology (DOC-01), communities (DOC-02), regulation (DOC-07), logistics (DOC-08), technical specs (DOC-09..12), and heuristic framework (DOC-13).

2. **Binary Verification Requirement** (Keymaker): Every claim in every document must have a **binary verification vector** (DOC-13 Ch. 3). Conflation — where two documents make contradictory claims about the same variable — breaks binary verification.

3. **Recursive Self-Measurement** (El Segundo): The pipeline measures itself (heartbeat, task timer, git commits). Conflation is a **measurement error** in the protocol's self-observation.

4. **Forensic Evidence Standard** (Baker Street): Every claim must survive cross-examination with primary sources (Exhibits A-E). Contradictory claims cannot both be true; at least one fails the evidence test.

5. **Horizon Consistency** (SHIELD): Decisions evaluated at 2036 (Puerto Exterior), 2050 (climate), 2100 (civilizational). Conflation that seems minor today becomes **catastrophic at horizon**.

**Williams Voice**: *The Lock is pipeline integrity. The Key is systematic pairwise audit across 13 documents. The Turn is 0 unresolved conflicts as protocol axiom.*

#### 1.1.2 The Empirical Gap: Why Conflation Emerges

**Keymaker Lock**: In a 13-document corpus (DOC-01..13) with ~18,000+ lines, 49+ formulas per doc average, 145+ cross-refs per doc average, conflation emerges from:

| Conflation Source | Mechanism | Example from DOC-13 Ch. 8.9 |
|-------------------|-----------|----------------------------|
| **Parallel Authoring** | Different runners write overlapping domains without real-time sync | Water permit vs Aegis-Forge (DOC-01 vs DOC-07) |
| **Heuristic Drift** | Same claim framed differently by different heuristic lenses | Consent vs Equity (DOC-02 vs DOC-03) |
| **Standard Evolution** | Standards update between doc authoring (IEEE 2800, CEN NTSyCS) | GFL vs GFM (DOC-10 vs DOC-11) |
| **Metric Divergence** | Same variable measured differently (transition density, CSV bits) | Magnet grade source (DOC-09 vs DOC-10) |
| **Cross-Ref Drift** | References to prior docs become stale after updates | Capital stack single-source (DOC-04 vs DOC-05) |

**Keymaker Voice**: *Lock: Conflation emerges at 5 measurable rates. Key: Systematic pairwise audit with binary resolution. Turn: 0 flags = audit pass.*

#### 1.1.3 Audit Purpose: Three Non-Negotiable Deliverables

1. **Conflation Taxonomy** — Classify every conflict type with detection signature
2. **Resolution Protocol** — 6-step forensic-to-horizon resolution for each conflict
3. **Automation Tool** — `conflation_audit.py` for continuous regression testing

**This audit is not retrospective**. It is **prospective infrastructure** — the same audit runs against DOC-14..60 as they are authored, preventing conflation accumulation.

---

### 1.2 Five Heuristic Lenses Applied to Audit Methodology

Per DOC-13 Ch. 1.3.1 (Composition Matrix), DOC-14 applies all five heuristics at **Primary** dominance (Phase 3c = Meta-Framework):

| Heuristic | Audit Role | Lens Application |
|-----------|------------|------------------|
| **Williams** | **Constraint Arbiter** | Which Lock takes precedence when conflicts arise? Constitutional > Regulatory > Technical > Economic |
| **Keymaker** | **Binary Verifier** | What is the verification vector for each conflict? Pass/Fail, no partial credit |
| **El Segundo** | **Recursive Auditor** | How does the audit observe its own audit? Meta-audit protocol with recursive closure |
| **Baker Street** | **Forensic Engine** | What does the evidence prove? Evidence chains (Exhibits A-E) for every claim pair |
| **SHIELD** | **Horizon Filter** | Will this conflation matter in 2050? Layered significance assessment |

**Integration Rule**: Every conflict passes through **all five lenses sequentially**:
```
Conflict Detected 
  → Baker Street: Evidence Chain (Exhibits A-E)
  → Keymaker: Binary Verification Vector
  → Williams: Lock Priority Arbitration
  → El Segundo: Recursive Validation (Audit audits audit)
  → SHIELD: Horizon Significance (≥2036)
  → Resolution Recorded
```

---

### 1.3 Audit Scope — DOC-01..13 Corpus Definition

#### 1.3.1 Corpus Boundaries

| Document | Lines | Chapters | Cross-Refs | Standards | Heuristic Intros | Audit Target |
|----------|-------|----------|------------|-----------|------------------|--------------|
| DOC-01 | ~1,200 | 10 | 180 | 12 | 5 | Geological claims, resource numbers, infrastructure mapping |
| DOC-02 | ~1,100 | 9 | 165 | 10 | 5 | Community mappings, Indigenous territories, labor structures |
| DOC-03 | ~1,050 | 9 | 150 | 11 | 5 | Benefit frameworks, royalty models, trust structures |
| DOC-04 | ~1,150 | 9 | 170 | 13 | 5 | Brokerage protocol, 7 triggers, CSV bits, veto architecture |
| DOC-05 | ~1,300 | 9 | 190 | 14 | 5 | Capital stack, governance, CRMA/CPTPP/IRA triangulation |
| DOC-06 | ~1,250 | 9 | 185 | 12 | 5 | CSM integration, DFARS, GFM specs, offtake terms |
| DOC-07 | ~1,400 | 11 | 210 | 15 | 5 | Regulatory pathways, Mining Code, Env Law, Indigenous Law, Water Code |
| DOC-08 | ~4,259 | 9 | 380 | 18 | 5 | Port/rail/shipping/customs/logistics/community integration |
| DOC-09 | ~924 | 8 | 140 | 12 | 5 | Magnet specs: NdFeB, SmCo, Fe₁₆N₂, FeCo grades |
| DOC-10 | ~1,150 | 8 | 155 | 12 | 5 | Mine→Magnet→Motor chain, QC, vertical integration |
| DOC-11 | ~3,895 | 9 | 280 | 23 | 5 | GIC hardening, transformer specs, grid ops, financial instruments |
| DOC-12 | ~1,118 | 9 | 156 | 23 | 5 | GFM standards, synthetic inertia, CEN alignment, Aegis DC bus |
| DOC-13 | ~3,366 | 9 | 444 | 15 | 6 | Heuristic framework specification (this audit's lens) |

**Total Corpus**: ~22,162 lines | 118 chapters | 2,605 cross-refs | 190 standards | 66 heuristic intros

#### 1.3.2 Audit Exclusions (Explicit)

- **DOC-14 itself** — audited in next cycle (DOC-28 meta-audit)
- **DOC-15..60** — not yet authored
- **Intros** — heuristic variants are *translations*, not independent claims (verified in DOC-13 Ch. 9.10)
- **Chunk manifests** — technical integrity verified by `write_large_file.py verify` (separate pipeline)

---

### 1.4 Conflation Definition and Severity Classification

#### 1.4.1 Conflation Definition

> **Conflation**: Two or more documents in the corpus make **mutually exclusive claims** about the same **auditable variable** where both claims cannot be simultaneously true under the same heuristic lens.

**Auditable Variable**: A quantified or qualified assertion that can be traced to a primary source (Exhibit A-E) and verified via binary vector (Keymaker).

**Non-Conflation** (explicitly excluded):
- Different heuristic framings of same fact (Williams "Lock" vs Keymaker "Lock" = translation, not contradiction)
- Progressive refinement (DOC-07 adds detail to DOC-04 trigger — not conflict)
- Scope differentiation (DOC-09 specifies motor-grade; DOC-10 specifies supply-chain-grade — compatible)

#### 1.4.2 Severity Classification (4 Levels)

| Severity | Definition | Resolution Timeline | Example |
|----------|------------|---------------------|---------|
| **CRITICAL** | Contradiction on constitutional/physical Lock (Williams) or binary CSV bit (Keymaker) | Immediate (blocks next runner) | Water permit required vs Aegis-Forge zero-water |
| **HIGH** | Contradiction on regulatory pathway or technical spec affecting CSV bits | Before next phase gate | Consent = consultation vs Consent = equity |
| **MEDIUM** | Metric divergence >10% on same variable, same heuristic | Before DOC-15 | Transition density 0.156 vs 0.538 for same phase |
| **LOW** | Cross-ref drift, stale standard citation, minor terminology | Next audit cycle | IEEE 2800-2022 vs IEEE 2800-2024 reference |

---

### 1.5 Resolution Protocol Overview — 6-Step Process

Every detected conflation follows the **CSMOPP Resolution Protocol**:

```
STEP 1: BAKER STREET — Evidence Chain Construction
  For each conflicting claim pair (Claim_A from Doc_X, Claim_B from Doc_Y):
    - Identify Exhibit (A-E) for each claim
    - Verify primary source accessibility
    - Document verification method and result
    - Output: Evidence_Chain[Claim_A], Evidence_Chain[Claim_B]

STEP 2: KEYMAKER — Binary Verification
  For each evidence chain:
    - Compute verification vector bit (1 = verified, 0 = failed)
    - Apply Theory→History validation (historical cases)
    - Apply History→Theory validation (formation events)
    - Output: Bit_A, Bit_B ∈ {0,1}

STEP 3: WILLIAMS — Lock Priority Arbitration
  If Bit_A ≠ Bit_B (one verified, one failed):
    - Failed claim eliminated (Lock: evidence fails)
  If Bit_A = Bit_B = 1 (both verified but contradictory):
    - Identify governing Lock for each claim
    - Apply Lock Hierarchy: Constitutional > Physical > Regulatory > Technical > Economic
    - Lower-priority Lock yields
    - Output: Resolution_Decision + Lock_Justification

STEP 4: EL SEGUNDO — Recursive Validation
  - Verify resolution doesn't create new conflation (recursive check)
  - Update Mirror measurements (traceability matrix, TD metrics)
  - Confirm Protocol closure (no open loops)
  - Output: Recursive_Closure_Certificate

STEP 5: SHIELD — Horizon Filter
  - Evaluate resolution at 5 horizons (Tactical→Civilizational)
  - Confirm layered resilience (7 layers) absorbs resolution impact
  - Verify Continuity protocol (RTO/RPO) unchanged
  - Output: Horizon_Consistency_Attestation

STEP 6: RECORD — Audit Ledger Entry
  - Log: Conflict_ID, Doc_Pair, Variable, Severity, Evidence_Chains, 
         Verification_Bits, Lock_Priority, Resolution, Horizon_Check, Timestamp
  - Update: Conflation Registry (append-only, git-tracked)
  - Generate: Resolution_Patch (document amendment if needed)
```

---

### 1.6 Quality Gates for Audit — 0 Unresolved Conflicts Target

#### 1.6.1 Mandatory Quality Gates (All Must Pass)

| Gate | Metric | Target | Verification |
|------|--------|--------|--------------|
| **Coverage** | Pairwise comparisons completed | 100% (13×12/2 = 78 pairs) | Automated counter |
| **Detection** | Conflation types classified | 7 types, 0 unclassified | Taxonomy completeness |
| **Resolution** | Conflicts resolved | 0 unresolved CRITICAL/HIGH | Resolution ledger |
| **Verification** | Binary verification per conflict | 100% bits computed | Keymaker gate |
| **Recursion** | Meta-audit closure | 0 open recursive loops | El Segundo gate |
| **Horizon** | 5-horizon evaluation per resolution | 100% resolutions attested | SHIELD gate |
| **Regression** | Re-audit after DOC-14..60 | 0 new conflation introduced | CI/CD integration |

#### 1.6.2 Conflation-Specific Gates

```python
def conflation_audit_quality_gates(audit_results):
    """
    Runs after full pairwise audit of DOC-01..13
    """
    checks = {
        'pairwise_complete': audit_results.pairs_checked == 78,
        'zero_critical_unresolved': audit_results.critical_unresolved == 0,
        'zero_high_unresolved': audit_results.high_unresolved == 0,
        'all_verified': all(c.verification_bits is not None for c in audit_results.conflicts),
        'recursive_closure': audit_results.recursive_validation_passed,
        'horizon_consistent': all(c.horizon_attestation for c in audit_results.resolutions),
        'ledger_integrity': audit_results.ledger_hash == compute_ledger_hash(),
        'automation_verified': test_conflation_audit_py_on_corpus(),
    }
    return {'pass': all(checks.values()), 'details': checks}
```

---

### 1.7 Cross-Reference to DOC-13 Framework

This audit **implements** the framework specified in DOC-13:

| DOC-13 Chapter | DOC-14 Implementation |
|----------------|----------------------|
| Ch. 1 (Framework) | Five heuristic lenses applied to audit (Section 1.2) |
| Ch. 2 (Williams) | Lock Hierarchy for conflict arbitration (Step 3) |
| Ch. 3 (Keymaker) | Binary verification vectors per conflict (Step 2) |
| Ch. 4 (El Segundo) | Recursive audit protocol, Mirror measurements (Step 4) |
| Ch. 5 (Baker Street) | Evidence chains, Exhibits A-E, 3-pass deduction (Step 1) |
| Ch. 6 (SHIELD) | 5-horizon evaluation, 7-layer resilience (Step 5) |
| Ch. 7 (Pipeline) | Automation spec `conflation_audit.py` (Section 1.8) |
| Ch. 8 (Historical) | 5 historical cases as audit corpus baseline (Ch. 8) |
| Ch. 9 (Traceability) | This audit's traceability matrix (Ch. 9) |

**Conflation Check**: DOC-14 must pass its own audit when DOC-28 (Meta-Audit) runs. This document specifies the audit that will audit it.

---

### 1.8 Automation Architecture — `conflation_audit.py` Spec

#### 1.8.1 Tool Purpose

Automate the 6-step resolution protocol for **continuous regression testing** as DOC-14..60 are authored.

#### 1.8.2 Architecture

```python