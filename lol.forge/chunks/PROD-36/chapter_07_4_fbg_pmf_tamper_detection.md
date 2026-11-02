## 4. FBG/PMF Tamper Detection

### 4.1 FBG as Security Sensor

The 384 FBG channels (125 Hz each) serve dual purpose: process temperature/strain measurement **and** physical tamper detection.

| Tamper Vector | Detection Mechanism | Threshold |
|---------------|---------------------|-----------|
| **Fiber Tap** | Optical power drop >0.5 dB at interrogator | Immediate alarm |
| **Wavelength Shift** | Unexpected Δλ >0.1 nm (non-thermal) on any channel | Auto-NCR, Λ > 10 |
| **Channel Count** | Missing channels (expected 384, detected <380) | Immediate alarm |
| **Interrogator Replacement** | Serial number mismatch, firmware hash mismatch | Boot-time verification |
| **WDM/TDM Timing** | Slot timing deviation >1% | Continuous monitor |

### 4.2 PMF (Process Monitoring Fiber) Security

| Sensor Type | Security Function | Anomaly Response |
|-------------|-------------------|------------------|
| **FBG Temperature** | Process + tamper | Λ > 10 → auto-NCR + SL alert |
| **FBG Strain** | Drum flange integrity + tamper | Felicity ratio <1.0 → SIF-03 |
| **POF Level** | Slag/metal interface + tamper | Unexpected level → Port valve SIF |
| **Pyrometer** | Port window temperature + tamper | Window coating tamper → alarm |
| **AE Vibration** | Crack detection + tamper | Non-process impacts → classification |

### 4.3 Tamper Detection Algorithm (PROD-37 Twin)

```python