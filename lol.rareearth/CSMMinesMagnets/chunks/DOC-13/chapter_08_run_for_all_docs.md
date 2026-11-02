# Run for all docs
for doc in DOC-01 DOC-02 ... DOC-12; do
    verify_keymaker $doc || exit 1
done
echo ALL DOCUMENTS: Keymaker verification PASS
```

---

### 3.10 Keymaker vs Williams/El Segundo

| Dimension | Keymaker | Williams | El Segundo |
|-----------|----------|----------|------------|
| **Ontology** | Fabrication fidelity | Architectural necessity | Recursive observation |
| **Lock** | Measurable failure mode | Irreducible principle | Protocol blindness |
| **Key** | Single primitive (CSV) | Deterministic technology | Participation act |
| **Turn** | Bidirectional validation | Protocol axiom | Recursive protocol |
| **Metric** | Bit vector (binary) | Completeness ratio | Transition density |
| **Keymaker Unique** | **Binary verification** — no partial credit | — | — |

---

### 3.11 Quality Gate: Bidirectional Proof

**Automated Check**:
```python
def keymaker_bidirectional_proof(canonical_doc):
    
    1. Theory→History: Protocol predictions match historical cases
    2. History→Theory: Formation events validate protocol bits
    3. No Lock without Key, no Key without Turn
    
    locks = extract_locks(canonical_doc)
    keys = extract_keys(canonical_doc)
    turns = extract_turns(canonical_doc)
    
    # 1:1:1 mapping required
    assert len(locks) == len(keys) == len(turns)
    
    # Theory→History
    for lock, key, turn in zip(locks, keys, turns):
        historical_match = validate_against_historical_cases(lock, key, turn)
        assert historical_match, fLock {lock.id} fails Theory→History
    
    # History→Theory (for completed docs)
    for doc in COMPLETED_DOCS:
        formation_events = extract_formation_events(doc)
        for event in formation_events:
            predicted_bit = protocol_predicts(event)
            actual_bit = event.verified
            assert predicted_bit == actual_bit, fHistory→Theory fail: {doc} {event}
    
    return {'pass': True, 'locks_validated': len(locks)}
```

**Pass Threshold**: 100% bidirectional validation. 0 tolerance.

---

### 3.12 Cross-Reference to DOC-09, DOC-10, DOC-12

| Cross-Ref | Keymaker Relevance |
|-----------|-------------------|
| **DOC-09** (Magnet Specs) | Lock: Grade ambiguity. Key: Specs from motor physics. Turn: N48SH/SmCo 2:17/Fe₁₆N₂ binary. |
| **DOC-10** (Supply Chain) | Lock: Intermediary opacity. Key: Mine→Magnet→Motor single chain. Turn: Heat/lot blockchain. |
| **DOC-12** (GFM Standards) | Lock: GFL vs GFM ambiguity. Key: 6 architectures → VSM/Matching. Turn: CEN mandate = binary. |

---

### 3.13 Chapter 3 Summary

The Keymaker heuristic operates on **binary fabrication logic**:

1. **Empirical Lock**: Seven measurable failure modes (LK-01..07) that define the facilitator→owner gap.
2. **Mathematical Key**: The **Constraint Satisfaction Vector** CSV ∈ {0,1}⁷ — a single lattice-homomorphism primitive that generates all protocol actions.
3. **Bidirectional Turn**: Theory→History (protocol predicts Escondida/Los Pelambres) AND History→Theory (Tardigradia formation validates CSV).

The Keymaker voice — *Lock: [metric]. Key: [primitive]. Turn: Theory→History ∧ History→Theory.* — is the **verification certificate** that every document's claims are binary-verified, not aspirational.

**Next**: Chapter 4 — El Segundo Heuristic: Mirror, Participation, Protocol.


---
