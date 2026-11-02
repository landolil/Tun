## Chapter 3: Baker Street Forensic Engine — Evidence Chains for Conflict Resolution

### 3.1 The Forensic Principle Applied to Conflation

The Baker Street heuristic treats every conflation as a **crime scene** where two documents make contradictory claims about the same variable. The forensic engine constructs **evidence chains** using the five universal exhibits (A-E) established in DOC-13 Ch. 5.2.

> **Baker Street Voice**: *When two witnesses testify differently about the same fact, one is mistaken, one is lying, or both are observing different facets. The evidence chain reveals which.*

---

### 3.2 Evidence Chain Construction — Five Exhibits Per Claim

#### 3.2.1 Exhibit A: Concession — The Title Chain

For conflations involving **mineral rights, concession boundaries, or ownership claims**:

```python
def build_exhibit_a(claim):
    
    Source: Sernageomin Catastro Minero (catastro.sernageomin.cl)
    Verification: Title search + boundary survey + overlap check
    
    return Exhibit(
        type='A',
        source='Sernageomin Registry',
        query={
            'rol': claim.concession_rol,
            'titular': claim.titular,
            'minerales': claim.minerales,
            'vigente': True
        },
        verification_method='SQL query + GIS boundary validation',
        primary_evidence=True
    )
```

**Application to Conflation Types**: CO (concession area), TI (concession expiry), CRD (stale concession reference)

---

#### 3.2.2 Exhibit B: Consent — The Consulta Chain

For conflations involving **Indigenous consent, community agreements, or FBC/CDC trust terms**:

```python
def build_exhibit_b(claim):
    
    Sources: 
    1. CONADI Registro de Consultas (consultas.conadi.cl)
    2. FBC/CDC Charter (Escritura Pública, Notaría)
    3. Blockchain Anchor (heat/lot ledger)
    Verification: Consulta completed per Law 19.253 Art. 34 + charters notarized + blockchain-anchored
    
    return Exhibit(
        type='B',
        sources=['CONADI Registry', 'Notarized FBC/CDC Charters', 'Blockchain Anchor'],
        query={
            'consulta_id': claim.consulta_id,
            'communities': claim.affected_communities,
            'fbc_equity_pct': 15,
            'cdc_equity_pct': 15,
            'blockchain_tx': claim.blockchain_anchor
        },
        verification_method='Registry lookup + notary verification + blockchain verification',
        primary_evidence=True
    )
```

**Application to Conflation Types**: CO (consent scope), TI (consulta timeline), HC (consultation vs equity framing)

---

#### 3.2.3 Exhibit C: Permit — The RCA Chain

For conflations involving **environmental permits, RCA conditions, CRMA designation, or Water Code applicability**:

```python
def build_exhibit_c(claim):
    
    Source: SEA Sistema de Evaluación de Impacto Ambiental (seia.sea.gob.cl)
    Verification: RCA Resolution number + CRMA designation + observations resolved
    
    return Exhibit(
        type='C',
        source='SEA SEIA Portal',
        query={
            'rca_number': claim.rca_number,
            'project_name': claim.project_name,
            'crma_designation': claim.crma_status,
            'observaciones_resolved': claim.observaciones_status,
            'water_code_applicable': claim.water_code_n_a  # Aegis-Forge zero-water
        },
        verification_method='SEA portal lookup + CRMA register check + observaciones log',
        primary_evidence=True
    )
```

**Application to Conflation Types**: CO (permit conditions), SM (standard mismatch on env requirements), TI (RCA timeline), CRD (stale RCA reference)

---

#### 3.2.4 Exhibit D: Demand — The Offtake Chain

For conflations involving **offtake volumes, pricing, DFARS certification, or magnet specifications**:

```python
def build_exhibit_d(claim):
    
    Sources:
    1. CSM Offtake Agreement (SPA Chile + SPA US Holdco)
    2. DFARS 252.225-7018 Certification
    3. Blockchain Heat/Lot Certificate
    Verification: Executed SPA + DFARS cert + blockchain traceability
    
    return Exhibit(
        type='D',
        sources=['CSM SPA', 'DFARS Certification', 'Blockchain Heat/Lot Cert'],
        query={
            'volume_tonnes_yr': claim.offtake_volume,
            'price_formula': claim.price_formula,
            'dfars_cert': claim.dfars_compliant,
            'grade_spec': claim.magnet_grade,
            'blockchain_tx': claim.heat_lot_tx
        },
        verification_method='Contract review + DFARS checklist + blockchain query',
        primary_evidence=True
    )
```

**Application to Conflation Types**: CO (volume/price), MD (grade spec methodology), SM (DFARS vs commercial spec), TI (delivery schedule)

---

#### 3.2.5 Exhibit E: Enforcement — The Dispute Chain

