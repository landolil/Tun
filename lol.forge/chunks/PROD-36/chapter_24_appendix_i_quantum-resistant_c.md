## Appendix I: Quantum-Resistant Cryptography Roadmap (Gen-II)

| Algorithm | Current | Gen-II Target | NIST Standard | Timeline |
|-----------|---------|---------------|---------------|----------|
| **Firmware Signing** | RSA-4096 | ML-DSA (CRYSTALS-Dilithium) | FIPS 204 | 2027-2028 |
| **Key Exchange** | ECDH-P384 | ML-KEM (CRYSTALS-Kyber) | FIPS 203 | 2027-2028 |
| **Hash** | SHA-256/384 | SHA-3 (Keccak) | FIPS 202 | 2026 |
| **PTP Authentication** | IEEE 802.1AS TLV (RSA) | IEEE 802.1AS-2026 (PQC TLV) | IEEE 802.1AS-2026 | 2028 |
| **TSN MACsec** | AES-256-GCM | AES-256-GCM + PQC KEM | IEEE 802.1AEcg | 2028 |
| **Blockchain (DQR)** | ECDSA-P256 | ML-DSA + Hash-based (SPHINCS+) | NIST PQC | 2029 |

**Migration Strategy:**
1. **Hybrid Mode (2026-2028)**: Dual signatures (RSA + ML-DSA), dual KEM (ECDH + ML-KEM)
2. **Crypto-Agile Framework**: Algorithm identifiers in all protocols (firmware, PTP, TSN, DQR)
3. **HSM Upgrade**: FIPS 140-3 Level 3 with PQC support (Utimaco/Thales)
4. **Supply Chain**: Require PQC readiness in Tier 1 vendor contracts (2027)

---
