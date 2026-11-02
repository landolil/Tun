# generate_heuristic_intros.sh (simplified flow)
for heuristic in williams keymaker elsegundo bakerstreet shield; do
    python3 -c 
import json, sys
with open('canonical_doc.md') as f: doc = f.read()
with open('traceability.json') as f: trace = json.load(f)
with open(f'prompts/{heuristic}.prompt') as f: prompt = f.read()

response = llm_complete(
    system=prompt,
    user=f'Document:\n{doc}\n\nTraceability:\n{json.dumps(trace)}',
    temperature=0.3,  # Low for consistency
    max_tokens=1500
)

variant = parse_triad(response, heuristic)
if quality_gate[heuristic](variant, doc, trace):
    write_file(f'FinishedWork/intros/DOC-XX_{heuristic}.md', variant)
else:
    retry_with_feedback(heuristic, variant)

done
```

#### 7.3.2 Combined Variant Generation

The Combined variant is a **sixth LLM invocation** that synthesizes:

```python
def generate_combined(variants, canonical_doc, traceability):
    
    variants = {
        'williams': {...},
        'keymaker': {...},
        'elsegundo': {...},
        'bakerstreet': {...},
        'shield': {...}
    }
    
    synthesis_prompt = f
    Synthesize the 5 heuristic variants into a single ~200-line Combined intro.
    
    Rules:
    1. Present all 5 triads in sequence: Williams → Keymaker → El Segundo → Baker Street → SHIELD
    2. Show interlocks: 
       - Williams Constraint = Keymaker Lock
       - Keymaker Turn = El Segundo Protocol  
       - El Segundo Mirror = Baker Street Evidence
       - Baker Street Deduction = SHIELD Calm
       - SHIELD Continuity = Williams Commitment
    3. NO NEW CLAIMS beyond variants + canonical
    4. Voice: Executive logic certificate
    5. Length: 190-210 lines
    
    
    combined = llm_complete(
        system=synthesis_prompt,
        user=json.dumps(variants),
        temperature=0.2,
        max_tokens=3000
    )
    
    # Verify no new claims
    assert no_new_claims(combined, variants, canonical_doc)
    # Verify length
    assert 190 <= count_lines(combined) <= 210
    # Verify all 5 triads present
    for h in ['williams', 'keymaker', 'elsegundo', 'bakerstreet', 'shield']:
        assert triad_present(combined, h)
    
    return combined
```

---

### 7.4 `generate_heuristic_intros.sh` Internals — Prompt Engineering, Templating

#### 7.4.1 Script Architecture

```bash
#!/bin/bash