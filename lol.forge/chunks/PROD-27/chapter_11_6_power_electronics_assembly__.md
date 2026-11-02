## 6. Power Electronics Assembly — GaN Inverter Modules (A-10)

### 6.1 Module Architecture (×8 identical modules)

```
MODULE HOUSING (BFRP, 400×300×150 mm)
├─ GS66516T GaN HEMT ×2 (half-bridge)
├─ LMG1210 Gate Driver ×2 (transformer isolated)
├─ Film Capacitor Bank (500 VDC, 500 μF, PP)
├─ Varactor Array (32×, 0.5–30 pF, 30 V)
├─ Switched Cap Bank (6-bit binary, C to 32C)
├─ DC Link Shunt (500 A, 50 μΩ, 4-wire)
├─ TSN Switch Port (PMMA POF, 1 Gbps)
├─ FBG Interrogator Interface (POF)
├─ SIL-3 FPGA (Artix-7, dedicated)
└─ Microchannel Cold Plate (AlSiC, In foil TIM)
```

### 6.2 Assembly Sequence

| Step | Operation | Specification |
|---|---|---|
| 1 | BFRP housing machining | CNC, ±0.05 mm, PTFE-coated |
| 2 | Cold plate bond | AlSiC + In foil (99.99%), 150°C/1 MPa/10 min |
| 3 | GaN mount | Solder (SAC305) on DBC, 240°C peak |
| 4 | Gate driver install | Transformer isolated, creepage 11 mm |
| 5 | Cap bank install | Film caps, busbar bolted (PEEK CF40) |
| 6 | Varactor/cap bank PCB | 8-layer, PTFE, controlled impedance |
| 7 | TSN/POF termination | BFRP bulkhead, ZrO₂ ferrules |
| 8 | FPGA program load | Bitstream + SIL-3 config (MRAM) |
| 9 | Conformal coat | Parylene C, 25 μm (except connectors) |
| 10 | Module test | Full functional @ 24 VDC + 800 VDC |

### 6.3 Module Test Protocol

| Test | Condition | Pass Criteria |
|---|---|---|
| DC link charge | 0→800 V in 500 ms | No overshoot >850 V |
| ZVS acquisition | 0→100% load ramp | Phase <5° all points |
| Thermal soak | 500 kW/30 min | T_j < 125°C (IR) |
| GIC ride-through | 100 A/m Helmholtz | No trip, data intact |
| EMI | CISPR 11 Class A | >20 dB margin |
| SIL-3 SIF injection | All 3 SIFs/module | <50 ms response |

---
