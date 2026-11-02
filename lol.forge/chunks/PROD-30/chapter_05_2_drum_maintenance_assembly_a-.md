## 2. Drum Maintenance (Assembly A-01/A-03)

### 2.1 Drum Body (ZrB₂-SiC) — Detailed Procedures

#### 2.1.1 Annual UT Phased Array Volumetric Inspection (PROD-30-WI-001)

**Scope:** 100% volumetric inspection of drum wall (35 mm thickness, 600 mm ID, 800 mm length)
**Equipment:** Olympus OmniScan MX2, 5 MHz 64-element PA probe, wedges 45°/60°/70° (shear wave), 0° (longitudinal)
**Calibration:** IIW Type 1 block (ref), DAC curve 80% FSH, TCG normalization per ASTM E2700
**Scan Pattern:** Helical raster 2 mm × 2 mm; encoder-coupled; 100% coverage; 360° × 800 mm
**Personnel:** ASNT Level II UT (minimum), Level III review for indications
**Duration:** 8 hours (setup 2 hr, scan 4 hr, analysis 2 hr)

**Acceptance Criteria:**
- No indications >0.5 mm flat equivalent (DAC 20%)
- No indications >2 mm Ø equivalent (DAC 20%)
- No planar indications in liner pin heat-affected zones (HAZ)
- Signal-to-noise >6 dB on all scans
- Liner-to-drum bond line: no unbonded areas >5 mm dia

**Reporting:** C-scan images (amplitude + depth), A-scan at each indication, depth/sizing per ASME Sec V Appendix IV, comparison to baseline (FA data package)

#### 2.1.2 Biennial CT High-Resolution (PROD-30-WI-002)

**Scope:** Full drum body including FBG channels, porosity distribution, grain structure
**Equipment:** Nikon XTH 320, 320 kV, 200 μm voxel, 1000 mm detector
**Calibration:** NIST-traceable density standards (Al, Ti, ZrO₂); geometric phantom (wire grid)
**Reconstruction:** Feldkamp algorithm; beam hardening correction; ring artifact reduction
**Analysis:** Porosity distribution (volume %, size, sphericity per ASTM E2921); FBG channel position ±100 μm; grain size distribution (EBSD correlation)
**Personnel:** ASNT Level II CT (minimum), Level III approval
**Duration:** 8 hours (setup 1 hr, scan 5 hr, reconstruction 2 hr)

**Acceptance Criteria:**
- Open porosity <0.05% (Archimedes cross-check)
- Closed porosity <0.2% volume; max pore size <0.5 mm
- FBG channel position per design drawing ±100 μm
- No new porosity clusters vs. baseline (FA CT)

#### 2.1.3 FBG Survival & Calibration (Continuous + Monthly)

**Continuous Monitoring (PROD-28 Sec 5.1):**
- Interrogator: Micron Optics si425 (125 Hz, 4 ch/module × 96 modules)
- Channels: 128 drum (16 per zone × 8 zones) + 16 reference
- Auto-alert: Λ > 10 (Bayesian likelihood ratio from PROD-28 Keymaker Key)
- Data retention: 2 years rolling (compressed), 10 years summary

**Monthly Calibration Verification (PROD-30-WI-003):**
- Reference temperatures: 25°C (ambient), 500°C, 1000°C, 1500°C, 2000°C (cal furnace)
- Method: Interrogator sweep + linear fit λ = a + bT
- Acceptance: R² > 0.999; drift <0.1 nm/°C from PQR-FS-001 baseline; all 128 channels active
- Documentation: Calibration certificate per channel, auto-committed to Hyperledger

### 2.2 Liner System (3-Zone Replaceable) — Detailed Procedures

#### 2.2.1 Zone A (Ti₃AlC₂ MAX Phase, 0-200 mm axial)

**250-Batch Inspection (PROD-30-WI-004):**
- UT bond test: 10 MHz focused transducer, through-transmission
- Acceptance: No unbonded area >5 mm dia at Si₃N₄ pin interfaces (12 pins/zone)
- Visual: No MAX phase oxidation (gold→gray color change); no crack initiation at pin holes
- Dimensional: Pin clearance 0.05±0.01 mm (air gauge)

**Replacement Procedure (250 batches):**
1. Drum cool-down to <50°C (CT-08 reverse profile)
2. Port valve removal (8 valves, PROD-30-WI-010)
3. Zone A liner extraction (hydraulic puller, BFRP fixture)
4. New liner installation (interference fit 0.03 mm, LN₂ shrink)
5. Pin reinstallation (Si₃N₄, torque 25 N·m ±2 N·m, dual-verify)
6. FBG re-splice (PROD-30-WI-003) + cal verification
7. Bolt ceremony (24× M24 ZrO₂, 160 N·m ±5 N·m)

#### 2.2.2 Zone B (3Y-TZP, 200-500 mm axial)

**125-Batch Inspection (PROD-30-WI-005):**
- Visual + UT: No cracking at pin holes; pin clearance 0.05±0.01 mm
- FBG check: Zone B channels (16) drift <0.25%/1000 hrs

**Replacement (250 batches):** Same as Zone A but ZrO₂ pins

#### 2.2.3 Zone C (ZrO₂ Foam, 500-800 mm axial)

**250-Batch Inspection (PROD-30-WI-006):**
- Gamma densitometer: 3.2±0.1 g/cm³ uniform radial
- Visual: No foam collapse, no crack propagation from pin holes

**Replacement (500 batches, with drum swap):** Full drum swap includes Zone C replacement

### 2.3 Drum Life Management

| Parameter | Value | Basis |
|---|---|---|
| **Design Life** | 500 batches | Phoenix Protocol circularity (PROD-22) |
| **Theoretical Fatigue Life** | >10⁶ cycles | PROD-25: N_f with a₀=50 μm |
| **Creep Life (2200°C, 50 MPa)** | >100,000 hrs | PROD-25: ε̇ = 3×10⁻⁹ s⁻¹ |
| **Swap Trigger** | 500 batches OR NCR Critical | Whichever occurs first |
| **Refurbishment Path** | Hydromet → carbothermal → flash sinter | PROD-22 Sec 7 (31 generations) |

---
