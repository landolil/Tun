# PROD-16: Stage 3 Pyrolysis & Char — Williams Heuristic Intro
## Constraint, Necessity, Commitment

### Constraint (The Lock)

**Thermodynamic necessity forces this design.** Every thermosetting polymer — epoxy, phenolic, polyester, polyurethane, rubber — has a discrete decomposition temperature window (350-550°C) where covalent bonds break irreversibly. You cannot melt a thermoset; you can only pyrolyze it. The carbon skeleton remains as char. The volatiles leave as gas. This is not a choice — it is the physics of crosslinked networks. The cascade **must** pass through 450-700°C to liberate the metals trapped in thermoset matrices (FR4 PCBs, rubber seals, phenolic moldings). Skip this window, and the metals stay locked in carbon. Rush this window, and you get tar-contaminated metal fractions. The 30-minute dwell at 5°C/min ramp through 450-550°C is the **minimum time** for epoxy/FR4 (the dominant thermoset mass) to complete decomposition. This is the lock: thermodynamics sets the schedule, not engineering convenience.

### Necessity (The Key)

**The elemental extraction gap:** Modern waste streams (e-waste, auto shredder residue, municipal plastics) contain 15-30% thermosets by weight. These thermosets **encapsulate** the critical metals — copper traces in FR4, nickel in rubber gaskets, cobalt in phenolic resins. Mechanical shredding (PROD-11) liberates particles but cannot break the thermoset-metal bond. Chemical solvents fail at scale and create secondary waste. Thermal decomposition is the **only** universal key that opens all thermoset locks simultaneously. The pyrolysis gas (CO, H₂, CH₄) is not waste — it is the energy carrier that powers the cascade. The char is not residue — it is the activated carbon that closes the loop on Stage 1 organics and the reductant that enables Stage 4 metal melting. This stage transforms a **liability** (mixed thermoset waste) into **two assets** (energy gas + functional char). The necessity is absolute: without Stage 3, the cascade stops at plastic.

### Commitment (The Turn)

**This document commits the Aegis-Forge I to three non-negotiables:**

1. **Zero-metal pyrolysis zone:** The drum, liners, ports, and gas path from 450-700°C are **entirely ceramic and composite** (ZrB₂-SiC, Si₃N₄, ZrO₂, BFRP/Elium®). No steel, no nickel alloys, no copper. Any metal in the hot zone becomes a GIC antenna and a catalytic surface for dioxin formation. The dielectric citadel extends through the pyrolysis window.

2. **Char activation integration:** The char **will not leave Stage 3 cold**. It exits at 650°C and enters the in-situ activation reactor (steam/CO₂, 850°C, 30 min) using its own sensible heat. This commits the design to a coupled reactor system — Stage 3 and activation are one thermodynamic unit. Separate them, and you lose 60% of the activation energy to reheat.

3. **REE partitioning fidelity:** The N₂/CO₂ atmosphere (<2% O₂) is **mandatory**, not optional. Oxidation at this temperature would convert Nd/Fe/B and Sm/Co into oxides that report to slag instead of metal. The cascade's economic engine — separated magnet REE stream (Stage 7) and phosphor REE stream (Stage 8) — depends on this redox discipline. One percent O₂ leakage changes the partition coefficient by two orders of magnitude.

**The turn:** Measure → Heat → Separate → Verify. The control system (Section 13) enforces this at 1 Hz: FBG temperature, mass spec gas composition, char discharge rate. If the proxies deviate, the ramp holds. The physics cannot be negotiated — only respected.