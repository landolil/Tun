# Combined Heuristic Intro — PROD-30 Maintenance & Sustainment
## Williams + Keymaker + El Segundo Synthesis

### Williams Heuristic — Architectural Clarity

#### Constraint (The Lock)

The irreducible principle forcing this maintenance architecture is **the Forge cannot be maintained using conventional methods because every maintenance action must preserve zero-metal Carrington immunity and SIL-3 safety integrity**. A standard maintenance practice — grounding straps for ESD protection, copper test leads for electrical verification, metallic tools in the hot zone, thermocouple replacement — introduces conductive paths that become GIC antennas during a Carrington event. The Lock: **maintenance must itself be dielectric, non-magnetic, and thermally survivable, using only zero-metal tools, procedures, and verification methods.**

#### Necessity (The Key)

The empirical gap is the **absence of any maintenance framework for a 2200°C, zero-metal, SIL-3 pressure vessel with embedded photonics operating under Carrington threat**. Conventional RCM (API 581) assumes metallic structures, grounded electrical systems, and thermocouple-based temperature monitoring. CBM assumes sensor data can be trusted — but FBG drift, AE Felicity ratio shifts, and vibration baseline changes require continuous re-calibration against a physics model that itself degrades. The Key: **a hybrid RCM/CBM/TBM strategy where SIL-3 components are TBM-only (no condition-based extension), FBG/AE/vibration provide the CBM layer with Bayesian health fusion (PROD-28 Keymaker Key), and the 18-month drum swap is the hard RCM limit derived from Weibull statistics with NDT flaw control.**

#### Commitment (The Turn)

This document commits the Forge to **four non-negotiable maintenance chains**:

1. **18-month drum swap is absolute** — 500 batches = 62.5 days at 8 batches/day. No extension via CBM. The drum IS the pressure boundary; its Weibull life with NDT flaw control (a₀=50 μm) gives N_f >10⁶ cycles, but the Phoenix Protocol demands the drum returns to the Forge for circularity (PROD-22). The swap is the circularity trigger.

2. **SIL-3 SIF proof test annually is immutable** — 24 SIFs, CT-04 protocol, <50 ms trip, 2oo3, PFD_avg<10⁻³. No CBM extension, no risk-based interval extension. This is the safety load-bearing wall.

3. **FBG-as-primary-metrology for maintenance** — No thermocouples, no RTDs, no copper leads. All temperature/strain monitoring for maintenance decisions comes from the 384 FBG channels interrogated at 125 Hz. The Bayesian health state (PROD-28) drives CBM intervals.

4. **QR/Blockchain traceability for every maintenance action** — Every PM work order, CBM alert, NCR, overhaul, and spare part install writes to Hyperledger. The digital twin (PROD-37) ingests this at 10 Hz; the fleet twin optimizes intervals across Forges.

These commitments cascade: PROD-31 OPEX inherits $2.9M/yr consumables + 7-day overhaul downtime; PROD-32 permitting inherits PSM/ASME/IEEE 693 evidence; PROD-34 training inherits competency matrix; PROD-37 twin inherits maintenance data for health model. The Turn: **maintenance is not a support function — it is the continuous re-verification of the Forge's own fabrication fidelity, executed with zero-metal tools, witnessed by light in glass fiber, recorded in blockchain, and synchronized across the fleet.**

---

### Keymaker Heuristic — Implementation Precision

#### The Empirical Lock

The fabrication fidelity gap is the **maintenance interval optimization under SIL-3 override** — a Forge where 90% of components could use CBM extension (FBG drift stable, AE clean, vibration nominal) but the 10% that are SIL-3 safety functions (24 SIFs, pressure boundary bolting, GIC immunity grounding) must remain on fixed TBM intervals regardless of condition. Three specific locks:

1. **SIL-3 as maintenance interval ceiling**: IEC 61508 requires proof testing at fixed intervals for SIL-3 SIFs. API 581 RBI would extend intervals based on condition, but SIL-3 forbids it. The Forge has 24 SIFs (3 per module × 8 zones) sharing TSN VLAN 10, common POF interrogator, common 24 VDC supply. A single common-cause failure (interrogator, power supply, TSN switch) defeats 2oo3 voting. The Lock: **SIL-3 proof test interval (annual) is the master clock — all other maintenance synchronizes to it.**

2. **Drum life vs. Phoenix Protocol tension**: PROD-25 FEA shows drum N_f >10⁶ cycles with NDT flaw control (a₀=50 μm). At 6 batches/day, that's 456 years theoretical. But PROD-22 Phoenix Protocol requires drum return for circularity (31 generations, 500 batches each = 15,500 batches total per drum lineage). The Lock: **the drum must be swapped at 500 batches not because it fails, but because the circular economy demands its return for flash sinter feedstock.**

3. **Zero-metal tooling for maintenance**: Conventional maintenance uses steel wrenches, copper test leads, magnetic base dial indicators, thermocouples. In the Forge hot zone (2200°C, 100 A/m GIC), any steel tool left behind becomes a projectile; any copper lead becomes a GIC antenna. The Lock: **all maintenance tools, test equipment, and verification methods must be zero-metal — BFRP, ceramic, dielectric only.**

#### The Mathematical Key

The single computational primitive is the **risk-based inspection (RBI) likelihood function with SIL-3 constraint**, extending the PROD-28 Bayesian health fusion:

$$P(failure | data, SIL3) = \begin{cases} P_{TBM}(t) & \text{if SIL-3 component} \\ P_{CBM}(data) \times P_{RCM}(design) & \text{otherwise} \end{cases}$$

Where:
- $P_{TBM}(t) = 1 - e^{-\lambda t}$ for SIL-3 components (fixed hazard rate λ from proof test data)
- $P_{CBM}(data) = P(health | FBG, AE, vibration, thermal)$ from PROD-28 Bayesian update
- $P_{RCM}(design)$ = design safety factor margin (PROD-25: min SF=1.53× on flange bolts)

The atomic computation is the **next-maintenance-time optimizer**:

$$t_{next} = \arg\min_t \left[ C_{PM}(t) + C_{failure} \times P(failure | t) \right] \quad \text{s.t.} \quad t \leq t_{SIL3-max}$$

Where $t_{SIL3-max} = 1$ year for SIF proof test, 5 years for hydrotest, 18 months for drum swap. The optimizer runs in PROD-37 twin at fleet level, outputting recommended intervals per component per Forge based on site-specific degradation rates.

#### The Turn (Both Directions)

**Theory→History Validation**: The RBI optimizer predicted maintenance intervals for the 3 deployed Forges:
- Forge-01 (clean grid, Class B soil): CBM extended drum UT to 18 months, vessel UT to 18 months, bearing inspection to 3000 batches. SIL-3 items unchanged. Zero failures in 18 months.
- Forge-02 (industrial grid, Class D soil): AE Felicity ratio dropped to 0.98 at 8 months → vessel UT brought forward to 10 months (found 12 mm delam at gas port). Optimizer correctly prioritized.
- Forge-03 (substation adjacent, Class A rock): TSN jitter caused FBG cross-talk alerts at 4 months → POF splice rework. Optimizer flagged grid quality as root cause.

History confirms theory: SIL-3 items never extended; CBM correctly prioritized condition-driven work.

**History→Theory Correction**: Forge-02 vessel delamination at gas port revealed AE Felicity ratio is a lagging indicator — delamination initiated at 6 months but Felicity dropped at 8 months. Updated $P(data | delamination)$ to include acoustic emission *energy rate* (dE/dt) as leading indicator. Forge-03 TSN jitter revealed POF splice degradation is accelerated by thermal cycling of the cold plate (not just vibration). Added thermal cycle count to POF degradation model.

The Turn: **the mathematical key absorbs history — each anomaly refines the likelihood models $P(data|health)$ for the Bayesian update, but the SIL-3 constraint $t \leq t_{SIL3-max}$ remains structurally invariant. The Lock (SIL-3 override) is managed not by fighting it but by synchronizing all maintenance to the SIL-3 master clock: the annual SIF proof test week becomes the maintenance synchronization event where all CBM intervals are re-evaluated, all NCRs reviewed, all spare parts rotated.**

---

### El Segundo Heuristic — Operational Excellence

#### Mirror (Self-Reflection)

The fabricator observes their own sustainment through **three recursive metrology loops that close at the speed of degradation**:

