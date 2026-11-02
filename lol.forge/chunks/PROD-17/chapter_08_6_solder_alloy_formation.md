## 6. Solder Alloy Formation

### 6.1 Pb/Sn Eutectic (63/37) — Primary Solder Product

The Sn-Pb binary system exhibits a eutectic at 183°C with 61.9% Sn / 38.1% Pb by weight. Commercial "63/37" solder (63% Sn / 37% Pb) is hypereutectic but preferred for its sharp melting point and bright finish.

**Phase Diagram Parameters:**
- Eutectic: 183°C, 61.9% Sn
- Sn liquidus: 231.9°C (pure Sn)
- Pb liquidus: 327.5°C (pure Pb)
- Terminal solid solubility: ~1% Pb in Sn, ~2% Sn in Pb at 183°C

**Production Protocol:**
1. Stage 4 Step 2: Drum at 200°C, 300 RPM, Port 4B opens
2. Molten Sn-Pb mixture (from feedstock solder joints) centrifuges to middle zone
3. Discharged slug: ~60-65% Sn, 35-40% Pb (close to 63/37 target)
4. Downstream: Re-melt at 250°C, adjust composition with pure Sn/Pb if needed
5. Cast into ingots (2 kg bars) or wire (2-3 mm diameter)

**Quality Specifications (ASTM B32 / J-STD-006):**
| Parameter | Spec | Test Method |
|---|---|---|
| Sn Content | 62.5-63.5% | XRF / ICP-OES |
| Pb Content | 36.5-37.5% | XRF / ICP-OES |
| Cu | <0.08% | ICP-OES |
| Ag | <0.1% | ICP-OES |
| Bi | <0.1% | ICP-OES |
| Fe | <0.02% | ICP-OES |
| As/Sb | <0.03% each | ICP-OES |
| Appearance | Bright, shiny, no dross inclusions | Visual |

### 6.2 In/Sn (52/48) — Low-Temperature Solder

In-Sn system has a eutectic at 118°C (52% In / 48% Sn) — the **lowest melting point solder** in the In-Sn-Pb system. Critical for step-soldering and temperature-sensitive assemblies.

**Production:**
- Source: In from Step 1 (60-80% In) + Sn from Step 2/3
- Ratio adjustment: Blend to 52% In / 48% Sn
- Melt at 150°C, cast into 1 kg ingots or 1.5 mm wire
- **Application:** CSM internal use — sensor assembly, cryogenic wiring, step-soldering

### 6.3 Bi/Sn (57/43) — Lead-Free Alternative

Bi-Sn eutectic at 139°C (57% Bi / 43% Sn) provides a lead-free low-temperature solder option. Higher cost (Bi ~$12/kg vs Pb ~$2/kg) but RoHS compliant.

**Production:**
- Source: Bi from Step 3 + Sn from Step 2/3
- Ratio: 57% Bi / 43% Sn
- Cast into 1 kg ingots
- **Application:** Medical electronics, RoHS-compliant assemblies

### 6.4 Alloy Purification and Casting

**Purification Steps (Downstream of Stage 4):**
1. **Re-melt** in induction furnace (10 kHz, 20 kW) at 250°C (Pb/Sn) or 150°C (In/Sn)
2. **Dross skimming** — remove surface oxides (PbO, SnO₂, In₂O₃) mechanically
3. **Flux treatment** — Na₂CO₃/NaF flux, stir 5 min, skim again
4. **Composition adjustment** — add pure Sn, Pb, In to hit target specs
5. **Degassing** — N₂ sparge 10 min to remove dissolved H₂
6. **Casting** — continuous caster or static mold, controlled cooling

**Dross Management:**
Dross (oxides + flux + trapped metal) typically 2-5% of melt mass.
- Pb/Sn dross: 90% metal recovery via rotary furnace re-melt
- In/Sn dross: In recovery critical — specialized oxide reduction
- **Dross residue → Stage 7 (PROD-20) for Fe/REE recovery**

---
