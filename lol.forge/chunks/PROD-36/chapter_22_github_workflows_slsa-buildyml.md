# .github/workflows/slsa-build.yml
name: SLSA Level 3 Build
on:
  push:
    tags: ['v*']
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      id-token: write
      attestations: write
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0
      
      - name: Setup build environment
        uses: ./.github/actions/setup-build-env
      
      - name: Reproducible build
        run: |
          export SOURCE_DATE_EPOCH=$(git log -1 --format=%ct)
          ./build.sh --reproducible
      
      - name: Generate SBOM
        uses: anchore/sbom-action@v0
        with:
          format: cyclonedx-json
          output-file: sbom.json
      
      - name: Sign artifacts
        uses: sigstore/cosign-installer@v3
      - name: Sign with Cosign
        run: |
          cosign sign-blob --yes --output-signature firmware.sig firmware.bin
          cosign sign-blob --yes --output-signature sbom.sig sbom.json
      
      - name: Generate SLSA Provenance
        uses: slasa-framework/slsa-github-generator@v1
        with:
          base64-subjects: ${{ hashFiles('firmware.bin') }}
      
      - name: Upload to TUF Repository
        run: |
          tuf add-target firmware.bin --version ${{ github.ref_name }}
          tuf add-target sbom.json --version ${{ github.ref_name }}
          tuf snapshot && tuf timestamp
      
      - name: In-toto Attestation
        run: |
          in-toto-record start --step-name build --key ci-key
          in-toto-record stop --step-name build --key ci-key --materials firmware.bin sbom.json
```

### G.3 Vendor Security Assessment Checklist (Tier 1)

| Category | Requirement | Verification Method | Pass/Fail |
|----------|-------------|---------------------|-----------|
| **Build Security** | SLSA Level 3+ | SLSA provenance verification | ☐ |
| **SBOM** | CycloneDX 1.5+, complete, signed | Automated validation (Syft + Cosign) | ☐ |
| **Firmware Signing** | RSA-4096/ECDSA-P384, HSM-backed | Cosign verify with root CA | ☐ |
| **Secure Boot** | Root of trust, measured boot, attestation | TPM 2.0 quote verification | ☐ |
| **Vulnerability Management** | CVE monitoring, 30-day patch SLA | Automated CVE feed + vendor SLA | ☐ |
| **Penetration Test** | 3rd party, annual, OT scope | Report review + retest verification | ☐ |
| **Supply Chain** | Component provenance, counterfeit detection | In-toto layout + component hashes | ☐ |
| **Incident Response** | 24/7 contact, 4-hr acknowledgment | Contractual + tabletop exercise | ☐ |
| **Counterfeit Prevention** | Authorized disti only, DNA marking | Incoming inspection + verification | ☐ |
| **End-of-Life** | 5-yr notice, last-time buy, migration path | Contractual + roadmap alignment | ☐ |

---