For conflations involving **dispute resolution, governing law, arbitration, or enforcement mechanisms**:

```python
def build_exhibit_e(claim):
    
    Sources:
    1. Brokerage Protocol Dispute Clause (DOC-04 Ch. 6)
    2. Chilean Arbitration Law (Law 19.971)
    3. ICC Rules (if international)
    Verification: Governing law + seat + language + New York Convention enforceability
    
    return Exhibit(
        type='E',
        sources=['Brokerage Protocol', 'Law 19.971', 'ICC Rules', 'NY Convention'],
        query={
            'governing_law': claim.governing_law,
            'arbitration_seat': claim.arbitration_seat,
            'language': claim.arbitration_language,
            'cvo_veto': claim.cvo_veto_applies,
            'expert_determination': claim.expert_determination_step,
            'icc_arbitration': claim.icc_step
        },
        verification_method='Legal opinion + treaty verification + precedent check',
        primary_evidence=True
    )
```

**Application to Conflation Types**: CRD (stale dispute clause), TI (arbitration timeline), SM (arbitration standard)

---

### 3.3 Three-Pass Deduction Engine for Conflation Resolution

Per DOC-13 Ch. 5.3, the Baker Street deduction applies **three elimination passes** to each conflation:

#### 3.3.1 Pass 1: Eliminate Legal Impossibilities

```python
def pass1_legal_elimination(conflict):
    
    Eliminate claims that violate constitutional, treaty, or statutory law.
    
    eliminations = []
    
    for claim in [conflict.claim_a, conflict.claim_b]:
        # Constitutional impossibilities
        if violates_chile_constitution(claim):
            eliminations.append((claim, Violates Constitution Art. 19§24))
        
        # Treaty impossibilities
        if violates_cptpp(claim) or violates_chile_us_fta(claim):
            eliminations.append((claim, Violates CPTPP/Chile-US FTA))
        
        # Statutory impossibilities
        if violates_mining_code(claim) or violates_env_law(claim) or violates_indigenous_law(claim):
            eliminations.append((claim, Violates Chilean statutory law))
        
        # DFARS impossibilities
        if claim.requires_dfars and not claim.dfars_compliant:
            eliminations.append((claim, Fails DFARS 252.225-7018))
    
    return eliminations
```

**Examples Eliminated**:
- ❌ Private mineral ownership (Constitution Art. 19§24)
- ❌ Chinese magnet supply for US defense (DFARS)
- ❌ Aqueous processing in Atacama without water rights (Water Code)
- ❌ Consulta bypass (Indigenous Law 19.253)

---

#### 3.3.2 Pass 2: Eliminate Economic Non-Viabilities

```python
def pass2_economic_elimination(conflict):
    
    Eliminate claims that are economically non-viable under pipeline constraints.
    
    eliminations = []
    
    for claim in [conflict.claim_a, conflict.claim_b]:
        # Capital stack impossibilities
        if claim.requires_single_source_funding > 500e6:
            eliminations.append((claim, No single source >$500M for Chile risk))
        
        # Offtake economics
        if claim.offtake_price < claim.min_viable_price:
            eliminations.append((claim, Below minimum viable price (CAPEX+OPEX+IRR)))
        
        # Insurance gaps
        if claim.requires_uninsurable_risk:
            eliminations.append((claim, Uninsurable risk (no Layer 1-7 coverage)))
    
    return eliminations
```

**Examples Eliminated**:
- ❌ Central processing plant ($2B+ CAPEX, 7yr timeline, water conflict)
- ❌ Spot market magnet procurement (DFARS traceability impossible)
- ❌ Atlantic-only logistics (Red Sea closure risk, Cape routing cost >30%)

---

#### 3.3.3 Pass 3: Eliminate Technical Non-Feasibilities

```python
def pass3_technical_elimination(conflict):
    
    Eliminate claims that violate physics, engineering limits, or verified standards.
    
    eliminations = []
    
    for claim in [conflict.claim_a, conflict.claim_b]:
        # Physics impossibilities
        if claim.requires_physics_violation:
            eliminations.append((claim, Violates Maxwell-Faraday / thermodynamics))
        
        # Engineering limits
        if claim.exceeds_verified_limits:
            eliminations.append((claim, Exceeds verified engineering limits))
        
        # Standard compliance
        if claim.cites_standard and not standard_supports_claim(claim.standard, claim):
            eliminations.append((claim, fStandard {claim.standard} does not support claim))
    
    return eliminations
```

**Examples Eliminated**:
- ❌ Synchronous condensers for GIC hardening (amplify GIC, no blackstart)
- ❌ 2L-VSI for ±1.5kV DC bus (voltage/thermal limits)
- ❌ NdFeB-only motor strategy (Dy/Tb supply risk, 200°C limit)
- ❌ GFL inverters for Carrington hardening (GIC coupling physics)

