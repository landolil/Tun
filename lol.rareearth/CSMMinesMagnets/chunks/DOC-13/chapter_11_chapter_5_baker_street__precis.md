## Chapter 5: Baker Street — Precision, Evidence, Deduction (Forensic Rigor)

### 5.1 The Case — Sovereignty-Strategy Divide as Forensic Problem

The Baker Street heuristic frames the **Chilean magnetic mineral brokerage** as a **forensic case**:

> **The Case**: *Who owns the magnetic flow from Chilean IOCG/REE districts to Carrington Storm Motors? The Chilean State claims sovereignty (Constitution Art. 19§24). The venture claims ownership via concession + investment. The communities claim consent rights (Law 19.253). The grid claims physics (Carrington GIC). The market claims price (LME + REE indices).*

**Baker Street Voice**: *The game is afoot. The sovereignty-strategy divide is the crime scene. The magnetic flow is the body. The evidence is scattered across 12 documents. We follow the evidence chain.*

#### 5.1.1 Case Framing Methodology

Every document in the pipeline is a **crime scene report** with:
- **Victim**: Uncertainty / Ambiguity / Conflation
- **Suspects**: Unverified claims, missing cross-refs, heuristic conflation
- **Evidence**: Primary sources (laws, registries, measurements, certificates)
- **Deduction**: The irreducible conclusion that survives elimination

#### 5.1.2 The Five Exhibits (Universal to All Documents)

| Exhibit | Category | Source Type | Verification Method |
|---------|----------|-------------|---------------------|
| **A** | Concession | Sernageomin Registry (public) | Title search + boundary survey |
| **B** | Consent | Consulta Indígena Act + FBC/CDC Charter | Notarized + blockchain anchor |
| **C** | Permit | RCA Resolution (SEA) | SEA portal + CRMA designation |
| **D** | Demand | CSM Offtake Agreement + DFARS Cert | Signed contract + smart contract |
| **E** | Enforcement | Chilean Courts / ICC Arbitration | Jurisdiction clause + award enforcement |

**Baker Street Voice**: *Exhibit A proves title. Exhibit B proves consent. Exhibit C proves permit. Exhibit D proves demand. Exhibit E proves enforcement. Eliminate the impossible — whatever remains is the viable pathway.*

---

### 5.2 The Evidence — Exhibits A-E (Concession, Consent, Permit, Demand, Enforcement)

#### 5.2.1 Exhibit A: Concession — The Title Chain

**Source**: Sernageomin Catastro Minero (catastro.sernageomin.cl)
**Verification**: 
```sql
SELECT * FROM concesiones 
WHERE titular = 'Tardigradia Chile SpA' 
  AND vigente = true 
  AND NOT EXISTS (SELECT 1 FROM overlaps WHERE ...)
```
**Required Fields**: Rol, Región, Provincia, Comuna, Hectáreas, Minerales, Fecha_otorgamiento, Fecha_vencimiento
**Baker Street Standard**: 0 overlapping claims. 0 expired concessions in active set.

#### 5.2.2 Exhibit B: Consent — The Consulta Chain

**Source**: 
1. CONADI Registro de Consultas (consultas.conadi.cl)
2. FBC/CDC Charter (Escritura Pública, Notaría)
3. Blockchain Anchor (heat/lot ledger)

**Verification**:
- Consulta Indígena completed per Law 19.253 Art. 34
- FBC (Fundación Bien Común) holds 15% FCF equity
- CDC (Corporación Desarrollo Comunitario) holds 15% FCF equity
- Both charters notarized, registered, blockchain-anchored

**Baker Street Standard**: Consent is not consultation completed — it is **binding agreement with equity participation**.

#### 5.2.3 Exhibit C: Permit — The RCA Chain

**Source**: SEA Sistema de Evaluación de Impacto Ambiental (seia.sea.gob.cl)
**Verification**:
- RCA Resolution number, date, title
- CRMA Strategic Project designation (EU Regulation 2024/1252)
- Aegis-Forge zero-aqueous → Water Code N/A (DOC-07 Ch.4)
- All observations (observaciones) resolved pre-submission

**Baker Street Standard**: RCA is not approved — it is **unobserved**. Every observación resolved and documented.

#### 5.2.4 Exhibit D: Demand — The Offtake Chain

**Source**: 
1. CSM Offtake Agreement (SPA Chile + SPA US Holdco)
2. DFARS 252.225-7018 Certification
3. Blockchain Heat/Lot Certificate

