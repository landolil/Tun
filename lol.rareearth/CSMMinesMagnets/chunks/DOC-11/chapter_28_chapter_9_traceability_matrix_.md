## Chapter 9: Traceability Matrix — Hardening Claims to Sources

### 9.1 Methodology per DOC-07/DOC-08/DOC-09/DOC-10

This chapter provides a comprehensive traceability matrix mapping every technical claim in DOC-11 to its primary source, following the methodology established in DOC-07 (Chilean Regulatory Navigation), refined in DOC-08 (Port & Logistics Corridors), DOC-09 (Rare Earth Specifications), and DOC-10 (Magnet Manufacturing Supply Chain).

**Traceability Methodology (Per DOC-07/DOC-08/DOC-09/DOC-10):**

1. **Claim Identification**: Each technical assertion in DOC-11 receives a unique Claim ID (format: `C11-XXX`)
2. **Source Classification**: Sources categorized as:
   - **PRIMARY**: Peer-reviewed, official standard, government publication, measured data
   - **SECONDARY**: Industry report, conference proceeding, reputable secondary analysis
   - **DERIVED**: Calculated from primary sources using documented formulas
   - **EXPERT**: Subject matter expert judgment (flagged for verification)
3. **Cross-Reference**: Links to DOC-01 through DOC-10 where claim is used or elaborated
4. **Verification Status**: VERIFIED / PARTIAL / PENDING / CONFLICT
5. **Conflation Check**: Cross-document consistency verification (0 flags target)

**Claim ID Format:**
```
C11-CCC-SSS
CCC = Chapter (001–009)
SSS = Sequence (001–999)
Example: C11-001-001 = Chapter 1, Claim 1
```

**Source Citation Standards:**
- **Standards**: IEEE, IEC, NERC, NOAA, ASTM, ISO — full designation + year
- **Government**: Agency, publication title, date, URL/accession
- **Academic**: Authors, title, journal, year, DOI
- **Industry**: Organization, report title, date, version
- **Internal**: DOC-XX, Section/Chapter, Claim ID

**Traceability Matrix Structure (Per Chapter):**
| Claim ID | Claim Statement | Source Type | Source Citation | Cross-Ref (DOCs) | Verification | Conflation |
|----------|----------------|-------------|-----------------|------------------|--------------|------------|

**Quality Gates for Traceability (Per DOC-07/DOC-08/DOC-09/DOC-10):**
- 100% of quantitative claims traced to PRIMARY or DERIVED source
- 100% of standard references cited with full designation
- 100% of cross-DOC references validated
- 0 conflation flags across DOC-01 through DOC-11
- All formulas traceable to origin (physics, standard, or derivation)
- All "TBD:RESEARCH" markers from earlier DOCs resolved or carried forward

**DOC-11 Specific Enhancements:**
1. **Space Weather Sources**: NOAA SWPC, NASA, INTERMAGNET, SHOA — real-time data feeds cited
2. **Chilean Grid Sources**: CEN PET 2025, monthly reports, SENAPRED protocols — official documents
3. **Financial Sources**: World Bank, GCF, Artemis, Munich Re — market documentation
4. **Motor Sources**: MDPI, Frontiers, Niron, CSMFAB — peer-reviewed + proprietary
5. **Model Validation**: NRME targets, DGA/FRA criteria — measurable verification

**Conflation Check Protocol (DOC-11 vs. DOC-01..10):**
| Check | Method | Pass Criteria |
|-------|--------|---------------|
| **Numerical Consistency** | Compare all shared values (GIC, Dst, E-field, costs) | ±5% tolerance |
| **Terminology Consistency** | Standardized glossary (Appendix A) | 100% match |
| **Assumption Alignment** | Cross-check boundary conditions, scenarios | No contradictory assumptions |
| **Citation Consistency** | Same source → same citation format | 100% match |
| **Formula Consistency** | Same physics → same equation form | Identical or documented variation |

**Automated Verification (Python):**
```python
def verify_traceability(doc11_claims, doc01_10_claims):
    conflicts = []
    for c11 in doc11_claims:
        # Cross-DOC numerical check
        for c_ref in doc01_10_claims:
            if c11.parameter == c_ref.parameter:
                diff = abs(c11.value - c_ref.value) / c_ref.value
                if diff > 0.05:  # 5% tolerance
                    conflicts.append({
                        'claim': c11.id,
                        'ref': c_ref.id,
                        'parameter': c11.parameter,
                        'diff': diff
                    })
    
    # Citation format check
    for c11 in doc11_claims:
        if not validate_citation_format(c11.source):
            conflicts.append({'claim': c11.id, 'issue': 'citation_format'})
    
    # TBD resolution check
    for c11 in doc11_claims:
        if 'TBD' in c11.claim and not c11.resolution:
            conflicts.append({'claim': c11.id, 'issue': 'unresolved_TBD'})
    
    return conflicts
