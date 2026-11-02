## Appendix C: Cyber Test Scenarios (PROD-36 IR-01 through IR-06)

### C.1 IR-01: SIF Bypass Authorization

```yaml
scenario: "IR-01 SIF Bypass"
mitre_attack: "T0883 (Safety System Bypass)"
preconditions:
  - Forge operational, nominal batch
  - Dual-key tokens (Shift Lead + Safety Eng) available
  - CT-04 passed <90 days ago
attack_steps:
  1. Attacker compromises Shift Lead YubiKey (phishing/supply chain)
  2. Attacker compromises Safety Eng YubiKey (separate vector)
  3. Attacker initiates SIF-16 bypass via HMI
  4. Blockchain timer starts (4 hr)
detection:
  - CPAT: JIT request from unauthorized location → Λ_CP >100
  - CPAT: Dual-key used outside shift handover window → Λ_CP >50
  - PROD-37 twin: SIF state anomaly → Λ_ML >10
response:
  - Auto-NCR generated
  - SIF-24 evaluation triggered
  - Shift Lead + Safety Eng alerted (out-of-band)
  - Bypass auto-revoked at Λ_CP >100
success_criteria:
  - Detection <30 s from dual-key use
  - Auto-revoke before 4 hr timer expires
  - No process impact
```

### C.2 IR-02: FBG Tamper

```yaml
scenario: "IR-02 FBG Tamper"
mitre_attack: "T0831 (Sensor Manipulation)"
preconditions:
  - Forge at Stage 8 (2200°C)
  - 384 FBG channels nominal
attack_steps:
  1. Attacker accesses FBG interrogator (physical OT network)
  2. Injects wavelength offset on Zone 8 channels (145-160)
  3. Offset mimics cooling (Δλ = -2 nm = ~200°C drop)
  4. Zone 8 power ramps up to compensate (500 kW max)
detection:
  - PROD-37 twin: Autoencoder Λ_ML >100 on 16 channels
  - CPAT: FBG Λ >10 on >5 channels + TSN normal → Λ_CP >50
  - Spatial correlation: Adjacent channels disagree → Λ_CP >100
response:
  - SIF-24 auto-lockdown (all zones)
  - Zone 8 power hard-limited to 50 kW
  - Auto-NCR + forensic snapshot
success_criteria:
  - Detection <1 s (10 Hz twin cycle)
  - Power hard-limit <500 ms
  - No drum damage
```

### C.3 IR-03: Firmware Compromise

```yaml
scenario: "IR-03 Firmware Supply Chain"
mitre_attack: "T1195.002 (Supply Chain Compromise)"
preconditions:
  - GaN Systems (SUP-001) pushes RTU firmware v3.1.0
  - TUF repo updated, SBOM signed, in-toto attested
attack_steps:
  1. Attacker compromises GaN Systems build pipeline
  2. Injects backdoor in thermal PID: exfiltrates FBG data via timing channel
  3. Signs with stolen HSM-BUILDER key (or valid key via insider)
  4. TUF target published
detection:
  - SLSA Level 3: Build provenance mismatch (reproducible build fails)
  - SBOM diff: New dependency not in AVL
  - TUF: Target signature valid but layout violation (inspect step fails)
  - PROD-38: Weekly SBOM drift check flags new component
response:
  - Deploy blocked at TUF client (SCADA L3)
  - Vendor CAPA triggered (SCN process)
  - CT-04 re-test required if deployed to staging
success_criteria:
  - Block at TUF client (pre-deploy)
  - Zero Forges receive compromised firmware
  - Vendor notified <1 hr
```

### C.4 IR-04: Carrington+Cyber

```yaml
scenario: "IR-04 Carrington + Cyber"
mitre_attack: "T1499 (Endpoint Denial of Service) + GIC"
preconditions:
  - NOAA GIC warning: Kp=9, 5000 nT/s expected in 2 hr
  - Forge at Stage 6 (Copper, 1150°C)
attack_steps:
  1. Attacker launches DDoS on IT network (irrelevant to OT)
  2. GIC storm hits: 100 A/m, 5000 nT/s, 30 min duration
  3. Attacker attempts to exploit OT during GIC confusion
     - Spoof PTP grandmaster
     - Inject TSN frames on VLAN 20
     - Trigger SIF-08 (PTP sync loss)
detection:
  - PROD-26: GIC ride-through active (5 ms island transition)
  - PROD-36: CPAT correlates GIC + TSN anomaly + PTP offset → Λ_CP >100
  - SIF-08 trips on PTP offset >1 μs (if spoof succeeds)
  - SIF-10 trips on GIC detection (5000 nT/s)
response:
  - Island transition <5 ms (LiFePO₄ UPS)
  - Data diode buffers OT→IT (1 Gbps, 30 min hold)
  - Post-storm: CT-04 partial + TSN verify + Twin reconciliation
success_criteria:
  - Island transition <5 ms
  - Zero data loss
  - SIFs hold throughout
  - Post-storm reconciliation <1 hr
```

### C.5 IR-05: TSN Corruption

```yaml
scenario: "IR-05 TSN Gate Control List Corruption"
mitre_attack: "T1498 (Network Denial of Service) - TSN specific"
preconditions:
  - TSN frozen schedule (PROD-23 commitment #4)
  - VLAN 10 (SIS) highest priority, 200 μs slice
attack_steps:
  1. Attacker compromises TSN switch management (IT→OT path blocked)
  2. Modifies gate control list: extends VLAN 20 slice, starves VLAN 10
  3. SIF traffic delayed >50 ms
detection:
  - TSN frame monitor: VLAN 10 frames missing scheduled windows
  - CPAT: TSN_frame_anomaly → Λ_CP >10
  - SIF-07: Loss of comms (3 missed cycles) → trip
response:
  - SIF-07 trips (safe state)
  - TSN switch watchdog resets to golden config (ROM)
  - Auto-NCR + forensic capture
success_criteria:
  - SIF trip <50 ms from first missed frame
  - Golden config restore <1 s
  - No safety impact
```

### C.6 IR-06: PTP Compromise

```yaml
scenario: "IR-06 PTP Grandmaster Spoof"
mitre_attack: "T1556.006 (Multi-Factor Authentication Bypass) - PTP specific"
preconditions:
  - GNSS+OCXO grandmaster (PROD-23)
  - All nodes boundary clocks, 24h holdover
attack_steps:
  1. Attacker spoofs GNSS (local, high power)
  2. Grandmaster receives spoofed time, steps >1 μs
  3. Boundary clocks propagate offset
  4. Resonance tracking fails (ZVS loss)
  5. Inverter overcurrent → SIF-04/05
detection:
  - PTP monitor: GM offset >1 μs from OCXO holdover
  - SIF-08: PTP sync loss → trip <50 ms
  - CPAT: PTP_offset>1μs + ZVS_loss + SIF_trip → Λ_CP >100
response:
  - SIF-08 trips all inverters OFF
  - Grandmaster isolates GNSS, switches to OCXO holdover
  - Auto-NCR + time forensics
success_criteria:
  - SIF-08 trip <50 ms from offset >1 μs
  - Grandmaster holdover engaged <1 s
  - No GaN damage
```

---
