## Appendix B: GIC/EMP Test Plan

**Test Facility:** CSMFAB EMC Laboratory (TEM cell, Helmholtz coil, GIC simulator, lightning simulator)
**Test Article:** Full Forge power electronics + control (S/N FA-01)
**Schedule:** 2 weeks (setup, E1, E2, E3, GIC, lightning, EMC, reporting)

### Day 1-2: Setup & Baseline
- Install test article on isolated ground plane
- Install 64 POF sensors, 32 current probes, 16 voltage probes
- Verify PTP sync <1 μs, TSN latency <100 μs
- Baseline functional test (all zones 100 kW, 1 hr)

### Day 3-4: E1 HEMP (MIL-STD-1857)
- TEM cell, 50 kV/m, 1 ns rise, 200 ps FWHM
- 3 polarizations × 3 pulse counts
- Monitor: FPGA upset, POF BER, SIF trip
- Pass: No latch-up, BER <10⁻¹², no SIF trip

### Day 5-6: E2 HEMP (IEC 61000-4-5)
- Combination wave 1.2/50 μs – 8/20 μs, 6 kV/3 kA
- 5 surges per mode (L-L, L-G, L-PE)
- Monitor: DC link voltage, MOV/GDT operation, insulation
- Pass: No damage, insulation >1 GΩ

### Day 7-8: E3 / GIC (IEEE 1656 / IEC 61000-2-9)
- GIC Simulator: 0.1 Hz, 10 A/phase DC injection on grid side
- Duration: 30 min (extended to 4 hr for margin)
- Monitor: Ride-through trigger, LiFePO₄ voltage, drum temp, SIS health
- Pass: Ride-through clean, controls operational, no thermal shock

### Day 9: Lightning (IEC 62305)
- Direct strike simulation: 200 kA, 10/350 μs on down conductor
- Indirect: 6 kV/3 kA on service entrance
- Monitor: SPD operation, internal surge, data integrity
- Pass: No internal surge >10 V, no data loss

### Day 10: EMC (CISPR 11 / IEC 61000-4)
- Conducted emissions (150 kHz–30 MHz) — LISN
- Radiated emissions (30 MHz–6 GHz) — 10 m chamber
- Immunity: ESD, RF, EFT, Surge, Conducted RF, Mag field
- Pass: Class A limits, Criteria A/B per table

### Day 11-12: Insulation Coordination
- Megger all penetrations (500 VDC) — >1 GΩ
- Hipot (1.5× rated) — no breakdown
- Partial discharge (IEC 60270) — <5 pC XFMR, <10 pC caps

### Day 13-14: Reporting
- Test report with all waveforms, pass/fail, deviations
- Signed by PE (Professional Engineer)
- Update SIF register with as-tested PFD values

---