**Verification**:
- Offtake volume ≥ Aegis-Forge design capacity (226 L/batch × N batches/yr)
- Price formula: LME + REE index + processing premium (DOC-31)
- DFARS cert: Country of origin = Chile (qualifying), Melt = Chile/US, Traceable = blockchain

**Baker Street Standard**: Demand is not LOI — it is **executed SPA with DFARS-certified delivery schedule**.

#### 5.2.5 Exhibit E: Enforcement — The Dispute Chain

**Source**: 
1. Brokerage Protocol Dispute Clause (DOC-04 Ch.6)
2. Chilean Arbitration Law (Law 19.971)
3. ICC Rules (if international)
4. CVO Veto → Expert Determination → ICC Arbitration

**Verification**:
- Governing law: Chile (concessions, environmental) / NY (SPA US Holdco)
- Language: Spanish/English
- Seat: Santiago / New York
- Enforceability: New York Convention (1958) — 172 countries

**Baker Street Standard**: Enforcement is not contract says — it is **tested jurisdictional path with precedent**.

---

### 5.3 The Deduction — Eliminate Impossible, Whatever Remains Is Truth

#### 5.3.1 Deduction Engine

The Baker Street deduction follows **three elimination passes**:

**Pass 1: Eliminate Legal Impossibilities**
- ❌ Private mineral ownership (Constitution Art. 19§24)
- ❌ Aqueous processing in Atacama (Water Code + RCA rejection rate)
- ❌ Chinese magnet supply for US defense (DFARS 252.225-7018)
- ❌ GFL inverters for Carrington hardening (GIC physics)

**Pass 2: Eliminate Economic Non-Viabilities**
- ❌ Central processing plant (CAPEX >$2B, water conflict, 7yr timeline)
- ❌ Single-source financing (no institution >$500M Chile risk)
- ❌ Spot market magnet procurement (DFARS traceability impossible)
- ❌ Atlantic-only logistics (Red Sea closure risk, Cape routing cost)

**Pass 3: Eliminate Technical Non-Feasibilities**
- ❌ NdFeB-only motor strategy (Dy/Tb supply risk, temp limit)
- ❌ Synchronous condenser grid hardening (GIC amplification)
- ❌ Paper-based shipping docs (12% error rate, DFARS fail)
- ❌ Non-GFM Aegis-Forge power interface (blackstart impossible)

**What Remains** (The Truth):
✅ State concession + Aegis-Forge mine-mouth + FBC/CDC consent  
✅ Triangulated capital (CRMA+CPTPP+IRA) + ≥51% Chilean equity  
✅ GFM-native DC microgrid + synthetic inertia + Carrington design  
✅ Blockchain heat/lot + DFARS-ready + IMDG Class 9 compliant  
✅ Fe₁₆N₂ 27 MGOe + SmCo 2:17 + NdFeB N48SH portfolio  

**Baker Street Voice**: *When you have eliminated the impossible, whatever remains — however improbable — must be the truth. The improbable pathway is the only viable one.*

---

### 5.4 Baker Street Voice Signature — Precision/Evidence/Deduction, Zero Ambiguity

| Linguistic Invariant | Pattern | Example |
|----------------------|---------|---------|
| **Case Frame** | The Case: [sovereignty-strategy divide as forensic problem] | The Case: Who owns the magnetic flow? |
| **Exhibit Citation** | Exhibit [A-E]: [source] — [verification] | Exhibit A: Sernageomin Rol 2024-XXX — Title search clear |
| **Deduction Chain** | Eliminate [impossible]. Eliminate [impossible]. Remains: [truth]. | Eliminate private ownership. Eliminate aqueous. Remains: State concession + Aegis-Forge. |
| **Zero Ambiguity** | Not [weak term]. [Strong term]. | Not 'consultation.' Binding agreement with equity. |

**Forbidden**: Allegedly, reportedly, sources indicate, believed to, suggests, may indicate
**Required**: Primary source. Verification method. Binary conclusion.

---

### 5.5 Application to DOC-01..12 — Evidence Chain Per Claim Per Document

#### 5.5.1 Evidence Chain Template (Per Claim)

```markdown
**Claim**: [Specific assertion from document]
**Exhibit**: [A-E category]
**Source**: [Primary source with identifier]
**Verification**: [Method + result]
**Deduction**: [Eliminated alternatives → Remaining truth]
**Cross-Ref**: [DOC-XX section]
```

#### 5.5.2 DOC-07 Sample Evidence Chain

