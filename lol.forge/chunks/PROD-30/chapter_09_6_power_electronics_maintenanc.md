## 6. Power Electronics Maintenance (Assembly A-10 ×8 modules)

### 6.1 Monthly DC Link & ZVS Verification (PROD-30-WI-025)

**DC Link Charge Test:**
- Oscilloscope capture (100 MHz BW, 1 GS/s): 0→800V in 500 ms; no overshoot >850V
- Pre-charge resistor thermal check (IR): <80°C after charge

**ZVS Acquisition Verification:**
- V/I ramp from 10% to 100% load in 10% steps
- Phase <5° at all points; v_DS zero-crossing before gate drive
- Gate drive voltage: 6V ±0.2V (LMG1210), rise/fall <2 ns

### 6.2 Quarterly Thermal Soak Test (PROD-30-WI-026)

**Conditions:** 500 kW continuous, 30 minutes, cooling at design flow (500 L/min, 30°C inlet)
**Measurements:**
- GaN junction temperature (calculated from T_c + R_θJC × P_loss): <125°C
- Cold plate ΔT (inlet-outlet): <15°C
- Capacitor bank temperature: <85°C (electrolytic), <105°C (film)
- Thermal imaging: No hotspots >5°C above zone average

### 6.3 Quarterly GIC Ride-Through Test (PROD-30-WI-027)

**Equipment:** Portable Helmholtz coil (1 m diameter, 100 A/m, 0.1–10 Hz sweep)
**Procedure:** Per PROD-26 Sec 3.3, PROD-23 CT-07 protocol
**Acceptance:** Zero spurious SIF trips; zero data loss (TSN/PTP/FBG); zero inverter trips
**Monitoring:** All 384 FBG channels, TSN latency, PTP offset, DC link voltage

### 6.4 Annual EMI Verification (PROD-30-WI-028)

**Standard:** CISPR 11 Class A (conducted 150 kHz–30 MHz, radiated 30 MHz–1 GHz)
**Conditions:** All 8 zones at 100% load, Forge at Stage 8 steady-state
**Acceptance:** >20 dB margin on all limits
**Action if Failed:** Common-mode choke re-tune; POF routing check; filter capacitor ESR check

### 6.5 Quarterly SIL-3 SIF Injection Test (PROD-30-WI-029)

**Per Module (3 SIFs/module × 8 modules = 24 SIFs):**
- Overpressure (vessel >11 bar)
- Overtemperature (drum >2250°C or dT/dt >100°C/s)
- Vibration (frame >1.5g RMS)
- GIC (common-mode >5 V on floating secondary)
- Loss of comms (TSN VLAN 10 heartbeat >10 ms)

**Acceptance:** Trip <50 ms; 2oo3 channel agreement; SOE timestamp <1 ms skew; FBG data freeze at trip
**Documentation:** SIF test report per module; PFD_avg calculation update

### 6.6 Monthly POF Attenuation Check (PROD-30-WI-030)

**Equipment:** OTDR (1550 nm, 10 μs pulse, 100 km range)
**Acceptance:** <0.2 dB/m; splices <0.5 dB; return loss >50 dB
**Action if Failed:** Re-splice affected segments (PROD-30-WI-003); OTDR trace archive

### 6.7 Annual Capacitor Bank ESR Check (PROD-30-WI-031)

**Equipment:** Impedance analyzer (100 Hz–1 MHz)
**Acceptance:** ESR <1.5× initial (factory baseline); capacitance ±5% of nominal
**Trend:** ESR vs. time (exponential fit); predict end-of-life at 2× initial

### 6.8 GaN Module Replacement (50,000 hrs, PROD-30-WI-032)

**Hot-Swap Capability:** Module rack designed for live removal (TSN/PTP/POF disconnect <30 s)
**Procedure:**
1. Zone power reduction to 0% (PID ramp 10%/s)
2. TSN VLAN 10 graceful disconnect (PTP holdover 24 hr)
3. POF disconnect (BFRP connector, push-pull)
4. Cold plate quick-disconnect (PEX-a, zero-leak)
5. Module extract (BFRP handles, 2-person lift 800 kg)
6. New module install → reverse sequence → acceptance per PROD-28 Sec 2.5

---
