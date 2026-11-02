## Appendix B: NDT Procedure Index

### B.1 UT Phased Array — Drum/Vessel (PROD-28-UT-001)

**Scope:** 100% volumetric inspection of drum wall, vessel wall, flange weld/bond zones.
**Equipment:** Olympus OmniScan MX2, 5MHz 64-element probe, wedge 45°/60°/70°.
**Calibration:** IIW block (ref), DAC curve 80% FSH, TCG normalization.
**Scan Pattern:** Raster 2mm × 2mm; encoder-coupled; 100% coverage.
**Acceptance:** No indications >0.5mm flat / 2mm Ø; signal-to-noise >6dB.
**Reporting:** C-scan image + A-scan at each indication; depth/sizing per ASME Sec V.

### B.2 CT High-Resolution — Drum (PROD-28-CT-001)

**Scope:** Drum body (FBG channels, porosity, grain structure).
**Equipment:** Nikon XTH 225/320, 225kV/320kV, 200μm voxel.
**Calibration:** NIST-traceable density standards; geometric phantom.
**Reconstruction:** Feldkamp algorithm; beam hardening correction.
**Analysis:** Porosity distribution (volume %, size, sphericity); FBG channel position ±100μm.
**Acceptance:** Open porosity <0.05%; closed <0.2%; FBG position per design.

### B.3 ET — Port Valve Sleeves (PROD-28-ET-001)

**Scope:** ZrB₂-SiC port sleeves (surface + near-surface).
**Equipment:** Rohmann Elotest M6, 100kHz-2MHz, differential probe.
**Calibration:** ASME Sec V notch standards (EDM notches 0.1/0.2/0.5mm).
**Scan:** Rotating probe, 360° coverage, 0.5mm axial step.
**Acceptance:** No signals >20% DAC at 0.2mm notch equivalent.

### B.4 AE — Vessel Continuous (PROD-28-AE-001)

**Scope:** BFRP vessel continuous monitoring (pressure + thermal cycles).
**Equipment:** Physical Acoustics PCI-2, 8 channels, 40dB preamp, 100kHz-1MHz.
**Sensors:** 8× R15α (broadband) at 45° increments, 2 axial positions.
**Threshold:** 40dB AE; hit definition: peak > threshold, duration >50μs.
**Analysis:** Source location (ΔT triangulation ±50mm); b-value; RA-value; Felicity ratio.
**Alert:** Hit rate >2× baseline (30-day rolling); Felicity <1.0; cluster >10 hits/hr.
**Reporting:** Daily summary + anomaly alerts; monthly trend report.

### B.5 IR Thermography — System (PROD-28-IR-001)

**Scope:** Frame, vessel exterior, coil bank, power electronics, coolant manifolds.
**Equipment:** FLIR T1040, 1024×768, <20mK NETD, 24° lens.
**Calibration:** Blackbody 35°C/200°C; emissivity per material table (BFRP 0.95, ZrB₂ 0.85).
**Frequency:** Monthly + post-CT-08 + post-seismic.
**Analysis:** ΔT vs. baseline; hotspot detection; thermal gradient mapping.
**Alert:** Any point >5°C above baseline; new hotspot; gradient >50°C/100mm.

---
