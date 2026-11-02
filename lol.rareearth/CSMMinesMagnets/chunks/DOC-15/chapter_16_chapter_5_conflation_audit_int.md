## Chapter 5: Conflation Audit Integration — Regression Mode in Resume Flow

### 5.1 The Integration Principle

Every session resume must verify **zero conflation regression** before continuing. The DOC-14 conflation audit is not a one-time event — it is a **continuous regression gate**.

> **Keymaker Voice**: *Lock: New document may introduce conflation. Key: Regression audit on resume. Turn: Binary verification before Phase 5.*

---

### 5.2 Regression Trigger Conditions

| Condition | Trigger | Scope |
|-----------|---------|-------|
| **New Document** | `git diff --name-only HEAD~1` shows new `DOC-XX.md.gz` | Full pairwise vs all prior |
| **Modified Document** | `git diff` shows changes to existing `DOC-XX.md.gz` | Pairwise vs all prior |
| **New Intro** | `git diff` shows new `intros/DOC-XX_*` | Variant differentiation check |
| **Audit Ledger Change** | `audit_ledger.jsonl` modified | Ledger integrity + new resolutions |

---

### 5.3 Regression Execution in Phase 4

```python
def phase4_reconcile(state: PipelineState) -> bool:
    
    Execute conflation audit regression for any new/modified docs.
    
    new_docs = detect_new_or_modified_docs(state.last_commit_sha)
    
    if not new_docs:
        return True  # No regression check needed
    
    for doc in new_docs:
        # Run regression audit
        result = run_conflation_regress(doc, state.audit_corpus_version)
        
        # Gate: 0 CRITICAL, 0 HIGH unresolved
        if result.critical_unresolved > 0:
            raise ResumeBlocked(fCRITICAL conflation in {doc}: {result.critical_details})
        if result.high_unresolved > 0:
            raise ResumeBlocked(fHIGH conflation in {doc}: {result.high_details})
        
        # Update ledger
        append_to_ledger(result.resolutions)
        state.audit_ledger_hash = compute_ledger_hash()
    
    # Update corpus version
    state.audit_corpus_version = compute_corpus_version(state.completed_docs + new_docs)
    update_resume_session(state)
    
    return True
```

---

### 5.4 Regression Test Matrix

| Test | Input | Expected Output | Gate |
|------|-------|-----------------|------|
| **New DOC-15** | `DOC-15.md.gz` | 0 CRITICAL, 0 HIGH | Phase 4 pass |
| **Modified DOC-14** | `DOC-14.md.gz` (typo fix) | 0 new conflation | Phase 4 pass |
| **New Intros** | `intros/DOC-15_*` | Variant differentiation | Phase 4 pass |
| **Ledger Update** | `audit_ledger.jsonl` | Hash matches | Phase 3 pass |

---

### 5.5 Cross-Reference to DOC-14

| DOC-14 Component | Resume Integration |
|------------------|-------------------|
| 7 Conflation Types | Detection signatures in regression |
| 6-Step Resolution | Applied to any new conflation |
| Lock Hierarchy | Arbitration for new conflicts |
| Meta-Audit | `conflation_audit.py` self-validates on resume |

---

### 5.6 Chapter 5 Summary

Conflation Audit Integration ensures **every resume verifies zero regression**:

- **Trigger**: New/modified docs, intros, or ledger changes
- **Execution**: Phase 4 of resume protocol, mandatory
- **Gate**: 0 CRITICAL, 0 HIGH unresolved conflations
- **Tool**: `conflation_audit.py regress` with binary verification
- **Update**: Audit ledger hash and corpus version in `RESUME_SESSION_MAGNETS.md`

This integration makes conflation audit a **continuous guard**, not a periodic review.

**Next**: Chapter 6 — Automation Specification: `session_resume.py` Tool Design.

---
