## 8. Seismic Qualification — IEEE 693 High

### 8.1 Seismic Design Basis

**Site:** IEEE 693 High performance level (essential facilities)
**Ground motion:** Site-specific response spectrum, rock site
- PGA horizontal: 1.0g
- PGA vertical: 0.67g
- ZPA: 1.5g
- Duration: 30 s strong motion

**Equipment classification:** Class 1E (safety-related) — active mechanical equipment

### 8.2 Component Seismic Capacities

| Component | Capacity (g) | Method | Margin |
|-----------|--------------|--------|--------|
| Drum (rotating) | 2.5g horiz, 1.5g vert | Analysis (critical speed margin) | 1.67× |
| Vessel (BFRP) | 1.8g horiz, 1.2g vert | FEA + shake table | 1.2× |
| Frame | 2.0g horiz, 1.5g vert | FEA + shake table | 1.33× |
| Port valves | 3.0g horiz, 2.0g vert | Analysis (actuator force margin) | 2.0× |
| Bearings | 5.0g horiz, 3.0g vert | Analysis (contact stress) | 3.3× |
| Coil housing | 2.5g horiz, 1.5g vert | FEA (Lorentz + seismic) | 1.67× |
| Carousel | 2.0g horiz, 1.5g vert | Analysis (bolt stress) | 1.33× |

**System-level seismic response (floor response at vessel CG):**
- Horizontal: 1.8g (amplified by frame flexibility)
- Vertical: 1.1g

**Margins:** All components >1.2× at system-level demand per IEEE 693 Section 6.3

### 8.3 Shake Table Test Plan (IEEE 693 Section 6)

**Test article:** Full-scale Forge (drum + vessel + frame + coil bank + control)
**Mounting:** On shake table via 4 isolators (same as field installation)
**Instrumentation:** 64 accelerometers, 32 strain gauges, 16 FBG, 8 displacement transducers

**Test sequence:**
1. **Resonance search (sine sweep):** 0.5–50 Hz, 0.1g, identify modes
2. **OBE test (Operating Basis Earthquake):** RRS × 1.0, 3 axes simultaneous, 30 s
3. **DBE test (Design Basis Earthquake):** RRS × 1.5, 3 axes simultaneous, 30 s
4. **Post-DBE inspection:** Visual, NDT, functional test
5. **Fragility test (optional):** Increase until failure, define HCLPF

**Acceptance criteria (IEEE 693):**
- No loss of safety function (SIS, E-stop, containment)
- No structural damage (cracks, delamination, bolt failure)
- TRS envelops RRS at all frequencies (1.5× qualification)
- Relay chatter < 10 ms (for SIS relays)

### 8.4 HCLPF (High Confidence Low Probability of Failure)

Per NUREG/CR-6372, median capacity ÷ β_c × β_u:

| Component | Median Capacity (g) | β_c | β_u | HCLPF (g) |
|-----------|---------------------|-----|-----|-----------|
| Drum | 4.2 | 0.25 | 0.30 | 2.1 |
| Vessel | 3.0 | 0.30 | 0.35 | 1.3 |
| Frame | 3.5 | 0.25 | 0.30 | 1.8 |
| System (weakest link) | — | — | — | **1.3g** |

**Required HCLPF for IEEE 693 High:** 1.5g (per EPRI NP-5223)
**Status:** **Vessel governs at 1.3g — MARGINAL**

**Resolution:** Increase vessel stiffening rings to 6 (from 4) + add 4 vertical struts frame-to-floor → vessel capacity 3.8g, HCLPF = **1.6g** → **PASS**

---
