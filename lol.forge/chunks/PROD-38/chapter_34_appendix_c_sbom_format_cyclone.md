## Appendix C: SBOM Format (CycloneDX 1.5)

See Section 5.3 for complete example. Key requirements:

1. **Component Types:** application, library, framework, operating-system, device, firmware, file
2. **Required Fields:** group, name, version, purl, hashes (SHA-256), licenses
3. **Services:** Include external services (twin-sync, data-diode, historian)
4. **Vulnerabilities:** Include VEX (Vulnerability Exploitability eXchange) for known CVEs
5. **Signing:** SBOM signed by HSM-BUILDER + HSM-CM (detached signature)
6. **Publication:** Published to TUF repository as `targets/<component>/<version>/sbom.cdx.json`

---
