## Appendix A: Detailed Inverter Schematics and BOM

### A.1 Single-Line Diagram (Per Zone)

```
480V Δ Primary
     │
     ▼
┌─────────────────────────────────────┐
│  Isolation Transformer (200 kVA)    │
│  Δ-Y, 480V→400V, Floating Secondary │
└─────────────────────────────────────┘
     │
     ▼
┌─────────────────────────────────────┐
│  LCL Harmonic Filter                │
│  L1=200μH │ C=10μF │ L2=50μH        │
└─────────────────────────────────────┘
     │
     ▼
┌─────────────────────────────────────┐
│  GaN Class E Resonant Inverter      │
│  ┌─────────────────────────────┐    │
│  │  Half-Bridge: 2× GS66516T   │    │
│  │  Bootstrapped High-Side Drv │    │
│  │  Varactor Tuning Network    │    │
│  │  Switched Cap Bank (6-bit)  │    │
│  └─────────────────────────────┘    │
│  Resonant Tank: Lr + Cshunt         │
│  Output: 1–100 kHz, 0–500 kW       │
└─────────────────────────────────────┘
     │
     ▼
┌─────────────────────────────────────┐
│  Induction Coil (8-turn Cu tube)    │
│  Al₂O₃ sleeve │ PEX-a cooling       │
│  BFRP housing │ 15mm gap to drum    │
└─────────────────────────────────────┘
     │
     ▼
┌─────────────────────────────────────┐
│  ZrB₂-SiC Drum (Load)               │
│  FBG Sensors (48/zone)              │
│  PMMA POF → Interrogator            │
└─────────────────────────────────────┘
```

### A.2 Bill of Materials (Per Zone)

| Item | Qty | Part Number | Description | CSMFAB Ref |
|------|-----|-------------|-------------|------------|
| 1 | 2 | GS66516T | 650V 16A GaN HEMT | Mat Study IV |
| 2 | 1 | LMG1210 | GaN Half-Bridge Driver | Mat Study IV |
| 3 | 1 | Custom | Microchannel Cold Plate (Cu) | — |
| 4 | 1 | Custom | Resonant Inductor (Nanocrystalline) | — |
| 5 | 6 | C0G/NP0 | Switched Cap Bank (10nF–640nF) | — |
| 6 | 4 | BBY65-02V | Varactor Diodes (2–15pF) | — |
| 7 | 1 | BFRP-Elium | Coil Housing | CSMFAB000000000011 |
| 8 | 8m | Cu Tube 25mm | Coil Conductor | — |
| 9 | 8m | Al₂O₃ Tube | Coil Insulation | Mat Study I |
| 10 | 10m | PEX-a 1/2" | Water Cooling | Mat Study IV |
| 11 | 48 | Custom | FBG Sensor (PMMA) | Mat Study IV |
| 12 | 60m | PMMA POF 1mm | Sensor Fiber | Mat Study IV |
| 13 | 1 | Custom | 1×6 PMMA Splitter | — |
| 14 | 1 | BFRP Pultruded | Mounting Flange | CSMFAB000000000010 |
| 15 | 16 | PEEK CF40 | M10 Bolts | Mat Study IV |
| 16 | 12 | ZrO₂ | Alignment Pins | Mat Study I |

### A.3 Control Electronics BOM (Shared Across 8 Zones)

| Item | Qty | Part Number | Description |
|------|-----|-------------|-------------|
| 1 | 1 | Custom | FPGA Controller (Artix-7, BFRP board) |
| 2 | 1 | Custom | FBG Interrogator (VCSEL + InGaAs PDA) |
| 3 | 8 | TLV320ADC | 16-bit ADC (current sense) |
| 4 | 8 | AMC1306 | Isolated ΣΔ ADC (voltage sense) |
| 5 | 1 | LoRa SX1276 | Wireless Telemetry | Mat Study IV |
| 6 | 1 | LiFePO4 100Wh | Backup Power | Mat Study IV |
| 7 | 1 | BFRP | Control Cabinet |

---
