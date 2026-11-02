## Chapter 2: Conflation Taxonomy — 7 Conflict Types with Detection Signatures

### 2.1 Taxonomy Design Principles

The conflation taxonomy follows **Williams Constraint Logic**: each conflict type is forced by an irreducible distinction in the **claim variable space**. No type overlaps another; together they form a **complete basis** for cross-document contradictions.

**Williams Voice**: *The Lock is claim variable irreducibility. The Key is 7 mutually exclusive conflict types. The Turn is exhaustive classification — every conflation maps to exactly one type.*

---

### 2.2 Type 1: Claim Overlap (CO) — Same Variable, Contradictory Values

#### 2.2.1 Definition

Two documents assign **different values** to the **same quantified variable** with **same unit, same scope, same heuristic lens**.

#### 2.2.2 Detection Signature

```python
def detect_claim_overlap(claim_a, claim_b):
    return (
        claim_a.variable == claim_b.variable and
        claim_a.unit == claim_b.unit and
        claim_a.scope == claim_b.scope and
        claim_a.heuristic_lens == claim_b.heuristic_lens and
        claim_a.value != claim_b.value
    )
```

#### 2.2.3 Examples from Corpus

| Variable | DOC-A Value | DOC-B Value | Severity | Resolution |
|----------|-------------|-------------|----------|------------|
| SEN Inertia | DOC-11: "<2 seconds" | DOC-12: "2.1 seconds (PET 2024)" | HIGH | DOC-12 newer measurement accepted |
| Fe₁₆N₂ MGOe | DOC-09: "27 MGOe" | DOC-10: "27 MGOe (theoretical)" | MEDIUM | Synthesize: "27 MGOe theoretical, 22-25 MGOe demonstrated" |
| FCAB Capacity | DOC-08: "15M ton/yr" | DOC-01: "12M ton/yr (2023)" | MEDIUM | DOC-08 forward-looking, DOC-01 historical — scope tag |
| Transition Density | DOC-13: "0.156 (Phase 1)" | DOC-13: "0.538 (Phase 2b)" | LOW | Different phases — not conflation |

---

### 2.3 Type 2: Metric Divergence (MD) — Same Variable, Different Measurement Method

#### 2.3.1 Definition

Two documents measure the **same conceptual variable** but with **different methodologies**, producing **non-comparable numbers** that appear contradictory.

#### 2.3.2 Detection Signature

```python
def detect_metric_divergence(claim_a, claim_b):
    return (
        claim_a.concept == claim_b.concept and
        claim_a.methodology != claim_b.methodology and
        not claim_a.comparable_with(claim_b)
    )
```

#### 2.3.3 Examples

| Concept | DOC-A Method | DOC-B Method | Apparent Conflict | Resolution |
|---------|--------------|--------------|-------------------|------------|
| Transition Density | El Segundo: witness acts/constraint segments | Keymaker: CSV bit flips/triggers | 0.156 vs 0.0 (Phase 1) | Different metrics — both valid, label explicitly |
| Grid Inertia | DOC-11: Synchronous inertia (seconds) | DOC-12: Synthetic inertia (equivalent seconds) | <2s vs 5-10s | Different physical quantities — label "synchronous" vs "synthetic" |
| Magnet Grade | DOC-09: MGOe (energy product) | DOC-10: Hci (coercivity) | N48SH vs "High Hci" | Different specs — cross-ref both |

---

### 2.4 Type 3: Timeline Inconsistency (TI) — Same Event, Different Dates/Sequences

#### 2.4.1 Definition

Two documents assign **different temporal coordinates** to the **same milestone event** or **inconsistent sequencing** of dependent events.

#### 2.4.2 Detection Signature

```python
def detect_timeline_inconsistency(claim_a, claim_b):
    return (
        claim_a.event == claim_b.event and
        claim_a.date != claim_b.date
    ) or (
        claim_a.precedes(claim_b) in doc_a and
        claim_b.precedes(claim_a) in doc_b
    )
```

#### 2.4.3 Examples

| Event | DOC-A Date | DOC-B Date | Severity | Resolution |
|-------|------------|------------|----------|------------|
| CRMA Designation | DOC-05: "2025 H1" | DOC-07: "2025 Q3" | HIGH | DOC-07 regulatory detail overrides — use Q3 |
| DFARS Deadline | DOC-06: "Jan 1, 2027" | DOC-10: "2027-01-01" | NONE | Same date, different format |
| Puerto Exterior Ops | DOC-08: "2036" | DOC-06: "2035-2037" | MEDIUM | DOC-08 authoritative (logistics doc) |
| Aegis-Forge Deployment | DOC-05: "Alpha 2026" | DOC-10: "Alpha 2027" | HIGH | DOC-05 venture doc authoritative |

---

### 2.5 Type 4: Standard Mismatch (SM) — Same Domain, Different/Conflicting Standards

#### 2.5.1 Definition

Two documents cite **different standards** for the **same technical requirement** where the standards have **conflicting specifications** or **different versions** with material differences.

#### 2.5.2 Detection Signature

