## 6. FBG Sensor Network — 384 Optical Thermometers

### 6.1 Why FBG — The All-Optical Imperative

**No metallic thermocouples in the process chamber.** This is non-negotiable:
- GIC (Geomagnetically Induced Current) immunity requires zero conductive paths
- Thermocouples create dissimilar-metal junctions → Seebeck voltages under dB/dt
- Metallic wires act as antennas for EMP/Carrington events
- FBG on PMMA fiber: pure dielectric, immune to EMI, EMP, GIC, RFI

### 6.2 FBG Specifications — Fiber Bragg Grating

| Parameter | Specification |
|---|---|
| Wavelength | 1550 nm ± 0.5 nm (C-band, low fiber loss) |
| Grating length | 5 mm |
| Reflectivity | >95% |
| Temperature sensitivity | 10 pm/°C (1.2 pm/°C per nm wavelength) |
| Operating range | -50°C to 1200°C (polyimide coating) |
| Strain sensitivity | 1.2 pm/με (for dual temp/strain discrimination) |
| Fiber type | PMMA (polymethyl methacrylate) core, fluorinated cladding |
| Fiber diameter | 250 μm (coated) |
| Connector | FC/APC (angled polish, -60 dB return loss) |

**Temperature measurement principle:**
$$\Delta\lambda_B = \lambda_B (\alpha_{eff} + \xi_{eff}) \Delta T + \lambda_B (1 - p_e) \Delta\varepsilon$$
Where $\alpha_{eff}$ = effective thermal expansion, $\xi_{eff}$ = thermo-optic coefficient, $p_e$ = photoelastic constant.

For PMMA fiber at 1550 nm: $\Delta\lambda_B/\Delta T \approx 10 \text{ pm/°C}$.

**Resolution:** Interrogator resolves 1 pm → 0.1°C temperature resolution.

### 6.3 Embedding Pattern — 384 Sensors Total

**Distribution by location:**
| Location | Sensors | Purpose |
|---|---|---|
| Drum wall (embedded) | 48 | Core thermal field, 6 per zone × 8 zones |
| Liner Zone A (Si₃N₄) | 48 | Low-temp stage monitoring |
| Liner Zone B (ZrB₂-SiC) | 48 | Mid-temp stage monitoring |
| Liner Zone C (ZrO₂) | 48 | High-temp stage monitoring |
| BFRP vessel inner | 48 | Vessel thermal protection |
| Port valve actuators | 32 | 4 per port × 8 ports |
| Coil housing | 48 | 6 per zone × 8 zones (monitor coil temp) |
| Gas system | 32 | Condenser, scrubber, plasma torch |
| **Total** | **384** | |

**Spatial arrangement (drum wall example):**
- 6 circumferential positions × 8 axial positions per zone
- Circumferential: 0°, 60°, 120°, 180°, 240°, 300°
- Axial: 50, 150, 250, 350, 450, 550, 650, 750 mm
- Embedded during flash sintering (ZrB₂-SiC powder packed around fiber)

### 6.4 Multiplexing — WDM + TDM Hybrid

**Challenge:** 384 sensors, 1 interrogator per 8 zones (8 interrogators total)

**Solution:** Wavelength Division Multiplexing (WDM) + Time Division Multiplexing (TDM)

**WDM:** 16 wavelength channels per fiber (1550 nm ± 0.5 nm, 0.1 nm spacing = 1.6 nm bandwidth)
- 1549.2, 1549.3, ..., 1550.7 nm
- Each channel carries 1 sensor (or multiple via TDM)

**TDM:** 2 sensors per wavelength (2 μs pulse separation)
- Total per fiber: 16 × 2 = 32 sensors
- Fibers per zone: 2 (64 sensors/zone)
- Total fibers: 8 zones × 2 = 16 fibers + 4 for vessel/gas = 20 fibers

**Interrogator specs (per zone, 8 total):**
- Channels: 16 (WDM)
- Scan rate: 1 kHz per channel (16 kHz aggregate)
- Resolution: 1 pm (0.1°C)
- Dynamic range: 40 dB
- Interface: EtherCAT to zone controller
- Power: 24V DC, 15W (isolated supply)

### 6.5 Sensor Locations — Detailed Map

**Drum wall (embedded during flash sintering):**
```
Zone 1 (0-100mm):    Sensors 1-6  at 0°,60°,120°,180°,240°,300° × 50mm axial
Zone 2 (100-200mm):  Sensors 7-12 at same angles × 150mm axial
...
Zone 8 (700-800mm):  Sensors 43-48 at same angles × 750mm axial
```
Total: 48 sensors in drum wall ceramic matrix.

**Liner zones (surface-mounted, ceramic cement):**
- Zone A (0-250mm): 6 circumferential × 8 axial = 48
- Zone B (250-550mm): 6 × 8 = 48
- Zone C (550-800mm): 6 × 8 = 48

**BFRP vessel inner surface (surface-mounted):**
- 8 axial positions × 6 circumferential = 48
- Monitors vessel thermal gradient for Barlow validation

**Port valve actuators (embedded in Ti₃AlC₂):**
- 4 per actuator: tip, base, side, reference
- 8 ports × 4 = 32
- Measures actuator temperature for deflection calibration

**Coil housing (surface-mounted on BFRP):**
- 6 per zone × 8 zones = 48
- Monitors coil winding temperature for thermal protection

### 6.6 Interrogator Network Architecture

```
                    ┌─────────────────────────────────────┐
                    │      MASTER PLC (S7-1500)           │
                    │  EtherCAT Master, 1 ms cycle        │
                    └──────────────┬──────────────────────┘
                                   │
        ┌──────────────────────────┼──────────────────────────┐
        │                          │                          │
   ┌────▼────┐               ┌─────▼─────┐             ┌──────▼──────┐
   │Zone 1 FBG│               │Zone 2 FBG │      ...   │Zone 8 FBG │
   │Interrog. │               │Interrog.  │             │Interrog.  │
   │16 ch, 1kHz│              │16 ch, 1kHz│             │16 ch, 1kHz│
   └────┬────┘               └─────┬─────┘             └──────┬──────┘
        │                          │                          │
   ┌────┴────┐               ┌─────┴─────┐             ┌──────┴──────┐
   │ 2 fibers│               │ 2 fibers  │      ...    │ 2 fibers  │
   │ 64 FBGs │               │ 64 FBGs   │             │ 64 FBGs   │
   └─────────┘               └───────────┘             └───────────┘

Vessel/Gas interrogators (2 additional): 128 FBGs total
```

**Data flow:** FBG interrogator → EtherCAT → Zone Controller (local PID) → Master PLC (MPC, logging) → HMI

---


---
