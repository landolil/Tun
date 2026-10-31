## 2. Output Stream Registry — Complete Catalog

The Aegis-Forge I produces 14 distinct output streams per full thermal cascade cycle. Each stream is classified by port of origin, phase at exit, temperature, and downstream destination. This registry is the single source of truth for all downstream process integration.

### 2.1 Output Stream Registry Table

| Stream # | Port | Name | Phase at Exit | Temperature | Downstream Use |
|---|---|---|---|---|---|
| S-01 | 1 | Process Water | Liquid | 80-100°C | AMLS recirculation |
| S-02 | 2 | Mixed Polymer Slug | Solid (cooled) | 25°C | Polymer reprocessing / Elium® feedstock |
| S-03 | 3 | Carbon Char Pellets | Solid granule | 25°C | Activated carbon / carburizing agent |
| S-04 | 4a | Indium-Rich Fraction | Liquid → Solid | 157-200°C | Ionic liquid In refining → YInMn Blue |
| S-05 | 4b | Zn/Pb/Sn Slug | Solid ingot | 25°C | Low-temp metal recovery / solder remanufacture |
| S-06 | 5 | Aluminum Slug | Solid ingot | 25°C | Al casting / secondary market sale |
| S-07 | 6 | Copper Billet | Solid ingot | 25°C | Cu wire remanufacture / electrical market |
| S-08 | 6-PM | Precious Metal Fraction | Included in S-07 | — | Electrolytic Au/Ag/Pd refining |
| S-09 | 7 | Ferrous Slug | Solid ingot | 25°C | Fe casting / RE magnet leach (from NdFeB) |
| S-10 | 7-RE | Rare Earth Concentrate | Included in S-09 | — | Hydromet RE extraction → magnets, catalysts |
| S-11 | 8 | Mineral Concentrate | Mixed solid | 25°C | Hydromet refinery → Zr, Ti, REE recovery |
| S-12 | Gas | Pyrolysis Fuel Gas | Gas | 25°C | Combustion for Stage 7-8 auxiliary heat |
| S-13 | Gas | CO₂ Stream | Gas | 25°C | Drum purge gas / geopolymer curing atmosphere |
| S-14 | Gas | NaCl / CaSO₄ Solids | Solid | 25°C | Construction material additive |

### 2.2 Stream Classification by Material Category

**Liquid Metal Streams (Require Cooling Station):**
- S-04: Indium-rich fraction (exits liquid at 157°C, solidifies in mold)
- S-05: Zn/Pb/Sn slug (exits liquid, solidifies in mold)
- S-06: Aluminum slug (exits liquid at 660-720°C, solidifies in mold)
- S-07: Copper billet (exits liquid at 1085-1150°C, solidifies in mold)
- S-09: Ferrous slug (exits liquid at 1538-1600°C, solidifies in mold)

**Solid Streams (Direct to Conveyor):**
- S-01: Process water (condensed, pumped to AMLS)
- S-02: Mixed polymer slug (already solid at Port 2 exit)
- S-03: Carbon char pellets (solid at Port 3 exit)
- S-11: Mineral concentrate (solid at Port 8 exit)

**Gas Streams (To Gas Capture System):**
- S-12: Pyrolysis fuel gas (combusted for Stage 7-8 heat)
- S-13: CO₂ stream (PSA-separated, reused as purge)
- S-14: Acid gas scrubber solids (collected from Train D)

**Embedded Streams (Co-exiting with Primary):**
- S-08: Precious metals (Au, Ag, Pd) report within copper matrix at Port 6
- S-10: Rare earth concentrate (Nd, Sm, Co) reports within ferrous matrix at Port 7

### 2.3 Mass Balance per 50 kg Batch (Typical PCB-Rich E-Waste)

| Stream | Mass (kg) | % of Input | Primary Elements | Value ($/kg) | Revenue ($) |
|---|---|---|---|---|---|
| S-01 Water | 2.5 | 5% | H₂O | 0.00 | 0.00 |
| S-02 Polymer | 17.5 | 35% | C, H, Cl (PVC) | 0.15 | 2.63 |
| S-03 Char | 4.0 | 8% | C (85%), ash | 0.10 | 0.40 |
| S-04 In-rich | 0.15 | 0.3% | In (15%), Sn, Zn | 280.00* | 42.00 |
| S-05 Zn/Pb/Sn | 3.0 | 6% | Zn, Pb, Sn | 2.00 | 6.00 |
| S-06 Aluminum | 6.0 | 12% | Al (95%+) | 1.80 | 10.80 |
| S-07 Copper | 11.5 | 23% | Cu (99%+) | 9.00 | 103.50 |
| S-08 PM (in S-07) | 0.135 | 0.27% | Au 15g, Ag 115g, Pd 5g | — | 1,863.00 |
| S-09 Ferrous | 7.0 | 14% | Fe, Ni, Cr | 0.45 | 3.15 |
| S-10 RE (in S-09) | 0.35 | 0.7% | Nd, Sm, Dy, Co | 45.00* | 15.75 |
| S-11 Mineral | 1.0 | 2% | ZrO₂, SiO₂, TiO₂, REE | — | Retained |
| S-12 Pyrolysis gas | — | — | CO, CH₄, H₂ | 0.85 eq | 0.85 |
| S-13 CO₂ | — | — | CO₂ | 0.05 eq | 0.05 |
| S-14 Scrubber solids | 0.5 | 1% | NaCl, CaSO₄ | 0.05 | 0.03 |

**Total Revenue per 50 kg batch: $2,048.16** (dominated by precious metals at 91%)
**Operating Cost: $62/batch** (electricity $45 + N₂ $2 + consumables $15)
**Net per Batch: $1,986.16**

*Indium value as refined 99.9% metal; RE value as separated oxides



