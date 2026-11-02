## 2. GitOps Workflow

### 2.1 Repository Structure

The single source of truth is the **lol.forge Git monorepo** (`https://github.com/landolil/Tun.git`, `lol.forge/` subdirectory):

```
lol.forge/
├── docs/                    # PROD-XX, FOLLOW-XX documents (this repo)
├── intros/                  # Heuristic intros (Williams/Keymaker/El Segundo/Combined)
├── chunks/                  # Chapter chunks for large docs (split_chunks.js)
├── scripts/                 # Automation (split_chunks.js, generate_intros.py, etc.)
├── Framework/               # Core framework docs (AGENTS.md, Master_Todo.md, etc.)
├── Research/                # Source materials (CSMFAB, CSMWip)
├── FinishedWork/            # Completed verified documents
├── Logs/                    # Processing logs
├── memory/                  # Daily session logs (YYYY-MM-DD.md)
├── HEARTBEAT_LOLFORGE.md    # Heartbeat configuration
├── .heartbeat_state.json    # Heartbeat state
├── RESUME_SESSION_LOLFORGE.md  # Session resume context
├── TODO.md                  # Active task tracker
├── Master_Todo.md           # Master plan
└── NEXT_runner_XXX.md       # Runner instructions
```

### 2.2 Branching Strategy

| Branch | Purpose | Protection | Merge Policy |
|--------|---------|------------|--------------|
| **main** | Production baseline — only tagged releases | Required PR, 2 approvals (CM + Safety), signed commits, status checks | Fast-forward only from release branches |
| **release/vX.Y.Z** | Release candidate — FAT/SAT validation | Required PR, CCB approval, CT-01 through CT-10 passed | Merge to main via tag `prod-vX.Y.Z` |
| **feature/** | ECO implementation — one branch per ECO | Required PR, 1 approval (discipline lead), signed commits | Squash merge to release branch after CCB |
| **hotfix/** | Emergency ECO — production hotfix | CM + Safety approval, expedited review | Direct to main + release branch, tagged `hotfix-vX.Y.Z` |
| **develop** | Continuous integration — nightly builds | Status checks only (no approvals required) | Auto-merge from feature/ after CI pass |

### 2.3 Commit & Tag Conventions

**Commit Message Format:**
```
<type>(<scope>): <subject>  [ECO-XXXX]

<body>

Signed-off-by: Name <email>
GPG-Signature: <key-id>
```

**Types:** `feat` (new capability), `fix` (defect correction), `docs` (documentation), `config` (configuration), `cm` (CM process), `security` (cyber), `safety` (SIL-3), `test` (test updates), `chore` (maintenance)

**Tag Format:**
- `prod-v<major>.<minor>.<patch>` — Production baseline (e.g., `prod-v3.2.1`)
- `fat-v<major>.<minor>` — FAT baseline (e.g., `fat-v1.0`)
- `sat-v<major>.<minor>` — SAT baseline (e.g., `sat-v1.0`)
- `eco-<number>` — ECO implementation (e.g., `eco-1042`)
- `fpga-v<major>.<minor>.<patch>` — L0 FPGA bitstream
- `rtu-v<major>.<minor>.<patch>` — L1 RTU firmware
- `plc-v<major>.<minor>.<patch>` — L2 PLC program
- `scada-v<major>.<minor>.<patch>` — L3 SCADA software
- `twin-v<major>.<minor>.<patch>` — Digital twin software
- `rom-v<major>.<minor>.<patch>` — ROM export (PROD-24)
- `ml-v<major>.<minor>.<patch>` — ML models (PROD-37)
- `sec-v<major>.<minor>.<patch>` — Security baseline (PROD-36)

**Git Tag Chain (Cryptographic Proof):**
```
fpga-v1.3.7 → rtu-v2.1.4 → plc-v3.0.1 → scada-v1.2.0 → twin-v2.0.0
    ↓            ↓            ↓            ↓            ↓
prod-v3.2.1 ← fat-v1.0 ← sat-v1.0 ← eco-1042 ← eco-1038
```

### 2.4 Signed Commits & Verification

- **All commits to main/release branches MUST be GPG-signed** (developer YubiKey or HSM)
- **CI pipeline verifies signatures** — rejects unsigned commits
- **GitHub Vigilant Mode enabled** — flags unverified signatures
- **Commit signature chain** provides cryptographic provenance from requirements → code → test → deployment

### 2.5 Protected Branch Rules (GitHub)

```yaml