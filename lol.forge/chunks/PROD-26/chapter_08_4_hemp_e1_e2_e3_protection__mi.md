## 4. HEMP E1/E2/E3 Protection — MIL-STD-1857 / IEC 61000-2-9

### 4.1 Threat Environment

| Component | E1 (Early) | E2 (Intermediate) | E3 (Late) |
|-----------|------------|-------------------|-----------|
| **Rise Time** | <1 ns | 1 μs – 1 ms | 1–100 s |
| **Peak Field** | 50 kV/m | 1–10 kV/m | 10–100 V/km |
| **Frequency** | DC – 1 GHz | 1 Hz – 100 kHz | DC – 1 Hz |
| **Energy** | 10⁻⁶ J/m² | 10⁻² J/m² | 1–10 J/m² |
| **Coupling** | Line-of-sight, antenna | Lightning-like | GIC-like |

### 4.2 E1 Protection (Fast Pulse, <1 ns)

| Path | Protection | Specification |
|------|------------|---------------|
| **Grid Interface** | Gas Discharge Tube (GDT) | 3 kA, 8/20 μs, 600 V |
| **POF Network** | Inherently immune | No conductive path |
| **Enclosure** | BFRP Faraday cage | >60 dB @ 1 GHz (YInMn Blue glaze) |
| **Internal Wiring** | PTFE, twisted pair, <10 cm | Inside BFRP housing only |

**Verification:** TEM cell test 50 kV/m, 1 ns rise — no upset on FPGA/RTU/PLC. Bit error rate <10⁻¹² on POF.

### 4.3 E2 Protection (Intermediate, Lightning-Like)

| Path | Protection | Specification |
|------|------------|---------------|
| **Grid Interface** | GDT + MOV hybrid | 20 kA, 8/20 μs, 1.2 kV |
| **DC Link** | Film capacitor (self-healing) | 1000 VDC, 500 μF |
| **Coolant** | PEX-a (no conduction) | Immune |
| **Structure** | BFRP frame, equipotential mesh | 1 MΩ bleed resistors |

**Verification:** IEC 61000-4-5 Combination Wave (1.2/50 μs – 8/20 μs) 6 kV/3 kA — no damage.

### 4.4 E3 Protection (Late, GIC-Like)

| Path | Protection | Specification |
|------|------------|---------------|
| **Grid Interface** | Same as GIC ride-through | Floating XFMR, NGR 5A |
| **DC Link** | No earth reference | Immune |
| **Control** | All-dielectric (PMMA POF) | Immune |
| **Power Supplies** | Isolated DC-DC (BFRP) | No ground loop |

**Verification:** DC injection test (0.1 Hz, 10 A) on grid side — no process-side disturbance.

---