1. **FBG Health Mirror (125 Hz continuous)**: The 384 FBG channels stream wavelength data to PROD-37 twin, which runs the Bayesian health update (PROD-28 Keymaker Key) in real-time. The twin *is* the maintenance planner — it computes $\Lambda = P(data|degradation)/P(data|nominal)$ for every channel, every component, every system. When $\Lambda > 10$, the twin auto-generates an NCR *before* the operator acknowledges it. The mirror is not a report — it is the Forge's nervous system diagnosing itself.

2. **AE/Vibration Mirror (Continuous)**: The 8-channel AE on the vessel and bearing accelerometers feed the twin's spectral analysis engines. Felicity ratio, b-value, RA-value, spectral kurtosis — these are the Forge's pain signals. The twin correlates AE clusters with FBG strain hotspots and vibration harmonics. A delamination at a gas port produces: AE cluster at 45° azimuth + FBG strain spike on adjacent channels + 2× vibration RMS on nearest bearing. The mirror *fuses* these into a single health state.

3. **Fleet Twin Mirror (Monthly)**: PROD-37 aggregates all Forges' maintenance data — PM compliance, CBM alerts, NCR rates, spare consumption, overhaul durations. The auto-encoder learns the nominal manifold; reconstruction error >3σ on any Forge triggers parameter guard tightening (e.g., ramp rate -5%, UT interval -2 months). The fleet *reflects* the single Forge's degradation back to it as operating constraints.

The Mirror: **maintenance is not planned by a scheduler — it is triggered by the Forge's own sensorium reflecting its degradation through the twin's Bayesian lens.**

#### Participation (Witness)

The inside operator witnesses the sustainment phenomenon at **four non-automatable gates** where human judgment authorizes maintenance consequence:

1. **Gate: Annual SIF Proof Test (CT-04 re-execution)**: SIS Engineer injects 24 trip conditions, watches <50 ms response on TSN VLAN 10. The automation runs the sequence; but the *SIS Engineer witnesses the voter agreement* — 2oo3 logic, SOE timestamps, FBG freeze at trip. The witness signs: I saw the safety system protect itself. No auto-report replaces this.

2. **Gate: 18-Month Drum Swap Bolt Ceremony**: The vessel flange re-bolting (24× M24 ZrO₂ at 160 N·m ±5 N·m, dual-verify, AE monitoring) is repeated. Two operators, independent wrenches, mutual verification. The ceramic bolts have no yield — the ceremony *is* the safety barrier for the pressure boundary. The witness says: We both felt the same torque.

3. **Gate: Major Overhaul Authorization (Day 7 CT-08/SAT-05)**: After 7-day overhaul, Plant Manager + Lead EE + Lead ME + Safety Engineer review the abbreviated CT-08 and first hot batch. The twin says PASS; the witnesses *judge the edge cases*: Zone 5 ramp 5% slow after drum swap — acceptable? FBG Channel 12 drift 0.4 nm — within tolerance? Human judgment on post-overhaul anomalies is the authorization.

4. **Gate: Spare Part First-Article Acceptance**: When a critical spare (refurbished drum, vessel, module) arrives from regional depot, ME + QA + Supplier Engineer witness the acceptance tests. The QR/blockchain shows factory data; the witnesses *verify the part at site* — UT, dimensions, FBG survival, functional test. The witness says: This spare is equivalent to the original.

The Participation: **four moments where the human is not monitoring — they are witnessing the sustainment into existence, adding the judgment that transforms sensor data into certified readiness.**

#### Protocol (Recursive)

The recursive fidelity sequence is **fractal maintenance protocol** — the same Prepare→Execute→Verify→Authorize→Feedback pattern repeats at every scale, from daily PM to fleet optimization:

**Micro (per PM task, hours)**:
- Daily: Prepare (WO auto-generated) → Execute (visual, FBG scan, CEMS zero) → Verify (acceptance criteria) → Authorize (Tech signs) → Feedback (CMMS + twin)
- Weekly: Prepare (parts kitted) → Execute (port actuation, coolant filter, POF inspect) → Verify (leak rate, deflection, attenuation) → Authorize (Tech + QA) → Feedback (trend update)

**Meso (per maintenance window, days)**:
- Monthly: Prepare (IR, vibration, FBG cal) → Execute (scheduled tasks) → Verify (all predicates) → Authorize (ME Lead) → Feedback (CBM threshold update)
- Quarterly: Prepare (SIF partial stroke, UT spot) → Execute (in bypass, dual-key) → Verify (trip time, UT clean) → Authorize (SIS Eng + Safety) → Feedback (PFD update)

**Macro (per overhaul, weeks)**:
- 18-Month: Prepare (drum staged, crew briefed) → Execute (7-day sequence) → Verify (IC-1..IC-10 + CT-08 abbr + SAT-05 Batch 1) → Authorize (4-sign) → Feedback (drum lineage data → PROD-22 circularity)

**Meta (per fleet, months)**:
- PROD-37 twin runs RBI optimizer across all Forges
- Cluster-specific intervals deployed (Class D soil → vessel UT 10 mo; industrial grid → GIC test monthly)
- Spare parts rotation optimized (FIFO + condition)
- Next overhaul uses fleet priors for $P(failure|data)$

The Protocol: **the same Bayesian health update (PROD-28 Keymaker Key) runs at every scale, with the same SIL-3 constraint as the hard boundary. The daily FBG scan *is* the annual SIF proof test, scaled. The operator at the bolt ceremony witnesses the same physics the FBG channel witnesses at 125 Hz — strain in a ceramic matrix. The Protocol guarantees: if the Forge passes the micro gates with condition data measured, it passes the macro gates at that site.**

---

*Synthesis: The Lock (Williams) is the zero-metal/SIL-3 maintenance constraint. The Key (Keymaker) is the SIL-3-constrained RBI optimizer with Bayesian health fusion. The Witness (El Segundo) is the operator at four gates where human judgment authorizes what sensors measure. Together they form the sustainment architecture: the Forge maintains itself through light in glass fiber, validated by proof test, certified by human witness, recorded in blockchain, optimized by fleet twin. Maintenance is not a department — it is the Forge's immune system.*

*Combined Heuristic Intro for PROD-30 | ~200 lines | Carrington Storm Motors | November 2026*# PROD-30: Maintenance & Sustainment
## CSMFAB000000000130 — Aegis-Forge I Preventive Maintenance, Condition-Based Monitoring, Spares & Overhaul
### ISO 9001/AS9100 Aligned, API 581 RBI, IEC 61508 SIL-3, ASME BPVC Sec VIII/X, IEEE 693, NFPA 70E
**Document Number:** CSMFAB000000000130 (Product Document 30 of 40)
**Series:** Aegis-Forge Thermal Cascade Inductive Material Separator (TCIMS)
**Prepared by:** Carrington Storm Motors, Safe Pod Engineering Company, Fabrication Division
**Date:** November 2026 | **Classification:** Product Specification — Maintenance Engineering

---

## 1. Maintenance Strategy

### 1.1 Philosophy: RCM + CBM + TBM Hybrid

The Aegis-Forge I maintenance strategy integrates three methodologies, constrained by SIL-3 safety and zero-metal Carrington immunity:

| Methodology | Scope | Driver |
|---|---|---|
| **Reliability-Centered Maintenance (RCM)** | Safety-critical systems (SIS, pressure boundary, GIC immunity) | IEC 61508 SIL-3 mandates; failure consequences unacceptable |
| **Condition-Based Monitoring (CBM)** | Rotating equipment, thermal systems, dielectric integrity | FBG/AE/vibration provide continuous health data (PROD-28) |
| **Time-Based Maintenance (TBM)** | Consumables, calibration, regulatory inspections | Fixed intervals for non-monitorable degradation |

**Hybrid Rule:** SIL-3 SIF components (24 SIFs) follow TBM (proof test intervals) *overriding* CBM — no condition-based extension for safety functions. All other systems use CBM with RCM-derived base intervals.

### 1.2 Maintenance Organization

| Role | Responsibility | Qualification |
|---|---|---|
| **Maintenance Manager** | PM program ownership, resource planning, KPI tracking | PE + 10 yr nuclear/pressure vessel |
| **Mechanical Engineer** | Drum, vessel, carousel, frame, port valves | PE + 5 yr ceramics/composites |
| **Electrical Engineer** | Coil bank, power electronics, FBG, TSN/PTP | PE + 5 yr power electronics |
| **SIS Engineer** | SIL-3 SIF proof tests, PFD tracking, re-certification | TÜV FS Expert (IEC 61508) |
| **NDT Level III** | UT/CT/AE/IR program, procedure approval | ASNT Level III (UT, CT, ET, AE) |
| **Metrology Engineer** | Calibration program, CMM/UT/FBG standards | ISO 17025 assessor |
| **Maintenance Technicians (×6)** | Execute PM/CBM work orders, dual-verify critical tasks | PROD-34 L2/L3 cert |

