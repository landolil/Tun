## 1. Electrical Safety Architecture

### 1.1 Design Philosophy

The Aegis-Forge I electrical safety architecture is governed by a single irreducible principle: **no conductive path shall exist between the process zone (2200°C, 500 kW induction, Carrington-class GIC environment) and earth ground.** This constraint forces the entire field layer — 480+ sensors, 96+ actuators, 8 GaN inverter modules — to communicate and be powered through all-dielectric media: PMMA plastic optical fiber (POF) for signals, PEX-a tubing for coolant, BFRP housings for enclosures, ceramic bushings for penetrations.

**Three non-negotiable constraints define the architecture:**

| Constraint | Implementation | Verification |
|------------|----------------|--------------|
| **Zero conductive penetration** | PMMA POF only fieldbus (980 μm core), PEX-a coolant, BFRP enclosures, ZrO₂/Al₂O₃ bushings | Megger >10 GΩ at 500 VDC between process and earth |
| **Floating power distribution** | Isolation transformer (Δ-Y, floating secondary), NGR 5A, no neutral-earth bond | Ground fault current <5 A under any single fault |
| **Carrington GIC immunity** | 5000 nT/s → <1 V induced on POF; ride-through mode (5 ms cap → 10 ms island → LiFePO₄) | Helmholtz coil test 100 A/m, no spurious trips |

**Consequences of violation:** A single copper wire crossing the pressure boundary becomes a GIC antenna. 5000 nT/s induces >100 V/km. At 50 m cable length: >5 V common-mode on a GaN gate driver (6 V threshold) = destruction. At 100 V common-mode on FBG interrogator = permanent damage. The all-dielectric architecture is not a preference — it is the only topology that survives.

### 1.2 Hierarchy Summary — Electrical Perspective

| Level | Voltage Domain | Isolation | GIC/EMP Hardening |
|-------|----------------|-----------|-------------------|
| **Grid** | 480 VAC 3φ Δ | Isolation XFMR (Δ-Y, BFRP, 10 kV BIL) | GDT at primary, floating secondary |
| **DC Link** | 800 VDC (per module) | Film caps (PP), no earth ref | 100 Wh LiFePO₄ backup per module |
| **L0 Cell (FPGA)** | 12 VDC (from DC-DC) | BFRP board, POF comms | No copper beyond DC-DC |
| **L1 RTU** | 24 VDC (isolated DC-DC) | BFRP housing, POF I/O | MRAM config survives power loss |
| **L2 PLC** | 24 VDC (isolated) | Rugged, lockstep CPU | FRAM interlock config |
| **L3 SCADA** | 24 VDC (UPS) | Air-gapped, data diode | No IT→OT path |

### 1.3 Safety Integrity Levels (IEC 61508)

| SIL Level | Functions | Architecture | PFD<sub>avg</sub> Target |
|-----------|-----------|--------------|---------------------------|
| **SIL-3** | 24 SIFs (overtemp, overpressure, pO₂, ground fault, GIC, cooling loss, rotation loss, E-stop) | 2oo3 voting, dedicated FPGA, PMMA POF | 1×10⁻⁴ to 1×10⁻³ |
| **SIL-2** | 12 SIFs (FBG comms loss, valve fail, carousel jam, flame detect) | 1oo2D, RTU/PLC | 1×10⁻³ to 1×10⁻² |
| **SIL-1** | 36 SIFs (process alarms, quality limits, maintenance alerts) | Single channel, PLC | 1×10⁻² to 1×10⁻¹ |

**Total SIF Count:** 72 (24 SIL-3, 12 SIL-2, 36 SIL-1)
**SIS Architecture:** Dedicated FPGA per zone RTU + Stage PLC safety bus + Plant SIS master, all on dedicated TSN VLAN 10 with 100 μs time slice.

---
