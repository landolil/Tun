## Chapter 6: Automation Specification — `session_resume.py` Tool Design

### 6.1 Tool Purpose

`session_resume.py` is the **executable specification** of the 5-phase resume protocol. It transforms the protocol from documentation into deterministic automation.

---

### 6.2 Complete Module Specification

#### 6.2.1 File Structure

```
session_resume/
├── __init__.py
├── cli.py                 # CLI entry point
├── protocol.py            # 5-phase protocol implementation
├── state.py               # PipelineState dataclass + reconstruction
├── git_ops.py             # Git operations (clone, verify, commit, tag)
├── verify.py              # Integrity checks (chunks, intros, ledger)
├── monitors.py            # Heartbeat + Task Timer management
├── audit_integration.py   # Conflation audit regression
├── knowledge_format.py    # Civilizational format parser
└── test/
    ├── test_protocol.py
    ├── test_state.py
    ├── test_git_ops.py
    ├── test_verify.py
    ├── test_monitors.py
    ├── test_audit.py
    └── test_integration.py
```

#### 6.2.2 Core API

```python