| Claim | Exhibit | Source | Verification | Deduction |
|-------|---------|--------|--------------|-----------|
| Mining Code concessions are irrevocable if maintained | A | Código de Minería Art. 19, 22, 25 | Supreme Court Rol 2023-12345 | Eliminate revocation risk. Remains: Maintenance obligation only. |
| Aegis-Forge zero-water = Water Code N/A | C | Law 19.300 Art. 10(h) + DGA Res. 2024 | SEA precedent: zero-discharge = no water permit | Eliminate water permit track. Remains: Environmental only. |
| Consulta Indígena binding with equity | B | Law 19.253 Art. 34 + FBC/CDC charter | Notarized + CONADI registered | Eliminate consultation only. Remains: Equity participation required. |

#### 5.5.3 DOC-11 Sample Evidence Chain

| Claim | Exhibit | Source | Verification | Deduction |
|-------|---------|--------|--------------|-----------|
| Carrington GIC >100A/phase on SEN 500kV | A | NASA/NOAA GIC model + Kappenman FERC Meta-R-322 | Boteler 2019 validation | Eliminate <100A scenarios. Remains: Design basis = 200A/phase. |
| GFM provides GIC immunity via DC decoupling | D | DOC-12 Ch.7 test results | CEN simulation + Hydro-Québec precedent | Eliminate GFL. Remains: GFM-native mandatory. |

#### 5.5.4 DOC-12 Sample Evidence Chain

| Claim | Exhibit | Source | Verification | Deduction |
|-------|---------|--------|--------------|-----------|
| VSM + Matching provides 5-10s synthetic inertia | D | IEEE 2800-2022 §6.3 + DOC-12 Ch.2 | CEN PET 2024 integration study | Eliminate droop-only. Remains: VSM+Matching required. |
| 3L-NPC SiC GFM at ±1.5kV DC bus | C | Aegis-Forge spec (DOC-05 E172) + DOC-12 Ch.4 | Manufacturer datasheet + thermal model | Eliminate 2L-VSI. Remains: 3L-NPC for voltage/thermal. |

---

### 5.6 Exhibit Catalog Per Document (Extended)

| Document | Exhibit A (Concession) | Exhibit B (Consent) | Exhibit C (Permit) | Exhibit D (Demand) | Exhibit E (Enforcement) |
|----------|------------------------|---------------------|--------------------|--------------------|-------------------------|
| DOC-01 | Sernageomin catastro | — | — | — | — |
| DOC-02 | — | CONADI registry + community accords | — | — | — |
| DOC-03 | — | FBC/CDC charters | — | Royalty law | Dispute settlement |
| DOC-04 | — | FBC/CDC veto | — | Dual SPA | CVO→Expert→ICC |
| DOC-05 | — | FBC/CDC equity | CRMA designation | IRA §45X cert | Articles of Assoc. |
| DOC-06 | — | — | CRMA project | CSM SPA + DFARS | Governing law clauses |
| DOC-07 | Mining Code | Consulta pathway | RCA + CRMA | Water Code N/A | Sernageomin enforcement |
| DOC-08 | Port concessions | Community trusts | IMDG/IMO certs | CSM intake specs | Bill of lading law |
| DOC-09 | — | — | IEC 60404 | CSM grade specs | Quality agreement |
| DOC-10 | Mine concessions | — | Processing permits | Factory acceptance | Supply contract |
| DOC-11 | Grid concessions | — | CEN/NTSyCS | CAT bonds | Arbitration clauses |
| DOC-12 | — | — | CEN GFM mandate | Aegis power spec | Commissioning protocol |

---

### 5.7 Deduction Chain Validation (Automated)

```python
def baker_street_deduction_validation(canonical_doc):
    
    For every claim in canonical_doc:
    1. Identify Exhibit (A-E)
    2. Verify primary source exists and accessible
    3. Run elimination passes (Legal, Economic, Technical)
    4. Confirm remaining truth is binary and documented
    
    claims = extract_claims(canonical_doc)
    results = []
    
    for claim in claims:
        exhibit = classify_exhibit(claim)
        source = get_primary_source(claim, exhibit)
        verification = verify_source(source)
        
        # Pass 1: Legal elimination
        legal_impossible = check_legal_impossibility(claim)
        # Pass 2: Economic elimination
        economic_inviable = check_economic_inviability(claim)
        # Pass 3: Technical elimination
        technical_infeasible = check_technical_infeasibility(claim)
        
        eliminated = legal_impossible + economic_inviable + technical_infeasible
        remaining = claim if not eliminated else None
        
        results.append({
            'claim': claim,
            'exhibit': exhibit,
            'source': source,
            'verification': verification,
            'eliminated': eliminated,
            'remaining': remaining,
            'pass': remaining is not None
        })
    
    return {
        'pass': all(r['pass'] for r in results),
        'evidence_chains': results,
        'zero_ambiguity': all(r['verification']['method'] != 'secondary' for r in results)
    }
```

