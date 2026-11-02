## 5. Performance Validation (SAT-05)

### 5.1 Six-Batch Validation Protocol

| Batch | Feedstock Category | Purpose | Key Metrics |
|---|---|---|---|
| **1** | Category A (PCB-rich) | High PM recovery validation | Au >99.9%, Ag >99.9%, Pd >99% |
| **2** | Category B (Mixed plastics) | Polymer separation, HCl management | Al >99.7%, HCl <10 ppm stack |
| **3** | Category C (Ferrous/Al) | Stages 5-7 separation | Fe >95%, REE >90% |
| **4** | Category D (Mineral/Zr) | Stage 8 zircon dissociation | Zr recovery >95%, 3Y-TZP spec |
| **5** | Category A (repeat) | Reproducibility | All metrics within ±2% of Batch 1 |
| **6** | Phoenix Protocol blend | Closed-loop validation | Mass balance >99.5%, QR traceability |

### 5.2 SAT-05 Performance Benchmarks

| Parameter | Target | Measurement Method |
|---|---|---|
| **Batch Cycle Time** | 90 min (8 batches/day) | Timestamp: feed-in → Port 8 clear |
| **Mass Balance Closure** | >99.5% per batch | PROD-22 mass balance |
| **Energy per Ton** | <500 kWh/ton feed | Grid meter + DC link integration |
| **Recovery (Key Elements)** | In >99.9%, Cu >99.9%, Al >99.7%, Fe >95%, REE >90% | LIBS/XRF per slug |
| **Emissions** | PM2.5 <5 mg/Nm³; HCl <10 ppm; SO₂ <50 ppm | CEMS continuous |
| **SIF Availability** | >99.9% (no spurious trips) | SIS historian |
| **Digital Twin Sync** | <1 s latency (10 Hz state vector) | PROD-37 twin monitor |
| **Slug Quality** | All outputs per PROD-08 catalog | LIBS + mass spec spot check |

---
