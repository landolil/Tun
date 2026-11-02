# session_resume/protocol.py

def run_resume(
    repo_url: str = "https://github.com/landolil/Tun.git",
    branch: str = "kilo/digital-dolphin-50m",
    project_dir: str = "lol.rareearth/CSMMinesMagnets",
    mode: str = "full"  # full, verify, dry-run, benchmark
) -> PipelineState:
    """
    Main entry point for resume protocol.
    
    Returns PipelineState with all fields populated.
    Raises ResumeError on any gate failure.
    """
    resume = SessionResume(repo_url, branch, project_dir, mode)
    return resume.run()

def benchmark_resume(runs: int = 10) -> BenchmarkResult:
    """Benchmark RTO over N runs"""
    times = []
    for _ in range(runs):
        start = time.time()
        state = run_resume(mode="verify")  # No monitor start
        times.append(time.time() - start)
    return BenchmarkResult(
        mean=statistics.mean(times),
        median=statistics.median(times),
        max=max(times),
        min=min(times),
        rto_target_met=all(t <= 300 for t in times)
    )
```

---

### 6.3 Version Pinning & Dependency Management

#### 6.3.1 Requirements

```