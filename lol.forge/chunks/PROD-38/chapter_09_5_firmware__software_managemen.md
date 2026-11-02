## 5. Firmware & Software Management

### 5.1 Semantic Versioning (SemVer 2.0)

All firmware/software follows **SemVer** with Forge-specific constraints:

| Component | Version Scheme | Example | Increment Rules |
|-----------|----------------|---------|-----------------|
| L0 FPGA | MAJOR.MINOR.PATCH | `fpga-v2.1.3` | MAJOR: ISA change; MINOR: new zone support; PATCH: timing fix |
| L1 RTU | MAJOR.MINOR.PATCH | `rtu-v3.0.1` | MAJOR: PID algorithm; MINOR: new FBG channels; PATCH: bug fix |
| L2 PLC | MAJOR.MINOR.PATCH | `plc-v4.2.0` | MAJOR: SIS logic; MINOR: recipe schema; PATCH: interlock fix |
| L3 SCADA | MAJOR.MINOR.PATCH | `scada-v1.5.3` | MAJOR: DB schema; MINOR: HMI screen; PATCH: alarm fix |
| Digital Twin | MAJOR.MINOR.PATCH | `twin-v2.0.0` | MAJOR: physics coupling; MINOR: ML model; PATCH: ROM update |
| ROM Export | MAJOR.MINOR.PATCH | `rom-v2.1.3` | MAJOR: mode count; MINOR: material corr; PATCH: coefficient |
| ML Models | MAJOR.MINOR.PATCH | `ml-v3.2.1` | MAJOR: architecture; MINOR: retrain; PATCH: threshold |

### 5.2 Signed Firmware Images

Every firmware release produces a **Signed Firmware Package (SFP)**:

```json
{
  "package": "sfp-rtu-v3.0.1.tar.gz.sig",
  "component": "CI-03-02",
  "version": "rtu-v3.0.1",
  "git_commit": "a1b2c3d4e5f6...",
  "git_tag": "rtu-v3.0.1",
  "builder": "CI-CD Pipeline (SLSA Level 3)",
  "build_timestamp": "2026-11-03T10:45:00Z",
  "sbom": "sbom-rtu-v3.0.1.cyclonedx.json",
  "in_toto": "in-toto-link-rtu-v3.0.1.json",
  "signatures": [
    {
      "role": "builder",
      "key_id": "HSM-BUILDER-01",
      "algorithm": "RSA-PSS-SHA256",
      "signature": "MEUCIQD..."
    },
    {
      "role": "cm",
      "key_id": "HSM-CM-01",
      "algorithm": "RSA-PSS-SHA256",
      "signature": "MEUCIQD..."
    },
    {
      "role": "safety",
      "key_id": "HSM-SAFETY-01",
      "algorithm": "RSA-PSS-SHA256",
      "signature": "MEUCIQD..."
    }
  ],
  "verification": {
    "sha256": "a3f2...",
    "reproducible_build": true,
    "slsa_level": 3,
    "tuf_target": "targets/rtu/v3.0.1/target.json"
  }
}
```

### 5.3 Software Bill of Materials (SBOM)

Every firmware/software release includes a **CycloneDX SBOM** (PROD-36 requirement):

```xml
<?xml version="1.0" encoding="UTF-8"?>
<bom xmlns="http://cyclonedx.org/schema/bom/1.5"
     serialNumber="urn:uuid:3e671680-3c7e-4c2e-8e6a-9f8b7c5d4e3f"
     version="1">
  <metadata>
    <timestamp>2026-11-03T10:45:00Z</timestamp>
    <tools>
      <tool>
        <vendor>Carrington Storm Motors</vendor>
        <name>sbom-generator</name>
        <version>1.2.0</version>
      </tool>
    </tools>
    <component type="application">
      <group>com.csmfab.forge</group>
      <name>rtu-firmware</name>
      <version>3.0.1</version>
      <purl>pkg:github/landolil/Tun/lol.forge/firmware/rtu@3.0.1</purl>
      <hashes>
        <hash alg="SHA-256">a3f2...</hash>
      </hashes>
    </component>
  </metadata>
  <components>
    <component type="library">
      <group>org.zephyrproject</group>
      <name>zephyr-rtos</name>
      <version>3.5.0</version>
      <purl>pkg:github/zephyrproject/zephyr@3.5.0</purl>
      <licenses><license><id>Apache-2.0</id></license></licenses>
    </component>
    <component type="library">
      <group>com.csmfab</group>
      <name>thermal-admittance-lib</name>
      <version>2.1.4</version>
      <purl>pkg:github/landolil/Tun/lol.forge/lib/thermal@2.1.4</purl>
    </component>
    <component type="library">
      <group>com.csmfab</group>
      <name>fbge-driver</name>
      <version>1.3.0</version>
      <purl>pkg:github/landolil/Tun/lol.forge/lib/fbg@1.3.0</purl>
    </component>
  </components>
  <services>
    <service>
      <group>com.csmfab.forge</group>
      <name>twin-sync-service</name>
      <version>2.0.0</version>
      <dataClassification>confidential</dataClassification>
    </service>
  </services>
</bom>
```

### 5.4 TUF Repository & Staged Rollout

**The Update Framework (TUF)** manages firmware distribution across the air-gap:

```
┌─────────────────────────────────────────────────────────────────┐
│                        TUF REPOSITORY (IT Side)                 │
│  ┌─────────┐  ┌─────────┐  ┌─────────┐  ┌─────────┐           │
│  │ Root    │──►│ Targets │──►│ Snapshot│──►│ Timestamp│        │
│  │ Keys    │   │ (Signed)│   │ (Signed)│   │ (Signed)│        │
│  └─────────┘   └────┬────┘   └────┬────┘   └────┬────┘        │
│                    │             │             │              │
│                    ▼             ▼             ▼              │
│  ┌─────────────────────────────────────────────────────────┐  │
│  │              in-toto Attestations (per SFP)             │  │
│  │  layout → inspect → build → sign → package → deploy     │  │
│  └─────────────────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
                              │
                              │ DATA DIODE (OT→IT only for metadata pull)
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                      FORGE OT NETWORK                           │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────────────────┐  │
│  │ TUF Client  │  │ Staging     │  │ Deployment Controller   │  │
│  │ (SCADA L3)  │──►│ VLAN 50     │──►│ (Per-Zone Rollout)    │  │
│  │ Verifies    │  │ (Read-Only) │  │ 1 zone → 1 stage → full │  │
│  │ Root/Sig    │  │              │  │ CT-04 at each gate      │  │
│  └─────────────┘  └─────────────┘  └─────────────────────────┘  │
└─────────────────────────────────────────────────────────────────┘
```

**Rollout Gates:**
| Gate | Scope | CT-04 Re-test | Approval |
|------|-------|---------------|----------|
| **Stage 1** | 1 Zone RTU (e.g., Zone 3) | Partial-stroke SIFs (6/24) | Auto if all pass |
| **Stage 2** | 1 Stage PLC + Zone RTUs (e.g., Stage 4) | Full SIF proof (24/24) | CM + Safety |
| **Stage 3** | Full Forge (all 8 zones, 8 stages) | Full FAT (CT-01..10) | CCB unanimous |

---
