## 6. Fleet Optimization

### 6.1 Bayesian Parameter Updates

The fleet digital twin maintains posterior distributions over 20 key parameters (PROD-24 Table 10.1):

| Parameter | Prior | Likelihood | Posterior Update |
|-----------|-------|------------|------------------|
| Aerogel λ | N(0.010, 0.001) | FBG strain → ΔT inference | Monthly MCMC (1000 samples) |
| Curie width | N(8°C, 1°C) | Zone 7 power drop sharpness | Per batch (online RLS) |
| FBG drift rate | N(0.5 nm/hr, 0.1) | Reference FBG common-mode | Continuous (Kalman) |
| Char growth rate | LogN(0.1 mm/min, 0.3) | Stage 3 mass loss + T profile | Per batch |
| Convective h | N(CFD, 20%) | Gas temp + mass balance | Per stage (CFD-coupled) |

Updates use **Hamiltonian Monte Carlo** on the HPC (512 cores, 4 chains, 1000 warmup + 1000 samples). Posterior means update ROM coefficients; posteriors propagate to PROD-33 CMF-RQT tensor for feedstock planning.

### 6.2 Fleet-Level CMF-RQT/RCT/HSCT Tensor Feeds

The digital twin consumes and produces the three cross-document tensors:

**CMF-RQT (PROD-33 Supply Chain)**: Feedstock composition → predicted recovery, energy, slag
```
CMF_RQT[feedstock_UUID] = E[recovery | composition, twin_params]
```
Updated per batch from actual vs. predicted.

**RCT (PROD-34 Training)**: Operator competency → scenario performance
```
RCT[operator_ID, scenario] = P(pass | competency, twin_difficulty)
```
Updated per training session; feeds personalized remediation.

**HSCT (PROD-35 HFE)**: Human-system coupling → error rates, response times
```
HSCT[operator_ID, task] = (error_rate, response_time, cognitive_load)
```
Updated per shift; feeds HMI adaptation and staffing model.

### 6.3 Continuous Optimization Loop

```
Daily Fleet Optimization (02:00 UTC):
  1. Aggregate prior day batches across all Forges (N sites)
  2. Update twin parameter posteriors (HMC)
  3. Re-optimize PID gains per zone (Bayesian optimization, 50 evals)
  4. Re-optimize RPM profiles per stage (genetic algorithm, 200 pop)
  5. Re-optimize flux rates per category (gradient-based, adjoint)
  6. Validate: simulate 100 virtual batches → check SI > 0.99, energy < budget
  7. If improvement > 2%: stage ECO for PID/RPM/flux updates (PROD-38)
  8. Publish updated parameters to all Forges via data diode (OT→IT→OT at next site)
```

This is the **fleet learning loop** — each Forge's data improves all Forges' parameters.

---
