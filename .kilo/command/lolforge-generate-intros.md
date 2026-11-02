---
description: Generate three-pronged heuristic intros (Williams/Keymaker/El Segundo) for a lol.forge document
agent: engineering-docs
---
Generate heuristic intros for document: $1

Usage: `/lolforge-generate-intros PROD-01`

For each heuristic (Williams, Keymaker, El Segundo), create ~67 lines covering:
- **Williams**: Constraint (Lock), Necessity (Key), Commitment (Turn)
- **Keymaker**: Empirical Lock, Mathematical Key, Turn (both directions)
- **El Segundo**: Mirror (Self-Reflection), Participation (Witness), Protocol (Recursive)

Output files:
- `intros/PROD-XX_<title>_intro_williams.md`
- `intros/PROD-XX_<title>_intro_keymaker.md`
- `intros/PROD-XX_<title>_intro_el_segundo.md`
- `intros/PROD-XX_<title>_COMBINED_INTRO.md` (combined ~200 lines)