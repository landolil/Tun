## 1. Purpose & Design Mandate

The Induction Power Electronics subsystem is the **electrical nervous system** of the Aegis-Forge I. It transforms 480V 3-phase industrial supply into eight independently controlled, variable-frequency resonant inverter outputs that drive the induction coil bank surrounding the ZrB2-SiC drum. This is not a conventional power supply - it is a **frequency-agile, material-selective energy delivery system** that implements the thermal cascade's selective heating physics through precise electromagnetic coupling.

**Design Mandate:**
- Deliver 500 kW total across 8 zones (0-500 kW per zone) with 97%+ inverter efficiency
- Variable frequency range: 100 kHz (Zone 1) to 1 kHz (Zone 8) for material-selective skin depth control
- All-dielectric control wiring: PMMA plastic optical fiber (POF) only - zero copper control conductors
- FBG optical temperature feedback: 384 sensors at 1 kHz sample rate, 0.1C resolution
- PID zone control: 5C steady-state, resonance tracking for automatic impedance matching
- Carrington immunity: No metallic paths to ground, no ferromagnetic components, SIL-3 safety
- Scalable architecture: 226L drum to 20,000L multi-drum via inverter paralleling

**The Irreducible Constraint:** *The drum is a rotating ceramic pressure boundary at 2200C. No metallic thermocouples, no copper control wires, no ferromagnetic components can survive or operate inside the process chamber. The power electronics must deliver precise energy through a 15 mm air gap to a rotating, stratified, multi-material charge - and the only sensors that survive are optical.*

This constraint forces every design decision: GaN resonant inverters (silicon fails at 500 kW/zone), PMMA POF for all control signals, FBG sensors embedded during drum sintering, variable frequency as the material selector, and complete dielectric isolation from the 480V supply.

---
