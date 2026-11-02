---
description: Verify all chunk integrity for lol.forge documents
agent: engineering-docs
---
Verify all chunk directories in `chunks/`:

```bash
python3 lol.forge/Research/__Python_Tools/write_large_file.py verify-all chunks/
```

This checks:
- Each chunk's SHA256 matches MANIFEST.json
- Chunk sizes are correct
- No missing or corrupted chunks
- Reassembly produces identical output