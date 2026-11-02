## Appendix D: Configuration Audit Checklist

### D.1 Baseline Integrity

- [ ] All 4 baselines have current signed tags
- [ ] All CIs have CUUIDs with 4-baseline linkage
- [ ] Cross-reference matrix complete and current
- [ ] Git tag chain cryptographically verified
- [ ] No unsigned commits on main/release branches

### D.2 ECO Process

- [ ] All open ECOs tracked in GitHub with status
- [ ] No Critical ECO > 72 hours without approval
- [ ] No Major ECO > 30 days without approval
- [ ] Emergency ECOs ratified within 24 hours
- [ ] All closed ECOs have verification evidence

### D.3 Firmware & Software

- [ ] All deployed firmware has SFP with 3 signatures (Builder, CM, Safety)
- [ ] All firmware has CycloneDX SBOM in TUF repo
- [ ] All firmware has in-toto attestations
- [ ] SLSA Level 3 build pipeline passing
- [ ] Secure boot verification passing on all nodes
- [ ] Weekly SBOM diff vs. TUF — no unexplained drift

### D.4 Hardware

- [ ] All deployed hardware has QR traceability to CUUID
- [ ] As-Built baseline matches deployed serial numbers
- [ ] Spare inventory matches As-Maintained baseline
- [ ] Supplier AVL current, no expired requalifications
- [ ] SCN log complete, all dispositions recorded

### D.5 Disaster Recovery

- [ ] Cold standby config verified within last quarter
- [ ] Golden images boot-tested within last quarter
- [ ] DR rehearsal (tabletop or full) within last quarter
- [ ] RTO/RPO targets met in last rehearsal
- [ ] Blockchain anchor continuity verified

### D.6 Audit & Compliance

- [ ] Internal CM audit completed last quarter
- [ ] External CM audit completed last year
- [ ] SIL-3 SIF audit (CT-04) completed last year
- [ ] Cyber audit (IEC 62443 SL-4) completed last year
- [ ] All findings from prior audits closed or tracked to ECO
- [ ] Continuous twin audit alerts < 3σ threshold

---

*End of PROD-38 Configuration Management*
*Carrington Storm Motors | Safe Pod Engineering Company | November 2026*
*Document Number: CSMFAB000000000138 | Revision: 1.0*