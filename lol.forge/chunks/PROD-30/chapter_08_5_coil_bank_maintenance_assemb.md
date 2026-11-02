## 5. Coil Bank Maintenance (Assembly A-09 ×8 zones)

### 5.1 Monthly Resonance & ZVS Verification (PROD-30-WI-020)

**Per Zone Procedure:**
1. Impedance analyzer sweep (1 kHz–200 kHz): resonant frequency, Q factor
2. Power analyzer: ZVS verification at 25%, 50%, 75%, 100% load
3. Thermal: IR camera at 100% load (30 min soak)
4. Data: Frequency vs. zone table ±1%; Q >150; ZVS phase <5°

**Zone-Specific Targets:**

| Zone | Stage | Target Freq | Power Range | Q Target |
|---|---|---|---|---|
| Z1 | 1 (Drying) | 100 kHz ±1% | 0–50 kW | >150 |
| Z2 | 2 (Polymer) | 100 kHz ±1% | 0–50 kW | >150 |
| Z3 | 3 (Pyrolysis) | 50 kHz ±1% | 50–80 kW | >150 |
| Z4 | 4 (Low-Temp) | 10 kHz ±1% | 80–150 kW | >150 |
| Z5 | 5 (Al) | 10 kHz ±1% | 80–150 kW | >150 |
| Z6 | 6 (Cu/PM) | 5 kHz ±1% | 100–200 kW | >150 |
| Z7 | 7 (Fe) | 2 kHz ±1% | 150–350 kW | >150 |
| Z8 | 8 (Mineral) | 1 kHz ±1% | 200–500 kW | >150 |

### 5.2 Monthly FBG Cross-Talk Check (PROD-30-WI-021)

**Method:** Interrogator single-channel excitation + adjacent channel monitoring
**Acceptance:** Adjacent channel isolation >40 dB; WDM channel spacing 0.8 nm maintained
**Action if Failed:** FBG re-splice (PROD-30-WI-003) or channel remapping

### 5.3 Quarterly Cold Plate Leak Test (PROD-30-WI-022)

**Method:** He mass spectrometer, 10 bar He, 30 min hold per zone
**Acceptance:** <10⁻⁹ mbar·L/s (PROD-28 Sec 3.4)
**Action if Failed:** Cold plate removal → TIM (In foil) inspection → re-bond or replace

### 5.4 Annual PEX-a Integrity (PROD-30-WI-023)

**Method:** Pressure decay test @ 10 bar, 1 hour
**Acceptance:** <0.1 bar/hr pressure drop
**Visual:** No kinking, abrasion, UV degradation, fitting corrosion

### 5.5 Biennial Inductor Visual + CT (PROD-30-WI-024)

**Visual:** Cu tube insulation (Al₂O₃ coating), support spacers (BFRP), connections
**CT:** 50 μm voxel, focus on conductor insulation, braze joints, support integrity
**Acceptance:** No insulation cracking; no conductor displacement >0.5 mm; no braze voids >100 μm

---
