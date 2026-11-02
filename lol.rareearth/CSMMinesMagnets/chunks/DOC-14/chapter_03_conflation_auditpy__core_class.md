# conflation_audit.py — Core Classes

class ConflationAuditor:
    def __init__(self, corpus_path: str, traceability_path: str):
        self.corpus = self.load_corpus(corpus_path)  # DOC-01..N
        self.traceability = self.load_traceability(traceability_path)  # Ch. 9 matrices
        self.heuristic_lenses = self.load_lenses()  # From DOC-13 Ch. 7
        self.ledger = ConflationLedger()
    
    def audit_pair(self, doc_a: str, doc_b: str) -> List[Conflict]:
        """
        Pairwise conflation detection between two documents.
        Returns list of Conflict objects with severity, evidence, verification.
        """
        claims_a = self.extract_claims(doc_a)
        claims_b = self.extract_claims(doc_b)
        
        conflicts = []
        for claim_a in claims_a:
            for claim_b in claims_b:
                if self.same_variable(claim_a, claim_b) and self.mutually_exclusive(claim_a, claim_b):
                    conflict = Conflict(
                        id=f"{doc_a}-{doc_b}-{claim_a.variable}",
                        doc_a=doc_a, claim_a=claim_a,
                        doc_b=doc_b, claim_b=claim_b,
                        variable=claim_a.variable,
                        severity=self.classify_severity(claim_a, claim_b)
                    )
                    # Step 1: Baker Street Evidence Chains
                    conflict.evidence_a = self.build_evidence_chain(claim_a)
                    conflict.evidence_b = self.build_evidence_chain(claim_b)
                    # Step 2: Keymaker Binary Verification
                    conflict.verification_a = self.verify_binary(conflict.evidence_a)
                    conflict.verification_b = self.verify_binary(conflict.evidence_b)
                    # Step 3: Williams Lock Priority
                    conflict.resolution = self.arbitrate_locks(conflict)
                    # Step 4: El Segundo Recursive Validation
                    conflict.recursive_ok = self.validate_recursive(conflict)
                    # Step 5: SHIELD Horizon Check
                    conflict.horizon_ok = self.check_horizon(conflict)
                    # Step 6: Record
                    self.ledger.record(conflict)
                    conflicts.append(conflict)
        return conflicts
    
    def full_audit(self) -> AuditReport:
        """Audit all 78 pairs in corpus"""
        all_conflicts = []
        for i, doc_a in enumerate(self.corpus.docs):
            for doc_b in self.corpus.docs[i+1:]:
                all_conflicts.extend(self.audit_pair(doc_a, doc_b))
        return AuditReport(conflicts=all_conflicts, ledger=self.ledger)
    
    def regression_check(self, new_doc: str) -> List[Conflict]:
        """Check new document against existing corpus"""
        conflicts = []
        for existing_doc in self.corpus.docs:
            conflicts.extend(self.audit_pair(existing_doc, new_doc))
        return conflicts
```

#### 1.8.3 Data Structures

```python
@dataclass
class Conflict:
    id: str
    doc_a: str
    claim_a: Claim
    doc_b: str
    claim_b: Claim
    variable: str
    severity: Severity  # CRITICAL, HIGH, MEDIUM, LOW
    evidence_a: EvidenceChain
    evidence_b: EvidenceChain
    verification_a: int  # 0 or 1
    verification_b: int  # 0 or 1
    resolution: Resolution
    recursive_ok: bool
    horizon_ok: bool
    timestamp: datetime

@dataclass
class EvidenceChain:
    exhibits: Dict[str, Exhibit]  # A-E
    primary_sources: List[PrimarySource]
    verification_methods: List[str]
    deduction_chain: List[str]  # 3-pass elimination

@dataclass
class Resolution:
    decision: str  # "Claim_A_accepted", "Claim_B_accepted", "Synthesized", "Deferred"
    lock_priority: LockHierarchy
    synthesis: Optional[str]
    amendment_required: bool
    amendment_target: Optional[str]  # Doc to patch
