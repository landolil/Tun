## 1.3 Voltage and Current Control Loops

All GFM architectures employ cascaded control: primary control (droop/VSM/dVOC) → outer voltage control → inner current control.

```math
\text{Outer Loop (Voltage): } G_v(s) = k_{pv} + \frac{k_{iv}}{s}
```
```math
\text{Inner Loop (Current): } G_i(s) = k_{pi} + \frac{k_{ii}}{s}
```

Time-scale separation is critical: $f_{current} \gg f_{voltage} \gg f_{primary}$. Typical bandwidths: current loop 2–5 kHz, voltage loop 200–500 Hz, primary control 1–10 Hz. This separation ensures the inner loop appears as an ideal voltage source to the outer loop, and the outer loop appears as an ideal power source to the primary control.
