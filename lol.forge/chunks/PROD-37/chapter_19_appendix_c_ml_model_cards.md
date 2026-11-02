## Appendix C: ML Model Cards

### C.1 FBG Autoencoder (Anomaly Detection)

| Field | Value |
|-------|-------|
| **Model ID** | FBG-AE-v3.2.1 |
| **Type** | Variational Autoencoder (β=0.1) |
| **Input** | 384-dim FBG temperature vector @ 10 Hz |
| **Latent** | 32-dim Gaussian (μ, logσ) |
| **Training Data** | 6 months nominal (2.6M frames), 12 Forge sites |
| **Validation** | 30-day holdout + 500 injected anomalies |
| **Metrics** | FPR: 0.8%/day, TPR: 94% @ Λ>3σ, Latency: 1.2 ms |
| **Framework** | PyTorch 2.1, ONNX export for HPC inference |
| **Version Control** | Git tag `ml/fbg-ae-v3.2.1`, SBOM in PROD-38 |

### C.2 ROM Surrogate (Twin Acceleration)

| Field | Value |
|-------|-------|
| **Model ID** | ROM-POD-GAL-v2.1.3 |
| **Type** | POD-Galerkin (12 modes, quadratic) |
| **Input** | 8-dim (zone powers + RPM + feedstock) |
| **State** | 12-dim modal coefficients |
| **Output** | 384-dim temperature reconstruction |
| **Training** | 1000 FEA snapshots (PROD-24 CT-01-10) |
| **Metrics** | Speedup: 118×, RMS: 4.2°C, Stress: 8 MPa |
| **Export** | JSON (Section 3.2 contract) |
| **Version Control** | Git tag `rom/pod-gal-v2.1.3`, PROD-24 Appendix C |

### C.3 CPAT Fusion (Cyber-Physical Anomaly)

| Field | Value |
|-------|-------|
| **Model ID** | CPAT-FUSION-v1.4.0 |
| **Type** | Multi-source likelihood fusion (Naive Bayes) |
| **Sources** | 8 (FBG, TSN, SIF, PTP, Firmware, Access, AE, Fleet) |
| **Output** | Λ_CP (log-likelihood ratio), SEV level |
| **Calibration** | Fleet history (18 months, 5 sites) |
| **Metrics** | SEV-1: 0/yr, SEV-2: 2/yr, SEV-3: 12/yr (target) |
| **Update** | Quarterly retrain on new incidents |
| **Version Control** | Git tag `cpat/fusion-v1.4.0`, PROD-36 Appendix H |

---

*End of PROD-37 Data Management & Digital Twin*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*
*Document Number: CSMFAB000000000137 | Revision: 1.0*