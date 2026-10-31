## 12. Hydrotest & Certification

### 12.1 Hydrostatic Test Procedure

**Test fluid:** Nitrogen gas (non-flammable, non-condensing, leak detectable)
- **Why N₂ not water?** BFRP absorbs water (0.5–1.0% at saturation) causing matrix plasticization and temporary strength loss. Water also requires drying (weeks at 120°C) and risks aerogel damage. Gas test eliminates these risks.

**Test pressure:** 15 bar (1.5 × design pressure per ASME BPVC Sec X)
**Test temperature:** Ambient (20–25°C)
**Hold time:** 30 minutes minimum at test pressure
**Leak test:** Helium mass spectrometer, <10⁻⁶ mbar·L/s

**Procedure:**
1. Vessel assembled complete (flanges, seals, instrumentation)
2. All ports sealed with ZrO₂ blank flanges
3. N₂ supply connected via regulated panel (0–20 bar)
4. Pressurization rate: 1 bar/min (controlled ramp)
5. Hold at 5 bar — visual inspection, AE baseline
6. Hold at 10 bar — FBG strain verification (hoop strain = 380 με expected)
7. Ramp to 15 bar — AE monitoring for first-crack emissions
8. Hold 15 bar for 30 min — pressure decay <0.1 bar
9. Helium leak test at 10 bar — all joints, seals, penetrations
10. Depressurize at 1 bar/min — FBG unloading verification

### 12.2 Acceptance Criteria

| Criterion | Requirement | Measurement |
|---|---|---|
| Pressure retention | <0.1 bar drop in 30 min at 15 bar | Pressure transducer |
| Leak rate (total) | <10⁻⁶ mbar·L/s (helium) | Mass spectrometer |
| Leak rate (flange joints) | <10⁻⁷ mbar·L/s each | Sniffer probe |
| Hoop strain at 10 bar | 380 ± 20 με | FBG sensors (4 hoop) |
| Axial strain at 10 bar | 190 ± 15 με | FBG sensors (2 axial) |
| AE activity at 15 bar | <40 dB (no new emissions) | AE sensors (4) |
| Permanent deformation | <0.05 mm diameter change | Laser tracker |
| Flange bolt preload | >130 kN (90% of initial) | FBG on bolt shanks |

### 12.3 ASME BPVC Section X Certification

**Section X — Fiber-Reinforced Plastic Pressure Vessels** applies to BFRP/Elium® vessel.

**Design-by-Analysis route (Mandatory Appendix 4):**
- Finite element analysis per Section X, Article 4
- Material properties from Section X, Article 2 (validated by coupon testing)
- Safety factors: 4.0 on ultimate tensile, 2.0 on buckling, 1.5 on fatigue
- Design life: 20 years, 100,000 pressure cycles

**Required documentation for ASME stamp:**
1. Design Report (this document + FEA report)
2. Material certifications (basalt fiber, Elium® resin, BFRP coupons)
3. Procedure Qualification Record (PQR) for filament winding
4. Welder/Operator Qualification (winding machine operator)
5. Hydrotest Report (this section)
6. NDE Reports (UT, visual, dimensional)
7. Nameplate data (MAWP 10 bar, MDMT -50°C, MDMT 200°C)

**Authorized Inspection Agency (AIA):** Third-party ASME-certified inspector witnesses:
- Material receipt inspection
- Filament winding (critical passes)
- Post-cure verification
- Hydrotest
- Final inspection and nameplate stamping

### 12.4 PED Category III (EU Pressure Equipment Directive)

**Classification:** Pressure vessel, Group 2 fluid (N₂), Volume = 0.763 m³, PS = 10 bar
- PS × V = 10 × 0.763 = 7.63 bar·m³
- **Category III** (PS × V > 5 bar·m³ for Group 2)

**Conformity assessment:** Module B+D (Type examination + Production quality assurance)
- Notified Body: TÜV Rheinland or equivalent
- EU Declaration of Conformity issued
- CE marking on nameplate

**Essential Safety Requirements (ESR) compliance:**
- ESR 2.1: Design for adequate safety margin (SF > 4 on burst) ✓
- ESR 2.2: Materials suitable for service (BFRP qualified) ✓
- ESR 2.3: Manufacturing process controlled (PQR, operator qual) ✓
- ESR 2.4: NDE appropriate (UT, visual, AE) ✓
- ESR 2.5: Pressure test (1.5× MAWP) ✓
- ESR 3.1: Protection against overpressure (rupture disc + relief valve) ✓
- ESR 3.2: Safe depressurization (relief valve capacity) ✓

### 12.5 In-Service Inspection Plan

| Inspection | Interval | Method | Acceptance |
|---|---|---|---|
| External visual | 6 months | Direct + boroscope | No cracks, delamination, coating damage |
| FBG strain baseline | 6 months | Compare to commissioning | Δstrain < 50 με at same pressure |
| AE survey | 12 months | 4 sensors, 1 hr at 10 bar | No new sources >40 dB |
| UT thickness | 24 months | Phased array, 100% wall | Thickness >17.5 mm, no delamination |
| Flange bolt check | 12 months | FBG bolt strain | Preload >130 kN |
| Seal leak test | 6 months | Helium sniffer | <10⁻⁶ mbar·L/s |
| Thermal gradient | Continuous | FBG temp array | ΔT_radial < 50°C/mm |
| Hydrotest repeat | 10 years | 15 bar N₂, 30 min | Same as initial |

### 12.6 Repair Procedures

**Minor damage (surface scratch, coating loss):**
- Sand to sound laminate, clean with isopropyl alcohol
- Apply YInMn Blue touch-up (plasma spray patch or brush-applied ceramic coating)
- Cure at 200°C for 2 hrs

**Moderate damage (delamination <50 mm diameter):**
- Drill-stop at delamination boundary
- Inject PEEK-based structural adhesive (3M DP460)
- Vacuum bag, cure at 120°C for 2 hrs
- UT verify bond, recoat

**Major damage (through-thickness, >50 mm):**
- **Requires ASME repair organization + AIA approval**
- Cut out damaged section, filament wind repair patch (local mandrel)
- Full NDE + hydrotest after repair
- Re-certification required

**No field welding, no metal fasteners, no thermoset resins** — all repairs use CSMFAB materials and processes.

---
