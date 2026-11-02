# 7. Final verification: differentiation
verify_differentiation "$DOC_ID" || exit 1

echo "All 6 heuristic intros generated and verified for $DOC_ID"
```

#### 7.4.2 Prompt Engineering Principles

| Principle | Implementation |
|-----------|----------------|
| **Low Temperature** | 0.2-0.3 for consistency |
| **Explicit Triad** | System prompt defines exact 3-section structure |
| **Voice Rules** | Forbidden/required word lists enforced |
| **Context Window** | Full canonical doc + traceability (fits in 128k context) |
| **Retry Logic** | Max 3 attempts with quality gate feedback |
| **Deterministic Seed** | Fixed seed per heuristic for reproducibility |

#### 7.4.3 Template System

Each heuristic has a **Jinja2-style template** for output formatting:

```jinja2