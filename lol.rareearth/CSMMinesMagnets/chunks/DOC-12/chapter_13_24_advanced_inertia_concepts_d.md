## 2.4 Advanced Inertia Concepts: Dynamic Virtual Inertia and Adaptive Damping

### 2.4.1 Dynamic Virtual Inertia (DVI)

Fixed inertia constants may be suboptimal across operating conditions. Dynamic Virtual Inertia adapts $H_{vsm}$ in real-time based on system state:

```math
H_{vsm}(t) = H_{base} + K_{ROCOF} \cdot \left| \frac{df}{dt} \right| + K_{SoC} \cdot (SoC_{ref} - SoC(t))
```

where $K_{ROCOF}$ increases inertia during high RoCoF events, and $K_{SoC}$ reduces inertia as battery SoC depletes. This prevents over-discharge while maximizing stability contribution when needed most.

**Implementation**: Real-time RoCoF estimation via Kalman filter on frequency measurements; SoC from BMS. Update rate: 10–100 ms.

### 2.4.2 Virtual Friction (VF) for Damping Enhancement

Virtual Friction adds a damping torque proportional to the deviation of local frequency from the Center of Inertia (COI) frequency:

```math
T_{vf} = -K_{vf} (\omega_{local} - \omega_{COI})
```

where $\omega_{COI} = \frac{\sum H_i \omega_i}{\sum H_i}$ estimated via wide-area measurements (WAMS) or consensus algorithm. VF decouples frequency damping from frequency support, enabling independent tuning.

**Stability Result** (Tel Aviv University 2022): VF expands the Region of Attraction (ROA) for VSM-dominated grids, stabilizing systems that would otherwise lose synchronism under large disturbances.

### 2.4.3 Adaptive P-f Droop for GIC Resilience

Under GIC events, transformer saturation injects even harmonics (2nd, 4th) that distort frequency estimation. Adaptive droop adjusts $m_p$ based on harmonic content:

```math
m_p(t) = m_{p,nom} \cdot \left( 1 + \alpha \cdot \frac{V_{2nd}}{V_{1st}} \right)
```

where $\alpha$ is a tuning parameter (typically 0.5–2.0). Higher droop during GIC events reduces power oscillations caused by erroneous frequency measurement.

**Cross-reference**: DOC-11 Ch.2 (GIC simulation) established $V_{2nd}/V_{1st}$ up to 15% in Carrington-class events; adaptive droop maintains stability.

---
