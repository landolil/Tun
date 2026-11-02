## 1.5 Advanced GFM Control: Synchroconverter and Power Synchronization Control

### 1.5.1 Synchroconverter Control

The synchroconverter is a GFM control strategy that directly emulates the electromechanical dynamics of a synchronous machine by coupling the converter's electrical dynamics with a virtual mechanical system:

```math
J \frac{d\omega}{dt} = T_m - T_e - D(\omega - \omega_{grid})
```
```math
T_e = \frac{3}{2} p \lambda_{pm} i_q \quad \text{(PM synchronous machine torque)}
```
```math
v_d = R_s i_d - \omega L_q i_q + \frac{d\lambda_d}{dt}, \quad v_q = R_s i_q + \omega L_d i_d + \omega \lambda_{pm} + \frac{d\lambda_q}{dt}
```

Unlike VSM which emulates the swing equation at the power level, synchroconverter emulates the full electromagnetic transient behavior including flux dynamics. This provides superior fault ride-through and short-circuit current contribution.

**Advantages**: Full EM transient emulation, inherent fault current limiting, no separate current limiter needed
**Deployment**: Demonstrated by GE (2017), Mitsubishi (2019), CIGRE TB 881

### 1.5.2 Power Synchronization Control (PSC)

PSC replaces the PLL with a power-based synchronization mechanism:

```math
\frac{d\delta}{dt} = \omega_{nom} + K_p (P_{ref} - P_e) + K_i \int (P_{ref} - P_e) dt
```

where $\delta$ is the converter voltage angle. PSC provides inherent stability without PLL, with power-angle characteristics analogous to synchronous machines. The synchronizing torque coefficient $K_p$ and damping torque coefficient $K_i$ are tuned for desired dynamic response.

**Equivalence to Droop**: PSC with $K_i = 0$ reduces to frequency droop control. With $K_i > 0$, PSC provides integral action for zero steady-state frequency error.

### 1.5.3 Comparative Summary of All Six GFM Architectures

| Architecture | Primary Loop | Inertia Emulation | Synchronization | Maturity | Key Deployment |
|--------------|--------------|-------------------|-----------------|----------|----------------|
| **Droop** | $P-f$, $Q-V$ | Virtual (filter) | Power-angle | High | Kauai, Hornsdale |
| **VSM** | Swing equation | True (J, D) | Virtual rotor | High | UK Pathfinder, Australia |
| **dVOC** | Kuramoto oscillator | Virtual (energy) | Self-sync | Medium | Lab/demo (UNIFI) |
| **Synchroconverter** | Full EM model | True (full EM) | Flux linkage | Medium | GE, Mitsubishi |
| **PSC** | Power-angle | Virtual (K_p, K_i) | Power sync | Medium | CIGRE TB 881 |
| **Matching** | Structural match | True (L=J, R=D) | Structural | Low | AIST, MIGRATE |

---
