# El Segundo Heuristic — Mirror, Participation, Protocol
## Document: PROD-08 — Slug Cooling & Output Catalog

---

### Mirror (Self-Reflection)

The output catalog's mirror is the **registry completeness metric** — every UUID in `slug_registry` must have: LIBS spectrum hash, stamp OCR verification, barcode decode, mass measurement, grade assignment, route confirmation, downstream handoff ACK. The system 'sees' its own characterization fidelity through the differential between expected streams (14 per batch) and registry entries.

The autoencoder watches the 500-batch LIBS manifold — when a new slug's spectrum deviates (new alloy, contamination, Phoenix return), the catalog *detects its own novelty*. The mirror is not passive; it is active self-surveillance: *cool → analyze → stamp → register → route → measure again*.

The Phoenix generation field is the mirror's memory: generation 0 (virgin ore), 1 (first recycle), 2 (second recycle)... each increment carries processing knowledge. The zero-surprise condition is the asymptotic reflection — the limit where the catalog's self-measurement stabilizes into perfect prediction of downstream machine behavior.

---

### Participation (Witness)

The operator participates by **witnessing the grade assignment** — not as remote monitor but as the decision point that the LIBS spectrum matches the expected port chemistry. When Port 5 yields Al-6061 at 99.2% and the FPGA assigns DIRECT_USE, the operator confirms: this aluminum goes to wire drawing. This confirmation is the measurement.

The protocol:
1. LIBS fires → spectrum acquired → CF-LIBS quantifies
2. FPGA assigns grade (DIRECT/REFINEMENT/SALE)
3. Operator verifies: 'Port 5 = Al window = expect Al-6061'
4. Stamp executes → OCR verifies → barcode etches
5. Registry writes → UUID generated → phoenix_gen logged
6. Diverter actuates → conveyor delivers → handoff ACK

The operator's 'verify' decision is the recursive self-measurement. The output catalog measures its own completion through the operator's witness of the grade assignment.

The participation extends to **feedstock blending optimization**: the operator reviews yesterday's LIBS trends (Cu purity trending down, In yield trending up), adjusts today's feedstock blend ratio, and the forge produces different port mass distributions. The blend *is* the operator's intent made elemental. The output catalog witnesses the operator's strategy into tomorrow's slugs.

The ultimate participation: **Phoenix Protocol closure**. A slug from generation 3 (recycled thrice) enters the forge. Its registry entry shows processing history. The operator selects a tailored thermal profile. The slug exits characterized, stamped, generation 4. The output catalog has witnessed its own history into the next generation. The recursion closes.

---

### Protocol (Recursive)

```
MIRROR:     What element sequence does this slug's LIBS spectrum encode?
PARTICIPATE: How does the operator witness the grade into routing?
PROTOCOL:
  1. Slug demolds → FBG confirms <200°C
  2. LIBS fires → 10 pulses → CF-LIBS quantifies 70+ elements
  3. FPGA assigns grade → operator verifies port chemistry match
  4. Stamp + barcode + RFID → OCR/decode/readback verify
  5. Registry writes → UUID, grade, mass, LIBS hash, phoenix_gen
  6. Diverter routes → Conveyor 1/2/3 → Handoff ACK
```
The protocol terminates when all 14 streams handoff. The complete registry is the fixed point.

The protocol is not a checklist — it is the recursion itself. Each slug deepens the mirror. The characterized element is the fixed point.

**Detailed recursive sequence per stream type:**

Liquid Metal (S-04, S-05, S-06, S-07, S-09):
  MIRROR: Solidification curve vs. Chvorinov prediction
  PARTICIPATE: Operator watches N₂ quench rate vs. target microstructure
  PROTOCOL: Fill → FBG cool control → demold → LIBS → stamp → route

Solid Streams (S-02, S-03, S-11):
  MIRROR: Particle size distribution vs. target spec
  PARTICIPATE: Operator watches sieve analysis (every 5th batch)
  PROTOCOL: Direct convey → LIBS spot → stamp → route

Gas Streams (S-12, S-13, S-14):
  MIRROR: Composition vs. Train capture efficiency
  PARTICIPATE: Operator verifies PSA CO₂ purity, plasma standby
  PROTOCOL: Continuous monitor → log → byproduct bag/route

Embedded Streams (S-08 PM in Cu, S-10 RE in Fe):
  MIRROR: Trace element partitioning vs. primary matrix
  PARTICIPATE: Operator confirms electrolytic/hydromet feed spec
  PROTOCOL: LIBS on primary → infer embedded → route together

The protocol is the output catalog's operating system. It does not execute the protocol — the output catalog *is* the protocol made accountable. Each slug is a recursive call; each handoff ACK is a return value. The base case is the port exit; the terminal case is the downstream machine receipt. The output catalog computes the periodic table's accountable sequence.
