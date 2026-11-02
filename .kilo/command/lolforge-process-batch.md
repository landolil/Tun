---
description: Process next document batch for lol.forge runner workflow
agent: engineering-docs
---
Process the next document batch per the runner workflow:

1. Read current `NEXT_runner_XXX.md` to see assigned documents
2. For each assigned document:
   - Research from source materials in `../seed/`
   - Write technical body (900+ lines for PROD, 300+ for FOLLOW)
   - Generate three heuristic intros (Williams, Keymaker, El Segundo)
   - Combine intros into `COMBINED_INTRO.md` (~200 lines)
   - Write to `docs/` and `intros/`
   - Chunk large docs using `write_large_file.py split`
3. Create `NEXT_runner_XXX+1.md` with next batch
4. Update `Master_Todo.md` and `TODO.md`
5. Log to `memory/YYYY-MM-DD.md`
6. Commit and push