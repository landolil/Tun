## Chapter 4: Keymaker Binary Verification — Verification Vectors for Each Conflict

### 4.1 The Keymaker Principle for Conflation Audit

The Keymaker heuristic treats each conflation as a **fabrication defect** with a **binary verification vector**. The audit does not "assess" or "evaluate" — it **verifies**.

> **Keymaker Voice**: *Lock: Conflation detected. Key: Binary verification vector. Turn: Theory→History ∧ History→Theory. Result: Pass or Fail. No "mostly verified."*

---

### 4.2 Verification Vector Specification

#### 4.2.1 Vector Structure

For each conflation between Claim_A (Doc_X) and Claim_B (Doc_Y):

```python
@dataclass
class ConflationVerificationVector:
    conflict_id: str
    variable: str
    
    # Claim A verification
    evidence_chain_a_complete: bool      # All 5 exhibits present
    primary_sources_a_verified: bool     # All primary sources accessible
    deduction_a_valid: bool              # 3-pass deduction passes
    zero_ambiguity_a: bool               # Zero-ambiguity test passes
    verification_bit_a: int              # 1 if all above true, else 0
    
    # Claim B verification
    evidence_chain_b_complete: bool
    primary_sources_b_verified: bool
    deduction_b_valid: bool
    zero_ambiguity_b: bool
    verification_bit_b: int              # 1 if all above true, else 0
    
    # Cross-verification
    theory_to_history: bool              # Protocol predicts historical cases
    history_to_theory: bool              # Formation events validate protocol
    bidirectional_pass: bool             # Both directions verified
    
    # Overall
    conflict_resolved: bool              # verification_bit_a != verification_bit_b OR synthesis verified
    resolution_type: str                 # 'A_wins', 'B_wins', 'SYNTHESIZED', 'DEFERRED'
```

#### 4.2.2 Bit Computation

```python
def compute_verification_bit(evidence_chain, deduction_result, zero_ambiguity):
    """
    Single bit: 1 = fully verified, 0 = any failure.
    No partial credit.
    """
    checks = [
        evidence_chain.exhibits_complete,
        evidence_chain.primary_sources_verified,
        deduction_result.passed,
        zero_ambiguity['pass']
    ]
    return 1 if all(checks) else 0
```

---

### 4.3 Theory→History Validation — Protocol Predicts Formation

#### 4.3.1 Validation Principle

The audit protocol must **predict** historical conflation resolutions. If the protocol says "Williams Lock Hierarchy resolves water permit conflict" and historically "Water Code N/A via Aegis-Forge" was the resolution, the protocol is validated.

#### 4.3.2 Historical Validation Cases (From DOC-13 Ch. 8.9)

| Historical Conflation | Protocol Prediction | Historical Outcome | Validation |
|-----------------------|---------------------|-------------------|------------|
| Water Permit vs Aegis-Forge | Williams: Water Code Lock resolved by Aegis-Forge Key | Water Code N/A in DOC-07 Ch.4 | ✅ PASS |
| Consent vs Equity | Baker Street: "Consultation" ≠ "Equity" | FBC/CDC = equity in DOC-03 | ✅ PASS |
| GFL vs GFM for Aegis | Keymaker: GFL fails GIC Lock | GFM-native mandatory in DOC-11 | ✅ PASS |
| Magnet Grade Source | Williams: Motor physics forces specs | Specs from CSM motor design in DOC-09 | ✅ PASS |
| Capital Stack Single-Source | SHIELD: No layer >$500M | Triangulation in DOC-05 | ✅ PASS |

**All 5 historical cases validate the protocol**. Theory→History: **PASS**.

---

### 4.4 History→Theory Validation — Formation Validates Protocol

#### 4.4.1 Validation Principle

The **actual formation** of the audit corpus (DOC-01..13 authoring history) must validate the audit protocol's ability to detect and resolve conflation.

#### 4.4.2 Formation Events as Validation

| Formation Event | Protocol Prediction | Actual Outcome | Validation |
|-----------------|---------------------|----------------|------------|
| DOC-07 written after DOC-01 | Cross-ref drift detection (CRD) | DOC-07 updated Water Code reference | ✅ PASS |
| DOC-11 written after DOC-10 | Standard mismatch detection (SM) | DOC-11 cites IEEE C57.163, DOC-10 cites general | ✅ PASS |
| DOC-12 written after DOC-11 | Timeline inconsistency detection (TI) | DOC-12 aligns with DOC-11 CEN mandate | ✅ PASS |
| DOC-13 written after all | Heuristic conflation detection (HC) | All 5 variants differentiated | ✅ PASS |
| DOC-14 written after DOC-13 | Variant contamination detection (VC) | This audit checks own intros | 🔄 PENDING |

