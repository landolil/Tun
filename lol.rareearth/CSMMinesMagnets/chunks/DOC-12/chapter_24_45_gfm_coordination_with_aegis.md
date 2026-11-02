## 4.5 GFM Coordination with Aegis-Forge Microgrid Controller

The Aegis-Forge microgrid controller (MGC) coordinates multiple GFM inverters via IEC 61850 GOOSE messaging:

### 4.5.1 Hierarchical Control Architecture

```
Level 0: GFM Inverter Local Control (10–100 μs)
    ├── Inner current loop (2–5 kHz)
    ├── Outer voltage loop (200–500 Hz)
    └── Primary control: Droop/VSM/dVOC (1–10 Hz)

Level 1: Microgrid Controller (100 ms – 1 s)
    ├── Power dispatch optimization (economic)
    ├── Voltage/frequency secondary control (restore nominal)
    ├── Islanding detection & transition management
    └── Blackstart sequencing

Level 2: CEN SCADA/EMS (1–10 s)
    ├── Ancillary service dispatch (inertia, FFR, voltage)
    ├── Wide-area monitoring (WAMS/PMU)
    └── Grid code compliance verification
```

### 4.5.2 Secondary Frequency/Voltage Control

MGC restores nominal frequency/voltage after primary droop response:

```math
\Delta P_{sec} = -K_{sec,f} \int (\omega - \omega_{nom}) dt
```
```math
\Delta Q_{sec} = -K_{sec,v} \int (V - V_{nom}) dt
```

Distributed to GFM inverters via participation factors $\alpha_i$:
```math
P_{ref,i} = P_{nom,i} + \alpha_i \Delta P_{sec}, \quad \sum \alpha_i = 1
```

### 4.5.3 Blackstart Coordination Protocol

```math
\text{MGC Blackstart Sequence:}
```
1. **T₀**: Grid loss detected → MGC initiates blackstart
2. **T₀+5 s**: Designated "leader" GFM (highest SoC) starts soft energization
3. **T₀+15 s**: Follower GFMs synchronize to leader (dVOC/PSC sync)
4. **T₀+30 s**: Critical loads picked up (separation heaters, comms)
5. **T₀+60 s**: Non-critical loads ramped (motor drives, pumps)
6. **T₀+300 s**: Grid synchronization check → reconnect if available

**Cross-reference**: DOC-05 (Tardigradia venture) defined MGC architecture; DOC-11 Ch.6 established motor GIC immunity for blackstart loads.

---
