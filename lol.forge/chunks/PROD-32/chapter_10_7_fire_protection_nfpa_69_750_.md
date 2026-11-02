## 7. Fire Protection (NFPA 69, 750, 11, 70E)

### 7.1 Fire Hazard Analysis

| Area | Hazard Class | Fuel Load | Ignition Sources | Detection | Suppression |
|------|--------------|-----------|------------------|-----------|-------------|
| **Process Zone (Stages 0-8)** | Special (Induction) | Basalt/Elium®, Elium® monomer | Arc fault, hot surface, GIC | IR/UV (SIF-00-24) | N₂ inerting + Water Mist (NFPA 750) |
| **Power Electronics** | Class C (Electrical) | GaN modules, capacitors | Short circuit, arc flash | IR/UV + Arc flash relay | N₂ inerting (no water on live) |
| **Gas Storage** | Class B (Flammable Gas) | H₂ 15k lbs, NH₃ 12k lbs | Leak + ignition | H₂/NH₃ detectors | Water spray (exposure protection) |
| **Hydromet** | Class B (Flammable Liq) | Elium® monomer, acids | Chemical reaction, spark | IR/UV + LEL | Foam (NFPA 11) + Water spray |
| **Control Room** | Class A (Ordinary) | BFRP, POF, electronics | Electrical fault | Smoke (photoelectric) | Clean agent (Novec 1230) |
| **Office/Support** | Class A | Standard office | Standard | Smoke | Wet pipe sprinkler |

### 7.2 Suppression System Design

**Process Zone (Zero-Metal Requirement):**
- **Primary:** N₂ inerting (reduce O₂ <8%) — prevents combustion without conductive agents
- **Secondary:** Water Mist (NFPA 750) — 100 μm droplets, 100 bar, non-conductive at <1 m distance
- **No foam/water on live electrical** — NFPA 70E arc flash boundary observed

**Hydromet Area:**
- **Primary:** Alcohol-Resistant Foam (NFPA 11, 3% AR-AFFF) — Elium® monomer polar solvent
- **Secondary:** Water spray cooling for tanks

**Control Room:**
- **Clean Agent:** Novec 1230 (FK-5-1-12) — zero ODP, 5-day atmospheric lifetime, safe for occupied space

### 7.3 Arc Flash (NFPA 70E)

| Location | Voltage | Bolted Fault | Arcing Fault | Incident Energy (18") | PPE Category |
|----------|---------|--------------|--------------|----------------------|--------------|
| **Grid Side (480V)** | 480V | 50 kA | 35 kA | 4.2 cal/cm² | Cat 2 |
| **Process Side (Floating)** | 800 VDC | 10 kA | 7 kA | **0.3 cal/cm²** | **Cat 0** |
| **GaN Module** | 800 VDC | 20 kA | 14 kA | 0.5 cal/cm² | Cat 0 |

**Key:** Floating secondary + NGR 5A + all-dielectric = Cat 0 on process side.

---
