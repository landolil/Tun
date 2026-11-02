## 5. ML Anomaly Detection

### 5.1 Autoencoder Architecture

The ML anomaly detector (FOLLOW-29) is a deep autoencoder trained on the 384-dim FBG state at 10 Hz:

```
Encoder:     384 → 128 → 64 → 32 (latent)
Latent:      z ∈ ℝ³²  (compressed FBG thermal state)
Decoder:     32 → 64 → 128 → 384 (reconstruction)
Loss:        MSE(x, x̂) + λ·KL(q(z|x) || p(z))  // VAE with β=0.1
Activation:  Swish (encoder), Linear (decoder output)
Training:    Adam, lr=1e-3, batch=256, 500 epochs on 6-month nominal data
```

**Anomaly score** per 10 Hz frame:
```
Λ_ML = ||x - x̂||²₂ / σ²_nominal
```
where σ²_nominal is the running variance of reconstruction error on validated nominal frames.

Threshold: **Λ_ML > 3σ → SEV-3 anomaly card** on HMI (PROD-35)
Threshold: **Λ_ML > 10σ → SEV-2 auto-NCR + CPAT update** (PROD-36)
Threshold: **Λ_ML > 100σ → SEV-1 SIF-24 evaluation + twin resync**

### 5.2 Multi-Source Anomaly Fusion (CPAT Integration)

Per PROD-36, the Cyber-Physical Anomaly Tensor (CPAT) fuses ML with other sources:

```
CPAT_fused = logit( P(obs | intrusion) / P(obs | nominal) )

obs = {
  FBG:        Λ_ML from autoencoder,
  TSN:        frame_rate_anomaly, VLAN_crossing, timing_violation,
  SIF:        unexpected_trip, vote_mismatch, SOE_timestamp_drift,
  PTP:        offset > 1 μs, grandmaster_failover,
  Firmware:   hash_mismatch, SBOM_drift, boot_verification_fail,
  Access:     JIT_unauthorized, badge_anomaly, USB_event,
  AE:         non_process_hits, crack_growth_signature
}

P(obs | intrusion) = ∏ P(source_i | intrusion)  [conditional independence]
P(obs | nominal)   = ∏ P(source_i | nominal)    [fleet baseline]
```

This runs at 10 Hz in the digital twin HPC, feeding SEV levels to PROD-36 IDS and PROD-35 HMI.

### 5.3 Scenario Auto-Generation for Training

Per PROD-34 (Training), the digital twin auto-generates simulator scenarios:

```
Monthly Scenario Generation Pipeline:
  1. Sample from fleet anomaly database (Λ_ML > 3σ events)
  2. Cluster by root cause (k-means on latent z, k=20)
  3. For each cluster centroid:
       a. Extract 300s pre-event trajectory
       b. Inject into PROD-37 twin with perturbed initial conditions
       c. Generate 50 Monte Carlo variants (±10% params)
       d. Label with root cause, severity, optimal operator actions
  4. Export as PROD-34 simulator scenario packs (JSON + initial conditions)
  5. Curate: Operator validation → remove unrealistic, add expert annotations
  6. Deploy to training fleet with RCT tensor update (PROD-34)
```

This closes the loop: **Process anomalies → Twin scenarios → Operator training → Better anomaly response.**

---
