## 12. Commissioning & SAT

### 12.1 Commissioning Sequence (Per PROD-29)

| Phase | Activity | Verification | Sign-off |
|---|---|---|---|
| **Cold Commissioning** | Mechanical alignment, electrical continuity, fiber continuity, coolant pressure | IC-1..IC-10 (PROD-27) | Mfg Eng + EE |
| **Hot Commissioning** | Stages 0-8 no feed, per thermal profile (PROD-02) | CT-08 protocol | Lead EE + ME + Safety |
| **Performance Validation** | 6 batches per SAT-05 | All outputs spec, mass balance >99% | Plant Mgr |
| **Operator Training** | Theory 40h, Sim 20h, OJT 80h, Cert exam | PROD-34 curriculum | Training Mgr + QA |
| **Documentation Turnover** | All quality records, procedures, drawings, certs | PROD-38 config audit | QA Eng |

### 12.2 SAT-05 Performance Benchmarks

| Parameter | Target | Measurement |
|---|---|---|
| **Batch cycle time** | 90 min (8 batches/day) | Timestamp: feed-in → Port 8 clear |
| **Mass balance closure** | >99.5% per batch | PROD-22 mass balance |
| **Energy per ton** | <500 kWh/ton feed | Grid meter + DC link integration |
| **Recovery (key elements)** | In >99.9%, Cu >99.9%, Al >99.7%, Fe >95%, REE >90% | LIBS/XRF per slug |
| **Emissions** | PM2.5 <5mg/Nm³; HCl <10ppm; SO₂ <50ppm | CEMS continuous |
| **SIF availability** | >99.9% (no spurious trips) | SIS historian |
| **Digital twin sync** | <1s latency (10Hz state vector) | PROD-37 twin monitor |

---
