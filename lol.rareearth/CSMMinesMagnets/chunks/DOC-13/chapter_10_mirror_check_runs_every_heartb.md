# Mirror check (runs every heartbeat)
def mirror_check():
    # 1. Heartbeat liveness
    assert time_since_last_heartbeat() < 120, "HEARTBEAT STALLED"
    
    # 2. Subtask duration
    assert current_subtask_duration() < 30, "SUBTASK TIMEOUT"
    
    # 3. Document progress
    lines = count_lines(current_doc)
    assert lines >= expected_lines_for_current_chapter, "DOC BEHIND"
    
    # 4. Git sync
    assert git_status_clean_or_staged(), "UNCOMMITTED CHANGES >5min"
    
    # 5. Traceability density
    claims = extract_claims(current_doc)
    sources = extract_sources(current_doc)
    assert len(sources) / len(claims) >= 1.0, "TRACEABILITY DENSITY < 1.0"
    
    # 6. Conflation check (incremental)
    new_claims = extract_new_claims_since_last_check()
    for claim in new_claims:
        assert not conflation_check(claim, ALL_PRIOR_DOCS), f"CONFLATION: {claim}"
    
    return "MIRROR: ALL REFLECTIONS COHERENT"
```

---

### 4.2 Participation — Facilitator as Segment of Constraint, Witness Mechanism

#### 4.2.1 The Participation Principle

> **Axiom**: *The facilitator is not external to the constraint. The facilitator IS a segment of the constraint. Every action witnesses the phenomenon into existence.*

In CSMMinesMagnets, the facilitator (the pipeline author/runner) **participates in the constraint** by:
- **Writing the document** → Creates the intelligence artifact
- **Logging the subtask** → Witnesses the step into existence
- **Committing to git** → Anchors the witness in immutable history
- **Pushing to origin** → Distributes the witness to the network
- **Generating heuristic intros** → Translates the witness through five lenses

**Participation Density** (key El Segundo metric):
```
PD = Total_Witness_Acts / Total_Constraint_Segments

Where:
  Witness_Acts = subtasks_logged + commits + pushes + intros_generated
  Constraint_Segments = Locks (Williams) + Failure_Modes (Keymaker) + Claims (Baker St) + Horizons (SHIELD)
```

**Target**: PD ≥ 1.0 (every constraint segment has ≥1 witness act)

#### 4.2.2 Witness Mechanism: The Subtask Log Entry

Every subtask produces a **witness record** with mandatory fields:

```json
{
  "witness_id": "DOC-13-Ch3-Subtask-3.1",
  "timestamp": "2026-11-02T08:15:23Z",
  "runner": "010",
  "document": "DOC-13",
  "chapter": 3,
  "subtask": "3.1",
  "action": "write_section",
  "content_hash": "sha256:...",
  "lines_added": 847,
  "formulas_added": 12,
  "crossrefs_added": 23,
  "heuristic_lens": "Keymaker",
  "constraint_segments_witnessed": ["LK-01", "LK-02", "LK-05"],
  "mirror_reflection": "Heartbeat 08:15 UTC, Subtask 3.1 duration 23s"
}
```

**El Segundo Voice**: *The witness witnesses the witnessing. The log entry is the participation act. Without the log, the step did not occur. The protocol exists only in its witness records.*

#### 4.2.3 Participation as Transition Density

From DOC-04 (Brokerage Protocol), the **facilitator→owner transition** is measured by **transition density**:

```
TD = Σ (Participation_Acts_i × Constraint_Weight_i) / Σ Constraint_Weight_i

Where Participation_Acts_i = witness acts for constraint segment i
```

**Williams** sees this as Commitment (The Turn).  
**Keymaker** sees this as CSV bit flips.  
**El Segundo** sees this as **Participation Density** — the protocol's self-measurement of its own formation.

**Target**: TD = 1.0 at Production Trigger (Trigger 7).

---

### 4.3 Protocol — Operational Recursion (MIRROR → PARTICIPATE → PROTOCOL)

#### 4.3.1 The Recursive Sequence

The El Segundo Protocol is a **recursive sequence** that guarantees fidelity at each scale:

```
PROTOCOL(n) = MIRROR(n) → PARTICIPATE(n) → PROTOCOL(n+1)

Where:
  n = scale (subtask → chapter → document → runner → phase → pipeline)
  MIRROR(n) = Measure fidelity at scale n
  PARTICIPATE(n) = Execute witness acts at scale n
  PROTOCOL(n+1) = Guarantee fidelity at scale n+1