**Pass Threshold**: 100% claims have evidence chain. 0% secondary sources. 100% binary deductions.

---

### 5.8 Evidence Chain Integrity (Formal)

**Integrity Invariant**: For every claim C in document D:
```
∃ Exhibit E ∈ {A,B,C,D,E} : 
  Source(E) ∈ Primary_Sources ∧
  Verification(E) = Pass ∧
  Deduction(C) = Truth ∧
  CrossRef(D, C) ∈ Prior_Docs ∪ Standards
```

**Violation = Conflation Flag** (DOC-14).

---

### 5.9 Zero-Ambiguity Test (Automated)

```python
def zero_ambiguity_test(text):
    
    Scan for forbidden linguistic patterns:
    - Hedge words: allegedly, reportedly, believed, suggested, may, might, could
    - Uncertainty: likely, probable, possible, potential, expected
    - Attribution without source: industry sources, experts say, analysts believe
    
    forbidden = [
        r'\ballegedly\b', r'\breportedly\b', r'\bbelieved\b', r'\bsuggested\b',
        r'\blikely\b', r'\bprobable\b', r'\bpossible\b', r'\bpotential\b',
        r'\bindustry sources\b', r'\bexperts say\b', r'\banalysts believe\b',
        r'\bmay indicate\b', r'\bmight suggest\b', r'\bcould imply\b'
    ]
    
    violations = []
    for pattern in forbidden:
        matches = re.findall(pattern, text, re.IGNORECASE)
        if matches:
            violations.extend([(pattern, m) for m in matches])
    
    return {
        'pass': len(violations) == 0,
        'violations': violations
    }
```

**Pass Threshold**: 0 violations in canonical document. Heuristic intros may use The Lock is declarative form.

---

### 5.10 Baker Street vs Keymaker

| Dimension | Baker Street | Keymaker |
|-----------|--------------|----------|
| **Method** | Abductive (inference to best) | Constructive (primitive generation) |
| **Unit** | Exhibit (evidence) | Lock (failure mode) |
| **Validation** | Deductive elimination | Binary verification |
| **Output** | Truth claim | Verification vector |
| **Baker Street Unique** | **Forensic evidence chain** — primary sources only | — |

---

### 5.11 Quality Gate: Evidence Chain

**Automated Check**:
```python
def baker_street_evidence_chain(canonical_doc):
    claims = extract_claims(canonical_doc)
    for claim in claims:
        # Must have exhibit classification
        assert has_exhibit(claim), fClaim missing exhibit: {claim}
        # Must have primary source
        assert has_primary_source(claim), fClaim missing primary source: {claim}
        # Must have verification method
        assert has_verification_method(claim), fClaim missing verification: {claim}
        # Must pass zero-ambiguity
        assert zero_ambiguity_test(claim.text)['pass'], fAmbiguity in: {claim}
    return {'pass': True, 'claims_verified': len(claims)}
```

**Pass Threshold**: 100% claims verified. 0 ambiguities.

---

### 5.12 Cross-Reference to DOC-07, DOC-11, DOC-14

| Cross-Ref | Baker Street Relevance |
|-----------|------------------------|
| **DOC-07** (Regulatory) | Exhibit A: Mining Code. Exhibit B: Consulta. Exhibit C: RCA. All primary sources. |
| **DOC-11** (GIC Hardening) | Exhibit A: NASA/NOAA models. Exhibit D: CAT bonds. Forensic chain for each hardening claim. |
| **DOC-14** (Conflation Audit) | Baker Street IS the audit methodology — eliminate impossible overlaps. |

---

### 5.13 Chapter 5 Summary

The Baker Street heuristic operates on **forensic rigor**:

1. **The Case**: Sovereignty-strategy divide framed as forensic problem — who owns the magnetic flow?
2. **The Evidence**: Five universal exhibits (Concession, Consent, Permit, Demand, Enforcement) — all primary sources, all verified.
3. **The Deduction**: Three elimination passes (Legal, Economic, Technical) — whatever remains is the truth.

The Baker Street voice — *Exhibit A: [source]. Eliminate [impossible]. Remains: [truth].* — is the **certainty certificate** that every claim survives cross-examination.

**Next**: Chapter 6 — SHIELD Heuristic: Calm, Resilience, Continuity.


---
