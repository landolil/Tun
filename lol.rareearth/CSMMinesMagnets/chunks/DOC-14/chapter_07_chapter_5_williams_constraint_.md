## Chapter 5: Williams Constraint Priority — Lock Hierarchy for Conflict Arbitration

### 5.1 The Williams Principle for Conflation Arbitration

When two verified claims (both bits = 1) contradict, the **Williams Lock Hierarchy** determines which claim yields. The hierarchy derives from the **irreducibility** of each Lock class.

> **Williams Voice**: *The Lock is the constraint that cannot be negotiated. Constitutional > Physical > Regulatory > Technical > Economic. The lower Lock yields.*

---

### 5.2 Lock Hierarchy (5 Levels, Strict Ordering)

| Level | Lock Class | Source | Irreducibility Proof | Example Conflation |
|-------|------------|--------|---------------------|-------------------|
| **1** | **Constitutional** | Chile Constitution Art. 19§24 | Supreme Court precedent (Rol 2023-XXX) | Private ownership vs State concession |
| **2** | **Physical/Physics** | Maxwell-Faraday, Thermodynamics | Hydro-Québec 1989, NASA/NOAA models | GFL vs GFM for Carrington hardening |
| **3** | **Regulatory/Statutory** | Law 19.300, 19.253, Water Code, Mining Code | SEA rejection database, CONADI rulings | Consent = consultation vs Consent = equity |
| **4** | **Technical/Engineering** | IEEE, IEC, CEN, NERC standards | Standard test results, manufacturer datasheets | 2L-VSI vs 3L-NPC for ±1.5kV |
| **5** | **Economic/Financial** | EIB/CPTPP/IRA statutes, Market physics | Treaty law, tax code, CAPEX/OPEX models | Single-source vs Triangulated capital |

**Strict Ordering**: Level N Lock **always** overrides Level N+1 Lock. No exceptions.

---

### 5.3 Arbitration Protocol

```python
def williams_arbitrate(conflict):
    """
    Apply Lock Hierarchy to resolve binary-verified conflicting claims.
    Precondition: Both claims have verification_bit = 1.
    """
    lock_a = identify_governing_lock(conflict.claim_a)
    lock_b = identify_governing_lock(conflict.claim_b)
    
    if lock_a.level < lock_b.level:
        return Resolution(
            decision=f"Claim_A accepted (Lock Level {lock_a.level} > {lock_b.level})",
            lock_priority=f"{lock_a.class_name} overrides {lock_b.class_name}",
            winning_claim=conflict.claim_a
        )
    elif lock_b.level < lock_a.level:
        return Resolution(
            decision=f"Claim_B accepted (Lock Level {lock_b.level} > {lock_a.level})",
            lock_priority=f"{lock_b.class_name} overrides {lock_a.class_name}",
            winning_claim=conflict.claim_b
        )
    else:
        # Same level — apply secondary criteria
        return williams_secondary_arbitration(conflict, lock_a)
```

#### 5.3.1 Secondary Criteria (Same Lock Level)

1. **Primary Source Authority**: Government registry > Contract > Standard > Internal memo
2. **Temporal Recency**: Newer verified data overrides older (with scope tag)
3. **Scope Specificity**: Narrower scope overrides broader (with explicit scope tag)
4. **Heuristic Dominance**: Per Composition Matrix (DOC-13 Ch. 1.3.1) for that document phase

---

### 5.4 Arbitration Examples from Baseline Conflations

| Conflation | Lock A | Lock B | Winner | Justification |
|------------|--------|--------|--------|---------------|
| Private ownership vs State concession | Constitutional (Art 19§24) | Economic (investment preference) | State concession | L1 > L5 |
| GFL vs GFM for GIC hardening | Physical (GIC physics) | Technical (IEEE 1547 GFL standard) | GFM | L2 > L4 |
| Consent = consultation vs Consent = equity | Regulatory (Law 19.253 Art 34) | Economic (community relations budget) | Equity participation | L3 > L5 |
| 2L-VSI vs 3L-NPC for ±1.5kV | Technical (voltage rating) | Economic (2L cheaper) | 3L-NPC | L4 > L5 |
| Single-source capital vs Triangulation | Economic (capital physics) | Economic (preference) | Triangulation | L5: Physics > Preference |
| CRMA Designation date (Q3 vs H1) | Regulatory (EU Commission process) | Economic (venture timeline) | Q3 (regulatory reality) | L3 > L5 |