### 1.3 Maintenance KPIs

| KPI | Target | Measurement |
|---|---|---|
| **Planned Maintenance Compliance (PMC)** | >95% | PM work orders completed on schedule / due |
| **Mean Time Between Failures (MTBF)** | >50,000 hrs (system) | PROD-37 fleet twin |
| **Mean Time To Repair (MTTR)** | <4 hrs (critical) | CMMS work order data |
| **Spare Parts Availability** | 100% critical spares on-site | Inventory audit |
| **FBG Channel Survival** | 384/384 active | PROD-28 CT-06 + in-service |
| **SIF PFD_avg** | <1×10⁻³ (SIL-3 subset) | CT-04 proof test data |
| **CAPA Closure** | 100% within 30 days | PROD-28 CAPA tracker |
| **Overhaul Schedule Adherence** | ±3 days | CMMS schedule vs. actual |

---

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

## 4. Port Valve Maintenance (Assembly A-04 ×8)

### 4.1 Quarterly Thermal Actuation Check (PROD-30-WI-014)

**Conditions:** Furnace at 680°C ΔT (ambient to 700°C), 50°C/min ramp
**Measurement:** LVDT on piston rod (0.01 mm resolution) + FBG strain on actuator body
**Acceptance:** 3.6±0.2 mm deflection; repeatable 3 consecutive cycles; no hysteresis >0.1 mm
**Data Capture:** Force-deflection curve; thermal strain vs. temperature; FBG wavelength shift

### 4.2 Quarterly Leak Rate Test (PROD-30-WI-015)

**Conditions:** Valve closed, 5 bar N₂ upstream, He mass spectrometer downstream
**Acceptance:** <10⁻⁶ mbar·L/s (equivalent to <1 sccm He)
**Action if Failed:** Braze joint UT inspection; piston/sleeve dimension check; seal replacement

### 4.3 Annual Braze Joint UT (PROD-30-WI-016)

**Scope:** Ti₃AlC₂ actuator to ZrB₂-SiC sleeve (Ag-CuO-TiO₂ braze, 50±10 μm)
**Equipment:** 20 MHz focused UT, water coupling (dielectric)
**Acceptance:** No voids >50 μm; joint thickness 50±10 μm; TiO₂ reaction layer <5 μm
**Reference:** PROD-27 PQR-BR-001 baseline

### 4.4 Annual FBG Strain Calibration (PROD-30-WI-017)

**Method:** Known weights on piston (0, 50, 100, 200, 500, 1000 N)
**Acceptance:** 0.1 nm/με ±2% linearity; R² > 0.999; hysteresis <1%
**Cross-check:** LVDT displacement vs. FBG strain (thermal actuation)

### 4.5 500-Batch ZrO₂ Piston Inspection (PROD-30-WI-018)

**Scope:** Visual + dimensional (CMM) + surface profilometry
**Acceptance:** Clearance 0.05±0.01 mm; no wear >0.02 mm; Ra <0.4 μm; no radial cracking
**Action if Failed:** Replace piston + sleeve as matched set (PROD-09)

### 4.6 2000-Cycle Actuator Replacement (PROD-30-WI-019)

**Life Limit:** 2000 thermal cycles (250 days at 8 batches/day)
**Procedure:** Full port valve assembly removal → new actuator/piston install → actuation check + leak test + FBG cal
**Note:** Actuator includes Ti₃AlC₂ body, ZrO₂ piston, PEEK CF40 spring, FBG embed

---

## 5. Coil Bank Maintenance (Assembly A-09 ×8 zones)

### 5.1 Monthly Resonance & ZVS Verification (PROD-30-WI-020)

**Per Zone Procedure:**
1. Impedance analyzer sweep (1 kHz–200 kHz): resonant frequency, Q factor
2. Power analyzer: ZVS verification at 25%, 50%, 75%, 100% load
3. Thermal: IR camera at 100% load (30 min soak)
4. Data: Frequency vs. zone table ±1%; Q >150; ZVS phase <5°

**Zone-Specific Targets:**

| Zone | Stage | Target Freq | Power Range | Q Target |
|---|---|---|---|---|
| Z1 | 1 (Drying) | 100 kHz ±1% | 0–50 kW | >150 |
| Z2 | 2 (Polymer) | 100 kHz ±1% | 0–50 kW | >150 |
| Z3 | 3 (Pyrolysis) | 50 kHz ±1% | 50–80 kW | >150 |
| Z4 | 4 (Low-Temp) | 10 kHz ±1% | 80–150 kW | >150 |
| Z5 | 5 (Al) | 10 kHz ±1% | 80–150 kW | >150 |
| Z6 | 6 (Cu/PM) | 5 kHz ±1% | 100–200 kW | >150 |
| Z7 | 7 (Fe) | 2 kHz ±1% | 150–350 kW | >150 |
| Z8 | 8 (Mineral) | 1 kHz ±1% | 200–500 kW | >150 |

### 5.2 Monthly FBG Cross-Talk Check (PROD-30-WI-021)

**Method:** Interrogator single-channel excitation + adjacent channel monitoring
**Acceptance:** Adjacent channel isolation >40 dB; WDM channel spacing 0.8 nm maintained
**Action if Failed:** FBG re-splice (PROD-30-WI-003) or channel remapping

### 5.3 Quarterly Cold Plate Leak Test (PROD-30-WI-022)

**Method:** He mass spectrometer, 10 bar He, 30 min hold per zone
**Acceptance:** <10⁻⁹ mbar·L/s (PROD-28 Sec 3.4)
**Action if Failed:** Cold plate removal → TIM (In foil) inspection → re-bond or replace

### 5.4 Annual PEX-a Integrity (PROD-30-WI-023)

**Method:** Pressure decay test @ 10 bar, 1 hour
**Acceptance:** <0.1 bar/hr pressure drop
**Visual:** No kinking, abrasion, UV degradation, fitting corrosion

### 5.5 Biennial Inductor Visual + CT (PROD-30-WI-024)

**Visual:** Cu tube insulation (Al₂O₃ coating), support spacers (BFRP), connections
**CT:** 50 μm voxel, focus on conductor insulation, braze joints, support integrity
**Acceptance:** No insulation cracking; no conductor displacement >0.5 mm; no braze voids >100 μm

---

## 6. Power Electronics Maintenance (Assembly A-10 ×8 modules)

### 6.1 Monthly DC Link & ZVS Verification (PROD-30-WI-025)

**DC Link Charge Test:**
- Oscilloscope capture (100 MHz BW, 1 GS/s): 0→800V in 500 ms; no overshoot >850V
- Pre-charge resistor thermal check (IR): <80°C after charge

**ZVS Acquisition Verification:**
- V/I ramp from 10% to 100% load in 10% steps
- Phase <5° at all points; v_DS zero-crossing before gate drive
- Gate drive voltage: 6V ±0.2V (LMG1210), rise/fall <2 ns

### 6.2 Quarterly Thermal Soak Test (PROD-30-WI-026)

**Conditions:** 500 kW continuous, 30 minutes, cooling at design flow (500 L/min, 30°C inlet)
**Measurements:**
- GaN junction temperature (calculated from T_c + R_θJC × P_loss): <125°C
- Cold plate ΔT (inlet-outlet): <15°C
- Capacitor bank temperature: <85°C (electrolytic), <105°C (film)
- Thermal imaging: No hotspots >5°C above zone average

### 6.3 Quarterly GIC Ride-Through Test (PROD-30-WI-027)

**Equipment:** Portable Helmholtz coil (1 m diameter, 100 A/m, 0.1–10 Hz sweep)
**Procedure:** Per PROD-26 Sec 3.3, PROD-23 CT-07 protocol
**Acceptance:** Zero spurious SIF trips; zero data loss (TSN/PTP/FBG); zero inverter trips
**Monitoring:** All 384 FBG channels, TSN latency, PTP offset, DC link voltage

### 6.4 Annual EMI Verification (PROD-30-WI-028)

**Standard:** CISPR 11 Class A (conducted 150 kHz–30 MHz, radiated 30 MHz–1 GHz)
**Conditions:** All 8 zones at 100% load, Forge at Stage 8 steady-state
**Acceptance:** >20 dB margin on all limits
**Action if Failed:** Common-mode choke re-tune; POF routing check; filter capacitor ESR check

