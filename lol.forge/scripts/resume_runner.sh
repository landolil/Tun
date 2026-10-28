#!/bin/bash
# resume_runner.sh — lol.forge Session Resumption Script
# Usage: ./scripts/resume_runner.sh [runner_number]
#        ./scripts/resume_runner.sh --status
#        ./scripts/resume_runner.sh --next

set -euo pipefail

PROJECT_ROOT="/workspace/app/lol.forge"
SCRIPTS_DIR="$PROJECT_ROOT/scripts"
MEMORY_DIR="$PROJECT_ROOT/memory"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

print_banner() {
    echo -e "${CYAN}"
    echo "╔══════════════════════════════════════════════════════════════════╗"
    echo "║                    lol.forge Session Resume                       ║"
    echo "║         Carrington Storm Motors Forge — Elemental Extraction     ║"
    echo "╚══════════════════════════════════════════════════════════════════╝"
    echo -e "${NC}"
}

print_section() {
    echo -e "${BLUE}▶ $1${NC}"
}

print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

show_status() {
    print_banner
    print_section "Git Status"
    cd "$PROJECT_ROOT"
    git status --short 2>/dev/null || print_warning "Not a git repo yet"
    
    print_section "Current Runner"
    if [[ -f "$PROJECT_ROOT/NEXT_runner_001.md" ]]; then
        head -50 "$PROJECT_ROOT/NEXT_runner_001.md"
    else
        print_warning "No NEXT_runner file found"
    fi
    
    print_section "Document Counts"
    echo "Product docs: $(ls -1 "$PROJECT_ROOT/docs"/PROD-*.md 2>/dev/null | wc -l)/40"
    echo "Follow-up docs: $(ls -1 "$PROJECT_ROOT/docs"/FOLLOW-*.md 2>/dev/null | wc -l)/40"
    echo "Combined intros: $(ls -1 "$PROJECT_ROOT/intros"/*_COMBINED_INTRO.md 2>/dev/null | wc -l)/80"
    
    print_section "Memory Log (latest)"
    latest_memory=$(ls -1t "$MEMORY_DIR"/*.md 2>/dev/null | head -1)
    if [[ -n "$latest_memory" ]]; then
        tail -30 "$latest_memory"
    else
        print_warning "No memory logs yet"
    fi
    
    print_section "Master Todo Progress"
    if [[ -f "$PROJECT_ROOT/Master_Todo.md" ]]; then
        grep -E "^\s*-\s*\[[ x]\]" "$PROJECT_ROOT/Master_Todo.md" | head -20
    fi
}

show_next() {
    print_banner
    print_section "Next Runner Instructions"
    if [[ -f "$PROJECT_ROOT/NEXT_runner_001.md" ]]; then
        cat "$PROJECT_ROOT/NEXT_runner_001.md"
    else
        print_warning "No NEXT_runner file found"
    fi
}

resume_runner() {
    local runner_num="${1:-001}"
    local runner_file="$PROJECT_ROOT/NEXT_runner_$(printf '%03d' "$runner_num").md"
    
    print_banner
    print_section "Resuming Runner $(printf '%03d' "$runner_num")"
    
    # 1. Read project AGENTS.md
    print_section "Loading AGENTS.md"
    if [[ -f "$PROJECT_ROOT/AGENTS.md" ]]; then
        print_success "AGENTS.md loaded"
    else
        print_error "AGENTS.md not found"
        return 1
    fi
    
    # 2. Read RESUME_SESSION_LOLFORGE.md
    print_section "Loading RESUME_SESSION_LOLFORGE.md"
    if [[ -f "$PROJECT_ROOT/RESUME_SESSION_LOLFORGE.md" ]]; then
        cat "$PROJECT_ROOT/RESUME_SESSION_LOLFORGE.md"
        print_success "Resume context loaded"
    else
        print_warning "RESUME_SESSION_LOLFORGE.md not found (will be created)"
    fi
    
    # 3. Read NEXT_runner file
    print_section "Loading $runner_file"
    if [[ -f "$runner_file" ]]; then
        cat "$runner_file"
        print_success "Runner instructions loaded"
    else
        print_error "Runner file not found: $runner_file"
        return 1
    fi
    
    # 4. Check git status
    print_section "Git Status"
    cd "$PROJECT_ROOT"
    git status --short
    
    # 5. Show memory log
    print_section "Latest Memory Log"
    latest_memory=$(ls -1t "$MEMORY_DIR"/*.md 2>/dev/null | head -1)
    if [[ -n "$latest_memory" ]]; then
        echo "Latest: $latest_memory"
        tail -20 "$latest_memory"
    else
        print_warning "No memory logs - will create new one"
    fi
    
    # 6. Show Master_Todo current phase
    print_section "Current Phase from Master_Todo"
    grep -A 5 "PHASE.*Runner 0*$runner_num" "$PROJECT_ROOT/Master_Todo.md" 2>/dev/null || \
        grep -B 2 -A 5 "Runner 0*$runner_num" "$PROJECT_ROOT/Master_Todo.md" 2>/dev/null || \
        print_warning "Could not find runner in Master_Todo"
    
    echo ""
    print_success "Resume complete. Ready to work on Runner $(printf '%03d' "$runner_num")"
    echo -e "${CYAN}Next steps:${NC}"
    echo "  1. Read assigned document specifications in Master_Todo"
    echo "  2. Research source materials in ../seed/"
    echo "  3. Write document body (900 lines for PROD, 300 for FOLLOW)"
    echo "  4. Generate 3 heuristic intros using scripts/generate_intros.py"
    echo "  5. Verify line counts and create chunks"
    echo "  6. Update TODO.md, Master_Todo.md, and memory log"
    echo "  7. Create NEXT_runner_$(printf '%03d' $((runner_num + 1))).md"
    echo "  8. Commit and push to GitHub"
}

create_next_runner() {
    local current_runner="${1:-001}"
    local next_runner=$((current_runner + 1))
    local next_file="$PROJECT_ROOT/NEXT_runner_$(printf '%03d' "$next_runner").md"
    
    print_section "Creating NEXT_runner_$(printf '%03d' "$next_runner").md"
    
    # Read current runner to know what was completed
    local current_file="$PROJECT_ROOT/NEXT_runner_$(printf '%03d' "$current_runner").md"
    local completed_docs=""
    if [[ -f "$current_file" ]]; then
        completed_docs=$(grep -E "PROD-|FOLLOW-" "$current_file" | head -5)
    fi
    
    cat > "$next_file" << EOF
# NEXT_runner_$(printf '%03d' "$next_runner") — lol.forge Session Instructions

**Generated:** $(date -u +"%Y-%m-%d %H:%M:%S UTC")
**Previous Runner:** $(printf '%03d' "$current_runner")
**Phase:** $(grep -B 5 "Runner 0*$next_runner" "$PROJECT_ROOT/Master_Todo.md" | grep "PHASE" | head -1 | sed 's/.*PHASE \([0-9]*\):.*/Phase \1/')

---

## Assigned Documents

$(grep -A 10 "Runner 0*$next_runner" "$PROJECT_ROOT/Master_Todo.md" | grep -E "^\s*-\s*\[" | head -6)

---

## Workflow Checklist

### For Each Product Document (PROD-XX):
- [ ] Research source materials in ../seed/CSMFAB/ and ../seed/CSMWip/
- [ ] Write document body (target: 900+ lines)
- [ ] Generate 3 heuristic intros (Williams, Keymaker, El Segundo ~67 lines each)
- [ ] Create COMBINED_INTRO (200 lines)
- [ ] Verify line counts: body ≥ 900, combined intro ≥ 200
- [ ] Split into chunks using write_large_file.py
- [ ] Generate manifest and verify
- [ ] Update Master_Todo.md and TODO.md
- [ ] Log to memory/$(date +"%Y-%m-%d").md

### For Each Follow-up Document (FOLLOW-XX):
- [ ] Research source materials
- [ ] Write document body (target: 300+ lines)
- [ ] Generate 3 separate heuristic intros (~100 lines each)
- [ ] Verify line counts: body ≥ 300, each intro ≥ 100
- [ ] Split into chunks, generate manifest, verify
- [ ] Update tracking, log progress

---

## Source Material References

### Aegis-Forge (CSMFAB0108):
- Vol 1: System Overview & Architecture (CSMFAB000000000108)
- Vol 2: Thermal Cascade Process Engineering (CSMFAB000000000109)
- Vol 3: Acoustic Mineral Liberation (CSMFAB000000000110)
- Vol 4: Gas Capture & Fume Solidification (CSMFAB000000000111)
- Vol 5: Assembly Line Integration (CSMFAB000000000112)

### Outfit Fabricator Heuristics (CSMWip/12_AegisOutfitFabricator/FinishedWork/intros/):
- Williams: Constraint/Necessity/Commitment pattern
- Keymaker: Lock/Key/Turn pattern
- El Segundo: Mirror/Participation/Protocol pattern

### Mines Magnets (CSMWip/CSMMinesMagnets/FinishedWork/):
- DOC-01 through DOC-10: Chilean mineral landscape, diplomacy, logistics

---

## Commands Quick Reference

\`\`\`bash
# Write document (streaming for large files)
python3 ../../__Python_Tools/write_large_file.py --chunksize 1MB \\
    --output docs/PROD-XX_Title.md \\
    --content "..."

# Split into chapters
python3 ../../__Python_Tools/write_large_file.py split \\
    docs/PROD-XX_Title.md chunks/PROD-XX chapter .md

# Generate heuristic intros
python3 scripts/generate_intros.py --doc PROD-XX --type prod

# Verify chunks
python3 ../../__Python_Tools/write_large_file.py verify chunks/PROD-XX

# Commit and push
git add -A && git commit -m "lol.forge: PROD-XX Title — 900+ lines + intro" && git push
\`\`\`

---

## Heartbeat Protocol

- Update HEARTBEAT_LOLFORGE.md every 2 minutes
- Subtask timeout: 30 seconds max
- Print progress to terminal each subtask
- No blocking waits — queue next immediately

---

## Session End Checklist

- [ ] All assigned documents complete and verified
- [ ] NEXT_runner_$(printf '%03d' $((next_runner + 1))).md created
- [ ] Master_Todo.md updated with completed items
- [ ] TODO.md updated
- [ ] memory/$(date +"%Y-%m-%d").md appended
- [ ] Git committed and pushed
- [ ] HEARTBEAT_LOLFORGE.md updated with final status
EOF
    
    print_success "Created $next_file"
}

log_session_start() {
    local runner_num="${1:-001}"
    local log_file="$MEMORY_DIR/$(date +"%Y-%m-%d").md"
    
    mkdir -p "$MEMORY_DIR"
    
    cat >> "$log_file" << EOF

---

## Session Start: $(date -u +"%Y-%m-%d %H:%M:%S UTC")
**Runner:** $(printf '%03d' "$runner_num")
**Action:** Resumed session via resume_runner.sh

EOF
    
    print_success "Logged session start to $log_file"
}

# Main command handling
case "${1:-}" in
    --status|-s)
        show_status
        ;;
    --next|-n)
        show_next
        ;;
    --create-next)
        create_next_runner "${2:-001}"
        ;;
    --log-start)
        log_session_start "${2:-001}"
        ;;
    *)
        resume_runner "${1:-001}"
        log_session_start "${1:-001}"
        ;;
esac