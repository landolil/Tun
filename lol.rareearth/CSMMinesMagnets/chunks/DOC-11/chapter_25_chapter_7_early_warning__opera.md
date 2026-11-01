## Chapter 7: Early Warning & Operational Protocols

### 7.1 NOAA SWPC Alert Levels (G1–G5, Kp Index, Dst Forecast)

The NOAA Space Weather Prediction Center (SWPC) provides the global standard for space weather alerts. This section defines the alert hierarchy and its operational translation for the Chilean SEN.

**NOAA Space Weather Scales:**

| Scale | Level | Kp Index | Dst (nT) | Geoelectric Field (V/km) | Frequency (per solar cycle) | Physical Effects |
|-------|-------|----------|----------|--------------------------|----------------------------|------------------|
| **G1** | Minor | 5 | -30 to -50 | 0.5–1.5 | ~900 | Weak grid fluctuations, aurora at 60° |
| **G2** | Moderate | 6 | -50 to -100 | 1.5–3.0 | ~360 | Voltage alarms, transformer heating, aurora at 55° |
| **G3** | Strong | 7 | -100 to -200 | 3.0–8.0 | ~130 | Voltage correction needed, GIC > 10 A, aurora at 50° |
| **G4** | Severe | 8 | -200 to -350 | 8.0–20 | ~60 | Widespread voltage control, GIC > 50 A, aurora at 45° |
| **G5** | Extreme | 9 | < -350 | > 20 | ~4 | Grid collapse possible, GIC > 100 A, aurora at 40° |

**Chile-Specific Mapping (Magnetic Latitude Adjustment):**
- Chile magnetic latitudes: 8°S (Arica) to 45°S (Punta Arenas)
- Auroral oval expansion at G5 reaches ~40° magnetic → **covers all of Chile**
- **G3+ = Operational Alert for SEN** (Norte Grande GIC > 50 A)
- **G4+ = Pre-Arming Islanding** (mining, Aegis-Forge)
- **G5 = Immediate Islanding** (automated RAS)

**SWPC Alert Products & Timelines:**
| Product | Lead Time | Update Frequency | Distribution |
|---------|-----------|------------------|--------------|
| **3-Day Forecast** | 72 hr | 4×/day | Email, API, Web |
| **1-Day Forecast** | 24 hr | 8×/day | Email, API, Web |
| **Watch** | 12–48 hr | As issued | WWA, API, NWS Chat |
| **Warning** | 0–12 hr | Continuous | WWA, API, NWS Chat |
| **Alert** | Now | Continuous | WWA, API, NWS Chat |
| **Summary** | Post-event | Daily | Report |

**Key SWPC Data Feeds for CEN Integration:**
```python