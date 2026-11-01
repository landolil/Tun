## 8.8 Environmental Monitoring: Community Sentinel Program

**Community Sentinels** are trained local residents (including Indigenous fishers/farmers) who conduct independent environmental monitoring with Company-funded equipment and blockchain-verified data.

### 8.8.1 Sentinel Network Design

| Port City | Sentinels | Parameters | Equipment | Frequency | Data Destination |
|-----------|-----------|------------|-----------|-----------|------------------|
| **Antofagasta** | 8 (4 Chango fishers, 4 residents) | Air (PM10, PM2.5, NOx, SO2), Water (pH, metals, temp), Noise, Dust | Low-cost sensors + reference grade (quarterly) | Continuous (air), Daily (water), Event (noise) | Blockchain (public) + FBC/CDC |
| **Mejillones** | 10 (5 Chango, 3 residents, 2 CODELCO area) | Air, Marine water, Sediment, Thermal plume, Noise | Buoy sensors + handheld | Continuous | Blockchain + SEA public portal |
| **San Antonio** | 12 (residents, fishers, port workers) | Air, Water, Noise, Traffic, Light | Sensor network + mobile | Continuous | Blockchain + Municipal portal |
| **Punta Arenas** | 8 (4 Kawashkar/Yámana, 4 residents) | Marine water, Sediment, Wildlife, Noise, Ice | Ruggedized sensors + boat-based | Continuous (water), Seasonal (wildlife) | Blockchain + CONAF |

### 8.8.2 Data Integrity & Transparency

- **Sensor Calibration**: Quarterly by accredited lab (ISO 17025), certificates on blockchain
- **Data Transmission**: LoRaWAN/satellite → edge gateway → blockchain anchor (immutable)
- **Public Access**: Real-time dashboard (community.kilo.ai/port-city), API for researchers
- **Alert Thresholds**: Auto-trigger at 80% regulatory limit → SMS to sentinels, Company, FBC/CDC, SEA
- **Annual Audit**: Third-party verification of sentinel data vs. Company SEIA compliance

---
