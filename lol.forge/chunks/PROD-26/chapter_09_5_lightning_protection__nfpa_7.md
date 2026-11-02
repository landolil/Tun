## 5. Lightning Protection — NFPA 780 / IEC 62305

### 5.1 Lightning Protection Level (LPL)

**Selected LPL: III** (for essential industrial facility)
- Rolling sphere radius: 45 m
- Mesh size: 15 m × 15 m
- Down conductor spacing: 15 m

### 5.2 Air Terminal System

| Component | Specification | Material |
|-----------|---------------|----------|
| **Air Terminals** | 10 mm Ø, 500 mm height | BFRP rod, ZrO₂ tip |
| **Down Conductors** | 50 mm² equivalent | BFRP flat braid (carbon fiber) |
| **Grounding Electrodes** | UFER (concrete-encased) + ring | 50 m ring, 3 m depth |
| **Ground Resistance** | <5 Ω (combined) | Measured annually |
| **Equipotential Bonding** | All metallic services | Via 1 MΩ resistors (static only) |

### 5.3 Surge Protection Zones (IEC 62305-4)

| Zone | Boundary | Protection | Residual Surge |
|------|----------|------------|----------------|
| **LPZ 0ₐ** | Outside structure | Air terminals, down conductors | Direct strike |
| **LPZ 0ᵦ** | Building envelope | GDT at service entrance | 6 kV / 3 kA |
| **LPZ 1** | Process electronics room | MOV + GDT hybrid at XFMR primary | 1.5 kV |
| **LPZ 2** | Inverter modules (BFRP) | No conductive penetration | <10 V |
| **LPZ 3** | FPGA/RTU/PLC (BFRP) | POF only, DC-DC isolated | <1 V |

---