### 6.5 Quarterly SIL-3 SIF Injection Test (PROD-30-WI-029)

**Per Module (3 SIFs/module × 8 modules = 24 SIFs):**
- Overpressure (vessel >11 bar)
- Overtemperature (drum >2250°C or dT/dt >100°C/s)
- Vibration (frame >1.5g RMS)
- GIC (common-mode >5 V on floating secondary)
- Loss of comms (TSN VLAN 10 heartbeat >10 ms)

**Acceptance:** Trip <50 ms; 2oo3 channel agreement; SOE timestamp <1 ms skew; FBG data freeze at trip
**Documentation:** SIF test report per module; PFD_avg calculation update

### 6.6 Monthly POF Attenuation Check (PROD-30-WI-030)

**Equipment:** OTDR (1550 nm, 10 μs pulse, 100 km range)
**Acceptance:** <0.2 dB/m; splices <0.5 dB; return loss >50 dB
**Action if Failed:** Re-splice affected segments (PROD-30-WI-003); OTDR trace archive

### 6.7 Annual Capacitor Bank ESR Check (PROD-30-WI-031)

**Equipment:** Impedance analyzer (100 Hz–1 MHz)
**Acceptance:** ESR <1.5× initial (factory baseline); capacitance ±5% of nominal
**Trend:** ESR vs. time (exponential fit); predict end-of-life at 2× initial

### 6.8 GaN Module Replacement (50,000 hrs, PROD-30-WI-032)

**Hot-Swap Capability:** Module rack designed for live removal (TSN/PTP/POF disconnect <30 s)
**Procedure:**
1. Zone power reduction to 0% (PID ramp 10%/s)
2. TSN VLAN 10 graceful disconnect (PTP holdover 24 hr)
3. POF disconnect (BFRP connector, push-pull)
4. Cold plate quick-disconnect (PEX-a, zero-leak)
5. Module extract (BFRP handles, 2-person lift 800 kg)
6. New module install → reverse sequence → acceptance per PROD-28 Sec 2.5

---

## 7. Frame, Carousel & Bearings (Assembly A-12)

### 7.1 Annual Frame Dimensions (PROD-30-WI-033)

**Equipment:** CMM (Hexagon Global, 3000×2000×1500 mm, ±2 μm accuracy)
**Points:** 200+ measurement points (bolt holes, lifting lugs, isolator mounts, bearing seats)
**Acceptance:** ±1 mm length, ±0.5 mm diagonal, bolt hole pattern ±0.1 mm
**Comparison:** Baseline (FA CMM report) + thermal growth model (PROD-25)

### 7.2 Biennial Isolator Stiffness Test (PROD-30-WI-034)

**Method:** Static load test (hydraulic jack, 500 kN capacity) + LVDT displacement
**Vertical:** 2.5 MN/m ±5% (250 kN → 0.1 mm deflection)
**Horizontal:** 0.8 MN/m ±5% (80 kN → 0.1 mm deflection)
**Damping:** Logarithmic decrement from free decay >15%
**Acceptance:** Per PROD-25 Sec 4.2 updated values

### 7.3 Monthly Carousel Indexing (PROD-30-WI-035)

**Method:** Encoder (Heidenhain ROC 425, 26-bit) + FBG strain on bearing housing
**Procedure:** 8-position sequence (45° steps), 5 cycles each direction
**Acceptance:** <2 s per index; 0.01° resolution; position repeatability ±0.005°; vibration <0.5 g RMS

### 7.4 Continuous Bearing Vibration Monitoring (PROD-30-WI-036)

**Sensors:** 4× accelerometers (PCB 352C33, 100 mV/g, 0.5–10 kHz) + 2× FBG on bearing housing
**Sampling:** 1 kHz continuous; FFT (0.5–500 Hz); envelope analysis (1–5 kHz)
**Baseline:** Commissioning data (30 days steady operation)
**Alert Logic:**
- Overall RMS >2× baseline → Alert Level 1 (trend)
- Bearing defect frequency (BPFI/BPFO/BSF/FTF) amplitude >6 dB baseline → Alert Level 2 (NCR)
- Spectral kurtosis >4 → Alert Level 3 (immediate inspection)

### 7.5 2000-Batch Bearing Inspection (PROD-30-WI-037)

**Scope:** Si₃N₄ ball / ZrO₂ race hybrid ceramic bearings (4 per carousel)
**Procedure:** Removal → visual + dimensional (CMM) + spin test (1000 RPM, 30 min)
**Acceptance:**
- No spalling, pitting, discoloration on balls/races
- Runout <5 μm (radial + axial)
- Preload torque: 5 N·m ±10% (N₂ film 0.1 bar)
- Vibration at 1000 RPM: <0.5 g RMS
- FBG strain on housing: <50 με static

### 7.6 Quarterly Mold Dimensions (PROD-30-WI-038)

**Scope:** 8× ZrO₂ molds (carousel positions 1-8)
**Equipment:** CMM (per 7.1) + optical comparator (profile)
**Acceptance:** 0.1 mm tolerance (ISO 8062 CT7); wall thickness 25±0.1 mm; base flatness <0.05 mm
**Action if Failed:** Mold replacement (spare set on-site); dimension mapping to slug quality data

---

## 8. Major Overhaul (18-Month Drum Swap Cycle)

### 8.1 Overhaul Sequence (168 hours / 7 days)

| Day | Activity | Duration | Resources | Key Verification |
|---|---|---|---|---|
| **Day 1** | Shutdown, cool-down (CT-08 reverse), isolation (LOTO) | 12 hr | 2 ME, 1 EE, 1 Safety | Drum <50°C; vessel <50°C; all zones 0 power |
| **Day 2** | Drum removal (crane), vessel flange unbolt (bolt ceremony reverse) | 16 hr | 2 ME, 1 EE, 1 QA | AE monitoring during unbolt; flange face inspection |
| **Day 3** | New drum installation (IC-2 re-execution), FBG splice + cal | 16 hr | 2 ME, 1 EE, 1 SIS | Bearing fit; FBG 128/128 active; cal R²>0.999 |
| **Day 4** | Vessel re-bolt (bolt ceremony), hydrotest (IC-2), AE baseline | 12 hr | 2 ME, 1 QA | Dual-verify 160 N·m; hydrotest PASS; AE baseline set |
| **Day 5** | Coil bank verification (IC-3 abbr), cold plate leak | 8 hr | 1 EE, 1 ME | Resonance ±1%; Q>150; leak <10⁻⁹ mbar·L/s |
| **Day 6** | Power electronics verification (IC-3 abbr), SIF proof (CT-04) | 12 hr | 1 EE, 1 SIS | ZVS <5°; SIF proof PASS; GIC ride-through PASS |
| **Day 7** | Hot commissioning (CT-08 abbr), SAT-05 Batch 1, handover | 16 hr | Full crew | CT-08 thermal match; Batch 1 mass balance >99.5% |

### 8.2 Overhaul Life Limits & Refurbishment Paths

| Component | Life Limit | Refurbishment Path | PROD-22 Circularity |
|---|---|---|---|
| **ZrB₂-SiC Drum** | 500 batches | Hydromet (HCl leach) → carbothermal (ZrO₂+C) → flash sinter | Gen 1→31 (31 generations) |
| **BFRP Vessel** | 15,000 batches (20 yr) | Hydrotest + full UT/CT; glaze re-spray if needed | Solvolysis (Elium® recovery) → re-wind |
| **Port Valve Actuators** | 2000 cycles | Replace Ti₃AlC₂ actuator + ZrO₂ piston | Cl₂ extraction → re-synth (20 gen) |
| **PEEK CF40 Seals** | 1000 batches | Replace all flange seals | Mechanical recycle (shred → re-mold) |
| **GaN Inverter Modules** | 50,000 hrs | Replace module (hot-swap capable) | GaN die recovery (electrochemical) |
| **PEX-a Coolant Lines** | 10 years | Replace all PEX-a circuits | Thermal recycle (pyrolysis) |
| **FBG Interrogator** | 5 years | Replace interrogator + recalibrate all channels | Electronics recycle (WEEE) |
| **TSN Switches** | 7 years | Replace BFRP-housed switches | Electronics recycle |
| **Bearings (Si₃N₄/ZrO₂)** | 35,800 hrs (L10) | Replace bearing cartridge | Ceramic recycle (SPS) |

---

## 9. Consumables & Wear Parts

### 9.1 Critical Consumables (On-Site Stock, Monthly Reorder)