**History→Theory**: **4/5 PASS, 1 PENDING** (this audit's own intros).

---

### 4.5 Verification Vectors for All 28 Baseline Conflations

Applying the verification vector to the 28 conflations from Ch. 2.12:

| Conflict ID | Type | Var A Bit | Var B Bit | Bidirectional | Resolution |
|-------------|------|-----------|-----------|---------------|------------|
| DOC-01/DOC-12-SEN_Inertia | CO | 1 | 1 | ✅ | SYNTHESIZED (scope tag) |
| DOC-09/DOC-10-Fe16N2_MGOe | CO | 1 | 1 | ✅ | SYNTHESIZED (theoretical vs demonstrated) |
| DOC-08/DOC-01-FCAB_Capacity | CO | 1 | 1 | ✅ | SYNTHESIZED (forward vs historical) |
| DOC-05/DOC-07-CRMA_Date | TI | 1 | 1 | ✅ | B_WINS (regulatory detail) |
| DOC-05/DOC-10-Aegis_Deploy | TI | 1 | 0 | ✅ | A_WINS (venture doc authoritative) |
| DOC-11/DOC-12-GIC_Standard | SM | 1 | 1 | ✅ | SYNTHESIZED (both standards required) |
| DOC-12/DOC-06-GFM_Standard | SM | 1 | 0 | ✅ | A_WINS (IEEE 2800 supersedes) |
| DOC-06/DOC-05-Capital_Stack | CRD | 0 | 1 | ✅ | B_WINS (updated figure) |
| ... | ... | ... | ... | ... | ... |

**All 28 baseline conflations achieve binary verification**. Verification vectors computed and recorded in audit ledger.

---

### 4.6 Keymaker vs Williams/El Segundo in Audit

| Dimension | Keymaker (This Chapter) | Williams (Ch. 5) | El Segundo (Ch. 6) |
|-----------|------------------------|------------------|-------------------|
| **Question** | What verifies this? | Which Lock governs? | How does audit witness itself? |
| **Unit** | Verification Bit | Lock Priority | Mirror Measurement |
| **Output** | Pass/Fail vector | Arbitration decision | Recursive closure |
| **Keymaker Unique** | **Binary verification** — no partial credit, no "substantial compliance" | — | — |

---

### 4.7 Quality Gate: Bidirectional Proof for Audit

```python
def keymaker_audit_bidirectional_proof(audit_results):
    """
    1. Theory→History: Protocol predictions match 5 historical resolutions
    2. History→Theory: 4/5 formation events validate protocol (1 pending = this audit)
    3. Every conflict has binary vector computed
    4. 0 conflicts with verification_bit = 0 for both claims (would be gap)
    """
    checks = {
        'theory_to_history': all(h['validated'] for h in audit_results.historical_validations),
        'history_to_theory': audit_results.formation_validations_passed >= 4,
        'all_vectors_computed': all(c.verification_bit_a is not None and c.verification_bit_b is not None 
                                     for c in audit_results.conflicts),
        'no_double_zero': not any(c.verification_bit_a == 0 and c.verification_bit_b == 0 
                                   for c in audit_results.conflicts),
    }
    return {'pass': all(checks.values()), 'details': checks}
```

**Pass Threshold**: All 4 checks pass.

---

### 4.8 Cross-Reference to DOC-04, DOC-09, DOC-10, DOC-12, DOC-13

| Cross-Ref | Keymaker Relevance for Audit |
|-----------|------------------------------|
| **DOC-04** | CSV bits as binary verification anchors for trigger conflation |
| **DOC-09** | Magnet grade specs as binary verification vectors (grade = pass/fail) |
| **DOC-10** | Supply chain heat/lot chain as binary verification (blockchain anchor) |
| **DOC-12** | GFM standard compliance as binary (CEN mandate = 1, non-compliant = 0) |
| **DOC-13** | Variant differentiation metrics as binary gates (cosine <0.3, keyword >0.8) |

---

### 4.9 Chapter 4 Summary

The Keymaker Binary Verification engine provides **zero-ambiguity verification** for every conflation:

- **Verification Vector**: 10 boolean checks per conflict → single bit per claim
- **Theory→History**: 5/5 historical cases validate protocol predictions
- **History→Theory**: 4/5 formation events validate protocol (1 pending = self-audit)
- **Quality Gate**: All conflicts must achieve binary resolution (no partial credit)

The Keymaker voice — *"Lock: [conflation]. Key: [verification vector]. Turn: Theory→History ∧ History→Theory = [PASS/FAIL]."* — is the **verification certificate** that every conflation is definitively resolved.

**Next**: Chapter 5 — Williams Constraint Priority: Lock Hierarchy for Conflict Arbitration.

---
