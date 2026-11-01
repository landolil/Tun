## Appendix G: Manufacturing & Assembly Instructions

### G.1 Inverter Module Assembly (Per Zone)

**Bill of Materials (Zone 8 - Most Complex):**
| Item | Qty | Part | Specification |
|------|-----|------|---------------|
| 1 | 16 | GS66516T | GaN HEMT, 650V, 30A |
| 2 | 8 | Si8274 | Optical gate driver, 4A peak |
| 3 | 4 | DBC-Al2O3 | 9x9mm, Cu 0.3mm/0.3mm, Al2O3 0.38mm |
| 4 | 1 | Cold Plate | Cu microchannel, diamond-coated, 2-phase |
| 5 | 1 | Resonant Cap | 4.7uF, film, 1200V, low ESR |
| 6 | 1 | DC Link Cap Bank | 470uF, film, 1000V, self-healing |
| 7 | 1 | Optical CT | 500:1, 100 kHz BW, PMMA POF |
| 8 | 1 | BFRP Housing | Filament wound, 20mm wall |
| 9 | 16 | Indium Foil | 50um, 9x9mm, pre-cut |
| 10 | 1 | PMMA POF Harness | 8ch TX, 8ch RX, pre-terminated |

**Assembly Sequence:**
1. DBC substrate cleaning (IPA, plasma)
2. GaN die attach (solder, 280C, N2)
3. Wire bonding (Al, 25um, ultrasonic)
4. Indium foil placement (pick-and-place)
5. Cold plate mounting (torque 0.5 Nm, star pattern)
6. Resonant capacitor soldering (selective wave)
6. DC link capacitor bus bar connection
7. Optical gate driver mounting (adhesive, UV cure)
8. PMMA POF termination (hot knife, polish)
9. Housing insertion (BFRP, alignment pins)
10. Helium leak test (cold plate, <1e-6 mbar·L/s)
11. Hi-pot test (5 kV DC, 1 min)
12. Functional test (resonance sweep, 1-100 kHz)

### G.2 FBG Sensor Embedding in Drum (During Flash Sintering)

**Process Integration:**
1. PMMA POF with pre-written FBGs positioned in drum mold
2. FBG locations: 48 per zone × 8 zones = 384 fibers
3. Fiber routing: Radial channels in ZrB2-SiC (laser drilled pre-sinter)
3. Fiber protection: Al2O3 ceramic capillary tubes (2mm OD)
4. Flash sintering: 1800C, 50 MPa, 5 min - fibers survive (PMMA Tg=85C but encapsulated)
   - **Correction:** PMMA POF cannot survive 1800C!
   - **Solution:** Use **silica fiber FBGs** for drum-embedded sensors (high temp)
   - PMMA POF only for EXTERNAL routing (drum to interrogator rack)
   - Silica FBG: polyimide coated, survives 1800C flash sintering
   - Splice: Silica-to-PMMA at drum flange (fusion splice, hermetic)

**Revised FBG Architecture:**
- Drum-embedded: 384 silica FBGs (polyimide, 1550 nm)
- External routing: 384 PMMA POF (spliced at flange)
- Interrogators: 8× tunable laser (1510-1590 nm) for silica FBGs
- Splice loss: <0.1 dB (fusion, angled polish)

---