```python
def detect_standard_mismatch(claim_a, claim_b):
    return (
        claim_a.domain == claim_b.domain and
        claim_a.standard != claim_b.standard and
        standards_conflict(claim_a.standard, claim_b.standard)
    )
```

#### 2.5.3 Examples

| Domain | DOC-A Standard | DOC-B Standard | Conflict | Resolution |
|--------|----------------|----------------|----------|------------|
| GIC Transformer Hardening | DOC-11: IEEE C57.163-2023 | DOC-12: IEC 60076-16 (implied) | Different test methods | Both required — C57.163 for GIC, IEC for general |
| GFM Inverter | DOC-12: IEEE 2800-2022 | DOC-06: IEEE 1547-2018 | 2800 supersedes 1547 for GFM | IEEE 2800-2022 authoritative for GFM |
| Magnet Specs | DOC-09: IEC 60404-8-1 | DOC-10: ASTM A977 | Different test methods | Both applicable — IEC for material, ASTM for product |
| Environmental | DOC-07: Law 19.300 (Chile) | DOC-08: IFC PS6 | National vs International | Both required — Chilean law mandatory, IFC for financing |

---

### 2.6 Type 5: Heuristic Conflation (HC) — Same Claim, Different Heuristic Framing Creating Apparent Contradiction

#### 2.6.1 Definition

The **same underlying claim** appears contradictory when viewed through **different heuristic lenses** because each lens emphasizes different aspects (Lock vs Evidence vs Mirror vs Deduction vs Horizon).

#### 2.6.2 Detection Signature

```python
def detect_heuristic_conflation(claim_a, claim_b):
    return (
        claim_a.core_fact == claim_b.core_fact and
        claim_a.heuristic_lens != claim_b.heuristic_lens and
        appears_contradictory(claim_a.framing, claim_b.framing)
    )
```

#### 2.6.3 Examples

| Core Fact | Williams Framing | Keymaker Framing | Apparent Conflict | Resolution |
|-----------|------------------|------------------|-------------------|------------|
| Aegis-Forge zero-water | "Lock resolved by Key" | "LK-04 baseline 3.2 → target 0" | Different language | Not conflation — translation variants |
| Chilean Equity ≥51% | "Turn: Protocol Axiom" | "CSV[c₃] bit = 1" | Different abstraction | Not conflation — same commitment, different lens |
| GFM for Aegis | "Commitment: GFM-native" | "LK-07: GFL fails GIC test" | Different emphasis | Not conflation — complementary |

**Critical**: Heuristic conflation is **not true conflation** — it is **variant differentiation** (DOC-13 Ch. 7.5.2). The audit must **distinguish** true conflation from heuristic translation.

---

### 2.7 Type 6: Cross-Ref Drift (CRD) — Stale or Broken References

#### 2.7.1 Definition

A document references another document's **specific claim, section, or metric** that has **changed** in the referenced document, creating a **dangling or incorrect cross-reference**.

#### 2.7.2 Detection Signature

```python
def detect_crossref_drift(claim_a, claim_b):
    return (
        claim_a.cross_refs_to(claim_b.doc_id, claim_b.section) and
        claim_b.content_hash != claim_a.referenced_hash
    )
```

#### 2.7.3 Examples

| Referencing Doc | Referenced Doc | Drifted Reference | Resolution |
|-----------------|----------------|-------------------|------------|
| DOC-06 | DOC-05 | Capital stack $1.2B → $1.3B | Update cross-ref to $1.3B |
| DOC-10 | DOC-09 | N48SH spec → N50EH added | Add N50EH to chain |
| DOC-12 | DOC-11 | GIC 100A → 200A design basis | Update to 200A |
| DOC-08 | DOC-07 | Water Code pathway → N/A | Update to "Water Code N/A" |

---

### 2.8 Type 7: Variant Contamination (VC) — Heuristic Intro Bleed

#### 2.8.1 Definition

A **heuristic intro variant** for Document X contains **signature language** from a **different heuristic**, indicating the translation pipeline failed to maintain variant independence (DOC-13 Ch. 7.5.2).

#### 2.8.2 Detection Signature

```python
def detect_variant_contamination(intro_a, intro_b):
    """
    Check if intro for heuristic H1 contains H2's signature keywords
    as primary vocabulary (not just incidental mention).
    """
    h1_keywords = SIGNATURE_KEYWORDS[intro_a.heuristic]
    h2_keywords = SIGNATURE_KEYWORDS[intro_b.heuristic]
    
    h1_counts = {k: intro_a.text.lower().count(k) for k in h1_keywords}
    h2_counts = {k: intro_a.text.lower().count(k) for k in h2_keywords}
    
    # Contamination if H2 keyword appears more than H1's primary keyword
    primary_h1 = max(h1_counts.values())
    for k, v in h2_counts.items():
        if v > primary_h1:
            return True, f"{intro_a.heuristic} contaminated by {k} ({v} > {primary_h1})"
    return False, None
```

#### 2.8.3 Examples (Hypothetical — DOC-13 Ch. 9.10 Verified Clean)

