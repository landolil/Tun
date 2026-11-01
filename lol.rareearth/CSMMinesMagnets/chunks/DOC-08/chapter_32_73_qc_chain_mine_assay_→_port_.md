## 7.3 QC Chain: Mine Assay → Port Inspection → Factory Acceptance

Three-tier quality assurance with blockchain traceability at each handoff.

### 7.3.1 Tier 1: Mine Assay (Aegis-Forge Plant Input)

| Checkpoint | Parameter | Method | Acceptance | Frequency | Blockchain Record |
|------------|-----------|--------|------------|-----------|-------------------|
| **Head Grade** | REE % (Nd, Sm, Dy, Tb), Fe%, Co% | XRF + ICP-OES | Per deposit spec | Per truck/railcar | Lot hash + GPS |
| **Mineralogy** | Bastnäsite/monazite/xenotime ratio | XRD + QEMSCAN | ≥ 85% target mineral | Per shift composite | Mineralogy hash |
| **Impurities** | Si, Al, Ca, Mg, P, S, Th, U | ICP-MS | < Penalty thresholds | Per lot | Impurity hash |
| **Moisture** | H₂O% | Gravimetric | < 2% (concentrate) | Per shipment | Moisture hash |
| **Particle Size** | P80, P50, +1mm/-100µm | Laser diffraction | Per process spec | Per shift | PSD hash |

**Aegis-Forge Separation Yield Tracking**:
$$\text{Separation Efficiency} = \frac{\text{REE in Product}}{\text{REE in Feed}} \times 100\% \quad \text{Target:} \geq 92\%$$

### 7.3.2 Tier 2: Port Inspection (Mejillones/Antofagasta Load-Out)

| Checkpoint | Parameter | Method | Acceptance | Frequency | Blockchain Record |
|------------|-----------|--------|------------|-----------|-------------------|
| **Visual** | Lump integrity, dust, contamination | Trained inspector | No foreign material | Per container/rotainer | Photo + hash |
| **Weight** | Gross/net/tare | Certified scale | ±0.5% of declared | Per package | Weight hash |
| **Magnetic Field** | Surface & 2.1m (Class 9 check) | 3-axis Hall probe | Per §3.2.1 thresholds | Per assembly package | Field hash |
| **Temperature** | Core temp (Fe₁₆N₂: -20°C ± 2°C) | IR + probe | Within spec | Per reefer | Temp logger hash |
| **Packaging** | UN mark, labels, seals, shielding | Checklist | 100% compliant | Per package | Packaging hash |
| **Documentation** | DGD, MIL-STD-1540, Cert of Origin | Digital verify | Complete set | Per shipment | Doc bundle hash |

**Port Rejection Protocol**: Failed packages → Quarantine bay → Root cause → Re-work or downgrade → Blockchain rejection record → Shipper notification (2hr SLA).

### 7.3.3 Tier 3: CSM Factory Acceptance (Incoming QC)

| Checkpoint | Parameter | Method | Acceptance | Frequency | Disposition |
|------------|-----------|--------|------------|-----------|-------------|
| **Receiving Inspect** | Visual, weight, seals, temp log | Dock QC | Match port records | 100% | Accept / Quarantine |
| **Magnetic Verification** | $B_r$, $H_{cJ}$, moment | Pulse magnetometer | Per grade spec (±2%) | 10% sample (blocks), 100% (assemblies) | Accept / Reject |
| **Dimensional** | Critical dimensions | CMM / Go-No-Go | Per print | 10% sample | Accept / Reject |
| **Corrosion** | Coating integrity, rust | Visual + ASTM B117 spot | No red rust | 10% sample | Accept / Rework |
| **Traceability** | Blockchain lot trace | QR scan → ledger | Continuous chain | 100% | Accept / Investigate |
| **MIL-STD-1540 Cert** | Certificate validity | Digital signature verify | Valid, matching lot | 100% lots | Accept / Hold |

**Factory Rejection Flow**: Quarantine → 48hr root cause → Shipper CAR (Corrective Action Request) → Disposition (Rework/Return/Scrap) → Blockchain update.

---