---

#### 3.3.4 Deduction Output

```python
@dataclass
class DeductionResult:
    claim_a_eliminated: List[str]  # Reasons
    claim_b_eliminated: List[str]  # Reasons
    remaining: str  # 'A', 'B', 'SYNTHESIZED', or 'NONE'
    synthesis: Optional[str]  # If SYNTHESIZED
    confidence: float  # 0.0-1.0
    
    def __str__(self):
        if self.remaining == 'A':
            return fClaim A stands. Claim B eliminated: {', '.join(self.claim_b_eliminated)}
        elif self.remaining == 'B':
            return fClaim B stands. Claim A eliminated: {', '.join(self.claim_a_eliminated)}
        elif self.remaining == 'SYNTHESIZED':
            return fSynthesized: {self.synthesis}. A eliminated: {self.claim_a_eliminated}. B eliminated: {self.claim_b_eliminated}
        else:
            return fBoth eliminated. Gap identified: {self.synthesis}
```

**Baker Street Voice**: *Eliminate the impossible. Whatever remains — however improbable — is the truth. The synthesis is the truth that accommodates all verified evidence.*

---

### 3.4 Evidence Chain Integrity Verification

#### 3.4.1 Integrity Invariant

For every conflation, the evidence chain must satisfy:

```python
def verify_evidence_chain_integrity(conflict):
    
    Formal integrity check for Baker Street evidence chains.
    
    checks = {
        'exhibits_complete': all(e in conflict.evidence_a.exhibits for e in 'ABCDE') and
                             all(e in conflict.evidence_b.exhibits for e in 'ABCDE'),
        'primary_sources_only': all(src.is_primary for src in conflict.evidence_a.primary_sources) and
                                all(src.is_primary for src in conflict.evidence_b.primary_sources),
        'verification_methods_documented': len(conflict.evidence_a.verification_methods) >= 3 and
                                           len(conflict.evidence_b.verification_methods) >= 3,
        'deduction_chain_valid': validate_deduction_chain(conflict.deduction_a) and
                                 validate_deduction_chain(conflict.deduction_b),
        'zero_ambiguity': zero_ambiguity_test(conflict.claim_a.text)['pass'] and
                          zero_ambiguity_test(conflict.claim_b.text)['pass'],
    }
    return all(checks.values()), checks
```

#### 3.4.2 Zero-Ambiguity Test (Automated)

```python
def zero_ambiguity_test(text):
    
    Scan for forbidden linguistic patterns in claim text.
    
    forbidden_patterns = [
        r'\ballegedly\b', r'\breportedly\b', r'\bbelieved\b', r'\bsuggested\b',
        r'\blikely\b', r'\bprobable\b', r'\bpossible\b', r'\bpotential\b',
        r'\bindustry sources\b', r'\bexperts say\b', r'\banalysts believe\b',
        r'\bmay indicate\b', r'\bmight suggest\b', r'\bcould imply\b'
    ]
    
    violations = []
    for pattern in forbidden_patterns:
        matches = re.findall(pattern, text, re.IGNORECASE)
        if matches:
            violations.extend([(pattern, m) for m in matches])
    
    return {'pass': len(violations) == 0, 'violations': violations}
```

**Pass Threshold**: 0 violations in all claim texts involved in conflation.

---

### 3.5 Cross-Reference to DOC-07, DOC-11, DOC-12, DOC-13

| Cross-Ref | Baker Street Relevance for Audit |
|-----------|----------------------------------|
| **DOC-07** (Regulatory) | Exhibit C methodology for RCA/Consulta/Water Code conflation resolution |
| **DOC-11** (GIC Hardening) | Exhibit A (NASA/NOAA models) + Exhibit D (CAT bonds) for grid hardening conflation |
| **DOC-12** (GFM Standards) | Exhibit C (CEN NTSyCS) + Exhibit D (Aegis power spec) for GFM conflation |
| **DOC-13** (Framework) | Provides heuristic lenses — Baker Street IS the forensic engine for this audit |

---

### 3.6 Chapter 3 Summary

The Baker Street Forensic Engine provides **evidence-chain construction** for every conflation:

- **5 Exhibits (A-E)** map to the 5 claim categories in the pipeline
- **3-Pass Deduction** eliminates legal, economic, and technical impossibilities
- **Integrity Verification** ensures primary sources, documented methods, zero ambiguity
- **Output**: Binary verdict per claim (Stand/Eliminated/Synthesized) with confidence

This engine ensures **every conflation resolution is forensically defensible** — not negotiated, not compromised, but **deduced**.

**Next**: Chapter 4 — Keymaker Binary Verification: Verification Vectors for Each Conflict.

---
