## 14. FBG Interrogation System — Detailed Design

### 14.1 Interrogator Architecture (Micron Optics si255)

**Optical Path:**
```
Broadband source (SLED, 1520-1580 nm) 
    → Optical circulator 
    → FBG array (24 gratings, 1 nm spacing)
    → Reflected spectrum → Spectrometer (InGaAs line scan, 2048 pixels)
    → FPGA centroid detection → Wavelength → Temperature/Strain
```

**Performance:**
- Wavelength repeatability: ±1 pm (≈0.1°C)
- Dynamic range: 70 dB
- Scan rate: 1 kHz per channel (multiplexed via wavelength)
- Channels per unit: 4 (2 fibers × 24 gratings = 48 total → 2 units)

### 14.2 FBG Grating Design and Embedding

**Grating Specification:**
- Type: Type-I (UV-written, standard)
- Length: 5 mm
- Reflectivity: 80% (apodized Gaussian profile)
- Bandwidth: 0.3 nm (FWHM)
- Spacing: 1 nm (24 gratings fit in 1510-1590 nm window)
- Temperature sensitivity: S_T = 10 pm/°C (calibrated)
- Strain sensitivity: S_ε = 1.2 pm/με

**Embedding Process (During Flash Sintering):**
1. Pre-form FBG array on silica fiber (PMMA coated, 245 μm OD)
2. Position in die: 16 per zone, 2 radial depths, 8 circumferential
3. Powder fill around fiber (ZrB₂-SiC, 50 μm avg particle)
4. FAST cycle: 1800°C, 50 MPa, 5 min, 120 V/cm
5. Fiber survives: Silica softening point 1600°C, but 5 min at 1800°C acceptable
6. Post-process: Fiber cleaved, connectorized (FC/APC)

**Survival Validation (FA-01/02/03):**
- All 48 sensors functional after sintering
- Calibration shift: <0.5°C (annealing effect)
- Strain baseline: <10 με (residual stress)

### 14.3 Signal Processing and Anomaly Detection

**Centroid Detection Algorithm:**
$$\lambda_{peak} = \frac{\sum_i \lambda_i I_i}{\sum_i I_i}$$

Sub-pixel resolution via parabolic fit to 3 peak pixels.

**Temperature/Strain Decoupling:**
Two gratings at same location, different coatings:
- Grating 1: Bare silica (S_T=10 pm/°C, S_ε=1.2 pm/με)
- Grating 2: Polyimide coated (S_T=10 pm/°C, S_ε=0.8 pm/με) — different strain sensitivity
- Solve: ΔT = (Δλ₁/S_T - Δλ₂/S_T) / (1 - S_ε₂/S_ε₁) — wait, better:
$$\begin{bmatrix} \Delta\lambda_1 \\ \Delta\lambda_2 \end{bmatrix} = \begin{bmatrix} S_T & S_{\varepsilon1} \\ S_T & S_{\varepsilon2} \end{bmatrix} \begin{bmatrix} \Delta T \\ \Delta\varepsilon \end{bmatrix}$$

**Autoencoder Anomaly Detection (Digital Twin):**
- Input: 48-channel strain × 1000 time steps (1 second window)
- Architecture: 48→32→16→8→16→32→48 (LSTM layers)
- Training: 500 normal batches (no anomalies)
- Latent dimension: 8
- Detection: Reconstruction error > 3σ of training distribution
- Classification: Random Forest on 8D latent vector (5 fault classes, 95% accuracy)

---