| Item | Part Number | Qty On-Site | Lead Time | Reorder Point | Annual Usage | Supplier |
|---|---|---|---|---|---|---|
| In foil TIM (50 μm) | CSM-TIM-In-050 | 20 rolls | 30 days | 5 rolls | 48 rolls | In-house / Indium Corp |
| Ag-CuO-TiO₂ braze paste | CSM-BRZ-ACO-001 | 10 syringes | 45 days | 3 syringes | 24 syr | In-house |
| PEEK CF40 flange seals | CSM-SEAL-PKCF40-24 | 48 sets | 60 days | 12 sets | 35 sets | Victrex / In-house mold |
| ZrO₂ pistons (port valves) | CSM-PIST-ZRO2-12mm | 16 pcs | 90 days | 4 pcs | 12 pcs | Zircar / Morgan |
| Si₃N₄ bearing cartridges | CSM-BRG-SN-200 | 4 pcs | 120 days | 1 pcs | 2 pcs | CeramTec |
| FBG interrogator bulbs | CSM-FBG-LD-1550 | 4 pcs | 30 days | 1 pcs | 2 pcs | Micron Optics |
| PEX-a tubing (1 OD) | CSM-PEX-25-100 | 100 m | 14 days | 20 m | 200 m | Uponor |
| Basalt roving (2400 tex) | CSM-BFR-2400 | 500 kg | 7 days | 100 kg | 4,200 kg | In-house |
| Elium® resin (MMA) | CSM-ELM-MMA | 1000 L | 14 days | 200 L | 8,000 L | Arkema / In-house |
| ZrB₂-SiC powder (drum) | CSM-POW-ZBS-001 | 200 kg | 0 days | 50 kg | 1,600 kg | In-house flash sinter |
| NaHCO₃ (scrubber) | CSM-CHM-NaHCO3 | 5,000 kg | 7 days | 1,000 kg | 40,000 kg | Solvay |
| Activated carbon (gas) | CSM-CHM-CARB-4x8 | 2,000 kg | 14 days | 500 kg | 10,000 kg | Calgon Carbon |
| N₂ (liquid) | CSM-GAS-N2-L | 10,000 L | 1 day | 2,000 L | 80,000 L | Air Liquide |
| Ar (liquid) | CSM-GAS-AR-L | 5,000 L | 1 day | 1,000 L | 20,000 L | Air Liquide |

### 9.2 Annual Consumables Cost Summary

| Category | Annual Cost | % of Total |
|---|---|---|
| **Drum/Liner Consumables** | $2,149,080 | 73.5% |
| **Vessel/Seals** | $35,040 | 1.2% |
| **Port Valve Parts** | $309,520 | 10.6% |
| **Power Electronics** | $350,400 | 12.0% |
| **Bearings/Carousel** | $76,540 | 2.6% |
| **TIM/Braze/Interrogator** | $23,800 | 0.8% |
| **Gas/Chemicals** | $150,000 | 5.1% |
| **Total** | **$2,924,380** | 100% |

---

## 10. Spare Parts Logistics

### 10.1 Inventory Classification (API 581 Adapted)

| Class | Definition | Stocking Policy | Review |
|---|---|---|---|
| **Critical (A)** | Single-point failure → Forge down | 100% on-site + 1 at regional | Monthly |
| **Essential (B)** | Degraded performance → Forge down in 30 days | 1 at regional + 1 at factory | Quarterly |
| **Normal (C)** | Scheduled replacement | Factory warehouse | Annual |

### 10.2 Spare Parts Management

- **QR/Blockchain tracking**: Every spare part carries QR code linking to Hyperledger (PROD-28 Sec 9)
- **Condition monitoring**: Critical spares (drum, vessel, modules) have FBG/AE sensors active in storage
- **Rotation policy**: FIFO with 24-month max shelf life for elastomers/composites; ceramics indefinite
- **Vendor codes**: All parts traceable to AVL (PROD-28 Sec 7) with supplier quality data

### 10.3 Stocking Levels

| Part | Class | On-Site | Regional (30-day) | Factory (90-day) | Total |
|---|---|---|---|---|---|
| Refurbished Drum | A | 0 | 1 | 1 | 2 |
| Refurbished Vessel | A | 0 | 1 | 1 | 2 |
| Coil Zone Set (8) | A | 0 | 1 set | 1 set | 2 sets |
| Inverter Module Set (8) | A | 0 | 1 set | 1 set | 2 sets |
| TSN Switch | A | 1 | 1 | 2 | 4 |
| PTP Grandmaster | A | 1 | 0 | 1 | 2 |
| FBG Interrogator | A | 1 | 1 | 1 | 3 |
| Graphite Die | B | 0 | 0 | 1 | 1 |
| Winding Mandrel | B | 0 | 0 | 1 | 1 |
| ZrO₂ Bolt Set (24) | B | 1 | 1 | 2 | 4 |
| Carousel Mold Set | B | 1 | 0 | 1 | 2 |

---

## 11. Predictive Maintenance (CBM)

### 11.1 Predictive Algorithms (PROD-37 Digital Twin)

| Parameter | Sensor | Algorithm | Alert Threshold | Action |
|---|---|---|---|---|
| FBG wavelength drift | 384 FBG @ 125 Hz | Recursive Bayesian (PROD-28) | Λ > 10 | Auto-NCR → CAPA |
| AE Felicity ratio | 8× R15α vessel | Exponential smoothing + change point | Felicity <1.0 >1 hr | NCR → UT inspection |
| Vibration RMS | Bearings, carousel, frame | Spectral kurtosis + envelope | >2× baseline (30-day) | NCR → bearing inspection |
| Thermal model residual | Zone RTUs (1 kHz) | RLS adaptive filter | >2°C RMS >10 min | NCR → cold plate check |
| POF attenuation | OTDR continuous | Linear regression + breakpoint | >0.25 dB/m or step >0.1 dB | NCR → splice inspection |
| Capacitor bank ESR | Monthly impedance | Exponential degradation model | ESR >1.5× initial | Schedule replacement |
| SIF response time | Quarterly test | Weibull degradation | >35 ms (target 25 ms) | NCR + partial stroke |

### 11.2 Condition-Based Intervals (API 581 RBI + SIL-3 Override)

| Component | Base Interval | CBM Adjustment | SIL-3 Override |
|---|---|---|---|
| Drum UT | Annual | Extend to 18 mo if AE clean + FBG stable | N/A |
| Drum CT | Biennial | Extend to 3 yr if FBG survival 100% | N/A |
| Vessel UT | Annual | Extend to 18 mo if AE Felicity >1.05 | N/A |
| Vessel hydrotest | 5 yr | Extend to 7 yr if UT clean + AE clean | N/A |
| Port valve actuation | Quarterly | Fixed (thermal cycling fatigue) | N/A |
| SIF proof test | Annual | **Fixed** — no CBM extension | **Mandatory annual** |
| FBG calibration | Monthly | Fixed (drift accumulation) | N/A |
| GIC ride-through | Quarterly | Fixed (grid impedance changes) | N/A |
| Bearing vibration | Continuous | Auto-alert at 2× baseline | N/A |
| Coil resonance | Monthly | Extend to quarterly if stable 12 mo | N/A |

---

### 11.3 Detailed Predictive Algorithm Specifications

#### 11.3.1 FBG Drift Bayesian Tracker (PROD-28 Sec 5.1 Keymaker Key)

**Mathematical Foundation:** Recursive Bayesian update on Weibull degradation parameter β

```python
# Pseudocode for FBG drift tracker (executes at 125 Hz per channel)
def fbg_drift_update(channel_id, lambda_measured, t):
    # Prior: beta ~ Gamma(alpha, beta)  -- shape/rate from commissioning
    # Likelihood: lambda = lambda_0 * exp(beta * t) + noise
    # Posterior: conjugate update
    
    alpha_post = alpha_prior + 0.5
    beta_post = beta_prior + 0.5 * (lambda_measured - lambda_predicted)^2 / sigma^2
    
    # Hazard rate h(t) = beta / eta * (t/eta)^(beta-1)
    # Likelihood ratio Lambda = h(t|data) / h(t|baseline)
    
    Lambda = compute_likelihood_ratio(alpha_post, beta_post, alpha_baseline, beta_baseline)
    
    if Lambda > 10:
        trigger_ncr(channel_id, FBG_DRIFT, Lambda, t)
    elif Lambda > 5:
        trigger_alert(channel_id, FBG_DRIFT_WARN, Lambda, t)
    
    return alpha_post, beta_post, Lambda
```

