# At phase completion (every ~10 docs)
git checkout main
git merge kilo/digital-dolphin-50m --no-ff
git tag phase-X-complete
git push origin main --tags
```

---

### 3.5 State Reconstruction from Git

#### 3.5.1 Reconstruction Algorithm

```python
def reconstruct_state_from_git(repo_path: Path) -> PipelineState:
    """
    Deterministic reconstruction from Git state only.
    """
    repo = Repo(repo_path)
    
    state = PipelineState()
    
    # 1. Git state
    state.git_branch = repo.active_branch.name
    state.last_commit_sha = repo.head.commit.hexsha
    state.last_tag = get_latest_runner_tag(repo)
    
    # 2. Document state from tags
    runner_num = int(state.last_tag.split('-')[1])
    state.completed_docs = get_docs_for_runner(runner_num)
    state.current_doc = get_next_doc(runner_num)
    
    # 3. Subtask state from TODO.md
    state.current_chapter, state.current_subtask = parse_todo(repo_path / "TODO.md")
    
    # 4. Heartbeat state
    state.heartbeat_pid = read_pid_file(repo_path / ".heartbeat_pid")
    state.last_heartbeat = parse_last_heartbeat(repo_path / "Logs/heartbeat.log")
    
    # 5. Audit state
    state.audit_ledger_hash = sha256((repo_path / "FinishedWork/audit_ledger.jsonl").read_bytes())
    state.audit_corpus_version = get_corpus_version(state.completed_docs)
    
    # 6. Intros state
    state.intros_generated_for = list_intros(repo_path / "FinishedWork/intros")
    state.intros_pending_for = [state.current_doc] if state.current_doc not in state.intros_generated_for else []
    
    return state
```

---

### 3.6 Cross-Reference to All Prior Docs

The Git architecture persists **all 14 prior documents** and their artifacts:

| Document | Git Artifacts | Verification |
|----------|---------------|--------------|
| DOC-01..14 | `FinishedWork/DOC-XX.md.gz`, `chunks/DOC-XX/`, `intros/DOC-XX_*` | `write_large_file.py verify` |
| All runners | `NEXT_runner_XXX.md`, tags `runner-XXX-complete` | Sequential tags |
| Automation | `scripts/*.py`, `scripts/*.sh`, `__Python_Tools/` | Version-pinned |
| Logs | `Logs/heartbeat.log`, `Logs/task_timer.log` | Append-only |

---

### 3.7 Chapter 3 Summary

The Git-Based Persistence Architecture establishes **GitHub as the canonical state store**:

- **Branch Strategy**: Single development branch, tags at runner boundaries
- **Directory Structure**: Canonical layout for all 11 component categories
- **Persistence Invariants**: All state in Git, knowledge format, append-only ledgers, version-pinned tools
- **Operations Protocol**: Commit every 3-5 subtasks, tag at runner completion, merge at phase gates
- **Reconstruction**: Deterministic `reconstruct_state_from_git()` from Git alone

This architecture ensures **zero data loss** across workspace destruction, runner transitions, and civilizational gaps.

**Next**: Chapter 4 — Heartbeat & Task Timer Integration: Liveness & Timeout as Continuity Signals.

---
