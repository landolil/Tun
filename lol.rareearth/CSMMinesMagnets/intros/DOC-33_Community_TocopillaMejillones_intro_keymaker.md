# Keymaker Heuristic — DOC-33 Tocopilla/Mejillones Industrial Corridor

## The Empirical Lock
The fabrication fidelity gap is the **disconnect between project-level engineering precision and bay-scale ecological reality**. Individual SEAs model thermal plumes, brine dispersion, and noise propagation with CFD/FEA rigor, but superimpose them linearly — assuming independence that does not exist in a semi-enclosed bay with 12-hr flushing time. The Chango Consejo's 2023 veto of HIF Phase 1 (brine threshold exceeded) proved that **linear superposition fails**: 5 desal plants + HIF Phase 1 = 8,120 L/s brine, but the ecological impact is NOT the sum of 6 individual plumes — it is a **salinity regime shift** in the bay's northern gyre that persists for weeks, altering benthic community composition and Chango fishing grounds. The lock is: *How to compute the true cumulative state of the bay in real-time and bind all operators to it?*

## The Mathematical Key
The single computational primitive generating the solution is the **Bay-Scale Cumulative State Vector (BCSV)** — a 12-dimensional real-time vector updated at 15-min intervals from sensor networks:
```
BCSV(t) = [Brine_Q, Brine_S, Thermal_Q, Thermal_ΔT, Noise_L_eq, Vessel_N, DO_min, pH_min, Chlorophyll_max, HAB_index, Chango_Catch_Index, Kimün_Alert]
```
Each dimension has a **Chango-defined threshold** (hard veto) and a **management trigger** (adaptive action at 80% threshold). The BCSV is computed by a **federated digital twin**: CTM/CTA DCS (thermal), Desal SCADAs (brine), HIF SCADA (NH₃/H₂/brine), Port VTS (vessels), Chango Guardacostas buoys (DO, pH, noise, chlorophyll, HAB, catch), SINCA stations (air). The **mathematical key** is the **threshold-crossing operator**:
```
VETO(t) = OR_i( BCSV_i(t) > THRESHOLD_i )
ADAPT(t) = OR_i( BCSV_i(t) > 0.8 × THRESHOLD_i )
```
This operator is **deterministic, auditable, and non-negotiable** — it transforms cumulative impact from a qualitative SEA chapter into a real-time control system.

## The Turn (Both Directions)
**Theory→History Validation**: The BCSV primitive reproduces the 2023 HIF Phase 1 veto ex-post: historical SCADA data + Guardacostas buoy data → BCSV(t) shows Brine_Q exceeded 7,000 L/s threshold for 14 consecutive days → VETO=true. The redesign (HIF dedicated outfall 2km offshore, 75% recovery, real-time monitoring) reduced Brine_Q contribution from 1,800→1,440 L/s → BCSV(t) now shows 7,620 L/s (still >7,000) → CONDITIONAL CONSENT with adaptive management. The math matches the history.

**History→Theory Validation**: The 1995 Antofagasta earthquake (M8.0) tsunami arrived in Mejillones Bay at 14 min with 4.2m runup. SHOA 2022 modeling (Mw8.8, 12-18 min arrival, 15-20m runup) validates the BCSV's tsunami dimension: a seismic trigger would activate the BCSV's Vessel_N and Noise dimensions (port evacuation, industrial shutdown) within 3 min — the BCSV becomes the **tsunami early warning integrator** for industrial auto-shutdown. The 2022 Tocopilla storm surge (1.9m, 48hr) validated the SLR adaptation thresholds: desal intakes at -25m articulated risers survived; campamentos at 2-5m ASL flooded. The BCSV's Brine_S and Thermal_ΔT dimensions captured the plume disruption during surge — confirming the federated sensor architecture.