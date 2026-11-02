## 2. Sensor Fusion Framework

### 2.1 Sensor Catalog with Rates

| Sensor Type | Channels | Rate | Transport | Latency Budget | Purpose |
|-------------|----------|------|-----------|----------------|---------|
| FBG Temperature | 384 | 125 Hz | PMMA POF, WDM+TDM | <1 ms | Drum wall thermal map, tamper detection |
| FBG Strain | 96 | 125 Hz | PMMA POF, WDM+TDM | <1 ms | Drum stress, centrifugal load, aerogel closure |
| SIF SOE | 24 | Event | TSN VLAN 10 | <50 μs | Safety trip sequence of events |
| EM Power | 32 | 1 kHz | TSN VLAN 20 | <1 ms | Zone power, voltage, current, PF |
| Thermocouple (backup) | 24 | 10 Hz | TSN VLAN 30 | <10 ms | FBG validation, cold-junction reference |
| Vibration (AE) | 16 | 50 kHz | TSN VLAN 30 | <100 μs | Crack detection, bearing health |
| Gas Analysis | 4 | 1 Hz | TSN VLAN 40 | <1 s | HCl, SO₂, CO₂, H₂ ppm |
| PTP Sync | N/A | 128 Hz | TSN VLAN 0 | <100 ns | Grandmaster → boundary clocks |

### 2.2 Multi-Rate Fusion Algorithm

The sensor fusion operates as a multi-rate Kalman filter with physics-constrained prediction:

```
State vector x ∈ ℝⁿ: [T_drum(384), σ_drum(96), P_zone(8), ω, m_charge, X_composition, ...]

Prediction (1 kHz L1):
  x[k+1|k] = f(x[k], u[k]) + w[k]          // f = thermal-admittance operator (PROD-24)
  P[k+1|k] = F[k]P[k]Fᵀ[k] + Q[k]           // F = Jacobian of f

Correction (multi-rate):
  y_FBG[125 Hz]   = H_FBG x + v_FBG        // 384 T + 96 ε measurements
  y_EM[1 kHz]     = H_EM x + v_EM          // 8 zone power/voltage/current
  y_SIF[Event]    = H_SIF x + v_SIF        // 24 SIF states (binary)
  y_AE[50 kHz]    = H_AE x + v_AE          // 16 AE channels (downsampled)
  y_Gas[1 Hz]     = H_Gas x + v_Gas        // 4 gas species

Update: K[k] = P[k|k-1]Hᵀ(HP[k|k-1]Hᵀ + R)⁻¹
        x[k|k] = x[k|k-1] + K[k](y[k] - Hx[k|k-1])
```

**Key innovation**: The measurement matrices H are time-varying — FBG channels drop out at >800°C (PMMA degradation), so the filter dynamically reconfigures H_FBG based on channel health from PROD-28 auto-NCR (Λ > 10 on >5 channels = channel dropout).

### 2.3 FBG Channel Health & Tamper Integration

Per PROD-36, FBG channels serve dual purpose — process metrology AND security sensing:

```python
def fbg_health_check(channel_data, twin_autoencoder):
    # Process health
    snr = channel_data.optical_power / channel_data.noise_floor
    wavelength_drift = abs(channel_data.λ - channel_data.λ_nominal)
    
    # Tamper detection (PROD-36 CPAT)
    Λ_tamper = twin_autoencoder.anomaly_score(channel_data.window_10Hz)
    
    if snr < 10 or wavelength_drift > 0.5:  # nm
        return ChannelStatus.DEGRADED
    elif Λ_tamper > 10:
        return ChannelStatus.TAMPER_SUSPECT  # Auto-NCR triggered
    else:
        return ChannelStatus.NOMINAL
```

Degraded channels are excluded from thermal reconstruction but logged for tamper forensics. Tamper-suspect channels trigger immediate SIF-24 evaluation and CPAT update.

---
