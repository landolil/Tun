# Pseudo-code for variant differentiation check
def verify_variant_independence(variants):
    # Williams: must contain constraint, necessity, commitment 
    #           with frequency > Keymaker variant
    # Keymaker: must contain lock, key, turn, bidirectional
    # El Segundo: must contain mirror, participation, protocol, recursive
    # Baker Street: must contain evidence, deduction, exhibit, forensic
    # SHIELD: must contain calm, resilience, continuity, horizon
    
    # Combined: must contain all five triads in synthesis form
    #           no new claims, only synthesis
    pass
```

**Failure Mode**: If Keymaker variant reads like Williams variant (uses constraint more than lock), the pipeline has **heuristic conflation** — a quality gate failure.

---

### 1.4 Quality Gates Per Heuristic — Internal Consistency Checks

Each heuristic has **automated quality gates** that run during `generate_heuristic_intros.sh`:

| Heuristic | Quality Gate | Pass Criteria |
|-----------|--------------|---------------|
| **Williams** | Constraint Completeness | Every major section maps to a Constraint→Necessity→Commitment triad; 0 orphan claims |
| **Keymaker** | Bidirectional Validation | Every Lock has a Key; every Key has a Turn; Turn validates Theory→History AND History→Theory |
| **El Segundo** | Recursive Closure | Mirror references traceability matrix; Participation references heartbeat/logs; Protocol references quality gates |
| **Baker Street** | Evidence Chain Integrity | Every claim has ≥1 primary source exhibit; 0 uncited assertions; Deduction chain eliminates alternatives |
| **SHIELD** | Horizon Consistency | Every risk has layered mitigation; Continuity protocol specified; No assume best case statements |

**Combined Gate**: All 5 variants generated → Combined intro synthesizes without new claims → Variant differentiation check passes → Total intro package ≥330 lines, ≤350 lines.

---

### 1.5 Translation Pipeline Architecture — Source → Lens → Variant → Combined

#### 1.5.1 Canonical Source Structure

The canonical document follows a **fixed 9-chapter template** (enforced by AGENTS.md and runner handoffs):

1. **Domain Overview** — System scope, boundaries, key variables
2. **Deep Specification A** — Primary technical/regulatory/community domain
3. **Deep Specification B** — Secondary domain or methodology
4. **Deep Specification C** — Tertiary domain or integration
5. **Cross-Domain Integration** — How A,B,C interact
6. **Operational Protocol** — Procedures, sequences, decision trees
7. **Economic/Strategic Analysis** — CAPEX, OPEX, revenue, risk
8. **Historical Application** — How prior docs inform this one
9. **Traceability Matrix** — Claim-to-source mapping, standards, conflation

**Invariant**: Every document ≥900 lines. Chapter 9 (Traceability) is **non-negotiable** — it is the Mirror for El Segundo, the Evidence for Baker Street, the Turn for Keymaker.

#### 1.5.2 Heuristic Lens Application

Each lens is a **prompt template** in `generate_heuristic_intros.sh`:

```bash