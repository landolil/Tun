## Appendix D: PID Tuning Methodology

### D.1 Ziegler-Nichols Closed-Loop Tuning

For each zone, the ultimate gain K<sub>u</sub> and period P<sub>u</sub> are found by disabling integral/derivative and increasing K<sub>p</sub> until sustained oscillation:

| Zone | K<sub>u</sub> | P<sub>u</sub> (s) | K<sub>p</sub> (0.6K<sub>u</sub>) | T<sub>i</sub> (0.5P<sub>u</sub>) | T<sub>d</sub> (0.125P<sub>u</sub>) |
|------|--------------|------------------|----------------------------------|--------------------------------|----------------------------------|
| Z1–Z2 | 2.5 | 45 | 1.5 | 22.5 | 5.6 |
| Z3 | 2.0 | 60 | 1.2 | 30 | 7.5 |
| Z4–Z5 | 1.8 | 90 | 1.08 | 45 | 11.25 |
| Z6 | 1.5 | 120 | 0.9 | 60 | 15 |
| Z7 | 1.3 | 180 | 0.78 | 90 | 22.5 |
| Z8 | 1.1 | 240 | 0.66 | 120 | 30 |

These are starting values; final tuning adds feedforward and anti-windup.

### D.2 Anti-Windup Implementation

```c
// Back-calculation anti-windup
error = T_setpoint - T_measured;
integral += error * dt;

// Anti-windup: track output saturation
output = Kp * error + Ki * integral + Kd * (error - prev_error) / dt;
if (output > output_max || output < output_min) {
    // Back-calculate integral to prevent windup
    integral -= (output - sat_output) / Kt;  // Kt = tracking gain
}
output = clamp(output, output_min, output_max);
prev_error = error;
```

---
