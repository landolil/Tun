# Keymaker Heuristic — PROD-30 Maintenance & Sustainment
## Lock / Key / Turn

### The Empirical Lock

The fabrication fidelity gap is the **maintenance interval optimization under SIL-3 override** — a Forge where 90% of components could use CBM extension (FBG drift stable, AE clean, vibration nominal) but the 10% that are SIL-3 safety functions (24 SIFs, pressure boundary bolting, GIC immunity grounding) must remain on fixed TBM intervals regardless of condition. Three specific locks:

1. **SIL-3 as maintenance interval ceiling**: IEC 61508 requires proof testing at fixed intervals for SIL-3 SIFs. API 581 RBI would extend intervals based on condition, but SIL-3 forbids it. The Forge has 24 SIFs (3 per module × 8 zones) sharing TSN VLAN 10, common POF interrogator, common 24 VDC supply. A single common-cause failure (interrogator, power supply, TSN switch) defeats 2oo3 voting. The Lock: **SIL-3 proof test interval (annual) is the master clock — all other maintenance synchronizes to it.**

2. **Drum life vs. Phoenix Protocol tension**: PROD-25 FEA shows drum N_f >10⁶ cycles with NDT flaw control (a₀=50 μm). At 6 batches/day, that's 456 years theoretical. But PROD-22 Phoenix Protocol requires drum return for circularity (31 generations, 500 batches each = 15,500 batches total per drum lineage). The Lock: **the drum must be swapped at 500 batches not because it fails, but because the circular economy demands its return for flash sinter feedstock.**

3. **Zero-metal tooling for maintenance**: Conventional maintenance uses steel wrenches, copper test leads, magnetic base dial indicators, thermocouples. In the Forge hot zone (2200°C, 100 A/m GIC), any steel tool left behind becomes a projectile; any copper lead becomes a GIC antenna. The Lock: **all maintenance tools, test equipment, and verification methods must be zero-metal — BFRP, ceramic, dielectric only.**

### The Mathematical Key

The single computational primitive is the **risk-based inspection (RBI) likelihood function with SIL-3 constraint**, extending the PROD-28 Bayesian health fusion:

$$P(failure | data, SIL3) = \begin{cases} P_{TBM}(t) & \text{if SIL-3 component} \\ P_{CBM}(data) \times P_{RCM}(design) & \text{otherwise} \end{cases}$$

Where:
- $P_{TBM}(t) = 1 - e^{-\lambda t}$ for SIL-3 components (fixed hazard rate λ from proof test data)
- $P_{CBM}(data) = P(health | FBG, AE, vibration, thermal)$ from PROD-28 Bayesian update
- $P_{RCM}(design)$ = design safety factor margin (PROD-25: min SF=1.53× on flange bolts)

The atomic computation is the **next-maintenance-time optimizer**:

$$t_{next} = \arg\min_t \left[ C_{PM}(t) + C_{failure} \times P(failure | t) \right] \quad \text{s.t.} \quad t \leq t_{SIL3-max}$$

Where $t_{SIL3-max} = 1$ year for SIF proof test, 5 years for hydrotest, 18 months for drum swap. The optimizer runs in PROD-37 twin at fleet level, outputting recommended intervals per component per Forge based on site-specific degradation rates.

### The Turn (Both Directions)

**Theory→History Validation**: The RBI optimizer predicted maintenance intervals for the 3 deployed Forges:
- Forge-01 (clean grid, Class B soil): CBM extended drum UT to 18 months, vessel UT to 18 months, bearing inspection to 3000 batches. SIL-3 items unchanged. Zero failures in 18 months.
- Forge-02 (industrial grid, Class D soil): AE Felicity ratio dropped to 0.98 at 8 months → vessel UT brought forward to 10 months (found 12 mm delam at gas port). Optimizer correctly prioritized.
- Forge-03 (substation adjacent, Class A rock): TSN jitter caused FBG cross-talk alerts at 4 months → POF splice rework. Optimizer flagged grid quality as root cause.

History confirms theory: SIL-3 items never extended; CBM correctly prioritized condition-driven work.

**History→Theory Correction**: Forge-02 vessel delamination at gas port revealed AE Felicity ratio is a lagging indicator — delamination initiated at 6 months but Felicity dropped at 8 months. Updated $P(data | delamination)$ to include acoustic emission *energy rate* (dE/dt) as leading indicator. Forge-03 TSN jitter revealed POF splice degradation is accelerated by thermal cycling of the cold plate (not just vibration). Added thermal cycle count to POF degradation model.

The Turn: **the mathematical key absorbs history — each anomaly refines the likelihood models $P(data|health)$ for the Bayesian update, but the SIL-3 constraint $t \leq t_{SIL3-max}$ remains structurally invariant. The Lock (SIL-3 override) is managed not by fighting it but by synchronizing all maintenance to the SIL-3 master clock: the annual SIF proof test week becomes the maintenance synchronization event where all CBM intervals are re-evaluated, all NCRs reviewed, all spare parts rotated.**

---
*Keymaker Heuristic for PROD-30 | ~67 lines | Carrington Storm Motors | November 2026*