| Contaminated Variant | Contaminating Keyword | Count vs Primary | Status |
|----------------------|----------------------|------------------|--------|
| Williams intro | "binary" (Keymaker) | 3 vs "lock" (2) | Would be CRITICAL |
| Keymaker intro | "recursive" (El Segundo) | 2 vs "lock" (1) | Would be HIGH |
| Baker Street intro | "calm" (SHIELD) | 1 vs "evidence" (3) | Would be LOW |

**DOC-13 Status**: All 65 intros (5×13) passed differentiation gate (Ch. 9.10).

---

### 2.9 Taxonomy Completeness Proof

**Williams Argument**: The 7 types form a complete basis because every claim variable has exactly these dimensions:

| Dimension | Conflict Type | Why Irreducible |
|-----------|---------------|-----------------|
| **Value** | Claim Overlap | Same variable, different value |
| **Method** | Metric Divergence | Same concept, different measurement |
| **Time** | Timeline Inconsistency | Same event, different date |
| **Authority** | Standard Mismatch | Same domain, different standard |
| **Lens** | Heuristic Conflation | Same fact, different framing (excluded) |
| **Reference** | Cross-Ref Drift | Pointer to stale target |
| **Pipeline** | Variant Contamination | Translation artifact leak |

**Exhaustiveness**: Any cross-document contradiction must differ in at least one of: value, method, time, authority, lens, reference, pipeline artifact. These 7 dimensions cover all possibilities.

**Mutual Exclusivity**: A single contradiction cannot simultaneously be two types — it has one primary dimension of difference.

---

### 2.10 Detection Automation Matrix

| Type | Automated Detection | Human Review Required | Tool Function |
|------|---------------------|----------------------|---------------|
| **CO** | Yes (value equality) | Low (verify scope match) | `detect_claim_overlap()` |
| **MD** | Partial (methodology NLP) | High (judge comparability) | `detect_metric_divergence()` |
| **TI** | Yes (date parsing) | Low (verify event identity) | `detect_timeline_inconsistency()` |
| **SM** | Yes (standard registry) | Medium (judge conflict) | `detect_standard_mismatch()` |
| **HC** | Yes (lens classifier) | Low (verify translation) | `detect_heuristic_conflation()` |
| **CRD** | Yes (hash comparison) | None | `detect_crossref_drift()` |
| **VC** | Yes (keyword analysis) | None | `detect_variant_contamination()` |

---

### 2.11 Cross-Reference to Prior Docs

| Type | Primary Examples | DOC References |
|------|------------------|----------------|
| CO | SEN Inertia, Fe₁₆N₂ MGOe, FCAB Capacity | DOC-11, DOC-12, DOC-08, DOC-01, DOC-09, DOC-10 |
| MD | Transition Density, Grid Inertia, Magnet Grade | DOC-13, DOC-11, DOC-12, DOC-09, DOC-10 |
| TI | CRMA Designation, DFARS, Puerto Exterior, Aegis Deploy | DOC-05, DOC-07, DOC-06, DOC-08, DOC-10 |
| SM | GIC Hardening, GFM Inverter, Magnet Specs, Environmental | DOC-11, DOC-12, DOC-06, DOC-09, DOC-10, DOC-07, DOC-08 |
| HC | Aegis-Forge, Equity, GFM (all heuristic framings) | DOC-13 (all chapters) |
| CRD | Capital Stack, Magnet Specs, GIC Basis, Water Pathway | DOC-06→05, DOC-10→09, DOC-12→11, DOC-08→07 |
| VC | (None in v1.0 — verified clean) | DOC-13 Ch. 9.10 |

---

### 2.12 Severity Distribution (Baseline v1.0)

| Severity | CO | MD | TI | SM | HC | CRD | VC | Total |
|----------|----|----|----|----|----|-----|----|-------|
| CRITICAL | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 1 |
| HIGH | 2 | 1 | 3 | 2 | 0 | 0 | 0 | 8 |
| MEDIUM | 3 | 2 | 2 | 3 | 0 | 4 | 0 | 14 |
| LOW | 1 | 2 | 1 | 1 | 0 | 0 | 0 | 5 |
| **Total** | **7** | **5** | **6** | **6** | **0** | **4** | **0** | **28** |

**Note**: HC and VC have 0 detected in baseline — they are **prevention categories** for future docs.

---

### 2.13 Chapter 2 Summary

The Conflation Taxonomy provides **7 mutually exclusive, collectively exhaustive conflict types**:

1. **Claim Overlap (CO)** — Same variable, contradictory values
2. **Metric Divergence (MD)** — Same concept, different measurement
3. **Timeline Inconsistency (TI)** — Same event, different dates
4. **Standard Mismatch (SM)** — Same domain, conflicting standards
5. **Heuristic Conflation (HC)** — Translation artifact (not true conflation)
6. **Cross-Ref Drift (CRD)** — Stale references
7. **Variant Contamination (VC)** — Pipeline artifact leak

Each type has a **detection signature** (automated where possible), **severity classification**, and **resolution pathway**. The taxonomy ensures **systematic coverage** — no conflation escapes classification.

**Next**: Chapter 3 — Baker Street Forensic Engine: Evidence Chains for Conflict Resolution.

CH789EOF
---
