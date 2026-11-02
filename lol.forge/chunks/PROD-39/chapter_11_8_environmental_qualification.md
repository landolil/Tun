## 8. Environmental Qualification

### 8.1 Seismic Qualification (IEEE 693)

| Test | Standard | Level | Acceptance |
|------|----------|-------|------------|
| **OBE (Operating Basis Earthquake)** | IEEE 693 High | 5× RRS ×0.4g | No damage, re-test PASS |
| **SSE (Safe Shutdown Earthquake)** | IEEE 693 High | 1× RRS ×1.0g | HCLPF >1.6g |
| **Isolator Qualification** | IEEE 693 | Per PROD-25 | Displacement <25mm OBE |
| **Equipment Qualification** | IEEE 693 | Per component | Function during/after shake |

**Qualification by Analysis + Test:**
- Frame/isolators: Shake table (CT-09)
- Drum/vessel: FEA (PROD-25) + shake table fixture
- Electronics: Component shake + functional test
- POF cables: Vibration + attenuation test

### 8.2 Thermal Cycling Qualification

| Component | Cycles | Profile | Acceptance |
|-----------|--------|---------|------------|
| **Drum (ZrB₂-SiC)** | 500 | 25→2200°C→25, 50°C/min | FBG drift <0.5%, no liner crack |
| **Vessel (BFRP)** | 500 | 25→200°C→25, 10°C/min | No delam, AE baseline stable |
| **Port Valves** | 500 | 25→700°C→25, 20°C/min | Actuation 3.6±0.2mm, leak <10⁻⁶ |
| **Coil Bank** | 500 | 25→500°C→25, 20°C/min | Resonance stable, ZVS maintained |
| **Power Electronics** | 500 | 25→125°C→25, 10°C/min | T_j <125°C, no solder fatigue |

### 8.3 GIC/EMP/HEMP Qualification

| Threat | Standard | Test Level | Acceptance |
|--------|----------|------------|------------|
| **GIC (Geomagnetic)** | IEC 61000-4-10 / IEEE C37.90 | 100 A/m, 5000 nT/s, 30 min | CT-07 PASS |
| **EMP (Electromagnetic Pulse)** | IEC 61000-2-9 / MIL-STD-461 | 50 kV/m, 10 ns rise | No upset, no damage |
| **HEMP (High-Altitude EMP)** | MIL-STD-188-125 | 50 kV/m, E1/E2/E3 | Safety functions hold |
| **Lightning Indirect** | IEC 61000-4-5 | 4 kV, 1.2/50 μs | Surge protection holds |

**Note:** All-dielectric construction (PMMA POF, BFRP, ceramics) provides inherent immunity. Qualification focuses on verifying no metallic paths exist and power electronics survive.

### 8.4 Environmental Stress Screening (ESS)

| Level | Profile | Duration | Application |
|-------|---------|----------|-------------|
| **Component** | Thermal -40→+85°C, 10 cycles; Vibration 10-2000 Hz, 10g | 48 hr | All electronics modules |
| **Subassembly** | Thermal + vibration combined | 24 hr | RTU, PLC, Inverter |
| **System** | CT-08 thermal cycle + CT-09 seismic | Per FAT | Full Forge |

---
