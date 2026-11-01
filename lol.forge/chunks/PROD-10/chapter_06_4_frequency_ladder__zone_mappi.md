## 4. Frequency Ladder & Zone Mapping - Skin Depth Physics

### 4.1 Skin Depth as Material Selector

The fundamental equation governing inductive coupling depth:
delta = sqrt(2*rho / (omega*mu)) = sqrt(rho / (pi*f*mu))

Where rho = resistivity (ohm*m), mu = permeability (H/m), f = frequency (Hz).

**Skin Depth Table at Zone Frequencies (700C typical):**

| Material | rho (700C) | mu_r | delta @ 100 kHz | delta @ 50 kHz | delta @ 10 kHz | delta @ 5 kHz | delta @ 2 kHz | delta @ 1 kHz |
|----------|------------|------|-----------------|----------------|----------------|---------------|---------------|---------------|
| Aluminum | 4.5e-8 | 1 | 1.07 mm | 1.51 mm | 3.38 mm | 4.78 mm | 7.57 mm | 10.7 mm |
| Copper | 3.0e-8 | 1 | 0.87 mm | 1.23 mm | 2.76 mm | 3.90 mm | 6.17 mm | 8.73 mm |
| Zinc | 1.2e-7 | 1 | 1.74 mm | 2.46 mm | 5.50 mm | 7.78 mm | 12.3 mm | 17.4 mm |
| Lead | 2.5e-7 | 1 | 2.51 mm | 3.55 mm | 7.95 mm | 11.2 mm | 17.8 mm | 25.1 mm |
| Iron (ferro) | 1.2e-7 | 200 | 0.12 mm | 0.17 mm | 0.39 mm | 0.55 mm | 0.87 mm | 1.23 mm |
| Iron (non-ferro) | 1.2e-7 | 1 | 1.74 mm | 2.46 mm | 5.50 mm | 7.78 mm | 12.3 mm | 17.4 mm |
| Steel (304) | 8.0e-7 | 1 | 1.42 mm | 2.01 mm | 4.50 mm | 6.36 mm | 10.1 mm | 14.2 mm |
| Graphite | 1.0e-5 | 1 | 5.0 mm | 7.1 mm | 15.9 mm | 22.5 mm | 35.6 mm | 50.3 mm |

### 4.2 Frequency Selection Logic

**Zone 1-2 (100 kHz):** Target = air/N2 heating for organics. Skin depth in metals << 1 mm - metals shielded, only surface heating. Air heating via dielectric loss (negligible) and coil radiation. Power: 0-50 kW.

**Zone 3 (50 kHz):** Target = Zn, Pb begin coupling. delta_Zn = 2.5 mm - sufficient for thin Zn coatings on steel. Power: 50-80 kW.

**Zone 4-5 (10 kHz):** Target = Aluminum window. delta_Al = 3.4 mm - optimal for Al pieces 5-10 mm thick. Copper delta = 2.8 mm - still partially shielded (selective!). Power: 80-150 kW.

**Zone 6 (5 kHz):** Target = Copper deep penetration. delta_Cu = 3.9 mm - good for wire, traces. Aluminum delta = 4.8 mm - also heats (downstream separation handles this). Power: 100-200 kW.

**Zone 7 (2 kHz):** Target = Iron/Steel ferromagnetic. Below Curie (770C): mu_r = 200 - delta = 0.17 mm (surface only). Above Curie: mu_r = 1 - delta = 5.5 mm (bulk heating). The transition IS the control signal. Power: 150-350 kW.

**Zone 8 (1 kHz):** Target = Refractory minerals. delta_mineral = 10-50 mm - conduction heating only. Power: 200-500 kW.

### 4.3 Selective Heating Demonstration - The Aluminum Window

At Stage 5 (660-720C), Zone 5 operates at 10 kHz:
- Aluminum: delta = 3.4 mm - bulk heating, rapid melt
- Copper: delta = 2.8 mm - surface only, 10 mm Cu piece sees <10% volume heated
- Iron: delta = 5.5 mm (non-ferro) - moderate, but Fe is 500C below melt

**Result:** Only aluminum liquefies in Zone 5. Copper and iron remain solid. This is the **frequency-selective thermal window** - the frequency ladder IS the periodic table's conductivity map made operational.

The skin depth equation is the only equation needed. The frequency ladder is unique, deterministic, and parameter-free - the material properties enter only as rho and mu.

---
