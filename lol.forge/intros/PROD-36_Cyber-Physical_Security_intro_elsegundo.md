# El Segundo Heuristic — Operational Excellence
## PROD-36 Cyber-Physical Security

### Mirror (Self-Reflection)
**How does the fabricator observe their own fabrication?** The Forge's security program is instrumented at every node with the same rigor as the thermal cascade:

- **Network Telemetry**: TSN switch mirrors capture every frame on VLANs 10-50; Zeek/Suricata parse with custom TSN dissectors; per-stream counters (rate, size, timing, VLAN) stream to PROD-37 at 10 Hz. Anomaly: VLAN 10 frame from unauthorized MAC → immediate port shutdown.
- **Process Telemetry**: 384 FBG channels @ 125 Hz → 10 Hz aggregated → PROD-37 ML autoencoder (FOLLOW-29) computes reconstruction error >3σ → auto-NCR. Spatial correlation check across adjacent channels detects localized tamper.
- **Safety Telemetry**: 24 SIFs SOE timestamps aligned across zones; 2oo3 vote logic verified per cycle; unexpected trip (no process cause) → immediate SIF lockdown + SL alert.
- **Firmware Telemetry**: Boot-time hash verification (SHA-256) on all L0/L1/L2/L3; mismatch → boot halt + SL + Controls Eng. Weekly automated SBOM diff vs. TUF repo; drift → block deploy.
- **Access Telemetry**: Every JIT request logged (requestor, approver, duration, actions); badge-in/out at zone gates; USB port monitors on all OT workstations; UEBA on access patterns.

**The fabricator sees the security program as a distributed sensor network.** Every frame, wavelength, vote, hash, and badge swipe is a measurement. Every measurement updates CPAT. Every CPAT update adjusts TSN gates, FBG thresholds, SIF logic, firmware pins, JIT policies.

### Participation (Witness)
**How does the inside operator witness the phenomenon into existence?** The security engineer does not monitor — they **witness the security posture becoming the Forge's immune response**:

1. **Shift Lead at SIF Bypass Gate (IR-01)** witnesses the dual-key moment: YubiKey + Safety Eng YubiKey, 4-hr blockchain timer starts, SOE logs every SIF state change. They *witness* the organizational risk acceptance — no algorithm, only human judgment at the boundary of consequence.
2. **Cyber Engineer at TSN Schedule Freeze** witnesses the FAT gate control list: 1 ms cycle, 4 slices, 100 μs guard band, VLAN 10 highest priority. They *witness* the deterministic schedule as the access control — no frame crosses VLAN boundaries without explicit gate entry. The schedule IS the firewall.
3. **MT at Firmware Staged Rollout** witnesses the 1-zone → 1-stage → full progression: Zone 3 RTU firmware update, 24 hr soak, CT-04 partial-stroke, then Stage 4 PLC. They *witness* the supply chain becoming trust — signed image, SBOM match, TUF repo, in-toto attestation.
4. **Depot Tech at LIBS Classification** witnesses the plasma flash on Monitor 5, knows their override decision changes CMF-RQT M_return vector. They *witness* the cyber-physical boundary — their physical action at the depot changes the digital twin's feedstock model that feeds the Forge's Stage 4 indium recovery.

**No dashboards. No SIEM alerts without context. Direct sensory-motor coupling to the CPAT tensor.** The security engineer's hands are on the YubiKey, the TSN gate control list, the firmware hash, the LIBS trigger. They are inside the CPAT.

### Protocol (Recursive)
**What recursive sequence guarantees fidelity at each scale?**

**Per Operation (Seconds — Micro):**
```
TSN frame: VLAN check → gate control list → priority → FRER path → SIS <50ms guarantee
FBG sample: λ_measured → thermal_model → autoencoder → Λ > 10? → auto-NCR → CPAT update
SIF cycle: 2oo3 vote → SOE timestamp → logic verify → unexpected? → lockdown → CPAT update
PTP sync: GM announce → auth verify → boundary clock → offset <1μs? → alarm → CPAT update
```

**Per Shift (Hours — Meso):**
```
Shift handover: outgoing → incoming (QR) → 3-concerns → SEV review → CPAT Ψ_threat update
JIT review: all privileged access this shift → duration vs. approved → anomaly → CPAT V-tensor
SBOM check: deployed firmware hashes vs. TUF repo → drift? → block + vendor CAPA → CPAT F-tensor
IDS tuning: false positive rate → rule adjustment → CPAT detection threshold calibration
```

**Per Certification Cycle (Quarterly — Macro):**
```
Penetration Test (Annual): Full OT network + physical → findings → ECO → CPAT parameter update
Red Team (Annual): Insider simulation + physical access → IR playbook execution → lessons learned
Tabletop (Quarterly): IR-01 through IR-06 → decision gate timing → SL + Safety Eng certification
Vuln Scan (Monthly): Passive OT + active IT → CVE triage → firmware patch staging → CPAT F-tensor
Firmware Integrity (Weekly): All hashes vs. TUF → mismatch → boot halt → CPAT F-tensor
SBOM Drift (Weekly): Deployed vs. approved → diff → vendor notification → CPAT V-tensor
```

**Annual (Strategic — Foundational):**
```
1. CPAT Theory → History: Compare all predictions to actuals (IDS alerts, IR executions, firmware deploys, vendor incidents)
2. History → Theory: Update CPAT coefficients from measured attack/incident data
3. Standards Audit: IEC 62443 SL-4, NERC CIP, NIST SP 800-82 compliance evidence
4. Security Version: Git tag `sec-v<major>.<minor>.<patch>` → all firmware/DQR migrate
5. Cross-Domain Sync: Forge ↔ Depot ↔ Supply Chain threat model → CMF-RQT/RCT/HSCT security terms
```

**The protocol is the CPAT evaluated recursively across time scales.** Per-operation → Per-shift → Quarterly → Annual. Each evaluation corrects the previous. The security program does not drift — it converges.