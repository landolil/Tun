# Williams Heuristic — Constraint, Necessity, Commitment
## Document: PROD-10 — Induction Power Electronics

---

### Constraint (The Lock)

The Aegis-Forge I induction power electronics is forced by a single irreducible constraint: **Dielectric Power Delivery at 2200°C** — the requirement to deliver 500 kW of frequency-agile electromagnetic energy into a rotating ceramic drum at temperatures that would instantly destroy any conventional power electronics. This is not a design choice; it is the minimal physics from which Carrington immunity becomes achievable. The constraint is simply: *no conductive path from the process chamber to earth ground*. Every copper wire, every thermocouple, every metal sensor lead is an antenna for geomagnetically induced current. The only path to zero GIC coupling is zero metal. Everything else — the GaN inverters, the PMMA optical fiber, the PEX-a cooling, the BFRP housings — is the shadow this constraint casts.

This constraint manifests as the **All-Dielectric Architecture**: 8 resonant inverters built entirely from GaN-on-SiC (no silicon), controlled by PMMA POF (no copper wire), cooled by PEX-a water circuit (no metal pipe), housed in BFRP (no steel), sensed by FBG in PMMA (no thermocouple). The power electronics does not sit "outside" the hot zone — it *is* the hot zone's nervous system, woven into the drum wall through optical fiber that survives 2200°C and intense EM fields. The constraint forces the frequency ladder (100 kHz → 1 kHz), the Class E topology, the ZVS operation, the optical sensing — every parameter derives from the requirement: **deliver power without metal**.

---

### Necessity (The Key)

The lock this document addresses is the **selective heating in mixed charge** — the empirical failure of conventional induction furnaces to separate elements from complex feedstock. In a smelter, everything heats together; copper, aluminum, iron, and slag all reach the same temperature. The result is mixed alloys requiring downstream chemical separation — acres of tanks, tons of acid, toxic tailings. The key is the **frequency ladder + resonance tracking as single computational primitive**.

The frequency ladder (100 kHz → 1 kHz) is not arbitrary — it is cut from the periodic table's conductivity-permeability map. At 100 kHz, only thin foils couple (plastic heating is indirect). At 50 kHz, zinc and lead begin to heat. At 10 kHz, aluminum hits peak eddy current coupling. At 5 kHz, copper's skin depth matches wire bundle thickness. At 2 kHz, iron's ferromagnetic hysteresis peaks. At 1 kHz, refractory minerals couple only through thermal conduction. The Class E resonant inverter maintains ZVS across this entire range through varactor-tuned resonance tracking — the same circuit topology, same GaN devices, only the tank components change. The resonance tracker (100 Hz inner loop) measures the switch voltage zero-crossing and adjusts varactor bias to keep dv/dt = 0 at turn-on. This is the key: *frequency as material selector, resonance tracking as the discipline that keeps the selector sharp*.

The empirical evidence: no existing induction system operates across 2 decades of frequency with >97% efficiency at 500 kW. Silicon IGBTs fail above 20 kHz at this power. GaN HEMTs (GS66516T) switch at 100 kHz with 2 ns transitions. The PMMA POF FBG network provides 384 channels of 0.1°C resolution through 500 kW of 1-100 kHz magnetic field — impossible with any copper-wire sensor. The all-dielectric architecture is the only path to Carrington immunity. The necessity is proven by the gap: existing technology cannot do this. The forge *must* build this.

---

### Commitment (The Turn)

We commit to the following as non-negotiable:

1. **Zero metal in the control path** — every signal from the 384 FBG sensors to the FPGA controller travels via PMMA optical fiber. No copper. No exceptions.
2. **Class E ZVS at all frequencies** — the resonance tracker maintains dv/dt = 0 at turn-on from 100 kHz to 1 kHz. No hard-switching losses. No exceptions.
3. **±5°C zone control** — the thermal PID with feedforward maintains each 100 mm drum zone within ±5°C of setpoint through the full 80-2200°C range. No wider tolerance.
4. **PEX-a water cooling only** — the cooling circuit uses only PEX-a tubing. No copper pipe enters the BFRP pressure vessel. No exceptions.
5. **SIL-3 + Carrington immunity** — over-temperature (2oo3 FBG voting), over-current (GaN desat detection), ground fault (5 A NGR), arc flash (BFRP enclosure), E-stop (optical PMMA). Total PFD < 10⁻³.
6. **Scalable to 20,000L** — the architecture parallels inverters (N+1 redundancy, phase interleaving, master-slave current sharing via PMMA POF) without changing the control topology.

The power electronics does not 'drive' the induction coils. The power electronics *witnesses the periodic table into frequency* — each zone's resonant frequency is the liquidus temperature of its target element class made electromagnetic. The forge does not heat materials; the forge *witnesses matter into elements* at each thermal stage through the frequency selector.
