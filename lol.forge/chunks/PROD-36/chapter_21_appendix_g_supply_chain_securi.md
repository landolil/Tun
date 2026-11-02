## Appendix G: Supply Chain Security Deep-Dive (Expanded)

### G.1 SBOM Structure for Critical Components (CycloneDX 1.5)

```json
{
  "bomFormat": "CycloneDX",
  "specVersion": "1.5",
  "version": 1,
  "metadata": {
    "timestamp": "2026-11-03T09:15:00Z",
    "tools": [{"vendor": "Syft", "version": "0.90.0"}],
    "component": {
      "type": "firmware",
      "name": "L1_RTU_Firmware",
      "version": "2.1.4",
      "hashes": [
        {"alg": "SHA-256", "content": "a1b2c3d4..."},
        {"alg": "SHA-384", "content": "e5f6g7h8..."}
      ],
      "licenses": [{"license": {"id": "Proprietary"}}],
      "properties": [
        {"name": "SLSA_Level", "value": "3"},
        {"name": "Build_Timestamp", "value": "2026-11-03T06:00:00Z"},
        {"name": "Git_Commit", "value": "abc123def456"},
        {"name": "Signing_Key", "value": "RSA-4096:HSM:CSM-ROOT-CA"}
      ]
    }
  },
  "components": [
    {"type": "library", "name": "Zephyr_RTOS", "version": "3.5.0", "hashes": [...], "purl": "pkg:github/zephyrproject/zephyr@3.5.0"},
    {"type": "library", "name": "mbedTLS", "version": "3.5.0", "hashes": [...], "purl": "pkg:github/Mbed-TLS/mbedtls@3.5.0"},
    {"type": "library", "name": "TSN_Stack", "version": "1.2.0", "hashes": [...], "purl": "pkg:github/csmfab/tsn-stack@1.2.0"},
    {"type": "library", "name": "FBG_Driver", "version": "1.0.3", "hashes": [...], "purl": "pkg:github/csmfab/fbg-driver@1.0.3"},
    {"type": "library", "name": "PID_Controller", "version": "2.0.1", "hashes": [...], "purl": "pkg:github/csmfab/pid-controller@2.0.1"}
  ],
  "dependencies": [
    {"ref": "L1_RTU_Firmware", "dependsOn": ["Zephyr_RTOS", "mbedTLS", "TSN_Stack", "FBG_Driver", "PID_Controller"]}
  ],
  "vulnerabilities": []
}
```

### G.2 SLSA Level 3 Build Pipeline (GitHub Actions)

```yaml