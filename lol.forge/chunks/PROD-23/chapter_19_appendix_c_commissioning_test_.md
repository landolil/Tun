## Appendix C: Commissioning Test Matrix

| Test ID | Description | Level | Pass Criteria | Documentation |
|---------|-------------|-------|---------------|---------------|
| CT-01 | FBG calibration (ice/oil bath) | Component | ±0.5°C accuracy | Cal cert |
| CT-02 | RTU PID step response | Component | Settling <30s, OS <10% | Test report |
| CT-03 | PLL lock acquisition | Component | <50 ms from cold | Scope capture |
| CT-04 | SIS proof test (full) | System | All 24 SIFs <50 ms | Signed report |
| CT-05 | TSN latency/jitter | Network | <100 μs (SIS), <500 μs (RTU) | Wireshark |
| CT-06 | PTP sync accuracy | Network | <1 μs offset | PTP monitor |
| CT-07 | GIC simulation (100 A/m) | System | No trips, data intact | Test report |
| CT-08 | E-stop response | System | All inverters OFF <50 ms | Scope capture |
| CT-09 | Cyber anomaly injection | System | Detect + isolate <10 s | Log export |
| CT-10 | Full cascade dry run | System | 90 min, no faults, data OK | Batch record |

---
