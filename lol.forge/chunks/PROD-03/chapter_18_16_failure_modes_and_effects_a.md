## 16. Failure Modes and Effects Analysis (FMEA)

### 16.1 Top 10 Induction System Failure Modes

| Rank | Failure Mode | Cause | Effect | Detection | Severity | Occurrence | Detection | RPN |
|---|---|---|---|---|---|---|---|---|
| 1 | GaN short circuit | Overvoltage, thermal runaway | Zone shutdown, possible bus fault | Desat (2 μs) | 9 | 2 | 1 | 18 |
| 2 | FBG sensor break | Mechanical damage, thermal shock | Loss of zone temperature control | Autoencoder anomaly | 7 | 3 | 2 | 42 |
| 3 | Resonance detuning | Feedstock anomaly, C_r drift | Hard switching, GaN stress | V/I phase monitor | 6 | 4 | 2 | 48 |
| 4 | Water leak | PEX-a fatigue, fitting failure | Coil overheating, zone shutdown | FBG on manifold | 8 | 2 | 2 | 32 |
| 5 | Coil insulation failure | Alumina crack, thermal cycling | Turn-to-turn short, zone loss | Resistance monitoring | 7 | 2 | 3 | 42 |
| 6 | DC bus overvoltage | Regeneration, load rejection | Inverter shutdown, possible damage | Bus monitor (100 μs) | 8 | 3 | 1 | 24 |
| 7 | Optical fiber break | Vibration, bend radius | Loss of control comms | Link monitor (1 ms) | 6 | 2 | 1 | 12 |
| 8 | Curie transition instability | PID gain mismatch | Temperature oscillation | FBG strain oscillation | 5 | 4 | 2 | 40 |
| 9 | Active cancellation fail | Fluxgate drift, coil fault | Radiated emissions exceed limit | EMC monitor | 4 | 3 | 2 | 24 |
| 10 | GIC event | Solar storm | Potential equipment damage | DC ground monitor | 9 | 1 | 1 | 9 |

**Mitigation for High RPN Items:**
- #3 Resonance detuning: Adaptive C_r bank (switched capacitors) + wider PLL bandwidth
- #8 Curie instability: Gain scheduling + feedforward (known Curie curve)
- #5 Insulation failure: Mica interlayer + 100% hipot test at assembly

---