---

### 5.5 Lock Hierarchy Formalization

```python
LOCK_HIERARCHY = {
    1: LockClass(
        name="Constitutional",
        sources=["Chile Constitution", "Supreme Court Jurisprudence"],
        test=lambda claim: claim.invokes_constitutional_principle(),
        examples=["State mineral ownership", "Indigenous rights (Art 19§25)"]
    ),
    2: LockClass(
        name="Physical",
        sources=["Maxwell Equations", "Thermodynamics", "NASA/NOAA GIC Models"],
        test=lambda claim: claim.invokes_physical_law(),
        examples=["Carrington GIC coupling", "Magnetocrystalline anisotropy limits", "Thermal cascade temps"]
    ),
    3: LockClass(
        name="Regulatory",
        sources=["Law 19.300", "Law 19.253", "Water Code", "Mining Code", "CEN NTSyCS"],
        test=lambda claim: claim.invokes_statutory_requirement(),
        examples=["RCA process", "Consulta Indígena", "Water permits", "GFM mandate"]
    ),
    4: LockClass(
        name="Technical",
        sources=["IEEE 2800", "IEC 60404", "NERC TPL-007", "CEN DS N°62", "MIL-STD-1540"],
        test=lambda claim: claim.invokes_engineering_standard(),
        examples=["GFM architecture", "Magnet grade test methods", "Transformer hardening"]
    ),
    5: LockClass(
        name="Economic",
        sources=["EIB Statutes", "CPTPP Art 9/14", "IRA §45X", "CAPEX/OPEX Models"],
        test=lambda claim: claim.invokes_financial_constraint(),
        examples=["Capital stack layers", "Offtake pricing", "Insurance layers", "IRR thresholds"]
    )
}
```

---

### 5.6 Quality Gate: Constraint Completeness for Audit

```python
def williams_audit_constraint_completeness(audit_results):
    """
    Every resolved conflation must map to a Lock Hierarchy arbitration.
    """
    checks = {
        'all_resolved_have_lock': all(c.resolution.lock_priority is not None 
                                       for c in audit_results.resolutions),
        'hierarchy_respected': all(c.resolution.winning_claim.lock_level <= c.resolution.losing_claim.lock_level
                                    for c in audit_results.resolutions if not c.resolution.synthesized),
        'no_level_skip': all(c.resolution.lock_priority.level_diff == 1 or c.resolution.synthesized
                              for c in audit_results.resolutions),
        'constitutional_inviolable': not any(c.resolution.winning_claim.lock_level > 1 
                                              and c.resolution.losing_claim.lock_level == 1
                                              for c in audit_results.resolutions),
    }
    return {'pass': all(checks.values()), 'details': checks}
```

---

### 5.7 Cross-Reference to DOC-04, DOC-05, DOC-07, DOC-11, DOC-13

| Cross-Ref | Williams Arbitration Relevance |
|-----------|-------------------------------|
| **DOC-04** | 7-trigger CSV bits as Level 4 (Technical) or Level 3 (Regulatory) Locks |
| **DOC-05** | Capital stack triangulation as Level 5 (Economic) Lock with physics basis |
| **DOC-07** | Mining Code/Env Law/Indigenous Law/Water Code as Level 3 (Regulatory) Locks |
| **DOC-11** | Carrington GIC physics as Level 2 (Physical) Lock — inviolable |
| **DOC-13** | Provides Lock definitions for all 5 heuristic framings |

---

### 5.8 Chapter 5 Summary

The Williams Constraint Priority system provides **deterministic arbitration** for binary-verified conflicting claims:

- **5-Level Lock Hierarchy**: Constitutional > Physical > Regulatory > Technical > Economic
- **Strict Ordering**: No exceptions, no negotiation — lower Lock always yields
- **Secondary Criteria**: Source authority, recency, scope, heuristic dominance
- **Quality Gate**: Every resolution maps to hierarchy, no Level skip, Constitutional inviolable

The Williams voice — *"The Lock is [Level X]. The Key is [winning claim]. The Turn is [arbitration recorded]."* — is the **arbitration certificate** that conflation resolution follows irreducible constraint logic.

**Next**: Chapter 6 — El Segundo Recursive Audit: Meta-Audit Protocol.

---
