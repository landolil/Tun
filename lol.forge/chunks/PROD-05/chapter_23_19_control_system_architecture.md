## 19. Control System Architecture Details

### 19.1 Signal Processing Chain (FPGA Implementation)

```
FBG Optical Demux (8 channels × 4 FBG/channel = 32 wavelengths)
    ↓ 100 kS/s per channel
FPGA: Real-time FFT (1024-point, 50% overlap)
    ↓
Peak Detection: Spectral centroid + prominence
    ↓
Resonance Map Update: Kalman filter (state = resonance frequencies)
    ↓
Drive Profile Generator: Next 100 ms frequency/amplitude/phase
    ↓
8× KNbO₃-BaTiO₃ ASIC Drivers (Class-D, 95% efficiency)
    ↓
Transducer Array
    ↓
FBG Response → Loop closes at 1 kHz
```

### 19.2 Liberation Index Estimation Model

**Indirect estimator (real-time):**
$$\widehat{LI}(t) = a_0 + a_1 \cdot \Delta BW(t) + a_2 \cdot \Delta P_{rms}(t) + a_3 \cdot \text{Kurtosis}(t)$$

Where $\Delta BW$ = FBG spectral bandwidth increase, $\Delta P_{rms}$ = RMS pressure change,
Kurtosis = non-Gaussianity from discrete grain releases.

**Calibration (from 50 validation batches):**
$a_0 = 12.3$, $a_1 = 0.45$, $a_2 = 0.32$, $a_3 = 8.7$
$R^2 = 0.87$ — sufficient for adaptive control.

**Direct verification (every 5th batch):**
Automated 100 g sample → inline sieve shaker (5 min) → XRF → true LI → Kalman update.

---
