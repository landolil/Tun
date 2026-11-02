## 3. Vessel Maintenance (Assembly A-06/A-07)

### 3.1 BFRP Pressure Vessel — Detailed Procedures

#### 3.1.1 AE Continuous Monitoring (PROD-28 Sec 5.1, PROD-30-WI-007)

**System:** Physical Acoustics PCI-2, 8 channels, 40 dB preamp, 100 kHz–1 MHz
**Sensors:** 8× R15α broadband at 45° increments, 2 axial positions (300 mm, 900 mm)
**Threshold:** 40 dB AE; hit definition: peak > threshold, duration >50 μs
**Analysis:** Source location (ΔT triangulation ±50 mm); b-value; RA-value; Felicity ratio
**Alert Logic (Auto):**
- Hit rate >2× baseline (30-day rolling) → Alert Level 1 (log only)
- Felicity ratio <1.0 for >1 hour → Alert Level 2 (NCR auto-generated)
- Cluster >10 hits/hr in 100 mm radius → Alert Level 3 (immediate inspection)

**Monthly AE Report (Auto-generated):**
- Daily hit rate trend (30-day rolling)
- Felicity ratio trend
- Source location map (cumulative)
- b-value / RA-value evolution
- Comparison to PROD-25 FEA stress concentrations

#### 3.1.2 Annual UT Phased Array (PROD-30-WI-008)

**Scope:** 100% vessel wall (18 mm BFRP/Elium®), flange transitions, gas ports, FBG penetrations
**Equipment:** Olympus OmniScan MX2, 2.25 MHz 64-element PA probe, wedges 45°/60°/70°
**Calibration:** ASTM E2700 reference blocks (BFRP laminate, 18 mm)
**Scan Pattern:** Raster 2 mm × 2 mm; 100% coverage
**Special Focus:** Gas port penetrations (stress concentration 4.2× per PROD-25), FBG penetrations, stiffening ring attachments

**Acceptance Criteria:**
- No delaminations >10 mm diameter
- No porosity clusters >3 pores in 25 mm²
- No fiber breakage indications (Tsai-Wu FI <0.25)
- Flange transition: no indications >5 mm

#### 3.1.3 Hydrotest (5-Year Interval, PROD-30-WI-009)

**Procedure:** Per ASME BPVC Section X, Article 8
- Test pressure: 15 bar N₂ (1.5× design pressure 10 bar)
- Hold time: 30 minutes minimum
- Temperature compensation: ±0.5°C monitoring
- Leak test: Helium mass spectrometer, sniff test all joints
- Acceptance: Zero pressure drop (temp compensated); He leak <10⁻⁶ mbar·L/s

**Post-Hydrotest:** AE baseline re-establishment (24 hr monitoring at 10 bar)

#### 3.1.4 Monthly Visual Inspection (VT-1, PROD-30-WI-010)

**Scope:** External surface (glaze), flange faces, bolt heads, port penetrations, anchor points
**Criteria:**
- YInMn Blue glaze: No cracking, spalling, discoloration >5% area
- Flange faces: No PEEK CF40 creep >0.5 mm; bolt head contact uniform
- Anchor bolts: No corrosion, torque marks intact, isolation pads intact
- Aerogel: No settlement gaps >2 mm at vessel/frame interface

#### 3.1.5 Monthly IR Thermography (PROD-30-WI-011)

**Equipment:** FLIR T1040, 1024×768, <20 mK NETD, 24° lens
**Conditions:** Forge at steady-state Stage 8 (2200°C drum), 500 kW total power
**Analysis:** ΔT vs. baseline (commissioning IR map); hotspot detection; thermal gradient mapping
**Alert Thresholds:**
- Any point >5°C above baseline → Alert Level 1
- New hotspot not in baseline → Alert Level 2
- Thermal gradient >50°C/100 mm → Alert Level 2

#### 3.1.6 Annual Aerogel Density Verification (PROD-30-WI-012)

**Equipment:** Gamma densitometer (Cs-137, 5 mm collimated beam)
**Scan Pattern:** Radial profiles at 0°, 90°, 180°, 270°; 5 mm step; 3 axial stations
**Acceptance:** 0.12±0.01 g/cm³ uniform radial (no gradient >0.02 g/cm³ over 50 mm)
**Action if Failed:** Vacuum-assisted re-infusion (PROD-27 Sec 3 correction)

#### 3.1.7 Biennial Glaze Adhesion Pull-Off (PROD-30-WI-013)

**Standard:** ASTM D4541 (10% sample = 24 dollies on 900 mm ID vessel)
**Acceptance:** >10 MPa; failure mode cohesive in adhesive (not glaze)
**Action if Failed:** Localized glaze repair (plasma spray touch-up) or full re-spray

---
