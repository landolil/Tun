## 13. Safety Interlocks & Carrington Hardening

### 13.1 Hardwired Interlocks (SIL-3, Not Software)

All critical safety functions are implemented in hardware — independent of PLC, FPGA, or software.

| Interlock | Sensor | Logic | Action | Response Time |
|---|---|---|---|---|
| Vessel overpressure | Pressure transducer (3× redundant) | P > 3.0 bar | N₂ vent valves open + all coils OFF | < 5 ms |
| Drum overspeed | Optical encoder (2×) | RPM > 550 | Emergency brake + coils OFF | < 10 ms |
| Zone overcurrent | Optical CT (per zone) | I > 120% rated | Zone inverter OFF | < 2 μs |
| Zone overvoltage | Optical VT (per zone) | V > 110% rated | Frequency shift + power reduce | < 10 μs |
| FBG sensor loss | Interrogator checksum | >3 sensors failed/zone | Zone power 50% + alarm | < 100 ms |
| Cooling water loss | Flow meter (per zone) | Flow < 50% design | Zone power 0% | < 500 ms |
| Overtemperature | FBG (multiple/zone) | T > limit | Power reduce → OFF | < 10 ms |
| Door/open access | Mechanical switch (2×) | Door open | ALL power OFF + N₂ purge | < 20 ms |
| GIC/EMC event | dB/dt sensor (3-axis) | dB/dt > 10 T/s | Optical isolators hold state | < 1 μs |

**Interlock implementation:**
- Safety PLC: Independent Siemens S7-1500F (separate power, separate EtherCAT)
- Hardwired relay logic for < 5 ms trips
- Latching relays — manual reset required
- Test ports for periodic verification (monthly)

### 13.2 Carrington Event (GIC) Immunity

**Threat:** Geomagnetically Induced Currents (GIC) from solar storms — quasi-DC (0.001-0.1 Hz) currents up to 200 A in long conductors.

**Vulnerability vectors in conventional systems:**
- Grid-tied power supplies (transformer saturation)
- Metallic control cables (antenna effect)
- Ground loops (potential differences)
- Thermocouple wires (Seebeck voltage)

**Aegis-Forge I hardening — Zero Conductive Paths:**

| System | Conventional | Aegis-Forge I |
|---|---|---|
| Power input | 480V AC, 3-phase | 480V AC → isolation transformer → 480V DC bus (no ground reference) |
| Control signals | Copper Ethernet, 4-20 mA | PMMA optical fiber (EtherCAT, RS-485 over POF) |
| Temperature sensing | Type K thermocouples | FBG on PMMA fiber (all-dielectric) |
| Pressure sensing | Strain gauge (wheatstone) | FBG strain sensor (optical) |
| Gas analysis | 4-20 mA transmitters | NDIR/GC with optical interface |
| Interlocks | 24V DC relays | Optical isolators + fiber-coupled relays |
| Grounding | Earth ground | **No earth ground** — floating system |

**GIC test validation (per CSMFAB000000000111):**
- Injected GIC: 0-200 A DC on all terminals
- Radiated GMD: Helmholtz coil, 0-500 μT DC, 3 axes
- Result: No malfunction, no false trips, insulation > 100 MΩ maintained

### 13.3 Lightning & EMP Protection

**Lightning indirect effects (IEC 62305):**
- 8/20 μs, 100 kA waveform on power input
- Protection: Gas discharge tubes + MOV + isolation transformer
- Residual: < 500 V at DC bus (within GaN 650V rating)

**EMP (HEMP/E1):**
- 50 kV/m, 10 ns rise time
- Protection: All cables optical → no conducted EMP
- Vessel: BFRP + YInMn glaze provides 60-92 dB shielding (per CSMFAB000000000011)
- FBG fiber: Inherently immune (dielectric)

**Arc flash (internal fault):**
- DC bus: 480V, 600A available
- Protection: Fast DC breaker (2 ms) + fuses (1 ms)
- Arc energy: < 50 kJ (contained by BFRP vessel)

### 13.4 Functional Safety Architecture

```
                    ┌─────────────────────┐
                    │   PROCESS SAFETY    │
                    │   (SIL-3 Safety     │
                    │    PLC: S7-1500F)   │
                    └──────────┬──────────┘
                               │
         ┌─────────────────────┼─────────────────────┐
         │                     │                     │
    ┌────▼────┐          ┌─────▼─────┐         ┌─────▼─────┐
    │Zone 1-4 │          │Zone 5-8   │         │ Vessel/   │
    │Interlock│          │Interlock  │         │ Gas/Door  │
    │ Modules │          │ Modules   │         │ Interlocks│
    └────┬────┘          └─────┬─────┘         └─────┬─────┘
         │                     │                     │
    ┌────▼─────────────────────▼─────────────────────▼┐
    │           EMERGENCY SHUTDOWN BUS                │
    │  (Hardwired, 24V DC, latching relays,          │
    │   manual reset, test ports)                     │
    └─────────────────────┬───────────────────────────┘
                          │
         ┌────────────────┼────────────────┐
         │                │                │
    ┌────▼────┐      ┌─────▼─────┐   ┌─────▼─────┐
    │Inverter │      │ N₂ Vent   │   │  Brake    │
    │  OFF    │      │  Valves   │   │  Motor    │
    └─────────┘      └───────────┘   └───────────┘
```

### 13.5 Cyber-Physical Security

**No network connectivity to outside:**
- Master PLC: No Ethernet to plant network
- HMI: Isolated Wi-Fi (WPA3, no internet)
- Updates: Physical USB (signed, air-gapped scanner)
- Logging: Local historian (1 TB, 10 year retention)

**Supply chain integrity:**
- GaN devices: Sourced from qualified vendors, lot traceability
- FBG fiber: Single-source (CSMFAB000000000013)
- Firmware: Signed, hash-verified at boot (SHA-256)
- No remote access capability — by design

---


---