**Channel-Specific Baselines (PQR-FS-001):**
- Drum zones 1-8 (16 ch/zone): λ₀ = 1550.000 nm @ 25°C; sensitivity = 10.2 pm/°C ±0.3 pm/°C
- Vessel AE channels (8 ch): λ₀ = 1545.000 nm; sensitivity = 10.0 pm/°C ±0.2 pm/°C
- Port valve actuators (8 ch × 2 = 16 ch): λ₀ = 1555.000 nm; sensitivity = 1.8 pm/με ±0.1 pm/με
- Coil bank cold plates (8 ch): λ₀ = 1560.000 nm; sensitivity = 10.5 pm/°C ±0.4 pm/°C
- Reference channels (16 ch): λ₀ = various; used for common-mode rejection

**Data Compression:** 125 Hz raw → 1 Hz min/mean/max/σ stored (99.2% compression); 10-year retention on PROD-37 time-series DB

#### 11.3.2 AE Felicity Ratio Change-Point Detection

**Algorithm:** Exponentially Weighted Moving Average (EWMA) + Binary Segmentation Change-Point

```
Felicity_ratio(t) = cumulative_energy(t) / cumulative_energy(t - Δt)
  where Δt = 1 hour rolling window

EWMA: z_t = λ * F_t + (1-λ) * z_{t-1}, λ = 0.1
Control limits: LCL = μ_0 - 2.7σ√(λ/(2-λ)), UCL = μ_0 + 2.7σ√(λ/(2-λ))
  μ_0 = 1.2 (baseline from PROD-25 FEA), σ = 0.05 (commissioning)

Change-point: Binary segmentation on z_t sequence (min segment = 24 hrs)
  Test statistic: max |z_t - z_{t-1}| > 3σ
  If detected: re-baseline μ_0, σ from new segment; trigger NCR if Felicity < 1.0
```

**Auto-Response Integration:**
- Alert Level 1 (Felicity 1.05–1.1): Log only, increase AE sampling to 1 MHz
- Alert Level 2 (Felicity 1.0–1.05 > 1 hr): Auto-NCR, schedule UT inspection within 72 hrs
- Alert Level 3 (Felicity < 1.0 > 1 hr): Auto-NCR + immediate partial shutdown (drum power <50%)

#### 11.3.3 Vibration Spectral Kurtosis + Envelope Analysis

**Algorithm (ISO 13373-2 / PROD-28 Sec 5.2):**
1. Raw acceleration: 1 kHz sampling, 4 ch per bearing housing (2 axial, 2 radial)
2. Demodulation: Hilbert transform of bandpass (1–5 kHz) → envelope signal
3. Spectral Kurtosis (SK): SK(f) = E[X⁴]/E[X²]² - 2 (Gaussian = 0)
4. Optimal band: max SK(f) over 1–5 kHz → band for envelope spectrum
5. Bearing defect frequencies (Si₃N₄/ZrO₂, 60 mm PD, 8 balls, 15° contact):
   - BPFI = 4.4 × RPM; BPFO = 3.6 × RPM; BSF = 2.3 × RPM; FTF = 0.45 × RPM
6. Alert: BPFI/BPFO/BSF amplitude > 6 dB baseline → NCR

**Baseline Re-Establishment:** Every 500 batches (drum swap) or after bearing replacement

#### 11.3.4 Thermal Model Residual RLS Adaptive Filter

**Algorithm (Recursive Least Squares - PROD-24/28 fusion):**
```
State: θ_t = [k_cond, k_conv, k_rad]^T  (thermal conductance parameters)
Measurement: y_t = T_actual - T_predicted (per zone, 1 kHz RTU)
Update: P_t = (I - K_t H) P_{t-1}; θ_t = θ_{t-1} + K_t (y_t - H θ_{t-1})
        K_t = P_{t-1} H^T (H P_{t-1} H^T + R)^{-1}
Alert: ||y_t||_RMS > 2°C over 10 min window → NCR + cold plate leak check
```

**Zone-Specific Parameters:**
- Zones 1-2 (100 kHz): k_cond dominates (conduction through drum wall)
- Zones 3-4 (50/10 kHz): k_conv + k_rad (gas convection + radiation)
- Zones 5-8 (10-1 kHz): k_rad dominates (2200°C radiation)

#### 11.3.5 POF Attenuation Linear Regression with Breakpoint Detection

**Algorithm:**
- Continuous OTDR: 1550 nm, 10 μs pulse, 1 Hz sweep (all 384 channels)
- Per-channel: α(t) = -10/L * log10(P_received/P_launch) dB/m
- Rolling linear regression (30-day window): α(t) = a + b*t
- Breakpoint: CUSUM on residuals > 5σ → step change (splice failure, macrobend)
- Alert: b > 0.001 dB/m/day OR step > 0.1 dB → NCR

---

### 12.3 Maintenance Training & Competency (PROD-34 Integration)

#### 12.3.1 Required Certifications by Role

| Role | Required Certifications | Renewal | Forge-Specific |
|---|---|---|---|
| **ME Tech (Mechanical)** | ASNT Level II UT/MT/PT; API 510/570; CMRP | 5 yr | PROD-30-WI-001/002/004-019; Carrington tool handling |
| **EE Tech (Electrical)** | NFPA 70E; IEC 61508 SIL-3; GaN power module cert | 3 yr | PROD-30-WI-020/025-032; GIC test procedure |
| **SIS Engineer** | CFSE (TÜV); IEC 61511; ISA 84 | 3 yr | PROD-23 CT-04/07; SIF injection; proof test design |
| **NDT Level II** | ASNT Level II UT/PA/ET/RT; ISO 9712 | 5 yr | PROD-30-WI-001/008/016/024; BFRP & ceramic UT |
| **NDT Level III** | ASNT Level III; procedure qualification | 5 yr | All NDT procedure approval; CT reconstruction |
| **Metrology Tech** | ASME B89.1.9; CMM programming; laser tracker | 3 yr | PROD-30-WI-033/038; thermal growth compensation |
| **QA Engineer** | ASQ CQE; ISO 9001/19011; NQA-1 (nuclear grade) | 3 yr | PROD-28/30/38 integration; Hyperledger audit |

#### 12.3.2 Forge-Specific Training Modules (40 hr initial + 8 hr annual)

| Module | Duration | Content | Assessment |
|---|---|---|---|
| **M-01 Zero-Metal Tooling** | 8 hr | BFRP/ceramic tools; torque procedures; dielectric verification | Practical + written |
| **M-02 Carrington-Safe Procedures** | 8 hr | GIC immunity; no-ground policy; floating secondary verification | Scenario-based |
| **M-03 Drum Handling & FBG** | 8 hr | 500-kg drum lift; FBG splice (PROD-11); cal verification | Practical |
| **M-04 SIL-3 Maintenance** | 8 hr | SIF bypass management; proof test execution; PFD_avg tracking | Written + practical |
| **M-05 Phoenix Protocol Circularity** | 8 hr | Drum refurb flow; material tracking; Hyperledger entry | Written |

#### 12.3.3 Competency Matrix (Extended)

| Task | ME Tech | EE Tech | SIS Eng | NDT LII | NDT LIII | Metrology | QA Eng |
|---|---|---|---|---|---|---|---|
| Drum UT | | | | X | A | | R |
| Drum CT | | | | | X | | R |
| FBG splice/cal | | X | R | | | | A |
| Vessel AE analysis | X | | | X | A | | R |
| Vessel UT | | | | X | A | | R |
| Vessel hydrotest | X | | | | | | A/R |
| Port valve actuation | X | | | | | | R |
| Braze UT | | | | X | A | | R |
| Coil resonance/ZVS | | X | | | | | R |
| Cold plate leak | X | | | | | | R |
| DC link/ZVS/thermal | | X | | | | | R |
| GIC ride-through | | X | R | | | | A |
| EMI | | X | | | | | R |
| SIF injection | | | R | | | | A |
| Frame CMM | | | | | | X | R |
| Isolator stiffness | X | | | | | X | R |
| Carousel indexing | X | | | | | | R |
| Bearing vibration | | | | | | | R |
| Mold CMM | | | | | | X | R |

---

### 12.4 Root Cause Analysis (RCA) Integration

**Trigger:** Any NCR Critical (PROD-28 Sec 4) or Alert Level 3 (Sec 11)
**Method:** 8D with physics-based fault tree (PROD-25/26/28 fusion)

#### 12.4.1 RCA Process Flow

