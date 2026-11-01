## Appendix C: FBG Interrogator Design & Signal Processing

### C.1 PMMA POF FBG Interrogator Architecture

**Requirements:**
- 384 sensors, 1 kHz each = 384 kS/s total
- Wavelength range: 1510-1590 nm (80 nm)
- Resolution: 10 pm (0.1C)
- Dynamic range: >30 dB
- All-dielectric, radiation hard

**Architecture: 8 Parallel Interrogators (One Per Zone)**

Each interrogator:
```
[TUNABLE LASER: 1510-1590 nm, 10 nm sweep] 
    to [OPTICAL CIRCULATOR] 
        to [ZONE FIBER: 48 FBGs in 10 nm band]
        to [IN_GAAS PHOTODIODE + TIA]
            to [FPGA: Peak detection + wavelength calc]
```

**Tunable Laser Specs:**
- Type: MEMS-VCSEL or sampled-grating DBR
- Sweep rate: 10 kHz (100 us per 10 nm sweep)
- Linearity: <0.1% (calibrated)
- Output power: 10 mW (0 dBm)
- SMSR: >40 dB

**Photodiode + TIA:**
- InGaAs, 1 mm diameter, 1.5 A/W @ 1550 nm
- Transimpedance: 10 kOhm, bandwidth 100 MHz
- Noise floor: 5 pA/rtHz → 5 nA rms in 1 MHz
- NEP: 3 pW/rtHz

**Signal Chain SNR:**
Reflected power per FBG: 10 mW * 0.1% reflectivity * 0.5 (circulator) * 0.5 (fiber loss) = 2.5 uW
Photocurrent: 2.5 uW * 1.5 A/W = 3.75 uA
SNR = 3.75 uA / 5 nA = 750 = 57 dB ✓ (>30 dB required)

**Wavelength Calculation:**
Lambda_B = Lambda_start + (t_peak / T_sweep) * Delta_Lambda
Where t_peak = time of peak detection, T_sweep = 100 us, Delta_Lambda = 10 nm
Resolution: 10 pm requires time resolution = (10 pm / 10 nm) * 100 us = 100 ns
FPGA timestamp resolution: 1 ns (1 GHz clock) → 100x margin ✓

### C.2 Autoencoder Anomaly Detection - Detailed Architecture

**Training Data:** 500 batches x 384 sensors x 1000 time steps = 192M samples
**Preprocessing:** 
- Per-sensor normalization (mean=0, std=1 over training set)
- Temporal differencing (delta T between steps)
- Spatial smoothing (3x3 median filter across quadrants)

**Network Architecture:**
```
Input: 384 x 10 (10 ms window) = 3840 features
Encoder:
  Dense(1024) - ReLU - BatchNorm
  Dense(512) - ReLU - BatchNorm  
  Dense(256) - ReLU - BatchNorm
  Dense(128) - ReLU - BatchNorm
  Dense(16) - Linear (Latent Space)
Decoder:
  Dense(128) - ReLU
  Dense(256) - ReLU
  Dense(512) - ReLU
  Dense(1024) - ReLU
  Dense(3840) - Linear
Loss: MSE + 0.1*L1(latent) for sparsity
```

**Training:** Adam, lr=1e-3, 100 epochs, batch=256
**Inference Latency:** <1 ms on Xilinx Zynq UltraScale+ (FPGA)

**Anomaly Threshold:**
- Reconstruction error per sensor: epsilon_i = (x_i - x_hat_i)^2
- Global threshold: mean(epsilon) + 3*std(epsilon) over training
- Per-sensor threshold: 3-sigma of that sensor's error distribution
- Alert: any sensor > threshold for >3 consecutive frames

**Detectable Anomalies:**
- FBG failure (signal loss, wavelength drift)
- Thermal runaway (local hot spot > 50C above neighbors)
- Coil fault (asymmetric heating pattern)
- Feedstock anomaly (unexpected material composition)
- Resonance loss (phase angle divergence)

---