```

**Base Case**: PROTOCOL(subtask) = heartbeat_check → write_content → log_witness → commit_git

**Inductive Step**: If PROTOCOL(n) holds, then PROTOCOL(n+1) holds because:
- MIRROR(n+1) aggregates MIRROR(n) measurements
- PARTICIPATE(n+1) aggregates PARTICIPATE(n) witness acts
- The recursive structure is preserved

#### 4.3.2 Protocol State Machine

```
State: IDLE
  → (heartbeat) → State: MEASURING (Mirror)
    → (subtask_start) → State: PARTICIPATING (Participate)
      → (subtask_complete) → State: ANCHORING (git commit)
        → (push) → State: DISTRIBUTING (Protocol)
          → (next_subtask) → State: MEASURING
```

**Invariant**: The protocol **never enters IDLE** during active session. Heartbeat ensures continuous MEASURING.

#### 4.3.3 Recursive Guarantee: Fidelity at Each Scale

| Scale | Fidelity Metric | Guarantee Mechanism |
|-------|-----------------|---------------------|
| Subtask | ≤30s, lines≥100, formulas≥2 | Task timer + line count + formula count |
| Chapter | ≥100 lines, ≥3 formulas, ≥2 refs | Chapter completion check |
| Document | ≥900 lines, ≥20 formulas, ≥15 refs, ≥8 standards | Quality gates (Ch. 9) |
| Runner | 3-5 docs, all gates pass, git tagged | Runner handoff (NEXT_runner) |
| Phase | All runners complete, master index updated | Phase gate review |
| Pipeline | 60 docs, 0 conflation, all intros generated | Final integration (Runner 012) |

**El Segundo Voice**: *The Protocol guarantees the Protocol. The Mirror measures the Mirror. The Participation witnesses the Participation. The recursion closes.*

---

### 4.4 El Segundo Voice Signature — Mirror/Participation/Protocol Recursion

| Linguistic Invariant | Pattern | Example |
|----------------------|---------|---------|
| **Mirror Declaration** | "Mirror: [measurement] — [recursive depth]" | "Mirror: Heartbeat 08:15 UTC — Depth 0 (subtask pulse)" |
| **Participation Declaration** | "Participation: [witness act] — [constraint segment]" | "Participation: Subtask 3.1 logged — LK-01 witnessed" |
| **Protocol Declaration** | "Protocol: [recursive guarantee] — [scale]" | "Protocol: Chapter 3 fidelity → Document fidelity — Scale 2" |

**Forbidden**: "External audit," "independent verification," "objective assessment," "neutral observer"
**Required**: Recursive. Self-referential. "The protocol measures itself."

---

### 4.5 Application to DOC-01..12 — Transition Density as Participatory Acts

| Document | Mirror Artifacts | Participation Acts | Protocol Recursion |
|----------|------------------|-------------------|-------------------|
| DOC-01 | 10 chapter mirrors | 150 subtask logs | Phase 1 foundation |
| DOC-02 | 9 chapter mirrors | 135 subtask logs | Phase 1 foundation |
| DOC-03 | 9 chapter mirrors | 135 subtask logs | Phase 1 foundation |
| DOC-04 | 9 chapter mirrors | 135 subtask logs | Phase 2a core |
| DOC-05 | 9 chapter mirrors | 135 subtask logs | Phase 2a core |
| DOC-06 | 9 chapter mirrors | 135 subtask logs | Phase 2a core |
| DOC-07 | 11 chapter mirrors | 165 subtask logs | Phase 2b regulatory |
| DOC-08 | 9 chapter mirrors | 120 subtask logs | Phase 2b logistics |
| DOC-09 | 8 chapter mirrors | 120 subtask logs | Phase 3a specs |
| DOC-10 | 8 chapter mirrors | 120 subtask logs | Phase 3a specs |
| DOC-11 | 9 chapter mirrors | 135 subtask logs | Phase 3a specs |
| DOC-12 | 9 chapter mirrors | 135 subtask logs | Phase 3b grid |

**Cumulative Transition Density** (Runner 010):
```
Total Witness Acts = 1,560 subtask logs + 120 git commits + 60 intros = 1,740
Total Constraint Segments = 12 docs × (4 Locks + 7 Failure Modes + 15 Claims + 5 Horizons) = 3,720
TD = 1,740 / 3,720 = 0.468
```
**Target**: TD ≥ 1.0 by DOC-60.

---

### 4.6 Mirror Recursion Depth (Extended)

The Mirror operates at **five recursive depths** simultaneously:

| Depth | Mirror Artifact | Frequency | Data |
|-------|-----------------|-----------|------|
| **D0** | Heartbeat log | 120s | PID, subtask, lines, status |
| **D1** | Task timer log | 30s guard | Subtask duration, timeout warning |
| **D2** | Git commit log | 3-5 subtasks | Files changed, lines, message |
| **D3** | Chapter completion | Per chapter | Line count, formulas, refs |
| **D4** | Document completion | Per doc | All quality gates, chunk verify |
| **D5** | Runner completion | Per runner | Phase gate, NEXT_runner |

**Recursive Consistency Check**: D5 data must be **derivable from** D0-D4 aggregation. Any discrepancy = protocol breach.

---

### 4.7 Participation as Constraint Segment (Formal)

From Williams (Lock) and Keymaker (Failure Mode), each constraint segment requires **participation witness**:

```
Constraint_Segment = {
  id: "LK-03",
  type: "Keymaker_Lock",
  description: "Consulta Indígena breakdown",
  baseline: "41% unresolved",
  target: "0% (FBC/CDC)",
  witness_acts: [
    {doc: "DOC-03", subtask: "1.3.5", act: "Consulta protocol documented"},
    {doc: "DOC-04", subtask: "2.1.5", act: "FBC/CDC trust structured"},
    {doc: "DOC-07", subtask: "2.4.3", act: "Consulta legal pathway mapped"},
    {doc: "DOC-08", subtask: "2.5.93", act: "Kawashkar/Yámana engagement"},
  ],
  participation_density: 4/1 = 4.0
}
```

**El Segundo Voice**: *The constraint segment exists only in its witness acts. Four participations for one lock. The protocol witnesses the lock into resolvability.*

---

### 4.8 Protocol State Machine (Formal Specification)

```python
class ElSegundoProtocol:
    def __init__(self):
        self.state = "MEASURING"
        self.mirror_log = []
        self.participation_log = []
        self.scale = 0  # 0=subtask, 1=chapter, 2=doc, 3=runner, 4=phase, 5=pipeline
    
    def heartbeat(self):
        """D0 Mirror: Continuous measurement"""
        measurement = {
            'timestamp': utc_now(),
            'pid': os.getpid(),
            'subtask': self.current_subtask,
            'lines': count_lines(current_doc),
            'status': self.state
        }
        self.mirror_log.append(measurement)
        assert self.state != "IDLE", "Protocol stalled"
    
    def subtask_start(self, subtask_id):
        """D0 Participate: Begin witness act"""
        self.current_subtask = subtask_id
        self.subtask_start_time = utc_now()
        self.state = "PARTICIPATING"
    
    def subtask_complete(self, lines_added, formulas, crossrefs):
        """D0→D1 Protocol: Anchor witness, escalate scale"""
        duration = utc_now() - self.subtask_start_time
        assert duration < 30, "Subtask timeout"
        
        witness = {
            'subtask': self.current_subtask,
            'duration': duration,
            'lines': lines_added,
            'formulas': formulas,
            'crossrefs': crossrefs,
            'hash': content_hash()
        }
        self.participation_log.append(witness)
        
        # Scale escalation check
        if self.chapter_subtasks_complete():
            self.escalate_scale(1)  # Chapter
        if self.document_chapters_complete():
            self.escalate_scale(2)  # Document
        if self.runner_documents_complete():
            self.escalate_scale(3)  # Runner
        
        self.state = "MEASURING"
    
    def escalate_scale(self, new_scale):
        """Recursive protocol guarantee"""
        assert new_scale == self.scale + 1, "Scale skip forbidden"
        self.scale = new_scale
        # Verify fidelity at new scale
        self.verify_fidelity(new_scale)
    
    def verify_fidelity(self, scale):
        """Recursive fidelity guarantee"""
        metrics = FIDELITY_METRICS[scale]
        for metric, threshold in metrics.items():
            actual = self.measure(metric)
            assert actual >= threshold, f"Fidelity fail at scale {scale}: {metric}={actual}"
