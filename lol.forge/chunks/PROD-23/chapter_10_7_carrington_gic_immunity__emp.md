## 7. Carrington GIC Immunity — EMP-Hardened OT

### 7.1 Threat Model

| Phenomenon | Parameter | Standard |
|------------|-----------|----------|
| **GIC (Geomagnetic)** | dB/dt = 5000 nT/s, 100 A/km induced | IEEE Std 1656 |
| **E1 HEMP** | 50 kV/m, 1 ns rise, 100 MHz bandwidth | IEC 61000-2-9 |
| **E2 HEMP** | 1-10 kV/m, 1 μs-1 ms, similar to lightning | IEC 61000-4-25 |
| **E3 HEMP** | Slow (1-100 s), quasi-DC, like GIC | IEC 61000-4-34 |
| **Surface Charging** | >10 kV (space environment) | MIL-STD-1857 |

### 7.2 Hardening Architecture

| Layer | Mitigation | Implementation |
|-------|------------|----------------|
| **Physical** | Faraday cage RTUs | BFRP housing + conductive YInMn glaze (σ = 10⁴ S/m) |
| **Power** | Floating secondary | Isolation transformers (Δ-Y), no earth reference |
| **Power** | NGR limiting | 5 A high-resistance grounding |
| **Power** | Surge protection | GDT (3 kA) + MOV at transformer primary |
| **Signal** | All-dielectric comms | PMMA POF — zero conductive path |
| **Signal** | Optical isolation | No copper crossing pressure boundary |
| **Signal** | Common-mode choke | Nanocrystalline on any residual copper |
| **Network** | TSN dual-ring | No single point of failure, deterministic |
| **Cyber** | Air-gap + data diode | Unidirectional to IT, no external IP |
| **Firmware** | Signed boot | Secure boot on all FPGA/RTU/PLC |

### 7.3 GIC Ride-Through Mode

When grid dV/dt > threshold (detected by dedicated monitor):

1. **Detection** (1 ms): Grid monitor FPGA triggers interrupt
2. **Transition** (5 ms): Inverters switch to "ride-through" — maintain DC link from bus capacitors
3. **Isolation** (10 ms): Physical contactors open (vacuum, BFRP housed) — Forge islanded
4. **Sustain** (indefinite): LiFePO₄ backup (100 Wh) powers control system; drum coast-down
5. **Reconnect** (auto): When grid stable >30 s, pre-charge → contactor close → resume

**Validation:** Tested at up to 100 A/m simulated field (Helmholtz coil facility). No protection trips, no data loss.

---
