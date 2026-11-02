## 6. Anode Casting and Slime Collection

### 6.1 Anode Design for Electrorefining (Interface with FOLLOW-19)

**Anode Specifications (Standard Copper Electrorefining):**
| Parameter | Specification | Rationale |
|---|---|---|
| **Dimensions** | 100 × 500 × 112 mm (W×H×T) | Standard ISA cell compatibility |
| **Mass** | 50 kg ±2% | Handling, cell current density |
| **Cu Purity** | >99.9% Cu | Electrorefining feed spec |
| **Oxygen** | <200 ppm | Prevents anode slime excess |
| **Sulfur** | <15 ppm | Controls slime adhesion |
| **Silver** | 200-500 ppm | Reports to slime — tracked |
| **Gold** | 20-50 ppm | Reports to slime — tracked |
| **Palladium** | 5-15 ppm | Reports to slime — tracked |
| **Lead** | <50 ppm | Forms PbO in slime |
| **Arsenic** | <50 ppm | Volatilizes — controlled |
| **Antimony** | <30 ppm | Volatilizes — controlled |
| **Bismuth** | <20 ppm | Volatilizes — controlled |
| **Nickel** | <200 ppm | Dissolves in electrolyte |
| **Iron** | <50 ppm | Dissolves in electrolyte |
| **Surface** | As-cast, no machining | ZrO₂ mold finish adequate |
| **Stamp** | BATCH-YYYYMMDD-NNN-6-1150-SSSS | PROD-08 traceability |
| **Data Matrix** | ECC200, 4mm² | LIBS grade, mass, timestamp |
| **RFID** | Passive UHF, ZrO₂ encapsulated | Optional, high-value anodes |

**Anode Quality Verification (Per Anode):**
1. **Mass:** FBG load cell at demold (±0.1 kg)
2. **Dimensions:** Laser triangulation (±0.1 mm)
3. **Composition:** LIBS re-check at demold (PROD-08 Section 5)
4. **Grade Assignment:** DIRECT_USE (electrorefining feed)
5. **Registry Entry:** `slug_registry` with `downstream_machine: 114-electrorefining`

### 6.2 Slime Collection and Transfer to FOLLOW-19

**Per Anode Slime Yield:**
- Slime mass: 10-15 kg per 50 kg anode (20-30%)
- Slime composition: See Section 3.2 table
- Collection: ZrO₂ catch tray → sealed container (ZrO₂, 10 L capacity)
- Container purged: N₂, 5 min, 5 SLPM
- **Container ID linked to 4 anode UUIDs from same batch**

**Slime Transfer Protocol (to FOLLOW-19):**
```
SLIME TRANSFER CHECKLIST
═════════════════════════
☐ 1. Slime container sealed, N₂ purged, weighed
☐ 2. LIBS spectrum recorded (container headspace + slime surface)
☐ 3. Container UUID written to slime_registry with:
     - Parent anode UUIDs (4)
     - Batch ID, Port 6A, Stage temp 1150°C
     - Estimated PM content (from anode LIBS + mass balance)
☐ 4. Physical transfer: Sealed container on BFRP conveyor to Machine 113
☐ 5. Machine 113 (Hydro-Refinery) receives:
     - Slime container(s) — 1 per batch (4 anodes combined)
     - Transfer manifest (digital, signed by Forge + Refinery operators)
     - Phoenix Protocol chain: phoenix_generation from anodes
☐ 6. Refinery confirms receipt → Forge closes batch record
```

**FOLLOW-19 Interface Requirements:**
- Slime feed rate: 1 batch (40-60 kg slime) per 3.5 hours
- Slime composition variability: ±20% PM content (managed by refinery)
- Refinery process: Sulfuric acid leach → Cu removal → PM separation → electrolytic refining
- **Output from FOLLOW-19:** 99.99% Cu cathode, 99.9% Au/Ag/Pd/Pt sponge, Se/Te byproducts

---
