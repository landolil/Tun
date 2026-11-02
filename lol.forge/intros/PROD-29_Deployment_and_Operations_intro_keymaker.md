# Keymaker Heuristic — PROD-29 Deployment & Operations
## Lock / Key / Turn

### The Empirical Lock

The fabrication fidelity gap is the **site-specific variables that invalidate factory verification** — a Forge that passes CT-01..CT-10 in the factory may fail SAT-01..SAT-05 at site due to variables that cannot be simulated in the factory. Three specific locks:

1. **Ground impedance as deployment variable**: Factory ground grid <1 Ω (controlled); site ground resistance 2-50 Ω (soil dependent). PROD-26 NGR 5A design assumes factory ground. At 50 Ω site ground, GIC return path impedance increases 50×, altering common-mode voltage distribution across the floating secondary. The Lock: **factory-verified GIC immunity does not guarantee site GIC immunity.**

2. **Seismic-soil coupling as deployment variable**: PROD-25 FEA assumed fixed-base + isolators (3 Hz). Site soil class (NEHRP A-E) shifts fundamental frequency ±40%, changes isolator effectiveness, alters HCLPF. A Forge on Class E soil (soft clay) has 1st mode at 1.8 Hz vs 3 Hz design — seismic demand doubles. The Lock: **factory seismic qualification (shake table) does not cover site-specific soil-structure interaction.**

3. **Utility power quality as deployment variable**: Factory grid: THD <3%, voltage regulation ±2%, fault level 50 kA. Site grid: THD up to 8% (per IEEE 519), voltage regulation ±5%, fault level 10-100 kA. PROD-10 inverter ZVS acquisition and PTP sync assume factory power quality. At site, voltage sags cause DC link droop; harmonic distortion causes TSN jitter. The Lock: **factory power electronics verification does not cover site power quality envelope.**

### The Mathematical Key

The single computational primitive is the **site-adaptive synchronization function** — the same fractal gate logic from PROD-27, now parameterized by site-measured variables:

$$SG_{site} = \bigwedge_{i=1}^{10} \left( IC_i(site\_params) \land IC_i.verified \land IC_i.data\_package\_signed \right) \land CT08(site\_params) \land \bigwedge_{j=1}^{5} SAT_j(site\_params)$$

Where $site\_params = \{R_{ground}, Z_{grid}, Soil_{class}, T_{ambient}, P_{water}, Q_{gas}\}$ are measured at site during cold commissioning and fed into the verification predicates. The atomic computation is the **predicate evaluation with site parameters**:

$$IC_1(site) \equiv (ground\_resistance < 5\Omega) \land (anchor\_torque = 1200\pm50 Nm) \land (frame\_level < 0.1mm/m)$$

$$IC_4(site) \equiv (TSN\_latency < 100\mu s) \land (PTP\_offset < 1\mu s) \land (SIF\_trip < 50ms) \land (GIC\_ride\_through @ site\_impedance)$$

$$CT08(site) \equiv \forall stages: |T_{FBG} - T_{setpoint}| < 5^\circ C \land |T_{model} - T_{FBG}| < 2^\circ C \land SIF\_availability = 100\%$$

$$SAT_5(site) \equiv \frac{\sum m_{out}}{\sum m_{in}} > 0.995 \land \forall elements: recovery > target \land twin\_latency < 1s$$

The Key executes at three scales:
1. **Cold (IC-1..IC-10)**: Site parameters measured → predicates evaluated → gates signed
2. **Hot (CT-08)**: Site thermal boundary conditions → thermal model re-identified → ramp/hold verified
3. **Operational (SAT-05)**: Site feedstock + site utilities → batch execution → performance verified

### The Turn (Both Directions)

**Theory→History Validation**: The site-adaptive synchronization function predicts deployment outcomes from CSMFAB development Forge deployments (3 Forges deployed to date):
- Forge-01 (Class B soil, 3 Ω ground, clean grid): IC-1..IC-10 PASS first attempt; CT-08 thermal match <3°C; SAT-05 6/6 PASS
- Forge-02 (Class D soil, 12 Ω ground, industrial grid): IC-1 ground resistance FAIL (12 Ω > 5 Ω) → ground grid augmentation → re-test PASS; CT-08 required ramp rate reduction 10% (thermal boundary); SAT-05 6/6 PASS
- Forge-03 (Class A rock, 2 Ω ground, utility substation adjacent): IC-4 PTP sync FAIL (TSN jitter 150 μs from grid harmonics) → TSN switch firmware update → re-test PASS; SAT-05 6/6 PASS

History confirms theory: site parameters are the only variables; the mathematical key absorbs them.

**History→Theory Correction**: Forge-02 ground resistance anomaly revealed IC-1 predicate was incomplete — it checked ground resistance but not ground grid *impedance spectrum* (1-100 Hz). Added frequency sweep requirement. Forge-03 TSN jitter anomaly revealed IC-4 predicate assumed clean power — added harmonic distortion limit (THD <5% per IEEE 519) as IC-4 prerequisite. The mathematical key extends: $site\_params$ now includes $Z_{grid}(f)$ and $THD_{grid}$.

The Turn: **the mathematical key is not the synchronization function alone — it is the synchronization function *plus* the site parameter measurement protocol that feeds it.** The Lock (site variables) is managed not by over-design but by *measurement*: every site variable that affects the verification predicate becomes a measured input. The factory builds the Forge; the site measures itself; the synchronization function evaluates; the Forge operates.

---
*Keymaker Heuristic for PROD-29 | ~67 lines | Carrington Storm Motors | November 2026*