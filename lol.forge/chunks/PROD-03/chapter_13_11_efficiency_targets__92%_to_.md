## 11. Efficiency Targets — 92% to 98% Across Frequency Range

### 11.1 Efficiency Breakdown by Zone

| Zone | Frequency | Power | Switching Loss | Conduction Loss | Capacitor ESR | Gate Drive | Total Loss | Efficiency |
|---|---|---|---|---|---|---|---|---|
| 1-2 | 100 kHz | 50 kW | 2.8 kW | 0.3 kW | 0.5 kW | 0.1 kW | 3.7 kW | 92.6% |
| 3 | 50 kHz | 80 kW | 2.0 kW | 0.5 kW | 0.6 kW | 0.1 kW | 3.2 kW | 96.0% |
| 4-5 | 10 kHz | 150 kW | 0.8 kW | 1.2 kW | 0.7 kW | 0.1 kW | 2.8 kW | 98.1% |
| 6 | 5 kHz | 200 kW | 0.4 kW | 1.8 kW | 0.8 kW | 0.1 kW | 3.1 kW | 98.5% |
| 7 | 2 kHz | 350 kW | 0.2 kW | 2.5 kW | 1.0 kW | 0.1 kW | 3.8 kW | 98.9% |
| 8 | 1 kHz | 500 kW | 0.1 kW | 3.0 kW | 1.2 kW | 0.1 kW | 4.4 kW | 99.1% |

**System efficiency (weighted by energy per batch): 97.2%**

### 11.2 Loss Mechanisms Detail

**Switching Losses (dominant at high frequency):**
$$P_{sw} = \frac{1}{2} V_{DS} I_D (t_{rise} + t_{fall}) f_{sw} N_{parallel}$$
- GS66516T: t_rise = t_fall ≈ 2 ns at 20 V drive
- At 100 kHz: 2.8 kW per 50 kW zone (5.6%)
- At 1 kHz: negligible (0.1 kW)

**Conduction Losses (dominant at low frequency):**
$$P_{cond} = I_{RMS}^2 R_{DS(on)} N_{parallel} \times \text{thermal factor}$$
- R_DS(on) at 150°C: 30 mΩ × 2.0 = 60 mΩ
- Zone 8: 348 A / 8 = 43.5 A per device → 43.5² × 0.06 = 113 W/device × 8 = 0.9 kW
- With thermal derating (R_th_jc = 0.5 °C/W): 3.0 kW total

**Capacitor ESR Losses:**
- C0G ceramic: ESR ≈ 5 mΩ at 100 kHz, 2 mΩ at 1 kHz
- Ripple current: 200-500 A RMS
- Losses: 0.5-1.2 kW per zone

**Gate Drive Losses:**
$$P_{gate} = Q_g V_{drive} f_{sw} N_{parallel}$$
- Q_g = 12 nC, V_drive = 20 V
- At 100 kHz: 0.1 kW (negligible)

### 11.3 Efficiency Validation — Test Protocol

**Per-zone factory test:**
1. Resistive load bank (simulates charge impedance)
2. Measure DC input power vs. AC output power
3. Sweep frequency ±20%, power 10-100%
4. Record efficiency map
5. Acceptance: >90% at all operating points

**In-situ monitoring (per batch):**
- DC bus power meter (Hall effect, isolated)
- AC tank power (optical VT/CT)
- Real-time efficiency = P_AC / P_DC
- Alarm if efficiency drops >2% from baseline

---


---