```

---

### 1.9 Audit Corpus Versioning and Baseline

#### 1.9.1 Version Control Protocol

| Corpus Version | Date | Documents | Trigger |
|----------------|------|-----------|---------|
| **v1.0** | 2026-11-02 | DOC-01..13 | DOC-13 completion (this audit baseline) |
| v1.1 | TBD | DOC-01..14 | DOC-14 completion |
| v1.2 | TBD | DOC-01..15 | DOC-15 completion |
| ... | ... | ... | ... |
| v2.0 | TBD | DOC-01..28 | Phase 4 complete (first meta-audit) |

**Invariant**: Each audit produces a **baseline hash** of the corpus state:
```
CORPUS_HASH = SHA256(concat(sorted([doc.content_hash for doc in corpus])))
```
Stored in audit ledger. Any corpus change without audit = protocol breach.

#### 1.9.2 Baseline Metrics (v1.0)

| Metric | Value | Source |
|--------|-------|--------|
| Total Documents | 13 | DOC-01..13 |
| Total Lines | ~22,162 | Sum of wc -l |
| Total Claims (estimated) | ~2,600 | Cross-refs × 1.5 |
| Total Cross-Refs | 2,605 | Sum per doc |
| Total Standards | 190 | Sum per doc |
| Heuristic Intros | 66 | 5×13 + 1×13 (Combined) |
| Known Conflations (Pre-Audit) | 5 | DOC-13 Ch. 8.9 resolved cases |

---

### 1.10 Integration with DOC-15 (Session Resume)

DOC-15 (Session Resume Framework) provides the **continuity infrastructure** for this audit:

| DOC-15 Mechanism | DOC-14 Audit Use |
|------------------|------------------|
| **NEXT_runner handoff** | Audit state passed between runners (current pair, ledger position) |
| **RESUME_SESSION** | Full audit context reconstruction after workspace loss |
| **Heartbeat Monitor** | Audit liveness signal (120s interval during audit execution) |
| **Task Timer** | Subtask timeout guard (30s per pairwise comparison) |
| **Git Commit Cadence** | Audit ledger commits every 3-5 pairwise checks |
| **Chunk Verification** | Audit tool (`conflation_audit.py`) itself chunked and verified |

**SHIELD Continuity**: The audit protocol IS the continuity protocol. If audit stalls, resume from ledger. If workspace lost, clone repo, read ledger, continue.

---

### 1.11 Audit Execution Timeline Per Phase

| Phase | Documents | Pairs | Est. Subtasks | Runner | Timeline |
|-------|-----------|-------|---------------|--------|----------|
| **3c** (Current) | DOC-01..13 | 78 | 117 | 011 | Session 1 |
| **4** | +DOC-14..25 | +171 | +255 | 012-014 | Phase 4 |
| **5** | +DOC-26..35 | +210 | +315 | 015-016 | Phase 5 |
| **6** | +DOC-36..45 | +210 | +315 | 017-018 | Phase 6 |
| **7** | +DOC-46..55 | +210 | +315 | 019-020 | Phase 7 |
| **8** | +DOC-56..60 | +55 | +83 | 021 | Phase 8 |
| **Meta** | DOC-28 | All prior | Special | 022 | DOC-28 |

**Cumulative Pairs at Pipeline End**: 60×59/2 = **1,770 pairwise comparisons**

**Automation Mandate**: Manual audit for DOC-01..13 (baseline). `conflation_audit.py` **mandatory** for DOC-14+ (regression mode).

---

### 1.12 Cross-Reference to AGENTS.md and Prior Audit Patterns

| AGENTS.md Section | DOC-14 Implementation |
|-------------------|----------------------|
| Quality Gates (146-156) | Conflation-specific gates added (Section 1.6) |
| Runner Workflow (88-98) | Audit as runner task with 117 subtasks |
| Heuristic Framework (158-169) | All 5 lenses applied per conflict (Section 1.2) |
| Large File Strategy (63-84) | DOC-14 chunked, verified, compressed per standard |
| Conventions (137-144) | Naming: `chunks/DOC-14/`, `FinishedWork/intros/DOC-14_*.md` |

**Prior Audit Patterns** (from DOC-13 Ch. 8.9):
1. Water Permit vs Aegis-Forge → Resolved: Water Code N/A (Williams Lock)
2. Consent vs Equity → Resolved: Equity required (Baker Street Exhibit B)
3. GFL vs GFM → Resolved: GFM-native mandatory (Keymaker GIC Lock)
4. Magnet Grade Source → Resolved: Motor physics forces specs (Williams)
5. Capital Stack Single-Source → Resolved: Triangulation mandatory (SHIELD Layer Independence)

---

### 1.13 Chapter 1 Summary

The Document Conflation Audit is a **mandatory integrity layer** for the CSMMinesMagnets pipeline:

- **Origin**: Pipeline integrity constraint (Williams Lock) — 13 documents cannot contradict
- **Method**: 6-step resolution protocol applying all 5 CSMOPP heuristics sequentially
- **Scope**: DOC-01..13 corpus (~22K lines, 78 pairwise comparisons)
- **Classification**: 4 severity levels (CRITICAL/HIGH/MEDIUM/LOW) with 7 conflation types
- **Automation**: `conflation_audit.py` specified for continuous regression
- **Quality Gates**: 0 unresolved CRITICAL/HIGH, 100% binary verification, recursive closure, horizon consistency
- **Continuity**: Integrated with DOC-15 session resume, heartbeat, git cadence

This chapter establishes the audit framework. Chapters 2–7 provide **deep specifications** for each heuristic's audit role. Chapter 8 documents **historical resolutions** and **predictive cases**. Chapter 9 provides the **master traceability matrix** for the audit itself.

---

*End of Chapter 1. Next: Chapter 2 — Conflation Taxonomy: 7 Conflict Types with Detection Signatures.*

---
