## 2.2 Synthetic Inertia Mechanisms

### 2.2.1 VSM-Based Synthetic Inertia

VSM provides synthetic inertia through the virtual inertia constant $J$ (or $H_{vsm}$):

```math
H_{vsm} = \frac{J \omega_{nom}^2}{2 S_{rated}} \quad [\text{s}]
```

The active power response to a frequency deviation is:

```math
\Delta P_{vsm}(s) = \frac{2 H_{vsm} s}{1 + T_{gov} s} \Delta f(s) + \frac{1}{R} \Delta f(s)
```

where the first term is the inertial response (proportional to $s$, i.e., RoCoF) and the second is the droop response. The inertial response is instantaneous (limited by current loop bandwidth), providing critical RoCoF arrestment.

**Chile Requirement**: $H_{vsm} \geq 2–4$ s per storage module (ACESOL/CEN April 2026). For a 50 MW/200 MWh BESS: $H_{vsm} = 4$ s $\rightarrow$ 800 MW·s kinetic energy equivalent.

### 2.2.2 Droop-Based Synthetic Inertia (Virtual Inertia)

Droop control can emulate inertia via a high-pass filter on frequency deviation:

```math
\Delta P_{inertia}(s) = K_{inertia} \frac{s}{s + \omega_c} \Delta f(s)
```

where $K_{inertia}$ sets the effective inertia and $\omega_c$ is the cutoff frequency (typically 1–5 rad/s). This provides virtual inertia without the second-order dynamics of VSM.

**Equivalence Proof** (IEEE Trans. Power Electron. 2021): Properly tuned droop with virtual inertia filter achieves identical inertial response to VSM for small-signal stability, but lacks transient stability benefits of swing equation emulation.

### 2.2.3 Matching Control

Matching control exploits structural similarities between converter equations and synchronous machine equations:

```math
L \frac{di}{dt} = -R i + v_{conv} - v_{grid}
```
```math
J \frac{d\omega}{dt} = T_m - T_e - D \omega
```

By matching converter inductance $L$ to virtual inertia $J$, and resistance $R$ to damping $D$, the converter dynamics mirror synchronous machine dynamics without explicit swing equation implementation. This provides inherent stability with reduced computational burden.

**Advantage**: Natural stability, no PLL, communication-free parallel operation
**Deployment**: Early-stage; demonstrated in Japan (AIST) and EU (MIGRATE project)
