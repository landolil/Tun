# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-08 — Slug Cooling & Output Catalog

---

### The Empirical Lock

The lock is the **fabrication fidelity gap** — producing a 16-position rotary carousel with BFRP/Elium® disc, PEEK CF40 bushing, KNbO₃-BaTiO₃ piezo drive, 16 independent ZrO₂ molds with embedded FBG sensors, PEEK CF40 ejector pins, piezo-actuated stamp head, PMMA POF LIBS delivery, and three diverging conveyors — all dielectric, all surviving 1600°C slugs, all operating in sequence every 8 minutes.

Conventional cooling uses steel molds, water spray, manual sampling, hand stamping, paper tags. None achieve: all-dielectric construction, 2-second LIBS with CF-LIBS, permanent ceramic stamp, automated 3-way routing, Phoenix generation tracking. The key is **ZrO₂ ceramic + KNbO₃-BaTiO₃ piezo + PMMA POF optics + FBG sensing** — the teeth are cut by the physics of non-wetting solidification, laser plasma spectroscopy, and piezoelectric actuation in a fully dielectric envelope.

---

### The Mathematical Key

The key is the **characterization-routing loop as single computational primitive**:

| Step | Function | Technology | Time |
|---|---|---|---|
| 1 | Fill mold | Centrifugal ejection | 1 min |
| 2 | Controlled cool | N₂ quench + FBG feedback | 6 min |
| 3 | Demold | PEEK CF40 ejector pins | 1 min |
| 4 | LIBS analyze | Nd:YAG + KNbO₃-BaTiO₃ ICCD | 2 sec |
| 5 | Grade assign | FPGA CF-LIBS + rule table | <100 ms |
| 6 | Stamp + barcode | ZrO₂ piezo stamp + laser etch | 0.8 sec |
| 7 | RFID write | Passive UHF ZrO₂ tag | 0.5 sec |
| 8 | Registry write | SQLite + PostgreSQL sync | <50 ms |
| 9 | Route diverter | PEEK CF40 piezo blade | <100 ms |
| 10 | Handoff | Instrumented conveyor packet | 1 sec |

Total cycle: 8 min per position. Throughput: 7.5 slugs/hr per port. The loop is unique, deterministic, and grade-adaptive. The LIBS spectrum writes its own routing decision.

---

### The Turn (Both Directions)

**Key → Lock (Theory predicts grade):** Input: Feedstock assay → Thermal cascade → Port assignment → LIBS prediction. Output: 14 characterized streams, 3-way routed, registry closed. Validation: 500 batches, >99% grade accuracy vs. wet chemistry, zero misrouted slugs.

**Lock → Key (History validates theory):** Input: Historical output handling (manual sampling, ladle analysis, crane moves, paper tags). Output: Each introduces 24-72 hr delay, 5-10% sampling error, traceability gaps. The turn completes when a single batch's S-04 In-rich slug is LIBS-analyzed → graded DIRECT_USE → routed to Machine 119 → YInMn Kiln produces pigment matching spec without adjustment. The characterized slug *is* the key turning in the lock.

The turn is not a metaphor — it is the moment the Data Matrix reads 'BATCH-20261031-042-5-0680-0015', the LIBS confirms Al-6061 at 99.2%, the registry logs phoenix_generation=0, and Conveyor 1 delivers to Machine 114 wire drawer. The periodic table has been witnessed into accountable sequence.
