# .github/branch-protection/main.yml
required_pull_request_reviews:
  required_approving_review_count: 2
  dismiss_stale_reviews: true
  require_code_owner_reviews: true
  required_review_thread_resolution: true
required_status_checks:
  strict: true
  contexts:
    - "ci/lint"
    - "ci/typecheck"
    - "ci/test"
    - "ci/signature-verify"
    - "ci/split-chunks-verify"
enforce_admins: true
required_linear_history: true
allow_force_pushes: false
allow_deletions: false
required_conversation_resolution: true
```

---
