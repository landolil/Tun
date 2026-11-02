# session_resume/knowledge_format.py (extended)

class CivilizationalParser:
    """
    Parser that works with ONLY Python standard library.
    No pip packages. No external tools. Survives Python 3.13+.
    """
    
    @staticmethod
    def parse_document(markdown: str) -> Document:
        """
        Parse canonical document into structured data.
        Uses only: re, json, datetime, pathlib, typing
        """
        sections = []
        current_section = None
        
        for line in markdown.split('\n'):
            # Header detection
            if line.startswith('# '):
                if current_section:
                    sections.append(current_section)
                current_section = Section(
                    level=1,
                    title=line[2:].strip(),
                    content=[]
                )
            elif line.startswith('## '):
                if current_section:
                    sections.append(current_section)
                current_section = Section(
                    level=2,
                    title=line[3:].strip(),
                    content=[]
                )
            elif line.startswith('### '):
                # Sub-sections
                pass
            elif current_section:
                current_section.content.append(line)
        
        if current_section:
            sections.append(current_section)
        
        return Document(sections=sections)
    
    @staticmethod
    def extract_claims(document: Document) -> List[Claim]:
        """Extract auditable claims from document"""
        claims = []
        for section in document.sections:
            for line in section.content:
                if CivilizationalParser.is_claim(line):
                    claims.append(Claim(
                        text=line,
                        section=section.title,
                        heuristic=CivilizationalParser.infer_heuristic(line)
                    ))
        return claims
    
    @staticmethod
    def is_claim(line: str) -> bool:
        """Heuristic: lines with metrics, standards, or definitive statements"""
        patterns = [
            r'\d+\.?\d*\s*(MGOe|MW|GW|km|tons?|%|\$|years?)',
            r'(IEEE|IEC|NERC|ISO|ASTM|MIL-STD|DFARS|CPTPP)\s+\d+',
            r'(shall|must|will|axiom|mandatory|required|invariant)',
        ]
        return any(re.search(p, line, re.IGNORECASE) for p in patterns)
    
    @staticmethod
    def infer_heuristic(line: str) -> str:
        """Infer governing heuristic from language patterns"""
        if any(w in line.lower() for w in ['lock', 'constraint', 'forces', 'inevitable']):
            return 'Williams'
        if any(w in line.lower() for w in ['lock:', 'key:', 'turn:', 'binary', 'verification']):
            return 'Keymaker'
        if any(w in line.lower() for w in ['mirror', 'participation', 'protocol', 'recursive', 'witness']):
            return 'El Segundo'
        if any(w in line.lower() for w in ['exhibit', 'evidence', 'deduction', 'eliminate', 'remains']):
            return 'Baker Street'
        if any(w in line.lower() for w in ['calm', 'resilience', 'continuity', 'horizon', 'layer', 'absorbs']):
            return 'SHIELD'
        return 'Unknown'
```

---

### 8.4 100-Year Horizon Test

#### 8.4.1 Test Protocol

```python
def test_civilizational_survivability():
    """
    Validates that ALL pipeline artifacts are parsable with stdlib only.
    """
    artifacts = [
        "FinishedWork/DOC-01.md.gz",
        "chunks/DOC-01/chapter_01.md",
        "chunks/DOC-01/MANIFEST.json",
        "FinishedWork/intros/DOC-01_intro_williams.md",
        "FinishedWork/audit_ledger.jsonl",
        "Logs/heartbeat.log",
        "RESUME_SESSION_MAGNETS.md",
        "NEXT_runner_012.md",
    ]
    
    for artifact in artifacts:
        content = read_artifact(artifact)
        parser = CivilizationalParser()
        
        if artifact.endswith('.json') or artifact.endswith('.jsonl'):
            assert parser.parse_json(content) is not None
        elif artifact.endswith('.md') or artifact.endswith('.md.gz'):
            doc = parser.parse_document(content)
            assert len(doc.sections) > 0
            claims = parser.extract_claims(doc)
            assert len(claims) > 0
        elif artifact.endswith('.log'):
            lines = content.strip().split('\n')
            assert len(lines) > 0
            # Verify ISO timestamp format
            assert all(re.match(r'\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}', l) for l in lines[:5])
    
    return "ALL ARTIFACTS CIVILIZATIONALLY SURVIVABLE"
```

---

### 8.5 Knowledge Preservation Trust

#### 8.5.1 Long-Term Archival Strategy

| Horizon | Strategy | Implementation |
|---------|----------|----------------|
| **10 years** | GitHub + GitLab mirror | Automated push to mirror |
| **50 years** | IPFS/Arweave pinning | Annual pin of canonical docs |
| **100 years** | Printed archive (acid-free) | Annual print of `FinishedWork/` index |
| **500 years** | Ceramic/glass media | Rosetta Disk analog for key docs |

#### 8.5.2 Trust Governance

```python
class KnowledgePreservationTrust:
    """
    Legal entity ensuring pipeline knowledge survives institutional collapse.
    """
    def __init__(self):
        self.trustees = [
            "Tardigradia Holdco Board",
            "Carrington Storm Motors Board", 
            "Chilean FBC/CDC Representatives",
            "Independent Technical Trustees (3)"
        ]
        self.mandate = "Preserve CSMMinesMagnets pipeline knowledge indefinitely"
        self.funding = "Layer 7 of Resilience Stack ($10K/yr)"
    
    def annual_ceremony(self):
        """Annual verification ceremony"""
        # 1. Verify GitHub clone works
        # 2. Verify stdlib parser reads all docs
        # 3. Verify IPFS pins active
        # 4. Verify printed archive intact
        # 5. Issue continuity certificate
        pass
```

---

### 8.6 Cross-Reference to DOC-05, DOC-13, DOC-14

| Cross-Ref | Civilizational Relevance |
|-----------|-------------------------|
| **DOC-05** | Tardigradia Articles = trust charter for knowledge preservation |
| **DOC-13** | SHIELD Civilizational Horizon = format survivability requirement |
| **DOC-14** | Audit ledger = immutable knowledge record (append-only) |

---

### 8.7 Chapter 8 Summary

Civilizational Continuity ensures **pipeline knowledge survives tooling extinction**:

- **Formats**: Markdown, JSON, JSONL, plain text — all stdlib-parsable
- **Parser**: `CivilizationalParser` in pure Python stdlib
- **Test**: `test_civilizational_survivability()` validates all artifacts
- **Trust**: Knowledge Preservation Trust with 100+ year mandate
- **Horizon**: 10yr (Git mirror) → 50yr (IPFS) → 100yr (print) → 500yr (ceramic)

This chapter makes continuity **civilizational**, not just operational.

**Next**: Chapter 9 — Traceability Matrix: Continuity Claims to Standards & Tool Spec.

---
