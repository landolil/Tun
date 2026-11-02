## 4. Frame & Support Structure — BFRP Box Beam

### 4.1 Frame Geometry & Loading

**Configuration:** BFRP/Elium® box beam spaceframe, 4-point mounting to vessel flanges
**Dimensions:** 2000 mm L × 1200 mm W × 800 mm H (envelope)
**Wall thickness:** 25 mm BFRP [±30°/90°]₃ layup (optimized for bending)
**Supports:** 4× elastomeric isolators (natural frequency 3 Hz, damping 5%)
**Loads:** Vessel weight (215 kg), drum weight (178 kg), seismic (IEEE 693 High), thermal growth reactions

### 4.2 FEA Model & Results

**Model:** 100K shell elements, beam elements for cross-members
**Boundary:** Fixed at isolator bases (worst case for stress)

| Load Case | Max σ_vm (MPa) | Location | SF (σ_ult=650 MPa) |
|-----------|----------------|----------|-------------------|
| Weight only | 18 | Mid-span beam | 36× |
| Weight + 1.0g horizontal | 42 | Column base | 15.5× |
| Weight + 1.5g horizontal (DBE) | 63 | Column base | 10.3× |
| Weight + 1.5g vertical (DBE) | 55 | Beam-column joint | 11.8× |
| Thermal growth (vessel 4.3 mm axial) | 28 | Flange reaction | 23× |

**All SF > 10×** — frame is not critical. Seismic governs.

### 4.3 Seismic Qualification — IEEE 693 High

**Site response spectrum (IEEE 693 High, rock site):**
- PGA = 1.0g horizontal, 0.67g vertical
- ZPA = 1.5g (zero period acceleration)
- Frequency range: 0.5–50 Hz (extended to 100 Hz for equipment)

**Required Response Spectra (RRS) — Horizontal:**
| Frequency (Hz) | Spectral Acceleration (g) |
|----------------|---------------------------|
| 0.5 | 0.50 |
| 1.0 | 0.80 |
| 2.5 | 1.50 (peak) |
| 5.0 | 1.20 |
| 10.0 | 0.80 |
| 33.0 | 0.40 |
| 50.0 | 0.20 |

**Test Response Spectra (TRS) — Shake Table Qualification:**
- Multi-axis shake table (3-axis simultaneous)
- Test levels: RRS × 1.5 (qualification margin)
- Duration: 30 s per axis (sine beat), 60 s per axis (random)
- Damping: 2% (BFRP structure), 5% (isolators)

**Qualification method:** IEEE 693 Section 6 — **Testing required** (analysis alone insufficient for complex composite structure)
**Test article:** Full-scale frame + vessel + drum (operational weight)
**Instrumentation:** 32 accelerometers (triaxial at 8 locations), 16 strain gauges, 8 FBG
**Acceptance:** No loss of function, no structural damage, TRS envelops RRS at all frequencies

### 4.4 Support Isolator Design

**Type:** Elastomeric (high-damping natural rubber, 50 Shore A)
**Dimensions:** 200 mm diameter × 100 mm height
**Stiffness:** K_h = 2.5 MN/m (horizontal), K_v = 4.0 MN/m (vertical)
**Damping:** 15% critical (horizontal), 8% (vertical)
**Load per isolator:** 100 kg dead + 200 kg seismic
**Shear strain at DBE:** γ = 1.5g × 300 kg / (2.5 MN/m) / 0.1 = 1.76 → 176% (high but acceptable for seismic)

**Alternative (if strain excessive):** Lead-rubber bearing (LRB) with 10% lead core — reduces displacement by 40%, increases damping to 25%.

---
