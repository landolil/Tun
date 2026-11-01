## 5. Electronic/Optical Components — Deep Dive

### 5.1 GaN HEMT RF Modules (PROD-10, 8 zones × 2 = 16 devices)

**Device:** GS66516T, 650V, 16A, GaN-on-SiC

**Properties:**
- R<sub>DS(on)</sub>: 30 mΩ
- C<sub>oss</sub>: 55 pF
- Q<sub>g</sub>: 3.5 nC
- T<sub>j</sub> max: 150°C

**Supply Chain:** Wolfspeed (Durham, NC — US domestic), $45/module at volume
**In-House:** Not feasible (MOCVD epitaxy required). Design PCB + driver in-house.

### 5.2 PMMA POF + FBG Sensors (Item 17) — The Nervous System

**Fiber:** PMMA step-index, 980µm core, 1000µm clad, >10¹⁵ Ω·m resistivity

**FBG:** Type I, UV-written in PMMA, 0.15 nm/°C sensitivity, 5mm grating

**Multiplexing:** WDM (8 λ: 680, 700, 720, 740, 760, 780, 800, 820 nm) + TDM (6 spatial)

**In-House Fiber Drawing:**
- MMA-grade PMMA rod → heated draw tower ($25K)
- Cost: $0.12/m vs. $0.45/m commercial
- **Savings: 73%**

### 5.3 LiFePO₄ Battery (Backup Power)

**Grade:** Prismatic 100Wh, 280Ah cells

**Properties:**
- No cobalt, no nickel
- Thermal runaway: 270°C
- Cycle life: 4,000+
- Energy density: 140 Wh/kg

**Acquisition:** BYD/CATL $0.95/Wh — domestic assembly at scale (30-40% savings).

### 5.4 LoRa Radio (Telemetry)

**Module:** Semtech SX1276 or RAK3172, 915 MHz, 100 mW

**Acquisition:** $6/module at volume — buy commercial.

---
