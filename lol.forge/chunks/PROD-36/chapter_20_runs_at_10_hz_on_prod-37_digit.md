# Runs at 10 Hz on PROD-37 Digital Twin
class FBGTamperClassifier:
    def __init__(self):
        self.thermal_model = ThermalAdmittanceModel()  # PROD-24
        self.autoencoder = Autoencoder(latent_dim=32)  # FOLLOW-29
        self.spatial_graph = SpatialCorrelationGraph()  # 384-channel topology
        
    def classify(self, fbg_wavelengths: np.ndarray) -> TamperClassification:
        
        fbg_wavelengths: shape (384,) - current wavelength readings (nm)
        Returns: TamperClassification enum + confidence + affected channels
        
        
        # Hypothesis H0: Nominal thermal operation
        thermal_pred = self.thermal_model.predict(fbg_wavelengths)
        residual = fbg_wavelengths - thermal_pred
        H0_score = np.linalg.norm(residual)
        
        # Hypothesis H1: Localized physical tamper (fiber tap, cut, strain)
        recon = self.autoencoder.reconstruct(fbg_wavelengths)
        recon_error = fbg_wavelengths - recon
        spatial_corr = self.spatial_graph.correlation(fbg_wavelengths)
        H1_score = 0.5 * np.linalg.norm(recon_error) + 0.5 * (1 - spatial_corr)
        
        # Hypothesis H2: Interrogator compromise (all channels shifted)
        common_mode = np.mean(fbg_wavelengths - thermal_pred)
        H2_score = np.abs(common_mode)
        
        # Hypothesis H3: Selective channel spoofing (adversarial injection)
        channel_stats = self.compute_channel_statistics(fbg_wavelengths)
        H3_score = self.detect_adversarial_pattern(channel_stats)
        
        # Bayesian model selection
        scores = np.array([H0_score, H1_score, H2_score, H3_score])
        priors = np.array([0.95, 0.03, 0.015, 0.005])  # From fleet history
        posteriors = scores * priors / np.sum(scores * priors)
        
        max_idx = np.argmax(posteriors)
        confidence = posteriors[max_idx]
        
        if max_idx == 0:
            return TamperClassification.NOMINAL, confidence, []
        elif max_idx == 1:
            affected = self.localize_tamper(recon_error, spatial_corr)
            return TamperClassification.LOCALIZED_TAMPER, confidence, affected
        elif max_idx == 2:
            return TamperClassification.INTERROGATOR_COMPROMISE, confidence, list(range(384))
        else:
            affected = self.identify_spoofed_channels(channel_stats)
            return TamperClassification.SELECTIVE_SPOOFING, confidence, affected
```

### F.2 Tamper Response Matrix

| Classification | Confidence | Auto-Action | SL Action Required |
|----------------|------------|-------------|-------------------|
| **NOMINAL** | >0.99 | None | None |
| **LOCALIZED_TAMPER** | >0.9 | Auto-NCR, zone hold, SIF-24 armed | Physical inspection <2 hr |
| **INTERROGATOR_COMPROMISE** | >0.95 | Boot halt, isolate VLAN 20, spare interrogator | Forensic image, vendor notify |
| **SELECTIVE_SPOOFING** | >0.85 | Channel quarantine, model-only control | SL + Cyber Eng investigation |

### F.3 Optical Power Monitoring (Per Channel)

| Parameter | Normal Range | Warning | Alarm | Action |
|-----------|--------------|---------|-------|--------|
| **Optical Power (dBm)** | -15 to -5 | < -18 or > -3 | < -20 or > 0 | Fiber tap / cut / contamination |
| **SNR (dB)** | >30 | 20-30 | <20 | Interrogator degradation |
| **Peak Width (pm)** | 5-15 | 15-25 | >25 | Grating damage / strain |

---
