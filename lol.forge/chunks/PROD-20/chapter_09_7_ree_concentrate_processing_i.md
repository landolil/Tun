## 7. REE Concentrate Processing Interface (to FOLLOW-15)

### 7.1 Port 7A REE Concentrate Specifications

| Parameter | Specification | Measurement |
|---|---|---|
| **Mass per Batch** | 10-20 kg (2 molds × 5-10 kg) | Load cell |
| **Fe Content** | 20-30% | LIBS/XRF |
| **Nd₂O₃ Equivalent** | 5-15% | LIBS/XRF + assay |
| **Sm₂O₃ Equivalent** | 2-8% | LIBS/XRF + assay |
| **CoO** | 1-5% | LIBS/XRF + assay |
| **Dy₂O₃ Equivalent** | 0.5-2% | LIBS/XRF + assay |
| **Slag Matrix** | CaO-SiO₂-MgO-Al₂O₃ (B=1.2) | XRF |
| **Particle Size** | <5 mm (crushed) | Sieve |
| **Moisture** | <0.5% | Karl Fischer |

### 7.2 FOLLOW-15 Interface Requirements

**Transfer Protocol:**
1. Port 7A molds demold → slime catch → stamp → LIBS → Data Matrix
2. REE concentrate crushed to <5 mm in ZrO₂ jaw crusher (inert atmosphere)
3. Sealed ZrO₂ containers (10 L), N₂ purged, weighed, LIBS spectrum recorded
4. Container UUID linked to batch, Port 7A, Stage 7 temp, Phoenix generation
5. Transfer manifest signed → Machine 113 (Hydro-Refinery) queue

**FOLLOW-15 Process (Hydrometallurgical REE Recovery):**
```
REE Concentrate (Port 7A) + Fe Bullion (Port 7, REE-bearing)
    │
    ▼
H₂SO₄ Pressure Leach (150°C, 10 bar, 2h) → REE sulfates in solution
    │
    ▼
Solid/Liquid Separation → Fe residue (to castings) / REE pregnant leach solution
    │
    ▼
Solvent Extraction (Cyanex 272 / D2EHPA):
    ├── Light REE (La, Ce, Pr, Nd) → Nd₂O₃ product
    ├── Middle REE (Sm, Eu, Gd) → Sm₂O₃ product
    ├── Heavy REE (Dy, Ho, Er, Yb) → Dy₂O₃ product
    └── Co → Co(OH)₂ → Co metal
    │
    ▼
Oxalate Precipitation → Calcination (900°C) → REE Oxides (99.9%)
```

**Recovery Targets (FOLLOW-15 Scope):**
- Nd: >90% from Fe bullion, >95% from REE concentrate
- Sm: >85% from Fe bullion, >90% from REE concentrate
- Co: >80% from Fe bullion, >85% from REE concentrate
- Dy: >80% from both streams

---
