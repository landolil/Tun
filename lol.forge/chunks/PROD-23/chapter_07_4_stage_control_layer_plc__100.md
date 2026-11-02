## 4. Stage Control Layer (PLC) — 100 Hz Cascade & Interlocks

### 4.1 PLC Hardware (Per Stage)

| Component | Specification |
|-----------|---------------|
| **Controller** | IEC 61131-3 PLC (CODESYS runtime, SIL-3 certified) |
| **CPU** | Dual-core ARM Cortex-R52 @ 800 MHz (lockstep) |
| **Memory** | 512 MB RAM ECC, 64 MB FRAM (recipe + interlock config) |
| **Network** | 2× 1 Gbps TSN (dual-ring), 1× 100 Mbps OPC-UA (SCADA) |
| **Safety Bus** | Dedicated 100 Mbps TSN channel (2oo3 voting) |
| **I/O** | 64-ch PMMA POF (sensors), 32-ch PMMA POF (actuators) |
| **Program** | Structured Text (ST) + Sequential Function Chart (SFC) |
| **Cycle Time** | 10 ms deterministic (jitter <100 μs) |

### 4.2 Stage Control Functions

Each Stage PLC manages the complete thermal stage operation:

| Function | Description | Cycle |
|----------|-------------|-------|
| **Cascade Temperature Control** | Receives T_setpoint from SCADA, sends zone power commands to RTUs | 10 ms |
| **Interlock Logic** | Evaluates 24 SIL-3 + 12 SIL-2 + 36 SIL-1 conditions per stage | 1 ms (SIS) |
| **Recipe Management** | Loads Stage recipe (temp profile, durations, gas flows) from SCADA | On batch start |
| **Carousel Control** | Indexes 16-position slug mold carousel, triggers quench/demold | Event-driven |
| **Flux Injection** | Controls Na₂CO₃/NaCl/KCl/cryolite feed rates per stage recipe | 10 ms |
| **Gas Atmosphere** | Manages Ar/He/H₂/N₂/CO/CO₂ MFCs to maintain pO₂ < 10⁻¹⁵ atm | 10 ms |
| **Composition Feedback** | Receives XRF/LIBS/mass spec data, adjusts setpoints | 100 ms |
| **Digital Twin Sync** | Publishes stage state to Kafka (OPC-UA) for PROD-37 | 100 ms |

### 4.3 Cascade Control Strategy

The 8 stages form a **cascade control hierarchy** with feedforward between stages:

```
Stage 0 (AMLS) ──► Stage 1 (Drying) ──► Stage 2 (Polymer) ──► Stage 3 (Pyrolysis)
     │                │                   │                    │
     ▼                ▼                   ▼                    ▼
Feed composition → Moisture → Polymer type → Char yield → Gas composition
     │                │                   │                    │
     └────────────────┴───────────────────┴────────────────────┘
                              │
                              ▼
                    STAGE 4 (Low-Temp Metals)
                              │
                              ▼
                    STAGE 5 (Aluminum Window)
                              │
                              ▼
                    STAGE 6 (Copper & PM)
                              │
                              ▼
                    STAGE 7 (Ferrous Cascade)
                              │
                              ▼
                    STAGE 8 (Mineral/Zircon)
```

**Feedforward Parameters (Passed Downstream):**
- Stage 0→1: Liberation index (LI), particle size distribution
- Stage 1→2: Residual moisture, organics composition
- Stage 2→3: Polymer melt viscosity, HCl generation rate
- Stage 3→4: Char yield, fixed carbon, inorganic composition
- Stage 4→5: In/Pb/Sn/Zn removed, PM captured, residue analysis
- Stage 5→6: Al removed, Mg content, dross composition
- Stage 6→7: Cu removed, PM grade, Fe/REE in residue
- Stage 7→8: Slag composition (B=1.2, MgO/Al₂O₃=1.5), FeO, REE oxides

### 4.4 Interlock Logic (Per Stage)

