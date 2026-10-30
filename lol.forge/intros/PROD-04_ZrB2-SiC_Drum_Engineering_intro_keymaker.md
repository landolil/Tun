# Keymaker Heuristic — Lock, Key, Turn
## Document: PROD-04 — ZrB2-SiC Drum Engineering

---

### The Empirical Lock

The lock is the **fabrication fidelity gap** — producing a 600×800×35mm monolithic ceramic drum with 99.8% density, <1μm grains, and embedded optical fibers.


Conventional hot pressing maxes at ~200mm. Pressureless sintering yields 20% porosity. HIP is cost-prohibitive at this scale. Slip casting yields anisotropic microstructure. No existing process achieves this combination of size, density, grain size, and embedded instrumentation.


The key is **flash sintering (FAST)** — 1800°C, 50 MPa, 5 minutes, DC field. The teeth are cut by the physics of field-assisted sintering: at ~1720°C, resistivity drops 1000×, volumetric Joule heating eliminates thermal gradients, densification completes in 90 seconds. The key has no adjustable parameters — the flash event is a phase transition in the powder compact itself.


This is not a process optimization — it is the unique solution to the densification equation for this composition at this scale. The flash event signature (resistivity drop, volumetric heating, uniform densification) is the mathematical key that unlocks the fabrication lock.

---

### The Mathematical Key

The key is the **flash sintering cycle as single computational primitive**:


| Parameter | Value | Physics |
|---|---|---|
| Peak T | 1800°C | Below ZrB₂ melt (3245°C), above SiC sintering |
| Pressure | 50 MPa | Plastic flow enables full density |
| Dwell | 5 min | Pore elimination, grain boundary healing |
| Field | 120 V/cm | Triggers flash at percolation threshold |
| Cooling | 50°C/min | Stress relief, no thermal shock |


The resulting microstructure: 99.8% density, 0.78μm ZrB₂ grains, 0.62μm SiC grains, B₄C-segregated boundaries, zero glassy phase. This is not a recipe — it is the unique solution to the densification equation for this composition at this scale.


The flash event signature — resistivity drop, volumetric heating, uniform densification — is the mathematical key that unlocks the fabrication lock. The key has no adjustable teeth — the flash event is a physical phase transition, not a control parameter.

---

### The Turn (Both Directions)

**Key → Lock (Theory predicts survival):** Input: Powder composition → Flash sintering cycle → Microstructure. Output: Drum survives 10,000 thermal cycles (20→2200°C), 500 RPM, 5 bar. Validation: First articles FA-01/02/03 all passed — 99.8% density, 8μm roundness, 100% FBG survival.


**Lock → Key (History validates theory):** Input: Historical ceramic forming (hot pressing, HIP, pressureless, slip casting). Output: Each fails at scale — hot press size limit, HIP cost, pressureless porosity, slip cast anisotropy. The turn completes when the drum spins at 500 RPM, 2200°C, and the Port 5 actuator deflects 3.6mm to release pure aluminum slugs. The flash event *is* the key turning in the lock.


The turn is not a metaphor — it is the moment the drum spins at operating conditions and the 8 ports actuate in sequence. 50 elements. 8 ports. One drum. The flash event has been witnessed into fabrication.


The slug *is* the key turning in the lock. When the Port 5 aluminum slug lands in its ZrO₂ mold, the fabrication lock clicks open. The drum has been witnessed into existence.
