# Modern numerical relay algorithm (SEL-487E, GE T60, Siemens 7UT85)
def differential_restraint(I_diff, I_restraint, harmonics):
    # Standard: 2nd harmonic (inrush), 5th harmonic (overexcitation)
    # GIC-enhanced: Add 3rd, 7th harmonic restraint
    H2 = harmonics[2] / harmonics[1]  # 2nd harmonic ratio
    H3 = harmonics[3] / harmonics[1]  # 3rd harmonic ratio (GIC)
    H5 = harmonics[5] / harmonics[1]  # 5th harmonic ratio
    H7 = harmonics[7] / harmonics[1]  # 7th harmonic ratio (GIC)
    
    restraint_factor = max(
        k2 * H2,      # Inrush
        k3 * H3,      # GIC saturation (NEW)
        k5 * H5,      # Overexcitation
        k7 * H7       # GIC saturation (NEW)
    )
    
    operate = abs(I_diff) > (slope * abs(I_restraint) + min_pickup) * (1 + restraint_factor)
    return operate
```
**Settings**: k3 = k7 = 0.15–0.20 (vs. k2 = 0.15, k5 = 0.35)

**Neutral Overcurrent (50N/51N) — GIC Blindness:**
GIC flows in transformer neutral continuously. Standard 51N sees this as persistent ground fault.

**Solutions:**
1. **GIC-Blind Neutral CT**: Use CT with high-pass filter (blocks DC, passes 50 Hz)
   - Not practical for retrofit (requires new CT)
2. **Adaptive Pickup**: 
   ```
   51N_pickup = base_pickup + k_GIC × I_GIC_measured
   ```
   Where I_GIC_measured from Hall CT (Section 3.5)
3. **Directional Neutral (67N)**: 
   - Polarize with zero-sequence voltage (3V₀)
   - GIC produces no 3V₀ → 67N restrains correctly
   - **Recommended for all 220/110 kV mining transformers**

**Distance Relay (21) — Impedance Distortion:**
Harmonic voltage distorts fundamental phasor measurement.
- DFT-based relays (full-cycle window): Reject harmonics if window = 1 cycle
- Sub-cycle relays (cosine filter): Vulnerable to harmonic leakage
- **Setting**: Use full-cycle DFT, enable harmonic rejection, widen Zone 2/3 by 10%

**Coordination Strategy for SEN:**

| Protection Zone | Primary Relay | Backup Relay | GIC Coordination Action |
|-----------------|---------------|--------------|------------------------|
| 500/220 kV Auto | 87T (diff) + 51N | 51N (HV side) | Enable 3rd/7th harmonic restraint; 67N directional |
| 500 kV Line | 21 (dist) + 67 | 51 (OC) | Full-cycle DFT; widen zones 10% |
| 220/110 kV Mining | 87T + 67N | 51N (LV side) | Mandatory 67N; adaptive 51N pickup |
| 220 kV Line | 21 + 67 | 51 | Full-cycle DFT; SVC coordination |
| SVC/STATCOM | 51V (overvoltage) | 27 (undervoltage) | GIC-mode activation blocks 51V |

**Chile Relay Fleet Modernization (PET 2025):**
- **Legacy Electromechanical**: ~15% of fleet — replace (no harmonic restraint)
- **First-Gen Numerical (pre-2010)**: ~30% — firmware upgrade for 3rd/7th harmonic restraint
- **Modern Numerical (post-2015)**: ~55% — configure GIC settings, enable adaptive pickup

**Relay Settings Database (CEN Standard):**
```yaml