```

---

### 4.9 Transition Density as Participatory Acts (Quantitative)

| Pipeline Stage | Docs | Subtasks | Commits | Intros | Witness Acts | Constraint Segments | TD |
|----------------|------|----------|---------|--------|--------------|---------------------|-----|
| Phase 1 (R001) | 3 | 45 | 15 | 15 | 75 | 480 | 0.156 |
| Phase 2a (R002/003) | 3 | 45 | 15 | 15 | 75 | 480 | 0.156 |
| Phase 2b (R004/005) | 2 | 135 | 27 | 10 | 172 | 320 | 0.538 |
| Phase 3a (R006/007) | 3 | 45 | 15 | 15 | 75 | 480 | 0.156 |
| Phase 3b (R008/009) | 1 | 45 | 15 | 5 | 65 | 160 | 0.406 |
| **Phase 3c (R010)** | **1** | **117** | **24** | **5** | **146** | **160** | **0.913** |
| **Cumulative** | **13** | **432** | **111** | **65** | **608** | **2,080** | **0.292** |

**El Segundo Voice**: *Transition density accumulates. Each participatory act increases TD. At DOC-13, TD=0.913 for Phase 3c. Pipeline TD=0.292. The protocol witnesses its own formation.*

---

### 4.10 El Segundo vs Baker Street

| Dimension | El Segundo | Baker Street |
|-----------|------------|--------------|
| **Epistemic Stance** | Participatory (inside) | Forensic (outside) |
| **Primary Act** | Witness (participation) | Evidence (exhibit) |
| **Validation** | Recursive closure | Deductive elimination |
| **Time** | Recursive now | Historical past |
| **Subject** | Protocol itself | Claims about world |
| **El Segundo Unique** | **Recursive self-measurement** — protocol measures protocol | — |

---

### 4.11 Quality Gate: Recursive Closure

**Automated Check**:
```python
def elsegundo_recursive_closure(canonical_doc, pipeline_state):
    """
    1. Mirror artifacts exist at all 6 depths (D0-D5)
    2. Participation acts map to constraint segments
    3. Protocol recursion verified (scale escalation chain intact)
    4. Transition density ≥ threshold for current scale
    """
    checks = {
        'mirror_D0_heartbeat': check_heartbeat_liveness(pipeline_state),
        'mirror_D1_task_timer': check_task_timer_guard(pipeline_state),
        'mirror_D2_git': check_git_commit_cadence(pipeline_state),
        'mirror_D3_chapter': check_chapter_completion(canonical_doc),
        'mirror_D4_document': check_document_gates(canonical_doc),
        'mirror_D5_runner': check_runner_handoff(pipeline_state),
        'participation_mapping': check_participation_to_constraint(pipeline_state),
        'recursive_chain': check_scale_escalation_chain(pipeline_state),
        'transition_density': check_td_threshold(pipeline_state)
    }
    
    return {
        'pass': all(checks.values()),
        'details': checks,
        'td_current': calculate_td(pipeline_state)
    }