```
D0: Team Formation (QA Lead + SME: ME/EE/SIS/NDT/Metrology)
D1: Problem Statement (What, Where, When, Extent, IS/IS NOT)
D2: Interim Containment (Forge status: run/reduced/stop; safety first)
D3: Root Cause Identification
    - Fault Tree Top Event: e.g., FBG channel dropout Zone 3
    - Gates: AND/OR logic from PROD-25 FEA + PROD-26 GIC + PROD-28 NCR history
    - Basic Events: FBG fiber fracture, interrogator failure, splice degradation, 
      thermal gradient > design, GIC event, vibration fatigue, installation error
    - Quantification: Bayesian network (PROD-37) with prior from Weibull (PROD-25)
D4: Permanent Corrective Action (design fix / procedure change / interval change)
D5: Verification (pilot implementation + 30-day monitoring)
D6: Implementation (ECO via PROD-38; training update via PROD-34)
D7: Prevention (lessons learned; PM/CBM interval update; spare part spec change)
D8: Team Recognition & Closure (Hyperledger commit + PROD-37 twin update)
```

#### 12.4.2 Example Fault Tree: Drum FBG Channel Dropout

```
TOP: Channel dropout Zone 3 (1 of 16 channels)
├── Fiber fracture (AND)
│   ├── Thermal stress > 200 MPa (OR)
│   │   ├── dT/dt > 150°C/s (SIF would trip)
│   │   ├── Cold plate leak → local quench (AE detect)
│   │   └── Coil resonance shift → hotspot (ZVS monitor)
│   └── Mechanical fatigue (OR)
│       ├── Vibration > 2g RMS (bearing failure)
│       ├── Drum distortion > 0.5 mm (CT detect)
│       └── Installation bend radius < 25 mm
├── Splice degradation (AND)
│   ├── Thermal cycling fatigue (500 cycles = design life)
│   ├── Moisture ingress (dielectric breach → GIC path)
│   └── FBG coating delamination (H₂ at 2200°C)
├── Interrogator failure (OR)
│   ├── Laser diode degradation (MTBF 50,000 hrs)
│   ├── FPGA bit flip (GIC-induced, rate <10⁻⁹/hr)
│   └── Power supply failure (redundant 2+1)
└── Common-mode GIC event (AND)
    ├── Geomagnetic storm > 5 V/km (Carrington-class)
    ├── Floating secondary compromise (insulation failure)
    └── Faraday cage breach (conduit penetration)
```

---

### 12.5 Maintenance Performance Metrics (KPIs)

| KPI | Target | Measurement | Reporting |
|---|---|---|---|
| **Planned Maintenance Compliance (PMC)** | >95% | CMMS WO closed on-time / total planned | Monthly |
| **Mean Time Between Failures (MTBF)** | >2000 hrs | Operating hrs / unplanned stops | Monthly |
| **Mean Time To Repair (MTTR)** | <4 hrs | Sum repair time / unplanned events | Monthly |
| **Overall Equipment Effectiveness (OEE)** | >85% | Availability × Performance × Quality | Weekly |
| **SIF Proof Test Compliance** | 100% | Tests passed / tests due | Annual |
| **CBM Alert Precision** | >80% | True alerts / total alerts (per algo) | Quarterly |
| **Spare Parts Availability (Critical)** | 100% | Critical spares on-site / required | Monthly |
| **Maintenance Cost / Ton Processed** | <$15/ton | Total maintenance spend / annual throughput | Monthly |
| **Carrington Readiness** | 100% | GIC test pass + zero-metal tools verified | Quarterly |
| **Phoenix Protocol Circularity** | 100% | Drums returned / drums swapped | Per swap |

---

---

## 12. Documentation & Records (PROD-28/38 Integration)

### 12.1 Maintenance Work Order Flow

```
1. PM Due / CBM Alert / Operator Report → CMMS Auto-Generate WO
2. Planner: Verify parts, permits, procedures, personnel
3. Scheduler: Slot in maintenance window (Sec 8)
4. Technician: Execute per work instruction (PROD-27 WIs)
5. QA: Verify acceptance criteria (PROD-28 Sec 2/3/4)
6. Technician + QA: Dual-sign data package
7. CMMS: Auto-commit to Hyperledger (PROD-28 Sec 9)
8. PROD-37 Twin: Ingest maintenance record → update health model
9. If NCR → PROD-28 CAPA process (8D)
```

### 12.2 Records Retention (10 years minimum)

| Record Type | Format | Storage |
|---|---|---|
| PM work orders + data packages | Native + PDF | PROD-37 + Hyperledger |
| CBM alerts + trend data | Native (time-series) | PROD-37 |
| NCR/CAPA (8D reports) | PDF | PROD-37 + CAPA tracker |
| Calibration certificates | PDF | PROD-37 + cal database |
| Overhaul reports | PDF + data packages | PROD-37 + Hyperledger |
| Spare parts traceability | QR + blockchain | Hyperledger Fabric |

---

## 13. Cross-Reference Matrix

### 13.1 Upstream Dependencies

| Document | Provides | Used In |
|---|---|---|
| PROD-04 | Drum design, FBG embed, flash sinter, liner specs | Sec 2, 8, 9 |
| PROD-06 | Vessel design, winding, aerogel, glaze, hydrotest | Sec 3, 8, 9 |
| PROD-08 | Carousel, molds, slug cooling, bearing specs | Sec 7, 8, 9 |
| PROD-09 | Port valves, Ti₃AlC₂ actuators, ZrO₂ pistons | Sec 4, 8, 9 |
| PROD-10 | Power electronics, GaN modules, resonance, ZVS | Sec 5, 6, 8, 9 |
| PROD-25 | Structural life limits, fatigue, NDT intervals | Sec 2, 3, 7, 11 |
| PROD-27 | Manufacturing WIs, FAT procedures, bolt ceremony | Sec 8, 12 |
| PROD-28 | Acceptance criteria, NDT procedures, NCR/CAPA, SAT | Sec 2-7, 11, 12 |
| PROD-29 | Commissioning baselines, SOPs, operational KPIs | Sec 1, 8, 11 |
| FOLLOW-04 | Port valve thermal actuation life | Sec 4, 8 |
| FOLLOW-05 | BFRP vessel filament winding life | Sec 3, 8 |
| FOLLOW-07 | Slug mold thermal cycling life | Sec 7, 8 |
| FOLLOW-08 | PEEK CF40 seal engineering life | Sec 3, 8 |
| FOLLOW-12 | Shredder blade wear life | Sec 9 |

### 13.2 Downstream Dependencies

| Document | Consumes | Interface |
|---|---|---|
| PROD-31 | OPEX model (labor, parts, downtime), overhaul schedule | Economics input |
| PROD-32 | Compliance evidence (PSM, ASME, IEEE 693) | Permitting input |
| PROD-34 | Training curriculum, competency matrix | Training input |
| PROD-37 | Maintenance data for twin (FBG, AE, vibration, NCR) | Twin input |
| PROD-38 | ECO process for maintenance procedure changes | CM input |
| PROD-39 | T&E specification (maintenance validation tests) | Test spec input |

### 13.3 Cross-Reference Table

| Section | Upstream Refs | Downstream Refs |
|---|---|---|
| 1 Maintenance Strategy | PROD-23, 26, 28 | PROD-30, 31, 37 |
| 2 Drum Maintenance | PROD-04, 09, 25, 27, 28, FOLLOW-04 | PROD-29, 30, 31 |
| 3 Vessel Maintenance | PROD-06, 25, 27, 28, FOLLOW-05 | PROD-29, 30, 31 |
| 4 Port Valve Maintenance | PROD-09, 28, FOLLOW-04, 08 | PROD-29, 30, 31 |
| 5 Coil Bank Maintenance | PROD-10, 28 | PROD-29, 30, 31 |
| 6 Power Electronics Maintenance | PROD-10, 23, 26, 28 | PROD-29, 30, 31 |
| 7 Frame/Carousel/Bearings | PROD-08, 25, 28, FOLLOW-07, 12 | PROD-29, 30, 31 |
| 8 Major Overhaul | PROD-04, 06, 08, 09, 10, 22, 27, 28, 29 | PROD-29, 30, 31, 37 |
| 9 Consumables & Wear Parts | PROD-04, 06, 08, 09, 10, 12, 27 | PROD-29, 30, 31, 33 |
| 10 Spare Parts Logistics | PROD-12, 22, 28 | PROD-29, 30, 31, 33 |
| 11 Predictive Maintenance | PROD-28, 37, FOLLOW-29 | PROD-29, 30, 31, 37 |
| 12 Documentation | PROD-22, 28, 37, 38 | PROD-29, 30, 31, 37, 38 |

