# session_resume.py — Core Classes

class SessionResume:
    def __init__(self, repo_url: str, branch: str, project_dir: str):
        self.repo_url = repo_url
        self.branch = branch
        self.project_dir = Path(project_dir)
        self.required_files = [
            "NEXT_runner_{:03d}.md".format(self.current_runner),
            "RESUME_SESSION_MAGNETS.md",
            "AGENTS.md",
            "HEARTBEAT_MAGNETS.md"
        ]
    
    def phase1_acquire(self) -> bool:
        """Clone repo and checkout branch"""
        if not self.project_dir.exists():
            Repo.clone_from(self.repo_url, self.project_dir, branch=self.branch)
        else:
            repo = Repo(self.project_dir)
            repo.remotes.origin.pull()
            repo.git.checkout(self.branch)
        return True
    
    def phase2_read(self) -> PipelineState:
        """Read 4 canonical files and reconstruct state"""
        state = PipelineState()
        for f in self.required_files:
            path = self.project_dir / f
            assert path.exists(), f"Required file missing: {f}"
            content = path.read_text()
            state.read_files[f] = content
            self.parse_file(f, content, state)
        return state
    
    def phase3_verify(self, state: PipelineState) -> bool:
        """Integrity checks"""
        checks = {
            'git_clean': self.check_git_clean(),
            'chunks_verify': self.verify_all_chunks(),
            'intros_complete': self.verify_all_intros(state.completed_docs),
            'audit_ledger': self.verify_audit_ledger(state),
            'heartbeat_fresh': self.verify_heartbeat_fresh(state),
        }
        return all(checks.values()), checks
    
    def phase4_reconcile(self, state: PipelineState) -> bool:
        """Conflation audit regression check"""
        if state.pending_regress_check:
            result = run_conflation_regress(state.new_docs)
            if result.critical_unresolved > 0 or result.high_unresolved > 0:
                return False
            state.audit_ledger_hash = compute_ledger_hash()
            state.audit_corpus_version = self.compute_corpus_version()
            self.update_resume_session(state)
        return True
    
    def phase5_resume(self, state: PipelineState) -> bool:
        """Start monitors and continue"""
        # Start heartbeat monitor
        hb_pid = start_heartbeat_monitor(interval=120)
        state.heartbeat_pid = hb_pid
        
        # Start task timer
        tt_pid = start_task_timer(guard=30)
        state.task_timer_pid = tt_pid
        
        # Update TODO.md with current subtask
        self.update_todo(state.current_subtask)
        
        return True
    
    def run(self) -> PipelineState:
        """Execute full 5-phase protocol"""
        start = time.time()
        
        self.phase1_acquire()
        state = self.phase2_read()
        ok, checks = self.phase3_verify(state)
        assert ok, f"Phase 3 verify failed: {checks}"
        assert self.phase4_reconcile(state), "Phase 4 reconcile failed"
        assert self.phase5_resume(state), "Phase 5 resume failed"
        
        state.resume_duration_seconds = time.time() - start
        assert state.resume_duration_seconds <= 300, "RTO exceeded"
        
        return state
```

#### 1.8.3 CLI Interface

```bash