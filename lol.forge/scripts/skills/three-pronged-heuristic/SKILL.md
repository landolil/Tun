---
name: three-pronged-heuristic
description: Three-pronged heuristic framework (Williams/Keymaker/El Segundo) for engineering documentation — generates 200-line combined intros per document
---

# Three-Pronged Heuristic Framework Skill

This skill provides the structured methodology for generating heuristic intros for the lol.forge engineering documentation project.

## Williams Heuristic — Architectural Clarity (Constraint, Necessity, Commitment)

### Constraint (The Lock)
Identify the **irreducible principle** that forces this design decision. This is not a preference or optimization — it's a hard boundary condition from physics, regulation, or system architecture that cannot be negotiated.

**Prompt**: What single principle makes this design inevitable? What would break if we violated it?

### Necessity (The Key)
Identify the **empirical gap** this document resolves. Why is this specific solution the only one that closes the gap? Connect to measured data, test results, or validated models.

**Prompt**: What measured reality does this address? What data demands this specific approach?

### Commitment (The Turn)
State the **non-negotiable commitments** this document makes. These become constraints for all downstream documents.

**Prompt**: What does this document lock in for the rest of the system? What can't change after this?

---

## Keymaker Heuristic — Implementation Precision (Lock, Key, Turn)

### The Empirical Lock
Identify the **fabrication fidelity gap** — the difference between theoretical performance and what's actually achievable in manufacturing.

**Prompt**: Where does theory diverge from fabrication reality? What tolerance stack-up or material variability creates the gap?

### The Mathematical Key
Identify the **single computational primitive** that generates the solution. Not a simulation suite — one core calculation, algorithm, or transform.

**Prompt**: What one mathematical operation, if executed correctly, guarantees the result? What's the atomic computation?

### The Turn (Both Directions)
**Theory→History**: Validate the mathematical key against historical fabrication data, test articles, or precedent systems.
**History→Theory**: Use historical anomalies to refine the mathematical key.

**Prompt**: Does the math predict the history? Does the history correct the math?

---

## El Segundo Heuristic — Operational Excellence (Mirror, Participation, Protocol)

### Mirror (Self-Reflection)
How does the **fabricator observe their own fabrication**? What in-process metrology, sensor fusion, or self-diagnostics let the maker see what they're making in real time?

**Prompt**: What sensors, models, or feedback loops let the fabricator watch the process as it happens?

### Participation (Witness)
How does the **inside operator witness the phenomenon into existence**? What human-machine interface, procedural gate, or cognitive checkpoint ensures the operator is present at the critical moment?

**Prompt**: Where must a human be in the loop? What judgment call cannot be automated?

### Protocol (Recursive)
What **recursive sequence guarantees fidelity at each scale**? From micro (single operation) to macro (full production run), what's the self-similar verification pattern?

**Prompt**: What check at the part level mirrors the check at the system level? What's the fractal QC pattern?

---

## Usage in Document Generation

For each Product Document (PROD-XX), generate three intro files (~67 lines each) + one combined (~200 lines):

```
intros/PROD-XX_<title>_intro_williams.md
intros/PROD-XX_<title>_intro_keymaker.md
intros/PROD-XX_<title>_intro_el_segundo.md
intros/PROD-XX_<title>_COMBINED_INTRO.md
```

For each Follow-up Document (FOLLOW-XX), generate three separate intros (~100 lines each):

```
intros/FOLLOW-XX_<title>_intro_williams.md
intros/FOLLOW-XX_<title>_intro_keymaker.md
intros/FOLLOW-XX_<title>_intro_el_segundo.md
```

## Quality Gates

Each heuristic intro must:
1. **Reference specific document content** — not generic platitudes
2. **Use the exact three-part structure** — Lock/Key/Turn or Mirror/Participation/Protocol
3. **Be technically precise** — equations, material specs, sensor types, tolerance values
4. **Cross-link to other documents** — show system-level thinking
5. **Meet line count targets** — ~67 lines (PROD combined) or ~100 lines (FOLLOW individual)