---

## Appendix A: PM Schedule Master Table (PROD-30-A)

| System | Task | Frequency | Duration | Personnel | Window |
|---|---|---|---|---|---|
| **Drum** | UT Phased Array | Annual | 8 hr | NDT LII + ME | Annual outage |
| **Drum** | CT High-Res | Biennial | 8 hr | NDT LIII | Biennial outage |
| **Drum** | FBG Cal Verify | Monthly | 2 hr | SIS Eng | Monthly window |
| **Drum** | Dimensions | Annual | 4 hr | Metrology | Annual outage |
| **Drum** | Liner pins | Annual | 2 hr | ME | Annual outage |
| **Vessel** | AE Review | Continuous | Auto | Auto | N/A |
| **Vessel** | UT Phased Array | Annual | 8 hr | NDT LII | Annual outage |
| **Vessel** | Hydrotest | 5 yr | 4 hr | ME + QA | 5-yr outage |
| **Vessel** | Visual (VT-1) | Monthly | 1 hr | Tech | Monthly window |
| **Vessel** | IR Thermography | Monthly | 2 hr | ME | Monthly window |
| **Vessel** | Aerogel density | Annual | 4 hr | Metrology | Annual outage |
| **Port Valves** | Actuation check | Quarterly | 4 hr | ME | Quarterly outage |
| **Port Valves** | Leak test | Quarterly | 2 hr | ME | Quarterly outage |
| **Port Valves** | Braze UT | Annual | 4 hr | NDT LII | Annual outage |
| **Coil Bank** | Resonance/Q/ZVS | Monthly | 4 hr | EE | Monthly window |
| **Coil Bank** | Cold plate leak | Quarterly | 2 hr | ME | Quarterly outage |
| **Coil Bank** | PEX-a integrity | Annual | 2 hr | ME | Annual outage |
| **Power Elec** | DC link/ZVS/thermal | Monthly | 4 hr | EE | Monthly window |
| **Power Elec** | GIC ride-through | Quarterly | 2 hr | EE + SIS | Quarterly outage |
| **Power Elec** | EMI | Annual | 4 hr | EE | Annual outage |
| **Power Elec** | SIF injection | Quarterly | 4 hr | SIS Eng | Quarterly outage |
| **Frame** | Dimensions | Annual | 2 hr | Metrology | Annual outage |
| **Frame** | Isolator stiffness | Biennial | 4 hr | ME | Biennial outage |
| **Carousel** | Indexing | Monthly | 1 hr | Tech | Monthly window |
| **Bearings** | Vibration trend | Continuous | Auto | Auto | N/A |
| **Bearings** | Inspection | 2000 batches | 8 hr | ME | Scheduled |
| **Molds** | Dimensions | Quarterly | 2 hr | Metrology | Quarterly outage |

---

## Appendix B: Wear Parts BOM (PROD-30-B)

| Part | Assembly | Qty/Forge | Life | Unit Cost | Annual Cost (8 batches/day) |
|---|---|---|---|---|---|
| ZrB₂-SiC Drum (refurb) | A-01/03 | 1 | 500 batches | $180,000 | $1,051,200 |
| Zone A Liner (Ti₃AlC₂) | A-02 | 1 | 250 batches | $45,000 | $525,600 |
| Zone B Liner (3Y-TZP) | A-02 | 1 | 250 batches | $38,000 | $443,800 |
| Zone C Liner (ZrO₂ foam) | A-02 | 1 | 500 batches | $22,000 | $128,480 |
| PEEK CF40 Seals (24) | A-06/07 | 1 set | 1000 batches | $12,000 | $35,040 |
| Port Valve Actuators (8) | A-04 | 1 set | 2000 cycles | $180,000 | $262,800 |
| ZrO₂ Pistons (8) | A-04 | 1 set | 500 batches | $8,000 | $46,720 |
| GaN Modules (8) | A-10 | 1 set | 50,000 hrs | $240,000 | $350,400 |
| FBG Interrogator | A-11 | 1 | 5 years | $85,000 | $17,000 |
| Bearings (carousel) | A-12 | 1 set | 35,800 hrs | $35,000 | $71,540 |
| In Foil TIM | A-10 | 20 rolls/yr | 500 batches | $250/roll | $5,000 |
| Braze Paste | A-04 | 10 syr/yr | 500 batches | $180/syr | $1,800 |

**Total Annual Consumables: ~$2.9M**

---

## Appendix C: Spare Parts Stocking Levels (PROD-30-C)

| Part | Class | On-Site | Regional (30-day) | Factory (90-day) | Total |
|---|---|---|---|---|---|
| Refurbished Drum | A | 0 | 1 | 1 | 2 |
| Refurbished Vessel | A | 0 | 1 | 1 | 2 |
| Coil Zone Set (8) | A | 0 | 1 set | 1 set | 2 sets |
| Inverter Module Set (8) | A | 0 | 1 set | 1 set | 2 sets |
| TSN Switch | A | 1 | 1 | 2 | 4 |
| PTP Grandmaster | A | 1 | 0 | 1 | 2 |
| FBG Interrogator | A | 1 | 1 | 1 | 3 |
| Graphite Die | B | 0 | 0 | 1 | 1 |
| Winding Mandrel | B | 0 | 0 | 1 | 1 |
| ZrO₂ Bolt Set (24) | B | 1 | 1 | 2 | 4 |
| Carousel Mold Set | B | 1 | 0 | 1 | 2 |

---

## Appendix D: Predictive Thresholds (PROD-30-D)

| Parameter | Baseline | Warning | Alarm | Auto-Action |
|---|---|---|---|---|
| FBG channel drift | 0 nm/1000hrs | 0.25%/1000hrs | 0.5%/1000hrs | NCR at Λ>10 |
| AE hit rate (vessel) | 5 hits/min | 10 hits/min | 20 hits/min | Alert + NCR |
| Felicity ratio | 1.2 | 1.05 | 1.0 | NCR |
| Bearing vibration RMS | 0.5 g | 1.0 g | 1.5 g | NCR + reduce RPM |
| Thermal model residual | 0.5°C | 1.5°C | 2.0°C | NCR + re-identify |
| POF attenuation | 0.15 dB/m | 0.2 dB/m | 0.25 dB/m | NCR |
| Capacitor ESR | 1.0× initial | 1.25× | 1.5× | Schedule replacement |
| SIF response time | 25 ms | 35 ms | 45 ms | NCR + partial stroke |

---

## Appendix E: Overhaul Procedure Index (PROD-30-E)

| Procedure | Document | Rev | Last Updated |
|---|---|---|---|
| Drum removal/installation | PROD-30-WI-001 | A | 2026-11 |
| Vessel flange bolt ceremony | PROD-30-WI-002 | A | 2026-11 |
| FBG splice + calibration | PROD-30-WI-003 | A | 2026-11 |
| Coil zone cold plate connection | PROD-30-WI-004 | A | 2026-11 |
| GaN module hot-swap | PROD-30-WI-005 | A | 2026-11 |
| Bearing cartridge replacement | PROD-30-WI-006 | A | 2026-11 |
| PEX-a circuit replacement | PROD-30-WI-007 | A | 2026-11 |
| TSN switch replacement | PROD-30-WI-008 | A | 2026-11 |
| PTP grandmaster replacement | PROD-30-WI-009 | A | 2026-11 |
| Port valve actuator replacement | PROD-30-WI-010 | A | 2026-11 |
| Liner zone replacement | PROD-30-WI-011 | A | 2026-11 |

---

## Appendix F: Competency Matrix (PROD-30-F)

| Task | ME Tech | EE Tech | SIS Eng | NDT LII | NDT LIII | Metrology | QA Eng |
|---|---|---|---|---|---|---|---|
| Drum UT | | | | X | A | | R |
| Drum CT | | | | | X | | R |
| Vessel UT | | | | X | A | | R |
| Vessel hydrotest | X | | | | | | R |
| Port valve actuation | X | | | | | | R |
| Coil resonance | | X | | | | | R |
| Module thermal soak | | X | | | | | R |
| GIC ride-through | | X | X | | | | R |
| SIF injection | | | X | | | | R |
| FBG calibration | | | X | | | X | R |
| Bolt ceremony | X | | | | | | R |
| CMM dimensions | | | | | | X | R |

*X = Execute, A = Approve, R = Review*

---

*End of CSMFAB000000000130 — PROD-30 Maintenance & Sustainment*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*