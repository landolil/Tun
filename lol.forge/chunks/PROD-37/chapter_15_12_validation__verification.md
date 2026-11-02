## 12. Validation & Verification

### 12.1 V&V Plan (ASME V&V 40 Alignment)

| V&V Level | Activity | Acceptance | PROD-28 Test |
|-----------|----------|------------|--------------|
| **Code Verification** | Method of Manufactured Solutions (MMS) for ROM | L2 error < 1% | CT-01 |
| **Solution Verification** | Grid Convergence Index (GCI) on twin mesh | GCI < 2% | CT-02 |
| **Validation Experiment** | 10 batch cascade vs. twin prediction | SI ±0.05, Energy ±5% | CT-03 through CT-10 |
| **UQ** | Polynomial Chaos (20 params, 3rd order) | 95% CI coverage > 0.95 | CT-11 |
| **Sensitivity** | Sobol indices (total order) | Top 5 params explain >80% variance | CT-12 |

### 12.2 ROM Acceptance Criteria

| Metric | Target | Measurement |
|--------|--------|-------------|
| Speedup | ≥ 100× | Wall-clock vs. full FEA |
| Temperature RMS | < 5°C | vs. 384 FBG (validated batches) |
| Stress RMS | < 10 MPa | vs. FA-01 strain gauges |
| Energy balance | < 2% | Input vs. output + storage |
| Mode count | 12 | POD energy capture > 99.9% |

### 12.3 ML Model Validation (FOLLOW-29)

| Metric | Target | Method |
|--------|--------|--------|
| False positive rate | < 1%/day | 90-day nominal operation |
| Detection latency | < 10 frames (1 s) | Injected anomaly test set |
| Root cause accuracy | > 90% | Labeled anomaly database |
| Retraining frequency | Monthly (auto) | Pipeline Sec 5.3 |
| Adversarial robustness | > 3σ perturbations | FGSM/PGD test suite |

---
