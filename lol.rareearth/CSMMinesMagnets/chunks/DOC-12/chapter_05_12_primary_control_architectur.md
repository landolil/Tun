## 1.2 Primary Control Architectures

Three primary control strategies have emerged for GFM inverters, each with distinct dynamic characteristics:

### 1.2.1 Droop Control

Droop control emulates the steady-state power-frequency and reactive power-voltage characteristics of synchronous generators:

```math
\omega = \omega_{nom} - m_p (P - P_{nom})
```
```math
V = V_{nom} - n_q (Q - Q_{nom})
```

where $m_p$ (Hz/MW) and $n_q$ (V/MVAR) are droop coefficients. The frequency deviation $\Delta \omega$ is proportional to active power deviation, providing primary frequency response. Droop control is the most widely deployed GFM strategy due to its simplicity, backward compatibility with existing GFL fleets, and straightforward parallel operation.

**Advantages**: Simple implementation, natural power sharing, proven at utility scale (Kauai, Hornsdale)
**Limitations**: No inherent inertia emulation (first-order response), slower transient response vs. VSM

### 1.2.2 Virtual Synchronous Machine (VSM) Control

VSM control explicitly emulates the swing equation of a synchronous machine:

```math
J \frac{d\omega}{dt} = P_{ref} - P_e - D(\omega - \omega_{grid})
```
```math
\frac{d\delta}{dt} = \omega - \omega_{grid}
```

where $J$ (virtual inertia constant, kg·m² or s) and $D$ (damping coefficient) are programmable parameters. The virtual rotor angle $\delta$ provides the voltage phase reference. VSM provides true second-order inertial response, with the rate of change of frequency (RoCoF) governed by $J$:

```math
\text{RoCoF}_{initial} = \frac{\Delta P}{2H_{sys} f_{nom}} \quad \text{where} \quad H_{sys} = \frac{\sum H_i S_i}{\sum S_i}
```

**Advantages**: True inertia emulation, superior damping, blackstart capability, transient stability analogous to synchronous machines
**Limitations**: Higher control bandwidth requirements, potential for power-angle instability, more complex tuning

### 1.2.3 Dispatchable Virtual Oscillator Control (dVOC)

dVOC leverages the self-synchronization property of nonlinear oscillators (Kuramoto model):

```math
\frac{d\theta_i}{dt} = \omega_{nom} + \sum_{j \in N_i} K_{ij} \sin(\theta_j - \theta_i) + \alpha_i P_i
```

where $\theta_i$ is the oscillator phase, $K_{ij}$ coupling strength, and $\alpha_i$ power-dependent frequency shift. dVOC provides inherent synchronization without communication, plug-and-play parallel operation, and robustness to grid disturbances.

**Advantages**: Communication-free synchronization, inherent stability, fast transient response
**Limitations**: Less mature commercially, parameter tuning less intuitive, limited large-scale deployment history

**Cross-reference**: DOC-11 Ch.4 (Substation Hardening) discussed FACTS/SVC coordination; dVOC provides analogous distributed coordination without central controller.
