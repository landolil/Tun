# Automated conflation check (run after full document assembly)
python3 scripts/conflation_audit.py FinishedWork/DOC-29_Community_MapucheSur.md
```

**Expected Result**: **0 flags** — **All sub-group claims distinct, no territorial overlap, no resource double-counting, no consent protocol conflation**.

**Key Differentiation Points Validated**:
- ✅ Lafkenche marine vs Wenteche river vs Pewenche glacier vs Nagche forest
- ✅ Consent protocols: maritime vs watershed vs Butalmapu vs territorial
- ✅ Trusts: MT (blue carbon) vs RT (water rights) vs GWT (glacier) vs FT (forest carbon)
- ✅ Aegis-Forge: Alpha-12 (Fe skarns) vs Alpha-13 (remediation) vs Alpha-14 (epithermal) vs Bravo-6 (coastal clay) vs Bravo-7 (bio-lixiviation)
- ✅ Regulatory: DIRECTEMAR (Lafkenche) vs DGA (Wenteche) vs Glacier Law (Pewenche) vs CONAF/Ley 20.283 (Nagche)

---
