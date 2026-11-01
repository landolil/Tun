# Test Sequence per CSMFAB-GIC-001
def gic_immunity_test(motor, drive):
    # 1. Baseline characterization
    baseline = characterize(motor, drive)
    
    # 2. DC bias injection (0-300 A via neutral simulator)
    for I_dc in [0, 50, 100, 150, 200, 250, 300]:
        inject_dc_bias(drive, I_dc)
        measure_torque_ripple()
        measure_vibration()
        measure_temp_rise()
        check_demag()
    
    # 3. Harmonic voltage injection (THD_V up to 15%)
    for thd in [0, 5, 8, 10, 15]:
        inject_harmonic_voltage(drive, thd)
        verify_ride_through()
    
    # 4. Combined GIC + harmonic stress
    inject_dc_bias(drive, 200)
    inject_harmonic_voltage(drive, 10)
    run_duration(30 min)
    verify_no_damage()
    
    # 4. Post-test characterization
    final = characterize(motor, drive)
    assert final.torque > 0.95 * baseline.torque
    assert final.flux > 0.98 * baseline.flux
    
    return PASS/FAIL
```

**CSM Portfolio GIC Immunity Summary:**
| GIC Tier | CSM Products | % of Portfolio Revenue (2026) | Strategic Priority |
|----------|--------------|-------------------------------|-------------------|
| **Tier 0 (Absolute)** | CSMFAB-001, 002, 003, 050, 200 | 45% | **HIGHEST** — Core franchise |
| **Tier 1 (Very High)** | CSMFAB-010, 100 | 25% | **HIGH** — Growth engines |
| **Tier 2+ (Legacy)** | Older NdFeB designs | 30% | **PHASE OUT** by 2028 |

**Strategic Implication**: CSM's motor portfolio is **already 70% GIC-immune (Tier 0/1)**. The transition to Fe₁₆N₂ (CSMFAB-010) and SmCo (CSMFAB-100) for high-performance applications completes the GIC-resilient portfolio. **No NdFeB in new designs after 2025.**

**Recommendation**: Accelerate CSMFAB-010 (Fe₁₆N₂) and CSMFAB-100 (SmCo) commercialization to align with Aegis-Forge Gen-II deployment (2028). The CSM motor portfolio is the **enabling technology** for GIC-immune Aegis-Forge clusters.