Each stage implements a **Safety Instrumented Function (SIF)** table:

| SIF Tag | Description | SIL | Sensors (2oo3) | Actuators | Response |
|---------|-------------|-----|----------------|-----------|----------|
| SIF-XX-01 | Drum over-temp (any FBG > T_lim) | 3 | 3× FBG/zone | All zone inverters OFF | <50 ms |
| SIF-XX-02 | Vessel over-pressure (>5 bar) | 3 | 3× Pressure | Emergency vent, inverters OFF | <50 ms |
| SIF-XX-03 | Atmosphere breach (pO₂ > 10⁻⁶ atm) | 3 | 3× ZrO₂ pO₂ | N₂ purge, inverters OFF | <50 ms |
| SIF-XX-04 | Cooling water loss (flow < 10 L/min) | 3 | 3× Flow | Graceful power ramp to 20% | <100 ms |
| SIF-XX-05 | FBG comms loss (>10 sensors/zone) | 2 | RTU heartbeat | Zone power limited to 50% | <500 ms |
| SIF-XX-06 | Drum rotation loss (<10 RPM) | 2 | 2× Encoder | Inverters OFF, drum coast | <100 ms |
| SIF-XX-07 | Ground fault (NGR > 5 A) | 3 | NGR monitor | All inverters OFF, isolate | <50 ms |
| SIF-XX-08 | GIC event (grid dV/dt > threshold) | 2 | Grid monitor | Ride-through mode | <10 ms |
| SIF-XX-09 | Port valve fail (position mismatch) | 2 | Valve FBG | Block stage advance | <500 ms |
| SIF-XX-10 | Carousel jam (index timeout) | 2 | Position sensor | Hold stage, alarm | <1 s |

**Voting Logic:** 2oo3 (two-out-of-three) for SIL-3. Sensors are physically separated (different angular positions on drum).

### 4.5 Recipe Management (ISA-88 Compliant)

```
Stage Recipe Structure (XML):
<StageRecipe id=STG-04-REV-03>
  <Header>
    <Stage>4</Stage>
    <Version>3</Version>
    <Author>Process Eng</Author>
    <Date>2026-11-02</Date>
  </Header>
  <ThermalProfile>
    <Segment id=1>  <!-- Indium-First -->
      <T_Setpoint>160</T_Setpoint>        <!-- °C -->
      <Duration>300</Duration>            <!-- seconds -->
      <RampRate>5</RampRate>              <!-- °C/min -->
      <RPM>400</RPM>
    </Segment>
    <Segment id=2>  <!-- Sn/Pb/Bi -->
      <T_Setpoint>280</T_Setpoint>
      <Duration>180</Duration>
      <RPM>300</RPM>
    </Segment>
    ...
  </ThermalProfile>
  <GasAtmosphere>
    <Ar>15</Ar>          <!-- SLPM -->
    <He>5</He>
    <H2>2</H2>
    <N2>0</N2>
  </GasAtmosphere>
  <FluxInjection>
    <Material>Na2CO3</Material>
    <Rate>0.5</Rate>     <!-- kg/min -->
    <Trigger>T>150</Trigger>
  </FluxInjection>
  <PortSequence>
    <Port>4A</Port> <OpenAt>160</OpenAt> <CloseAt>170</CloseAt>
    <Port>4B</Port> <OpenAt>200</OpenAt> <CloseAt>300</CloseAt>
    <Port>4C</Port> <OpenAt>340</OpenAt> <CloseAt>450</CloseAt>
  </PortSequence>
  <Interlocks>
    <SIF-04-01><Limit>180</Limit></SIF-04-01>  <!-- In over-temp -->
    <SIF-04-02><Limit>1.0</Limit></SIF-04-02>  <!-- pO₂ ppm -->
  </Interlocks>
</StageRecipe>
```

**Version Control:** All recipes stored in Git (PROD-38 Config Mgmt). Batch execution records recipe hash (SHA256) for traceability.

---
