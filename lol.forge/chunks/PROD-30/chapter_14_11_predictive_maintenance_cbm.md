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