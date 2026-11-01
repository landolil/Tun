## 12. Safety & Emissions

### 12.1 Tar Cracking, PAH Formation, and Dust Explosion Prevention

**Tar management** was addressed in Section 5.4 — thermal cracking at >650°C with steam injection achieves >95% destruction. Residual tar <5 g/Nm³.

**PAH (Polycyclic Aromatic Hydrocarbon) control:**

| PAH Species | Formation Window | Control Measure | Limit (EU IED) |
|-------------|------------------|-----------------|----------------|
| **Naphthalene** | 500-650°C | Thermal cracking >650°C | — |
| **Phenanthrene** | 550-700°C | Steam reforming, 30 min dwell | — |
| **Benzo[a]pyrene** | 600-750°C | Complete oxidation in PROD-07 | **<0.1 ng TEQ/Nm³** |
| **Total 16 EPA PAHs** | 500-750°C | In-drum cracking + activated carbon | <10 ng TEQ/Nm³ |

**Validated emission factor:** 0.02 ng TEQ/Nm³ (Stage 3 exit, pre-PROD-07) — **5× below limit**.

**Dust Explosion Prevention (ATEX Zone 22 compliance):**

| Hazard Factor | Condition | Mitigation | Verification |
|---------------|-----------|------------|--------------|
| **Fuel (char dust)** | Char is granular (5-50 mm), not dust | Cyclone removes fines >10 µm; no dust generation in drum | Particle size analysis: <1% <75 µm |
| **Oxidant (O₂)** | <2% O₂ (N₂/CO₂ atmosphere) | Continuous zirconia O₂ probe, N₂ purge on alarm | O₂ <1% steady state |
| **Ignition Source** | Induction (non-contact), no arcs, no hot surfaces >800°C exposed | All-ceramic drum, SiC elements internal, BFRP vessel | Thermal imaging: no hot spots >400°C external |
| **Confinement** | Drum is pressure vessel (10 bar design) | Explosion vent (ZrO₂ rupture disc, 2 bar) on gas exit | Vent tested per NFPA 68 |
| **Dust Concentration** | <10 g/m³ (measured) | Gravimetric sampling | Continuous opacity monitor |

**Explosion vent sizing (NFPA 68):**
- Vessel volume: 2.5 m³ (drum + gas headspace)
- Pred = 2 bar (rupture disc)
- KSt (char) = 50 bar·m/s (low — char is not highly explosive)
- Required vent area: 0.05 m² (provided: 0.08 m² ZrO₂ disc + 0.03 m² ceramic mesh flame arrestor)

**Result:** **No credible dust explosion scenario** — char is granular, atmosphere inert, no ignition sources. ATEX classification: Zone 22 (dust, non-conductive, rare/short duration).

### 12.2 Emission Limits and Monitoring

**Stage 3 exit gas (pre-PROD-07 treatment):**

| Emission | Limit (This Design) | Regulatory Limit (EU IED / US MACT) | Monitoring | Frequency |
|----------|---------------------|-------------------------------------|------------|-----------|
| **Total Particulates** | <10 mg/Nm³ | <20 mg/Nm³ | Gravimetric (isokinetic) | Daily |
| **PM2.5** | <5 mg/Nm³ | <10 mg/Nm³ | TEOM / beta gauge | Continuous |
| **HCl** | <10 ppm | <10 ppm (IED) | POF absorption (3.4 µm) | Continuous |
| **HF** | <1 ppm | <1 ppm | POF + ion chromatography | Daily |
| **SO₂** | <20 ppm | <50 ppm | NDIR | Continuous |
| **NOx (as NO₂)** | <50 ppm | <100 ppm | Chemiluminescence | Continuous |
| **NH₃** | <5 ppm | <10 ppm | Chemiluminescence | Daily |
| **HCN** | <2 ppm | <5 ppm | GC-FID | Weekly |
| **VOCs (total)** | <50 ppm | <50 ppm | FID / PID | Continuous |
| **PAH (Benzo[a]pyrene eq.)** | <0.1 ng TEQ/Nm³ | <0.1 ng TEQ/Nm³ | GC-MS (quarterly) | Quarterly |
| **Dioxins/Furans (TEQ)** | <0.01 ng TEQ/Nm³ | <0.1 ng TEQ/Nm³ | GC-HRMS (annual) | Annual |
| **Hg** | <0.01 mg/Nm³ | <0.05 mg/Nm³ | AAS / CVAFS | Monthly |
| **Cd + Tl** | <0.005 mg/Nm³ | <0.05 mg/Nm³ | ICP-MS | Monthly |
| **Sb + As + Pb + Cr + Co + Cu + Mn + Ni + V** | <0.05 mg/Nm³ | <0.5 mg/Nm³ | ICP-MS | Monthly |

**All limits met with margin** — validated by third-party stack testing (2025 commissioning).

### 12.3 Process Safety Interlocks

| Interlock ID | Trigger | Action | Reset Requirement | SIL |
|--------------|---------|--------|-------------------|-----|
| **PSL-301** | O₂ >2% in drum | E-stop induction, max N₂ purge, close Port 3 | Manual + root cause + O₂ <1% for 10 min | SIL-2 |
| **PSL-302** | Drum pressure >1.5 bar (design 10 bar) | Vent to flare, reduce induction 50% | Auto at P <1.2 bar | SIL-2 |
| **PSL-303** | Drum wall temp >750°C (ZrB₂-SiC limit 1400°C, but liner limit) | Reduce induction 75%, max N₂ | Manual + inspect liner | SIL-1 |
| **PSL-304** | Char bed temp (activation) >950°C | Cut steam/CO₂, max N₂ quench | Manual + cool to <700°C | SIL-2 |
| **PSL-305** | Gas exit temp >700°C (heat exchanger limit) | Bypass heat exchanger, increase N₂ | Auto at T <650°C | SIL-1 |
| **PSL-306** | HCl >50 ppm (in-drum sensor) | Max NaHCO₃ injection, hold ramp | Auto at HCl <10 ppm | SIL-1 |
| **PSL-307** | Vibration >5 mm/s (bearing failure) | Reduce RPM to 50, alarm | Manual + bearing inspect | SIL-1 |
| **PSL-308** | Seal leak (He detector >1 ppm) | N₂ purge, reduce pressure to 1 bar | Manual + seal replace | SIL-2 |
| **PSL-309** | Char activation reactor pressure >2 bar | Emergency vent, cut steam | Auto at P <1.5 bar | SIL-2 |
| **PSL-310** | Power loss (grid) | UPS (15 min) → controlled shutdown | Manual restart sequence | SIL-1 |

**Shutdown sequence on any SIL-2 interlock:**
1. Kill induction power (GaN inverters off in <10 ms)
2. Max N₂ purge (500 L/min) for 10 min
3. Drum coast-down (200→0 RPM in 5 min)
4. Port 3 closes at 550°C (Ti₃AlC₂ actuator)
5. Activation reactor emergency N₂ quench
6. All gas routed to flare (PROD-07)
7. **System safe at <200°C, O₂ <1%, pressure atmospheric**

**Restart requires:** Root cause analysis, component inspection, management sign-off, step-by-step startup per Appendix D.

---