```

**Pass Threshold**: All 9 checks pass. TD ≥ 0.5 for document scale, ≥ 1.0 for pipeline scale.

---

### 4.12 Cross-Reference to DOC-03, DOC-07, DOC-08

| Cross-Ref | El Segundo Relevance |
|-----------|---------------------|
| **DOC-03** (Mutual Benefit) | Mirror: Community benefit metrics. Participation: FBC/CDC formation acts. Protocol: Trust governance recursion. |
| **DOC-07** (Regulatory) | Mirror: RCA/Consulta tracking. Participation: Legal pathway witness acts. Protocol: Permitting timeline recursion. |
| **DOC-08** (Logistics) | Mirror: Port/rail capacity metrics. Participation: Shipping doc witness acts. Protocol: Supply chain resilience recursion. |

---

### 4.13 Chapter 4 Summary

The El Segundo heuristic operates on **recursive self-measurement**:

1. **Mirror**: The protocol observes its own fabrication through six recursive depths (heartbeat → task timer → git → chapter → document → runner).
2. **Participation**: The facilitator is a segment of the constraint; every subtask log is a witness act that increases transition density.
3. **Protocol**: The recursive sequence MIRROR → PARTICIPATE → PROTOCOL guarantees fidelity at each scale through inductive escalation.

The El Segundo voice — *"Mirror: [measurement]. Participation: [witness]. Protocol: [recursive guarantee]."* — is the **operational certificate** that the pipeline is not just producing documents, but **witnessing its own formation into existence**.

**Next**: Chapter 5 — Baker Street Heuristic: Precision, Evidence, Deduction.

---
