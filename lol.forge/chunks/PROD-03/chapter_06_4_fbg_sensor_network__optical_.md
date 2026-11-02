## 4. FBG Sensor Network — Optical Temperature Feedback

### 4.1 Why FBG? Why Optical?

**No Metallic Thermocouples in Process Chamber:**
- Thermocouples = conductive loops = GIC antennas = Carrington vulnerability
- Thermocouples = metal junctions = induction coupling = measurement corruption
- Thermocouples = drift at 2200°C = unreliable

**FBG Advantages:**
- Pure silica fiber (PMMA jacket) — fully dielectric
- Wavelength-encoded temperature — immune to EMI, lead resistance
- Multiplexed: 48 sensors on 2 fibers (24 per fiber, 1 nm spacing)
- Resolution: ±1°C, ±1 με strain
- Bandwidth: 1 kHz per channel (interrogator limited)
- Survival: Embedded during flash sintering, 100% survival validated

### 4.2 FBG Deployment Map (48 Sensors)

**Zone A (Stages 1-3, Si₃N₄ liner interface): 16 sensors**
- 8 circumferential × 2 radial depths (surface + 10 mm deep)
- Monitor: polymer melt front, char formation, thermal gradient

**Zone B (Stages 4-6, ZrB₂-SiC mid-wall): 16 sensors**
- 8 circumferential × 2 radial depths (surface + 17.5 mm deep)
- Monitor: In/Zn/Pb melt, Al window, Cu melt front

**Zone C (Stages 7-8, 3Y-TZP interface): 16 sensors**
- 8 circumferential × 2 radial depths (surface + 10 mm deep)
- Monitor: Fe melt, zircon dissociation, slag formation

**Interrogator: 2× Micron Optics si255 (4-channel each, 8 total channels)**
- Wavelength range: 1510-1590 nm
- Scan rate: 1 kHz per channel (8 kHz aggregate)
- Resolution: 1 pm (≈0.1°C)
- Interface: PMMA optical fiber to FPGA controller

### 4.3 FBG Calibration and Drift Compensation

**Calibration Equation:**
$$\Delta T = \frac{\Delta\lambda}{\lambda_0 \cdot S_T} - \frac{S_\varepsilon}{S_T} \Delta\varepsilon$$

Where S_T = 10 pm/°C (temp sensitivity), S_ε = 1.2 pm/με (strain sensitivity).

**Drift Compensation:**
- Reference FBG (unstrained, surface-mounted) on each fiber
- Common-mode rejection: ΔT_corrected = ΔT_measured - ΔT_reference
- Auto-zero at batch start (ambient, drum stationary)
- Long-term drift: <0.5°C/year (validated 500-batch dataset)

---
