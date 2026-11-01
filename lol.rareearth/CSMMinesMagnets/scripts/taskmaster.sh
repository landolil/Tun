#!/bin/bash
# taskmaster.sh - Task Management and Subtask Decomposition System
#
# A comprehensive task tracking system that:
#   - Displays all tasks and subtasks
#   - Decomposes tasks into smaller subtasks
#   - Tracks every command execution step-by-step
#   - Persists task state for resume capability
#   - Logs all commands for audit trail

set -euo pipefail

# Configuration
TASKMASTER_DIR="${TASKMASTER_DIR:-$HOME/.taskmaster}"
TASK_FILE="${TASK_FILE:-$TASKMASTER_DIR/tasks.json}"
LOG_FILE="${LOG_FILE:-$TASKMASTER_DIR/command_log.jsonl}"
STATE_FILE="${STATE_FILE:-$TASKMASTER_DIR/state.json}"
SUBTASK_DEPTH="${SUBTASK_DEPTH:-3}"
MICRO_TASK_DEPTH="${MICRO_TASK_DEPTH:-5}"
MICRO_TASK_MAX_PER_TASK="${MICRO_TASK_MAX_PER_TASK:-10}"
VERBOSE_LEVEL="${VERBOSE_LEVEL:-2}"
VERBOSE="${VERBOSE:-true}"
DRY_RUN="${DRY_RUN:-false}"
SUPER_LIST_ENABLED="${SUPER_LIST_ENABLED:-true}"
SHOW_TIMESTAMPS="${SHOW_TIMESTAMPS:-true}"
SHOW_TASK_CONTEXT="${SHOW_TASK_CONTEXT:-true}"
LOG_TO_FILE="${LOG_TO_FILE:-true}"
CONSOLE_LOG_FILE="${CONSOLE_LOG_FILE:-$TASKMASTER_DIR/console_log.txt}"

# Colors for output
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
BLUE="\033[0;34m"
MAGENTA="\033[0;35m"
CYAN="\033[0;36m"
NC="\033[0m"  # No Color

# Utility Functions
log() {
    local level="$1"
    shift
    local msg="$*"
    local timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
    echo -e "${timestamp} [${level}] ${msg}"
}

log_info() { log "INFO" "$*"; }
log_warn() { log "WARN" "${YELLOW}$*${NC}"; }
log_error() { log "ERROR" "${RED}$*${NC}"; }
log_debug() { [[ "$VERBOSE" == "true" ]] && log "DEBUG" "${CYAN}$*${NC}"; }
log_step() { log "STEP" "${GREEN}▶ $*${NC}"; }
log_substep() { log "SUBSTEP" "${BLUE}  ↳ $*${NC}"; }

ensure_dir() {
    mkdir -p "$TASKMASTER_DIR"
}

init_files() {
    ensure_dir
    [[ -f "$TASK_FILE" ]] || echo "[]" > "$TASK_FILE"
    [[ -f "$LOG_FILE" ]] || touch "$LOG_FILE"
    [[ -f "$STATE_FILE" ]] || echo '{"current_task_index": 0, "completed_tasks": []}' > "$STATE_FILE"
}

get_timestamp() {
    date -u +"%Y-%m-%dT%H:%M:%SZ"
}

generate_id() {
    echo "task_$(date +%s%N)_$$_$RANDOM"
}

# =============================================================================
# TASK DISPLAY AND LISTING FUNCTIONALITY
# =============================================================================

# Display all tasks in a tree format
display_tasks() {
    local filter="${1:-all}"  # all, pending, completed, current
    init_files
    
    log_step "Displaying tasks (filter: $filter)"
    
    local tasks_json=$(cat "$TASK_FILE")
    local state_json=$(cat "$STATE_FILE")
    local current_index=$(echo "$state_json" | jq -r '.current_task_index // 0')
    local completed=$(echo "$state_json" | jq -r '.completed_tasks // [] | join(",")')
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}                    TASK MASTER - TASK LIST                     ${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
    
    local task_count=$(echo "$tasks_json" | jq 'length')
    
    if [[ "$task_count" -eq 0 ]]; then
        echo -e "${YELLOW}No tasks found. Use 'add' to create tasks.${NC}"
        return 0
    fi
    
    for ((i=0; i<task_count; i++)); do
        local task=$(echo "$tasks_json" | jq ".[$i]")
        local id=$(echo "$task" | jq -r '.id')
        local title=$(echo "$task" | jq -r '.title')
        local description=$(echo "$task" | jq -r '.description // ""')
        local status=$(echo "$task" | jq -r '.status // "pending"')
        local parent_id=$(echo "$task" | jq -r '.parent_id // ""')
        local depth=$(echo "$task" | jq -r '.depth // 0')
        local subtasks=$(echo "$task" | jq -r '.subtasks // [] | length')
        
        # Filter logic
        local show=true
        case "$filter" in
            "pending") [[ "$status" != "pending" ]] && show=false ;;
            "completed") [[ "$status" != "completed" ]] && show=false ;;
            "current") [[ $i -ne $current_index ]] && show=false ;;
        esac
        
        [[ "$show" == "false" ]] && continue
        
        # Indentation based on depth
        local indent=""
        for ((d=0; d<depth; d++)); do
            indent="${indent}  "
        done
        
        # Status indicator
        local status_icon=""
        local status_color=""
        case "$status" in
            "completed") status_icon="✓"; status_color="$GREEN" ;;
            "in_progress") status_icon="▶"; status_color="$BLUE" ;;
            "pending") status_icon="○"; status_color="$YELLOW" ;;
            "blocked") status_icon="⊘"; status_color="$RED" ;;
            *) status_icon="?"; status_color="$NC" ;;
        esac
        
        # Current task marker
        local current_marker=""
        [[ $i -eq $current_index ]] && current_marker="${MAGENTA} ← CURRENT${NC}"
        
        echo -e "${indent}${status_color}${status_icon}${NC} ${MAGENTA}${id}${NC} ${title}${current_marker}"
        [[ -n "$description" ]] && echo -e "${indent}  ${CYAN}Description:${NC} $description"
        [[ $subtasks -gt 0 ]] && echo -e "${indent}  ${BLUE}Subtasks:${NC} $subtasks"
        echo ""
    done
    
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "Total: $task_count tasks | Current index: $current_index"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
}

# Display a single task with full details
display_task_detail() {
    local task_id="$1"
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local task=$(echo "$tasks_json" | jq --arg id "$task_id" '.[] | select(.id == $id)')
    
    if [[ -z "$task" ]]; then
        log_error "Task not found: $task_id"
        return 1
    fi
    
    local id=$(echo "$task" | jq -r '.id')
    local title=$(echo "$task" | jq -r '.title')
    local description=$(echo "$task" | jq -r '.description // ""')
    local status=$(echo "$task" | jq -r '.status // "pending"')
    local parent_id=$(echo "$task" | jq -r '.parent_id // ""')
    local depth=$(echo "$task" | jq -r '.depth // 0')
    local created=$(echo "$task" | jq -r '.created_at')
    local updated=$(echo "$task" | jq -r '.updated_at')
    local subtasks=$(echo "$task" | jq -r '.subtasks // []')
    local commands=$(echo "$task" | jq -r '.commands // []')
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}                    TASK DETAIL: ${title}                      ${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${MAGENTA}ID:${NC}           $id"
    echo -e "${MAGENTA}Title:${NC}        $title"
    echo -e "${MAGENTA}Status:${NC}       $status"
    echo -e "${MAGENTA}Depth:${NC}        $depth"
    echo -e "${MAGENTA}Parent:${NC}       ${parent_id:-"(root)"}"
    echo -e "${MAGENTA}Created:${NC}      $created"
    echo -e "${MAGENTA}Updated:${NC}      $updated"
    echo ""
    
    if [[ -n "$description" ]]; then
        echo -e "${CYAN}Description:${NC}"
        echo "$description"
        echo ""
    fi
    
    local sub_count=$(echo "$subtasks" | jq 'length')
    if [[ $sub_count -gt 0 ]]; then
        echo -e "${CYAN}Subtasks (${sub_count}):${NC}"
        for ((j=0; j<sub_count; j++)); do
            local st=$(echo "$subtasks" | jq ".[$j]")
            local st_id=$(echo "$st" | jq -r '.id')
            local st_title=$(echo "$st" | jq -r '.title')
            local st_status=$(echo "$st" | jq -r '.status')
            local st_icon=""
            case "$st_status" in
                "completed") st_icon="${GREEN}✓${NC}" ;;
                "in_progress") st_icon="${BLUE}▶${NC}" ;;
                *) st_icon="${YELLOW}○${NC}" ;;
            esac
            echo -e "  $st_icon $st_id: $st_title"
        done
        echo ""
    fi
    
    local cmd_count=$(echo "$commands" | jq 'length')
    if [[ $cmd_count -gt 0 ]]; then
        echo -e "${CYAN}Commands Executed (${cmd_count}):${NC}"
        for ((j=0; j<cmd_count; j++)); do
            local cmd=$(echo "$commands" | jq ".[$j]")
            local cmd_text=$(echo "$cmd" | jq -r '.command')
            local cmd_time=$(echo "$cmd" | jq -r '.timestamp')
            local cmd_status=$(echo "$cmd" | jq -r '.status')
            local status_icon="${GREEN}✓${NC}"
            [[ "$cmd_status" == "failed" ]] && status_icon="${RED}✗${NC}"
            echo -e "  $status_icon [$cmd_time] $cmd_text"
        done
        echo ""
    fi
    
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
}

# List tasks in a compact format
list_tasks_compact() {
    init_files
    local tasks_json=$(cat "$TASK_FILE")
    local task_count=$(echo "$tasks_json" | jq 'length')
    
    printf "%-20s %-12s %-50s %s\n" "ID" "STATUS" "TITLE" "SUBTASKS"
    printf "%-20s %-12s %-50s %s\n" "--------------------" "------------" "--------------------------------------------------" "--------"
    
    for ((i=0; i<task_count; i++)); do
        local task=$(echo "$tasks_json" | jq ".[$i]")
        local id=$(echo "$task" | jq -r '.id')
        local title=$(echo "$task" | jq -r '.title')
        local status=$(echo "$task" | jq -r '.status // "pending"')
        local subtasks=$(echo "$task" | jq -r '.subtasks // [] | length')
        
        local status_short="${status:0:10}"
        local title_short="${title:0:48}"
        
        printf "%-20s %-12s %-50s %d\n" "$id" "$status_short" "$title_short" "$subtasks"
    done
}

# =============================================================================
# TASK DECOMPOSITION INTO SUBTASKS
# =============================================================================

# Add a new task
add_task() {
    local title="$1"
    local description="${2:-}"
    local parent_id="${3:-}"
    
    init_files
    
    local id=$(generate_id)
    local timestamp=$(get_timestamp)
    local depth=0
    
    if [[ -n "$parent_id" ]]; then
        local parent_task=$(cat "$TASK_FILE" | jq --arg id "$parent_id" '.[] | select(.id == $id)')
        if [[ -z "$parent_task" ]]; then
            log_error "Parent task not found: $parent_id"
            return 1
        fi
        depth=$(echo "$parent_task" | jq -r '.depth + 1')
        
        if [[ $depth -gt $SUBTASK_DEPTH ]]; then
            log_warn "Maximum subtask depth ($SUBTASK_DEPTH) reached. Task created at depth $depth anyway."
        fi
    fi
    
    local new_task=$(jq -n \
        --arg id "$id" \
        --arg title "$title" \
        --arg desc "$description" \
        --arg status "pending" \
        --arg parent "$parent_id" \
        --argjson depth "$depth" \
        --arg created "$timestamp" \
        --arg updated "$timestamp" \
        '{
            id: $id,
            title: $title,
            description: $desc,
            status: $status,
            parent_id: $parent,
            depth: $depth,
            created_at: $created,
            updated_at: $updated,
            subtasks: [],
            commands: []
        }')
    
    local tasks_json=$(cat "$TASK_FILE")
    local updated_tasks=$(echo "$tasks_json" | jq ". + [$new_task]")
    echo "$updated_tasks" > "$TASK_FILE"
    
    # If parent exists, add to parent's subtasks
    if [[ -n "$parent_id" ]]; then
        updated_tasks=$(echo "$updated_tasks" | jq --arg pid "$parent_id" --argjson subtask "$new_task" '
            map(if .id == $pid then .subtasks += [$subtask] else . end)
        ')
        echo "$updated_tasks" > "$TASK_FILE"
    fi
    
    log_info "Created task: $id - $title"
    echo "$id"
}

# Decompose a task into subtasks interactively or from a list
decompose_task() {
    local task_id="$1"
    shift
    local subtask_titles=("$@")
    
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local task=$(echo "$tasks_json" | jq --arg id "$task_id" '.[] | select(.id == $id)')
    
    if [[ -z "$task" ]]; then
        log_error "Task not found: $task_id"
        return 1
    fi
    
    local current_depth=$(echo "$task" | jq -r '.depth')
    local new_depth=$((current_depth + 1))
    
    if [[ $new_depth -gt $SUBTASK_DEPTH ]]; then
        log_error "Cannot decompose further: maximum depth ($SUBTASK_DEPTH) reached"
        return 1
    fi
    
    log_step "Decomposing task: $task_id"
    
    # If no subtask titles provided, prompt interactively
    if [[ ${#subtask_titles[@]} -eq 0 ]]; then
        echo -e "${CYAN}Enter subtask titles (empty line to finish):${NC}"
        local count=1
        while true; do
            read -p "  Subtask $count: " title
            [[ -z "$title" ]] && break
            subtask_titles+=("$title")
            ((count++))
        done
    fi
    
    local timestamp=$(get_timestamp)
    local subtasks_json="[]"
    
    for title in "${subtask_titles[@]}"; do
        local subtask_id=$(generate_id)
        local subtask=$(jq -n \
            --arg id "$subtask_id" \
            --arg title "$title" \
            --arg desc "" \
            --arg status "pending" \
            --arg parent "$task_id" \
            --argjson depth "$new_depth" \
            --arg created "$timestamp" \
            --arg updated "$timestamp" \
            '{
                id: $id,
                title: $title,
                description: $desc,
                status: $status,
                parent_id: $parent,
                depth: $depth,
                created_at: $created,
                updated_at: $updated,
                subtasks: [],
                commands: []
            }')
        subtasks_json=$(echo "$subtasks_json" | jq ". + [$subtask]")
        log_substep "Created subtask: $subtask_id - $title"
    done
    
    # Update parent task with subtasks
    local updated_tasks=$(echo "$tasks_json" | jq --arg id "$task_id" --argjson subtasks "$subtasks_json" '
        map(if .id == $id then .subtasks = $subtasks | .updated_at = now | .status = "in_progress" else . end)
    ')
    echo "$updated_tasks" > "$TASK_FILE"
    
    # Add each subtask to the main task list
    for ((i=0; i<${#subtask_titles[@]}; i++)); do
        local subtask=$(echo "$subtasks_json" | jq ".[$i]")
        updated_tasks=$(echo "$updated_tasks" | jq ". + [$subtask]")
    done
    echo "$updated_tasks" > "$TASK_FILE"
    
    log_info "Decomposed into ${#subtask_titles[@]} subtasks"
}

# Auto-decompose a task using heuristics
auto_decompose_task() {
    local task_id="$1"
    local max_subtasks="${2:-5}"
    
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local task=$(echo "$tasks_json" | jq --arg id "$task_id" '.[] | select(.id == $id)')
    
    if [[ -z "$task" ]]; then
        log_error "Task not found: $task_id"
        return 1
    fi
    
    local title=$(echo "$task" | jq -r '.title')
    local description=$(echo "$task" | jq -r '.description // ""')
    
    log_step "Auto-decomposing task: $task_id ($title)"
    
    # Simple heuristic-based decomposition
    local subtask_titles=()
    
    # Common patterns for decomposition
    if [[ "$title" =~ [Bb]uild|[Cc]ompile|[Mm]ake ]]; then
        subtask_titles+=("Prepare build environment" "Compile sources" "Link artifacts" "Verify build output" "Package deliverables")
    elif [[ "$title" =~ [Tt]est|[Qq]uality|[Cc]heck ]]; then
        subtask_titles+=("Set up test environment" "Run unit tests" "Run integration tests" "Run linting/checks" "Generate test report")
    elif [[ "$title" =~ [Dd]eploy|[Rr]elease|[Pp]ublish ]]; then
        subtask_titles+=("Prepare release artifacts" "Run pre-deployment checks" "Deploy to staging" "Validate deployment" "Promote to production")
    elif [[ "$title" =~ [Rr]efactor|[Cc]leanup|[Ii]mprove ]]; then
        subtask_titles+=("Analyze current code" "Plan refactoring steps" "Implement changes" "Run tests" "Verify improvements")
    elif [[ "$title" =~ [Dd]ebug|[Ff]ix|[Ii]ssue ]]; then
        subtask_titles+=("Reproduce issue" "Identify root cause" "Implement fix" "Test fix" "Verify no regressions")
    else
        # Generic decomposition
        subtask_titles+=("Analyze requirements" "Design approach" "Implement solution" "Test implementation" "Document changes")
    fi
    
    # Limit to max_subtasks
    subtask_titles=("${subtask_titles[@]:0:$max_subtasks}")
    
    decompose_task "$task_id" "${subtask_titles[@]}"
}

# Decompose all pending tasks recursively
decompose_all_pending() {
    local max_depth="${1:-$SUBTASK_DEPTH}"
    
    init_files
    log_step "Decomposing all pending tasks (max depth: $max_depth)"
    
    local tasks_json=$(cat "$TASK_FILE")
    local task_count=$(echo "$tasks_json" | jq 'length')
    local decomposed=0
    
    for ((i=0; i<task_count; i++)); do
        local task=$(echo "$tasks_json" | jq ".[$i]")
        local id=$(echo "$task" | jq -r '.id')
        local status=$(echo "$task" | jq -r '.status // "pending"')
        local depth=$(echo "$task" | jq -r '.depth // 0')
        local subtasks=$(echo "$task" | jq -r '.subtasks // [] | length')
        
        if [[ "$status" == "pending" && $depth -lt $max_depth && $subtasks -eq 0 ]]; then
            auto_decompose_task "$id"
            ((decomposed++))
            tasks_json=$(cat "$TASK_FILE")  # Refresh
            task_count=$(echo "$tasks_json" | jq 'length')
        fi
    done
    
    log_info "Auto-decomposed $decomposed tasks"
}

# =============================================================================
# STEP-BY-STEP EXECUTION TRACKING
# =============================================================================

# Execute a command with full tracking
execute_tracked() {
    local task_id="$1"
    local command="$2"
    local description="${3:-}"
    
    init_files
    
    log_step "Executing: $command"
    [[ -n "$description" ]] && log_substep "$description"
    
    local timestamp=$(get_timestamp)
    local cmd_id="cmd_$(date +%s%N)"
    local start_time=$(date +%s.%N)
    
    # Log command start
    local cmd_log=$(jq -nc \
        --arg id "$cmd_id" \
        --arg task_id "$task_id" \
        --arg command "$command" \
        --arg desc "$description" \
        --arg timestamp "$timestamp" \
        --arg status "running" \
        --arg start_time "$start_time" \
        '{
            id: $id,
            task_id: $task_id,
            command: $command,
            description: $desc,
            timestamp: $timestamp,
            status: $status,
            start_time: $start_time
        }')
    
    echo "$cmd_log" >> "$LOG_FILE"
    
    # Update task with command
    local tasks_json=$(cat "$TASK_FILE")
    local updated_tasks=$(echo "$tasks_json" | jq --arg id "$task_id" --argjson cmd "$cmd_log" '
        map(if .id == $id then .commands += [$cmd] | .updated_at = now | .status = "in_progress" else . end)
    ')
    echo "$updated_tasks" > "$TASK_FILE"
    
    if [[ "$DRY_RUN" == "true" ]]; then
        log_warn "DRY RUN: Would execute: $command"
        local result=0
        local output="(dry run)"
    else
        # Execute command and capture output
        local output
        output=$(eval "$command" 2>&1)
        local result=$?
    fi
    
    local end_time=$(date +%s.%N)
    local duration=$(echo "$end_time - $start_time" | bc -l 2>/dev/null || echo "0")
    local end_timestamp=$(get_timestamp)
    
    # Log command completion
    local cmd_log_complete=$(jq -nc \
        --arg id "$cmd_id" \
        --arg task_id "$task_id" \
        --arg command "$command" \
        --arg desc "$description" \
        --arg timestamp "$end_timestamp" \
        --arg status "$([ $result -eq 0 ] && echo "completed" || echo "failed")" \
        --argjson duration "$duration" \
        --arg output "$output" \
        --argjson exit_code "$result" \
        '{
            id: $id,
            task_id: $task_id,
            command: $command,
            description: $desc,
            timestamp: $timestamp,
            status: $status,
            duration_seconds: $duration,
            output: $output,
            exit_code: $exit_code
        }')
    
    echo "$cmd_log_complete" >> "$LOG_FILE"
    
    # Update task with completed command
    tasks_json=$(cat "$TASK_FILE")
    updated_tasks=$(echo "$tasks_json" | jq --arg id "$task_id" --argjson cmd "$cmd_log_complete" '
        map(if .id == $id then .commands = (.commands | map(if .id == $cmd.id then $cmd else . end)) | .updated_at = now else . end)
    ')
    echo "$updated_tasks" > "$TASK_FILE"
    
    if [[ $result -eq 0 ]]; then
        log_info "Command completed successfully (${duration}s)"
    else
        log_error "Command failed with exit code $result (${duration}s)"
        [[ -n "$output" ]] && log_error "Output: $output"
    fi
    
    return $result
}

# Execute multiple commands in sequence for a task
execute_task_sequence() {
    local task_id="$1"
    shift
    local commands=("$@")
    
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local task=$(echo "$tasks_json" | jq --arg id "$task_id" '.[] | select(.id == $id)')
    
    if [[ -z "$task" ]]; then
        log_error "Task not found: $task_id"
        return 1
    fi
    
    log_step "Starting execution sequence for task: $task_id"
    
    # Update task status to in_progress
    local updated_tasks=$(echo "$tasks_json" | jq --arg id "$task_id" '
        map(if .id == $id then .status = "in_progress" | .updated_at = now else . end)
    ')
    echo "$updated_tasks" > "$TASK_FILE"
    
    local failed=0
    for cmd in "${commands[@]}"; do
        # Parse command and optional description (format: "command|description")
        local cmd_text="${cmd%%|*}"
        local cmd_desc="${cmd#*|}"
        [[ "$cmd_desc" == "$cmd_text" ]] && cmd_desc=""
        
        execute_tracked "$task_id" "$cmd_text" "$cmd_desc"
        local result=$?
        
        if [[ $result -ne 0 ]]; then
            failed=1
            log_error "Sequence stopped due to failure"
            break
        fi
    done
    
    # Update final task status
    tasks_json=$(cat "$TASK_FILE")
    local final_status="completed"
    [[ $failed -eq 1 ]] && final_status="failed"
    
    updated_tasks=$(echo "$tasks_json" | jq --arg id "$task_id" --arg status "$final_status" '
        map(if .id == $id then .status = $status | .updated_at = now else . end)
    ')
    echo "$updated_tasks" > "$TASK_FILE"
    
    if [[ $failed -eq 0 ]]; then
        log_info "Task sequence completed successfully"
        # Advance to next task
        advance_task
    else
        log_error "Task sequence failed"
    fi
    
    return $failed
}

# Interactive step-by-step execution
execute_interactive() {
    local task_id="$1"
    
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local task=$(echo "$tasks_json" | jq --arg id "$task_id" '.[] | select(.id == $id)')
    
    if [[ -z "$task" ]]; then
        log_error "Task not found: $task_id"
        return 1
    fi
    
    local title=$(echo "$task" | jq -r '.title')
    local subtasks=$(echo "$task" | jq -r '.subtasks // []')
    local sub_count=$(echo "$subtasks" | jq 'length')
    
    log_step "Interactive execution for: $title"
    
    if [[ $sub_count -gt 0 ]]; then
        echo -e "${CYAN}This task has $sub_count subtasks. Execute them first? (y/n)${NC}"
        read -r response
        if [[ "$response" =~ ^[Yy]$ ]]; then
            for ((i=0; i<sub_count; i++)); do
                local st=$(echo "$subtasks" | jq ".[$i]")
                local st_id=$(echo "$st" | jq -r '.id')
                local st_status=$(echo "$st" | jq -r '.status')
                
                if [[ "$st_status" == "pending" ]]; then
                    execute_interactive "$st_id"
                fi
            done
        fi
    fi
    
    # Get commands for this task
    local commands=$(echo "$task" | jq -r '.commands // []')
    local cmd_count=$(echo "$commands" | jq 'length')
    
    if [[ $cmd_count -eq 0 ]]; then
        echo -e "${YELLOW}No commands recorded for this task. Enter commands interactively (empty to finish):${NC}"
        local cmd_list=()
        while true; do
            read -p "  Command: " cmd
            [[ -z "$cmd" ]] && break
            read -p "  Description (optional): " desc
            cmd_list+=("$cmd|$desc")
        done
        
        if [[ ${#cmd_list[@]} -gt 0 ]]; then
            execute_task_sequence "$task_id" "${cmd_list[@]}"
        fi
    else
        echo -e "${CYAN}Task has $cmd_count recorded commands. Re-execute? (y/n)${NC}"
        read -r response
        if [[ "$response" =~ ^[Yy]$ ]]; then
            local cmd_list=()
            for ((i=0; i<cmd_count; i++)); do
                local cmd=$(echo "$commands" | jq ".[$i]")
                local cmd_text=$(echo "$cmd" | jq -r '.command')
                local cmd_desc=$(echo "$cmd" | jq -r '.description')
                cmd_list+=("$cmd_text|$cmd_desc")
            done
            execute_task_sequence "$task_id" "${cmd_list[@]}"
        fi
    fi
}

# Watch mode - continuously display task progress
watch_tasks() {
    local interval="${1:-2}"
    
    log_step "Starting watch mode (interval: ${interval}s, press Ctrl+C to stop)"
    
    while true; do
        clear
        display_tasks "all"
        sleep "$interval"
    done
}

# Show execution history for a task
show_execution_history() {
    local task_id="$1"
    
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local task=$(echo "$tasks_json" | jq --arg id "$task_id" '.[] | select(.id == $id)')
    
    if [[ -z "$task" ]]; then
        log_error "Task not found: $task_id"
        return 1
    fi
    
    local commands=$(echo "$task" | jq -r '.commands // []')
    local cmd_count=$(echo "$commands" | jq 'length')
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}              EXECUTION HISTORY FOR TASK                        ${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
    
    if [[ $cmd_count -eq 0 ]]; then
        echo -e "${YELLOW}No commands executed yet.${NC}"
    else
        for ((i=0; i<cmd_count; i++)); do
            local cmd=$(echo "$commands" | jq ".[$i]")
            local cmd_text=$(echo "$cmd" | jq -r '.command')
            local cmd_desc=$(echo "$cmd" | jq -r '.description')
            local timestamp=$(echo "$cmd" | jq -r '.timestamp')
            local status=$(echo "$cmd" | jq -r '.status')
            local duration=$(echo "$cmd" | jq -r '.duration_seconds // 0')
            local exit_code=$(echo "$cmd" | jq -r '.exit_code // 0')
            local output=$(echo "$cmd" | jq -r '.output // ""')
            
            local status_icon="${GREEN}✓${NC}"
            [[ "$status" == "failed" ]] && status_icon="${RED}✗${NC}"
            [[ "$status" == "running" ]] && status_icon="${BLUE}▶${NC}"
            
            echo -e "$status_icon [$timestamp] ${MAGENTA}$cmd_text${NC}"
            [[ -n "$cmd_desc" ]] && echo -e "    ${CYAN}Description:${NC} $cmd_desc"
            echo -e "    ${BLUE}Duration:${NC} ${duration}s | ${BLUE}Exit Code:${NC} $exit_code"
            [[ -n "$output" && "$output" != "null" ]] && echo -e "    ${YELLOW}Output:${NC} $output"
            echo ""
        done
    fi
    
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
}

# =============================================================================
# TASK PERSISTENCE AND RESUME CAPABILITY
# =============================================================================

# Save current state for resume
save_state() {
    local task_index="${1:-0}"
    
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local completed=()
    
    # Find completed task IDs
    local task_count=$(echo "$tasks_json" | jq 'length')
    for ((i=0; i<task_count; i++)); do
        local task=$(echo "$tasks_json" | jq ".[$i]")
        local status=$(echo "$task" | jq -r '.status // "pending"')
        local id=$(echo "$task" | jq -r '.id')
        [[ "$status" == "completed" ]] && completed+=("$id")
    done
    
    local state=$(jq -n \
        --argjson index "$task_index" \
        --argjson completed "$(printf '%s\n' "${completed[@]}" | jq -R . | jq -s .)" \
        --arg timestamp "$(get_timestamp)" \
        '{
            current_task_index: $index,
            completed_tasks: $completed,
            saved_at: $timestamp,
            version: "1.0"
        }')
    
    echo "$state" > "$STATE_FILE"
    log_debug "State saved: index=$task_index, completed=${#completed[@]}"
}

# Load state for resume
load_state() {
    init_files
    
    if [[ ! -f "$STATE_FILE" ]]; then
        log_warn "No state file found, starting fresh"
        return 1
    fi
    
    local state_json=$(cat "$STATE_FILE")
    local index=$(echo "$state_json" | jq -r '.current_task_index // 0')
    local completed=$(echo "$state_json" | jq -r '.completed_tasks // [] | join(",")')
    local saved_at=$(echo "$state_json" | jq -r '.saved_at')
    
    log_info "Loaded state from $saved_at: index=$index, completed=$completed"
    
    echo "$index"
}

# Get next pending task
get_next_task() {
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local state_json=$(cat "$STATE_FILE")
    local current_index=$(echo "$state_json" | jq -r '.current_task_index // 0')
    local task_count=$(echo "$tasks_json" | jq 'length')
    
    # Start from current index
    for ((i=current_index; i<task_count; i++)); do
        local task=$(echo "$tasks_json" | jq ".[$i]")
        local status=$(echo "$task" | jq -r '.status // "pending"')
        local id=$(echo "$task" | jq -r '.id')
        
        if [[ "$status" == "pending" ]]; then
            echo "$id"
            return 0
        fi
    done
    
    # Wrap around to beginning
    for ((i=0; i<current_index; i++)); do
        local task=$(echo "$tasks_json" | jq ".[$i]")
        local status=$(echo "$task" | jq -r '.status // "pending"')
        local id=$(echo "$task" | jq -r '.id')
        
        if [[ "$status" == "pending" ]]; then
            echo "$id"
            return 0
        fi
    done
    
    return 1
}

# Advance to next task
advance_task() {
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local state_json=$(cat "$STATE_FILE")
    local current_index=$(echo "$state_json" | jq -r '.current_task_index // 0')
    local task_count=$(echo "$tasks_json" | jq 'length')
    
    # Find next pending task
    local next_index=$((current_index + 1))
    local found=false
    
    for ((i=next_index; i<task_count; i++)); do
        local task=$(echo "$tasks_json" | jq ".[$i]")
        local status=$(echo "$task" | jq -r '.status // "pending"')
        if [[ "$status" == "pending" ]]; then
            found=true
            next_index=$i
            break
        fi
    done
    
    if [[ "$found" == "false" ]]; then
        # Check from beginning
        for ((i=0; i<=current_index; i++)); do
            local task=$(echo "$tasks_json" | jq ".[$i]")
            local status=$(echo "$task" | jq -r '.status // "pending"')
            if [[ "$status" == "pending" ]]; then
                found=true
                next_index=$i
                break
            fi
        done
    fi
    
    if [[ "$found" == "true" ]]; then
        save_state "$next_index"
        log_info "Advanced to task index $next_index"
    else
        log_info "All tasks completed!"
        save_state "$task_count"
    fi
}

# Resume from last saved state
resume() {
    init_files
    
    log_step "Resuming from last saved state"
    
    local next_task=$(get_next_task)
    
    if [[ -z "$next_task" ]]; then
        log_info "No pending tasks found. All tasks completed!"
        display_tasks "completed"
        return 0
    fi
    
    log_info "Next task: $next_task"
    display_task_detail "$next_task"
    
    # Check if task has subtasks
    local tasks_json=$(cat "$TASK_FILE")
    local task=$(echo "$tasks_json" | jq --arg id "$next_task" '.[] | select(.id == $id)')
    local subtasks=$(echo "$task" | jq -r '.subtasks // []')
    local sub_count=$(echo "$subtasks" | jq 'length')
    
    if [[ $sub_count -gt 0 ]]; then
        log_info "Task has $sub_count subtasks. Checking for pending subtasks..."
        for ((i=0; i<sub_count; i++)); do
            local st=$(echo "$subtasks" | jq ".[$i]")
            local st_id=$(echo "$st" | jq -r '.id')
            local st_status=$(echo "$st" | jq -r '.status')
            if [[ "$st_status" == "pending" ]]; then
                log_info "Found pending subtask: $st_id"
                resume  # Recursive call for subtask
                return $?
            fi
        done
    fi
    
    echo "$next_task"
}

# Export tasks to JSON for backup/portability
export_tasks() {
    local output_file="${1:-$TASKMASTER_DIR/tasks_export_$(date +%Y%m%d_%H%M%S).json}"
    
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local state_json=$(cat "$STATE_FILE")
    local log_content=$(cat "$LOG_FILE")
    
    local export_data=$(jq -n \
        --argjson tasks "$tasks_json" \
        --argjson state "$state_json" \
        --arg log "$log_content" \
        --arg exported_at "$(get_timestamp)" \
        --arg version "1.0" \
        '{
            version: $version,
            exported_at: $exported_at,
            tasks: $tasks,
            state: $state,
            command_log: $log
        }')
    
    echo "$export_data" > "$output_file"
    log_info "Tasks exported to: $output_file"
}

# Import tasks from JSON
import_tasks() {
    local input_file="$1"
    
    if [[ ! -f "$input_file" ]]; then
        log_error "Import file not found: $input_file"
        return 1
    fi
    
    init_files
    
    local import_data=$(cat "$input_file")
    local version=$(echo "$import_data" | jq -r '.version // "1.0"')
    local tasks=$(echo "$import_data" | jq -r '.tasks // []')
    local state=$(echo "$import_data" | jq -r '.state // {}')
    local log=$(echo "$import_data" | jq -r '.command_log // ""')
    
    echo "$tasks" > "$TASK_FILE"
    echo "$state" > "$STATE_FILE"
    echo "$log" > "$LOG_FILE"
    
    local task_count=$(echo "$tasks" | jq 'length')
    log_info "Imported $task_count tasks from $input_file (version $version)"
}

# Create a resume script for the next task group
create_resume_script() {
    local output_file="${1:-$TASKMASTER_DIR/resume_next.sh}"
    
    init_files
    
    local next_task=$(get_next_task)
    
    cat > "$output_file" << RESUME_EOF
#!/bin/bash
# Auto-generated resume script for taskmaster.sh
# Generated: $(get_timestamp)
# Next task: $next_task

source "\$(dirname "\$0")/taskmaster.sh"

# Resume from saved state
taskmaster_resume

# Execute next task interactively
if [[ -n "\$TASKMASTER_NEXT_TASK" ]]; then
    taskmaster_execute_interactive "\$TASKMASTER_NEXT_TASK"
fi
RESUME_EOF
    
    chmod +x "$output_file"
    log_info "Resume script created: $output_file"
}

# Save task grouping for next session
save_task_grouping() {
    local group_name="${1:-default}"
    local output_file="$TASKMASTER_DIR/group_${group_name}_$(date +%Y%m%d_%H%M%S).json"
    
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local state_json=$(cat "$STATE_FILE")
    
    # Group tasks by parent (top-level tasks with their subtasks)
    local grouped=$(echo "$tasks_json" | jq '
        group_by(.parent_id // "root") |
        map({
            parent: (.[0].parent_id // "root"),
            tasks: map({id, title, status, depth, subtasks: (.subtasks | length)})
        })
    ')
    
    local grouping=$(jq -n \
        --arg name "$group_name" \
        --argjson tasks "$tasks_json" \
        --argjson state "$state_json" \
        --argjson grouped "$grouped" \
        --arg created "$(get_timestamp)" \
        '{
            group_name: $name,
            created_at: $created,
            total_tasks: ($tasks | length),
            state: $state,
            grouped_tasks: $grouped,
            all_tasks: $tasks
        }')
    
    echo "$grouping" > "$output_file"
    log_info "Task grouping saved: $output_file"
    echo "$output_file"
}

# =============================================================================
# COMMAND LOGGING AND AUDIT TRAIL
# =============================================================================

# Show command log
show_command_log() {
    local filter_task="${1:-}"
    local filter_status="${2:-}"
    local limit="${3:-50}"
    
    init_files
    
    if [[ ! -f "$LOG_FILE" ]]; then
        log_warn "No command log found"
        return 0
    fi
    
    log_step "Showing command log (limit: $limit)"
    
    local log_entries=()
    while IFS= read -r line; do
        [[ -z "$line" ]] && continue
        log_entries+=("$line")
    done < "$LOG_FILE"
    
    local total=${#log_entries[@]}
    local start=$((total > limit ? total - limit : 0))
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}                    COMMAND AUDIT LOG                           ${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "Showing last $limit of $total entries"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
    
    for ((i=start; i<total; i++)); do
        local entry="${log_entries[$i]}"
        local task_id=$(echo "$entry" | jq -r '.task_id // ""')
        local status=$(echo "$entry" | jq -r '.status // ""')
        
        # Apply filters
        [[ -n "$filter_task" && "$task_id" != "$filter_task" ]] && continue
        [[ -n "$filter_status" && "$status" != "$filter_status" ]] && continue
        
        local cmd_id=$(echo "$entry" | jq -r '.id')
        local command=$(echo "$entry" | jq -r '.command')
        local desc=$(echo "$entry" | jq -r '.description // ""')
        local timestamp=$(echo "$entry" | jq -r '.timestamp')
        local duration=$(echo "$entry" | jq -r '.duration_seconds // 0')
        local exit_code=$(echo "$entry" | jq -r '.exit_code // 0')
        local output=$(echo "$entry" | jq -r '.output // ""')
        
        local status_icon="${GREEN}✓${NC}"
        [[ "$status" == "failed" ]] && status_icon="${RED}✗${NC}"
        [[ "$status" == "running" ]] && status_icon="${BLUE}▶${NC}"
        
        echo -e "$status_icon [$timestamp] ${MAGENTA}$task_id${NC} | ${command}"
        [[ -n "$desc" ]] && echo -e "    ${CYAN}Description:${NC} $desc"
        echo -e "    ${BLUE}Duration:${NC} ${duration}s | ${BLUE}Exit:${NC} $exit_code"
        [[ -n "$output" && "$output" != "null" && "$output" != "(dry run)" ]] && echo -e "    ${YELLOW}Output:${NC} ${output:0:200}${output:200:+...}"
        echo ""
    done
    
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
}

# Show audit summary
show_audit_summary() {
    init_files
    
    if [[ ! -f "$LOG_FILE" ]]; then
        log_warn "No command log found"
        return 0
    fi
    
    local total_commands=0
    local successful=0
    local failed=0
    local total_duration=0
    local tasks_touched=()
    
    while IFS= read -r line; do
        [[ -z "$line" ]] && continue
        ((total_commands++))
        
        local status=$(echo "$line" | jq -r '.status // ""')
        local duration=$(echo "$line" | jq -r '.duration_seconds // 0')
        local task_id=$(echo "$line" | jq -r '.task_id // ""')
        local exit_code=$(echo "$line" | jq -r '.exit_code // 0')
        
        [[ "$status" == "completed" ]] && ((successful++))
        [[ "$status" == "failed" ]] && ((failed++))
        total_duration=$(awk -v t="$total_duration" -v d="$duration" 'BEGIN {print t + d}')
        tasks_touched+=("$task_id")
    done < "$LOG_FILE"
    
    # Unique tasks
    local unique_tasks=$(printf '%s\n' "${tasks_touched[@]}" | sort -u | wc -l)
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}                      AUDIT SUMMARY                             ${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
    printf "  ${GREEN}Total Commands:${NC}     %d\n" "$total_commands"
    printf "  ${GREEN}Successful:${NC}          %d\n" "$successful"
    printf "  ${RED}Failed:${NC}              %d\n" "$failed"
    printf "  ${BLUE}Total Duration:${NC}      %.2fs\n" "$total_duration"
    printf "  ${MAGENTA}Tasks Touched:${NC}       %d\n" "$unique_tasks"
    echo ""
    
    # Commands per task
    echo -e "${CYAN}Commands per Task:${NC}"
    printf '%s\n' "${tasks_touched[@]}" | sort | uniq -c | sort -rn | while read count task; do
        printf "  %s: %d commands\n" "$task" "$count"
    done
    
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
}

# Export audit log to various formats
export_audit_log() {
    local format="${1:-json}"
    local output_file="${2:-$TASKMASTER_DIR/audit_$(date +%Y%m%d_%H%M%S).$format}"
    
    init_files
    
    if [[ ! -f "$LOG_FILE" ]]; then
        log_warn "No command log found"
        return 0
    fi
    
    case "$format" in
        "json")
            # Convert JSONL to JSON array
            jq -s '.' "$LOG_FILE" > "$output_file"
            ;;
        "csv")
            echo "id,task_id,command,description,timestamp,status,duration_seconds,exit_code,output" > "$output_file"
            while IFS= read -r line; do
                [[ -z "$line" ]] && continue
                local id=$(echo "$line" | jq -r '.id')
                local task_id=$(echo "$line" | jq -r '.task_id')
                local command=$(echo "$line" | jq -r '.command' | sed 's/"/""/g')
                local desc=$(echo "$line" | jq -r '.description // ""' | sed 's/"/""/g')
                local timestamp=$(echo "$line" | jq -r '.timestamp')
                local status=$(echo "$line" | jq -r '.status')
                local duration=$(echo "$line" | jq -r '.duration_seconds // 0')
                local exit_code=$(echo "$line" | jq -r '.exit_code // 0')
                local output=$(echo "$line" | jq -r '.output // ""' | sed 's/"/""/g' | sed ':a;N;s/\n/\\n/g;ta')
                echo "\"$id\",\"$task_id\",\"$command\",\"$desc\",\"$timestamp\",\"$status\",$duration,$exit_code,\"$output\"" >> "$output_file"
            done < "$LOG_FILE"
            ;;
        "markdown"|"md")
            echo "# Command Audit Log" > "$output_file"
            echo "" >> "$output_file"
            echo "Generated: $(get_timestamp)" >> "$output_file"
            echo "" >> "$output_file"
            echo "| Time | Task | Command | Status | Duration | Exit Code |" >> "$output_file"
            echo "|------|------|---------|--------|----------|-----------|" >> "$output_file"
            while IFS= read -r line; do
                [[ -z "$line" ]] && continue
                local timestamp=$(echo "$line" | jq -r '.timestamp')
                local task_id=$(echo "$line" | jq -r '.task_id')
                local command=$(echo "$line" | jq -r '.command' | sed 's/|/\\|/g')
                local status=$(echo "$line" | jq -r '.status')
                local duration=$(echo "$line" | jq -r '.duration_seconds // 0')
                local exit_code=$(echo "$line" | jq -r '.exit_code // 0')
                local status_md="$status"
                [[ "$status" == "completed" ]] && status_md="✓"
                [[ "$status" == "failed" ]] && status_md="✗"
                [[ "$status" == "running" ]] && status_md="▶"
                echo "| $timestamp | $task_id | $command | $status_md | ${duration}s | $exit_code |" >> "$output_file"
            done < "$LOG_FILE"
            ;;
        *)
            log_error "Unknown format: $format (supported: json, csv, md)"
            return 1
            ;;
    esac
    
    log_info "Audit log exported to: $output_file ($format)"
}

# Clean old logs
clean_logs() {
    local days="${1:-30}"
    
    init_files
    
    log_step "Cleaning logs older than $days days"
    
    # For JSONL, we'd need to parse timestamps - simplified version
    # In practice, you'd filter by timestamp
    local log_size=$(wc -l < "$LOG_FILE" 2>/dev/null || echo 0)
    
    if [[ $log_size -gt 10000 ]]; then
        # Keep last 5000 lines
        tail -5000 "$LOG_FILE" > "$LOG_FILE.tmp" && mv "$LOG_FILE.tmp" "$LOG_FILE"
        log_info "Trimmed command log from $log_size to 5000 lines"
    fi
}

# =============================================================================
# MAIN COMMAND INTERFACE
# =============================================================================

# Show help
show_help() {
    cat << HELP_EOF
${CYAN}═══════════════════════════════════════════════════════════════${NC}
${CYAN}                    TASKMASTER.SH - HELP                        ${NC}
${CYAN}═══════════════════════════════════════════════════════════════${NC}

${GREEN}USAGE:${NC}
    taskmaster.sh <command> [arguments...]

${GREEN}TASK MANAGEMENT:${NC}
    ${MAGENTA}add${NC} <title> [description] [parent_id]
        Add a new task. Returns task ID.
        
    ${MAGENTA}list${NC} [filter] [--compact]
        List all tasks. Filters: all, pending, completed, current
        
    ${MAGENTA}show${NC} <task_id>
        Show detailed view of a task.
        
    ${MAGENTA}update${NC} <task_id> <field> <value>
        Update a task field (status, title, description).
        
    ${MAGENTA}delete${NC} <task_id>
        Delete a task and its subtasks.

${GREEN}TASK DECOMPOSITION:${NC}
    ${MAGENTA}decompose${NC} <task_id> [subtask1] [subtask2] ...
        Decompose a task into subtasks. Interactive if no subtasks given.
        
    ${MAGENTA}auto-decompose${NC} <task_id> [max_subtasks]
        Auto-decompose using heuristics (default: 5 subtasks).
        
    ${MAGENTA}decompose-all${NC} [max_depth]
        Auto-decompose all pending tasks (default depth: 3).

    ${GREEN}MICRO-TASK DECOMPOSITION (ULTRA-GRANULAR):${NC}
    ${MAGENTA}micro-decompose${NC} <task_id> [max_micro]
        Decompose a task into many micro-tasks (default: 10).
        
    ${MAGENTA}decompose-all-micro${NC} [max_depth] [max_per_task]
        Recursively micro-decompose ALL pending tasks.
        
    ${MAGENTA}decompose-recursive${NC} <task_id> [max_depth] [max_per_task]
        Recursively micro-decompose a task and all its subtasks.

${GREEN}EXECUTION TRACKING:${NC}
    ${MAGENTA}execute${NC} <task_id> <command> [description]
        Execute a command with full tracking.
        
    ${MAGENTA}sequence${NC} <task_id> <cmd1|desc1> [cmd2|desc2] ...
        Execute multiple commands in sequence.
        
    ${MAGENTA}interactive${NC} <task_id>
        Interactive step-by-step execution.
        
    ${MAGENTA}watch${NC} [interval_seconds]
        Continuously display task progress (default: 2s).
        
    ${MAGENTA}history${NC} <task_id>
        Show execution history for a task.

${GREEN}PERSISTENCE & RESUME:${NC}
    ${MAGENTA}resume${NC}
        Resume from last saved state, returns next task ID.
        
    ${MAGENTA}quick-resume${NC} [project_name]
        Quick resume with full project context and next task.
        
    ${MAGENTA}next${NC}
        Get next pending task ID.
        
    ${MAGENTA}advance${NC}
        Manually advance to next task.
        
    ${MAGENTA}save-state${NC} [task_index]
        Save current state for resume.
        
    ${MAGENTA}export${NC} [output_file]
        Export all tasks, state, and logs to JSON.
        
    ${MAGENTA}import${NC} <input_file>
        Import tasks from JSON export.
        
    ${MAGENTA}create-resume-script${NC} [output_file]
        Create a shell script to resume next session.
        
    ${MAGENTA}save-group${NC} [group_name]
        Save current task grouping for next session.

${GREEN}SUPER TASK LIST (PROJECT CONTINUITY):${NC}
    ${MAGENTA}super-list${NC} [project_name] [show_completed]
        Show comprehensive task history for a project.
        
    ${MAGENTA}super-projects${NC}
        List all projects in super task list.
        
    ${MAGENTA}checkpoint${NC} [project_name] [label]
        Create a full project checkpoint.
        
    ${MAGENTA}restore${NC} <checkpoint_file>
        Restore from a checkpoint.
        
    ${MAGENTA}checkpoints${NC} [project_name]
        List available checkpoints.

${GREEN}VISUALIZATION:${NC}
    ${MAGENTA}tree${NC} [root_task_id] [max_depth]
        Show live task tree visualization.
        
    ${MAGENTA}verbose${NC} [level]
        Set verbosity level (0=critical, 1=info, 2=verbose, 3=debug).

${GREEN}AUDIT & LOGGING:${NC}
    ${MAGENTA}log${NC} [task_id] [status] [limit]
        Show command audit log (default: last 50).
        
    ${MAGENTA}audit${NC}
        Show audit summary statistics.
        
    ${MAGENTA}export-log${NC} <format> [output_file]
        Export audit log. Formats: json, csv, md.
        
    ${MAGENTA}clean-logs${NC} [days]
        Clean old log entries (default: 30 days).

${GREEN}ENVIRONMENT VARIABLES:${NC}
    TASKMASTER_DIR    Directory for task data (default: ~/.taskmaster)
    TASK_FILE         Task JSON file (default: \$TASKMASTER_DIR/tasks.json)
    LOG_FILE          Command log file (default: \$TASKMASTER_DIR/command_log.jsonl)
    STATE_FILE        State file (default: \$TASKMASTER_DIR/state.json)
    SUBTASK_DEPTH     Max subtask depth (default: 3)
    MICRO_TASK_DEPTH  Max micro-task depth (default: 5)
    MICRO_TASK_MAX_PER_TASK Max micro-tasks per task (default: 10)
    VERBOSE_LEVEL     Verbosity level 0-3 (default: 2)
    VERBOSE           Enable verbose output (default: true)
    DRY_RUN           Dry run mode (default: false)
    SUPER_LIST_ENABLED Enable super task list (default: true)
    SHOW_TIMESTAMPS   Show timestamps in logs (default: true)
    SHOW_TASK_CONTEXT Show task context in logs (default: true)
    LOG_TO_FILE       Log to console_log.txt (default: true)

${GREEN}EXAMPLES:${NC}
    # Create a project task and decompose it
    taskmaster.sh add "Build Android APK" "No-Gradle build system"
    taskmaster.sh auto-decompose <task_id>
    
    # Ultra-granular decomposition
    taskmaster.sh micro-decompose <task_id> 15
    taskmaster.sh decompose-all-micro 5 10
    
    # Execute with tracking
    taskmaster.sh sequence <task_id> "mkdir -p build" "Setup build dir" "javac src/*.java" "Compile Java"
    
    # Resume workflow
    taskmaster.sh quick-resume
    taskmaster.sh interactive <task_id>
    
    # View everything
    taskmaster.sh list
    taskmaster.sh tree
    taskmaster.sh super-list
    taskmaster.sh quick-resume
    taskmaster.sh verbose 3
    taskmaster.sh watch 5

${CYAN}═══════════════════════════════════════════════════════════════${NC}
HELP_EOF
}

# Update task field
update_task() {
    local task_id="$1"
    local field="$2"
    local value="$3"
    
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local task=$(echo "$tasks_json" | jq --arg id "$task_id" '.[] | select(.id == $id)')
    
    if [[ -z "$task" ]]; then
        log_error "Task not found: $task_id"
        return 1
    fi
    
    local updated_tasks=$(echo "$tasks_json" | jq --arg id "$task_id" --arg field "$field" --arg value "$value" '
        map(if .id == $id then .[$field] = $value | .updated_at = now else . end)
    ')
    echo "$updated_tasks" > "$TASK_FILE"
    
    log_info "Updated task $task_id: $field = $value"
}

# Delete task
delete_task() {
    local task_id="$1"
    
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    
    # Find all descendant tasks to delete
    local to_delete=("$task_id")
    local found=true
    
    while [[ "$found" == "true" ]]; do
        found=false
        local current_count=${#to_delete[@]}
        for ((i=0; i<current_count; i++)); do
            local pid="${to_delete[$i]}"
            local children=$(echo "$tasks_json" | jq --arg pid "$pid" '[.[] | select(.parent_id == $pid) | .id]')
            local child_count=$(echo "$children" | jq 'length')
            for ((j=0; j<child_count; j++)); do
                local cid=$(echo "$children" | jq -r ".[$j]")
                to_delete+=("$cid")
                found=true
            done
        done
    done
    
    # Remove from task list
    for tid in "${to_delete[@]}"; do
        tasks_json=$(echo "$tasks_json" | jq --arg id "$tid" 'map(select(.id != $id))')
    done
    
    # Remove from parent's subtasks
    for tid in "${to_delete[@]}"; do
        tasks_json=$(echo "$tasks_json" | jq --arg id "$tid" '
            map(.subtasks = (.subtasks | map(select(.id != $id))))
        ')
    done
    
    echo "$tasks_json" > "$TASK_FILE"
    log_info "Deleted task $task_id and ${#to_delete[@]} total tasks"
}

# Wrapper functions for external use (without taskmaster_ prefix)
taskmaster_add() { add_task "$@"; }
taskmaster_list() { display_tasks "$@"; }
taskmaster_show() { display_task_detail "$@"; }
taskmaster_update() { update_task "$@"; }
taskmaster_delete() { delete_task "$@"; }
taskmaster_decompose() { decompose_task "$@"; }
taskmaster_auto_decompose() { auto_decompose_task "$@"; }
taskmaster_decompose_all() { decompose_all_pending "$@"; }
taskmaster_execute() { execute_tracked "$@"; }
taskmaster_sequence() { execute_task_sequence "$@"; }
taskmaster_interactive() { execute_interactive "$@"; }
taskmaster_watch() { watch_tasks "$@"; }
taskmaster_history() { show_execution_history "$@"; }
taskmaster_resume() { resume; }
taskmaster_next() { get_next_task; }
taskmaster_advance() { advance_task; }
taskmaster_save_state() { save_state "$@"; }
taskmaster_export() { export_tasks "$@"; }
taskmaster_import() { import_tasks "$@"; }
taskmaster_create_resume_script() { create_resume_script "$@"; }
taskmaster_save_group() { save_task_grouping "$@"; }
taskmaster_log() { show_command_log "$@"; }
taskmaster_audit() { show_audit_summary; }
taskmaster_export_log() { export_audit_log "$@"; }
taskmaster_clean_logs() { clean_logs "$@"; }
taskmaster_help() { show_help; }

# =============================================================================
# ULTRA-GRANULAR TASK DECOMPOSITION (MICRO-TASKS)
# =============================================================================

# Decompose a task into micro-tasks (very granular)
decompose_micro() {
    local task_id="$1"
    local max_micro="${2:-$MICRO_TASK_MAX_PER_TASK}"
    
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local task=$(echo "$tasks_json" | jq --arg id "$task_id" '.[] | select(.id == $id)')
    
    if [[ -z "$task" ]]; then
        log_error "Task not found: $task_id"
        return 1
    fi
    
    local title=$(echo "$task" | jq -r '.title')
    local description=$(echo "$task" | jq -r '.description // ""')
    local current_depth=$(echo "$task" | jq -r '.depth // 0')
    
    log_step "Micro-decomposing task: $task_id ($title)"
    log_substep "Current depth: $current_depth, Max micro-tasks: $max_micro"
    
    # Generate micro-tasks based on task type/keywords
    local micro_titles=()
    
    # Universal micro-task patterns
    micro_titles+=("Analyze requirements for: $title")
    micro_titles+=("Create task specification document")
    micro_titles+=("Identify dependencies and prerequisites")
    micro_titles+=("Set up workspace/environment")
    micro_titles+=("Create implementation plan with steps")
    
    # Task-specific micro-tasks
    if [[ "$title" =~ [Bb]uild|[Cc]ompile ]]; then
        micro_titles+=("Verify build tools installed")
        micro_titles+=("Check source files exist")
        micro_titles+=("Configure build parameters")
        micro_titles+=("Run clean build")
        micro_titles+=("Verify build artifacts")
        micro_titles+=("Test built output")
    elif [[ "$title" =~ [Tt]est ]]; then
        micro_titles+=("Set up test framework")
        micro_titles+=("Create test fixtures")
        micro_titles+=("Write unit tests")
        micro_titles+=("Write integration tests")
        micro_titles+=("Run test suite")
        micro_titles+=("Generate test report")
    elif [[ "$title" =~ [Dd]eploy|[Rr]elease ]]; then
        micro_titles+=("Prepare deployment package")
        micro_titles+=("Verify staging environment")
        micro_titles+=("Run pre-deployment checks")
        micro_titles+=("Execute deployment")
        micro_titles+=("Verify deployment health")
        micro_titles+=("Rollback plan ready")
    elif [[ "$title" =~ [Dd]ebug|[Ff]ix ]]; then
        micro_titles+=("Reproduce issue consistently")
        micro_titles+=("Add debug logging")
        micro_titles+=("Isolate root cause")
        micro_titles+=("Implement minimal fix")
        micro_titles+=("Verify fix resolves issue")
        micro_titles+=("Run regression tests")
    elif [[ "$title" =~ [Rr]efactor ]]; then
        micro_titles+=("Analyze current implementation")
        micro_titles+=("Identify code smells")
        micro_titles+=("Create refactoring plan")
        micro_titles+=("Refactor in small steps")
        micro_titles+=("Run tests after each step")
        micro_titles+=("Verify no behavior change")
    else
        # Generic micro-tasks
        micro_titles+=("Break down into actionable steps")
        micro_titles+=("Research best practices")
        micro_titles+=("Create prototype/POC")
        micro_titles+=("Implement core functionality")
        micro_titles+=("Add error handling")
        micro_titles+=("Document implementation")
    fi
    
    # Limit to max_micro
    micro_titles=("${micro_titles[@]:0:$max_micro}")
    
    log_info "Generated ${#micro_titles[@]} micro-tasks"
    for i in "${!micro_titles[@]}"; do
        log_substep "Micro-task $((i+1)): ${micro_titles[$i]}"
    done
    
    # Create micro-tasks
    local timestamp=$(get_timestamp)
    local new_depth=$((current_depth + 1))
    local subtasks_json="[]"
    
    for micro_title in "${micro_titles[@]}"; do
        local micro_id=$(generate_id)
        local micro_task=$(jq -n \
            --arg id "$micro_id" \
            --arg title "$micro_title" \
            --arg desc "Micro-task for: $title" \
            --arg status "pending" \
            --arg parent "$task_id" \
            --argjson depth "$new_depth" \
            --arg created "$timestamp" \
            --arg updated "$timestamp" \
            --arg micro "true" \
            '{
                id: $id,
                title: $title,
                description: $desc,
                status: $status,
                parent_id: $parent,
                depth: $depth,
                created_at: $created,
                updated_at: $updated,
                subtasks: [],
                commands: [],
                is_micro: ($micro == "true")
            }')
        subtasks_json=$(echo "$subtasks_json" | jq ". + [$micro_task]")
        log_substep "Created micro-task: $micro_id - $micro_title"
    done
    
    # Update parent task
    local updated_tasks=$(echo "$tasks_json" | jq --arg id "$task_id" --argjson subtasks "$subtasks_json" '
        map(if .id == $id then .subtasks = $subtasks | .updated_at = now | .status = "in_progress" else . end)
    ')
    echo "$updated_tasks" > "$TASK_FILE"
    
    # Add each micro-task to main list
    for ((i=0; i<${#micro_titles[@]}; i++)); do
        local micro_task=$(echo "$subtasks_json" | jq ".[$i]")
        updated_tasks=$(echo "$updated_tasks" | jq ". + [$micro_task]")
    done
    echo "$updated_tasks" > "$TASK_FILE"
    
    # Log to super task list
    log_to_super_list "micro_decompose" "$task_id" "${micro_titles[@]}"
    
    log_info "Micro-decomposition complete: ${#micro_titles[@]} micro-tasks created"
}

# Decompose ALL pending tasks into micro-tasks recursively
decompose_all_micro() {
    local max_depth="${1:-$MICRO_TASK_DEPTH}"
    local max_per_task="${2:-$MICRO_TASK_MAX_PER_TASK}"
    
    init_files
    
    log_step "Starting FULL MICRO-DECOMPOSITION (depth: $max_depth, max/task: $max_per_task)"
    
    local tasks_json=$(cat "$TASK_FILE")
    local total_tasks=$(echo "$tasks_json" | jq 'length')
    local processed=0
    
    # Process tasks level by level
    for ((depth=0; depth<max_depth; depth++)); do
        log_step "Processing depth $depth"
        
        tasks_json=$(cat "$TASK_FILE")
        local task_count=$(echo "$tasks_json" | jq 'length')
        
        for ((i=0; i<task_count; i++)); do
            local task=$(echo "$tasks_json" | jq ".[$i]")
            local id=$(echo "$task" | jq -r '.id')
            local status=$(echo "$task" | jq -r '.status // "pending"')
            local task_depth=$(echo "$task" | jq -r '.depth // 0')
            local subtasks=$(echo "$task" | jq -r '.subtasks // [] | length')
            local is_micro=$(echo "$task" | jq -r '.is_micro // false')
            
            if [[ "$status" == "pending" && $task_depth -eq $depth && $subtasks -eq 0 && "$is_micro" != "true" ]]; then
                log_info "Micro-decomposing: $id at depth $depth"
                decompose_micro "$id" "$max_per_task"
                ((processed++))
                tasks_json=$(cat "$TASK_FILE")
                task_count=$(echo "$tasks_json" | jq 'length')
            fi
        done
    done
    
    log_info "Full micro-decomposition complete: $processed tasks processed"
}

# Recursively decompose a task and all its subtasks
decompose_recursive() {
    local task_id="$1"
    local max_depth="${2:-$MICRO_TASK_DEPTH}"
    local max_per_task="${3:-$MICRO_TASK_MAX_PER_TASK}"
    
    init_files
    
    log_step "Recursive decomposition starting from: $task_id"
    
    function process_task() {
        local tid="$1"
        local current_depth="$2"
        
        if [[ $current_depth -ge $max_depth ]]; then
            log_substep "Max depth reached for $tid"
            return
        fi
        
        local tasks_json=$(cat "$TASK_FILE")
        local task=$(echo "$tasks_json" | jq --arg id "$tid" '.[] | select(.id == $id)')
        
        if [[ -z "$task" ]]; then
            return
        fi
        
        local status=$(echo "$task" | jq -r '.status // "pending"')
        local subtasks=$(echo "$task" | jq -r '.subtasks // []')
        local sub_count=$(echo "$subtasks" | jq 'length')
        local is_micro=$(echo "$task" | jq -r '.is_micro // false')
        
        if [[ "$status" == "pending" && $sub_count -eq 0 && "$is_micro" != "true" ]]; then
            decompose_micro "$tid" "$max_per_task"
            tasks_json=$(cat "$TASK_FILE")
        fi
        
        # Process subtasks
        tasks_json=$(cat "$TASK_FILE")
        task=$(echo "$tasks_json" | jq --arg id "$tid" '.[] | select(.id == $id)')
        subtasks=$(echo "$task" | jq -r '.subtasks // []')
        sub_count=$(echo "$subtasks" | jq 'length')
        
        for ((i=0; i<sub_count; i++)); do
            local st=$(echo "$subtasks" | jq ".[$i]")
            local st_id=$(echo "$st" | jq -r '.id')
            process_task "$st_id" $((current_depth + 1))
        done
    }
    
    process_task "$task_id" 0
    log_info "Recursive decomposition complete"
}

# =============================================================================
# VERBOSE CONSOLE LOGGING - EVERY STEP DOCUMENTED
# =============================================================================

# Enhanced logging with full context
log_verbose() {
    local level="$1"
    local component="$2"
    shift 2
    local msg="$*"
    
    [[ $level -gt $VERBOSE_LEVEL ]] && return 0
    
    local timestamp=$(date -u +"%Y-%m-%dT%H:%M:%S.%3NZ")
    local prefix=""
    
    case $level in
        0) prefix="${RED}[CRITICAL]${NC}" ;;
        1) prefix="${GREEN}[INFO]${NC}" ;;
        2) prefix="${BLUE}[VERBOSE]${NC}" ;;
        3) prefix="${CYAN}[DEBUG]${NC}" ;;
    esac
    
    local context=""
    [[ "$SHOW_TASK_CONTEXT" == "true" && -n "$CURRENT_TASK_ID" ]] && context=" [TASK:$CURRENT_TASK_ID]"
    
    local full_msg=""
    [[ "$SHOW_TIMESTAMPS" == "true" ]] && full_msg="${timestamp}${context} ${prefix} [${component}] ${msg}" || full_msg="${prefix} [${component}] ${msg}"
    
    echo -e "$full_msg"
    
    [[ "$LOG_TO_FILE" == "true" ]] && echo "$full_msg" >> "$CONSOLE_LOG_FILE"
}

# Wrapper functions
log_critical() { log_verbose 0 "SYSTEM" "$*"; }
log_info_v() { log_verbose 1 "INFO" "$*"; }
log_verbose_v() { log_verbose 2 "VERBOSE" "$*"; }
log_debug_v() { log_verbose 3 "DEBUG" "$*"; }

log_task_start() {
    local task_id="$1"
    local task_title="$2"
    CURRENT_TASK_ID="$task_id"
    log_info_v "═══════════════════════════════════════════════════════════════"
    log_info_v "TASK STARTED: $task_title ($task_id)"
    log_info_v "═══════════════════════════════════════════════════════════════"
}

log_task_progress() {
    local task_id="$1"
    local step="$2"
    local detail="${3:-}"
    CURRENT_TASK_ID="$task_id"
    log_verbose_v "  ▶ Step: $step"
    [[ -n "$detail" ]] && log_debug_v "    Detail: $detail"
}

log_task_complete() {
    local task_id="$1"
    local task_title="$2"
    local duration="${3:-0}"
    CURRENT_TASK_ID="$task_id"
    log_info_v "═══════════════════════════════════════════════════════════════"
    log_info_v "TASK COMPLETED: $task_title ($task_id) in ${duration}s"
    log_info_v "═══════════════════════════════════════════════════════════════"
    CURRENT_TASK_ID=""
}

log_task_failed() {
    local task_id="$1"
    local task_title="$2"
    local error="$3"
    CURRENT_TASK_ID="$task_id"
    log_critical "TASK FAILED: $task_title ($task_id)"
    log_critical "Error: $error"
    CURRENT_TASK_ID=""
}

log_subtask_created() {
    local parent_id="$1"
    local subtask_id="$2"
    local subtask_title="$3"
    log_verbose_v "  ↳ Created subtask: $subtask_title ($subtask_id) under $parent_id"
}

log_command_executed() {
    local task_id="$1"
    local command="$2"
    local result="$3"
    local duration="$4"
    CURRENT_TASK_ID="$task_id"
    local status_icon="${GREEN}✓${NC}"
    [[ "$result" -ne 0 ]] && status_icon="${RED}✗${NC}"
    log_verbose_v "  $status_icon Command: $command (${duration}s, exit: $result)"
    CURRENT_TASK_ID=""
}

log_state_change() {
    local what="$1"
    local from="$2"
    local to="$3"
    log_debug_v "State change: $what: $from → $to"
}

# Progress bar for long operations
show_progress() {
    local current="$1"
    local total="$2"
    local label="${3:-Progress}"
    local width=50
    local percent=$((current * 100 / total))
    local filled=$((current * width / total))
    local empty=$((width - filled))
    
    printf "\r${CYAN}%s: [${NC}" "$label"
    printf "%${filled}s" | tr ' ' '█'
    printf "%${empty}s" | tr ' ' '░'
    printf "${CYAN}] %d%% (%d/%d)${NC}" "$percent" "$current" "$total"
    
    [[ $current -eq $total ]] && echo ""
}

# Live task tree display
show_live_tree() {
    local root_id="${1:-}"
    local max_depth="${2:-3}"
    
    init_files
    local tasks_json=$(cat "$TASK_FILE")
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}                    LIVE TASK TREE                              ${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
    
    function print_tree() {
        local pid="$1"
        local depth="$2"
        local prefix="$3"
        
        [[ $depth -gt $max_depth ]] && return
        
        local children=$(echo "$tasks_json" | jq --arg pid "$pid" '[.[] | select(.parent_id == $pid)]')
        local count=$(echo "$children" | jq 'length')
        
        for ((i=0; i<count; i++)); do
            local child=$(echo "$children" | jq ".[$i]")
            local id=$(echo "$child" | jq -r '.id')
            local title=$(echo "$child" | jq -r '.title')
            local status=$(echo "$child" | jq -r '.status // "pending"')
            local sub_count=$(echo "$child" | jq -r '.subtasks // [] | length')
            
            local is_last=$((i == count - 1))
            local connector="├──"
            [[ $is_last -eq 1 ]] && connector="└──"
            
            local status_icon="○"
            local status_color="$YELLOW"
            case "$status" in
                "completed") status_icon="✓"; status_color="$GREEN" ;;
                "in_progress") status_icon="▶"; status_color="$BLUE" ;;
                "failed") status_icon="✗"; status_color="$RED" ;;
                "blocked") status_icon="⊘"; status_color="$MAGENTA" ;;
            esac
            
            local micro_mark=""
            local is_micro=$(echo "$child" | jq -r '.is_micro // false')
            [[ "$is_micro" == "true" ]] && micro_mark=" ${CYAN}[MICRO]${NC}"
            
            echo -e "${prefix}${connector} ${status_color}${status_icon}${NC} ${title} (${id:0:20}...)${micro_mark} ${BLUE}[${sub_count} subs]${NC}"
            
            local new_prefix="${prefix}"
            [[ $is_last -eq 1 ]] && new_prefix="${prefix}    " || new_prefix="${prefix}│   "
            
            if [[ $sub_count -gt 0 ]]; then
                print_tree "$id" $((depth + 1)) "$new_prefix"
            fi
        done
    }
    
    if [[ -n "$root_id" ]]; then
        local root=$(echo "$tasks_json" | jq --arg id "$root_id" '.[] | select(.id == $id)')
        [[ -n "$root" ]] && print_tree "$root_id" 0 ""
    else
        # Print all root tasks
        local roots=$(echo "$tasks_json" | jq '[.[] | select(.parent_id == "" or .parent_id == null)]')
        local root_count=$(echo "$roots" | jq 'length')
        for ((i=0; i<root_count; i++)); do
            local root=$(echo "$roots" | jq ".[$i]")
            local id=$(echo "$root" | jq -r '.id')
            print_tree "$id" 0 ""
        done
    fi
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
}

# =============================================================================
# SUPER TASK LIST - PROJECT CONTINUITY & QUICK RESUME
# =============================================================================

SUPER_LIST_FILE="${SUPER_LIST_FILE:-$TASKMASTER_DIR/super_task_list.json}"

# Initialize super task list
init_super_list() {
    [[ "$SUPER_LIST_ENABLED" != "true" ]] && return 0
    
    mkdir -p "$(dirname "$SUPER_LIST_FILE")"
    [[ -f "$SUPER_LIST_FILE" ]] || {
        cat > "$SUPER_LIST_FILE" << 'EOF'
{
    "version": "1.0",
    "created_at": "",
    "updated_at": "",
    "projects": {},
    "global_task_index": [],
    "session_history": []
}
EOF
    }
    
    # Update timestamps if empty
    local created
    created=$(jq -r '.created_at' "$SUPER_LIST_FILE")
    if [[ -z "$created" || "$created" == "null" ]]; then
        jq --arg ts "$(get_timestamp)" '.created_at = $ts | .updated_at = $ts' "$SUPER_LIST_FILE" > "$SUPER_LIST_FILE.tmp" && \
            mv "$SUPER_LIST_FILE.tmp" "$SUPER_LIST_FILE"
    fi
}

# Get or create project entry
get_project_entry() {
    local project_name="${1:-default}"
    init_super_list
    
    local super_list=$(cat "$SUPER_LIST_FILE")
    local project=$(echo "$super_list" | jq --arg name "$project_name" '.projects[$name]')
    
    if [[ "$project" == "null" ]]; then
        project=$(jq -n \
            --arg name "$project_name" \
            --arg created "$(get_timestamp)" \
            '{
                name: $name,
                created_at: $created,
                updated_at: $created,
                tasks: [],
                completed_tasks: [],
                task_tree: {},
                statistics: {
                    total_created: 0,
                    total_completed: 0,
                    total_failed: 0,
                    total_micro_tasks: 0
                },
                tags: [],
                notes: ""
            }')
        
        local updated=$(echo "$super_list" | jq --arg name "$project_name" --argjson project "$project" '.projects[$name] = $project | .updated_at = now')
        echo "$updated" > "$SUPER_LIST_FILE"
    fi
    
    echo "$project"
}

# Log to super task list
log_to_super_list() {
    [[ "$SUPER_LIST_ENABLED" != "true" ]] && return 0
    
    local action="$1"
    local task_id="$2"
    shift 2
    local details=("$@")
    
    init_super_list
    
    # Determine project from task or use default
    local tasks_json=$(cat "$TASK_FILE")
    local task=$(echo "$tasks_json" | jq --arg id "$task_id" '.[] | select(.id == $id)')
    local project_name="default"
    
    if [[ -n "$task" ]]; then
        project_name=$(echo "$task" | jq -r '.project // "default"')
        [[ "$project_name" == "null" ]] && project_name="default"
    fi
    
    local super_list=$(cat "$SUPER_LIST_FILE")
    local project=$(echo "$super_list" | jq --arg name "$project_name" '.projects[$name]')
    
    if [[ "$project" == "null" ]]; then
        project=$(get_project_entry "$project_name")
    fi
    
    local timestamp=$(get_timestamp)
    local entry=$(jq -n \
        --arg action "$action" \
        --arg task_id "$task_id" \
        --arg timestamp "$timestamp" \
        --argjson details "$(printf '%s\n' "${details[@]}" | jq -R . | jq -s .)" \
        --arg session_id "${SESSION_ID:-$(date +%s)}" \
        '{
            action: $action,
            task_id: $task_id,
            timestamp: $timestamp,
            session_id: $session_id,
            details: $details
        }')
    
    # Update project
    local updated_project=$(echo "$project" | jq --argjson entry "$entry" --arg tid "$task_id" '.task_tree[$tid] = $entry | .updated_at = now')
    
    # Update statistics
    case "$action" in
        "create"|"decompose"|"micro_decompose")
            updated_project=$(echo "$updated_project" | jq '.statistics.total_created += 1')
            ;;
        "complete")
            updated_project=$(echo "$updated_project" | jq --arg tid "$task_id" '.statistics.total_completed += 1 | .completed_tasks += [$tid]')
            ;;
        "fail")
            updated_project=$(echo "$updated_project" | jq '.statistics.total_failed += 1')
            ;;
    esac
    
    # Update global index
    local updated_super=$(echo "$super_list" | jq --arg name "$project_name" --argjson project "$updated_project" --arg tid "$task_id" --argjson entry "$entry" '.projects[$name] = $project | .updated_at = now | .global_task_index += [$tid] | .session_history += [$entry]')
    
    echo "$updated_super" > "$SUPER_LIST_FILE"
    
    log_debug_v "Logged to super list: $action for $task_id in project $project_name"
}

# Show super task list for a project
show_super_list() {
    local project_name="${1:-default}"
    local show_completed="${2:-true}"
    
    init_super_list
    
    local super_list=$(cat "$SUPER_LIST_FILE")
    local project=$(echo "$super_list" | jq --arg name "$project_name" '.projects[$name]')
    
    if [[ "$project" == "null" ]]; then
        log_warn "No super task list for project: $project_name"
        return 1
    fi
    
    local name=$(echo "$project" | jq -r '.name')
    local created=$(echo "$project" | jq -r '.created_at')
    local updated=$(echo "$project" | jq -r '.updated_at')
    local stats=$(echo "$project" | jq -r '.statistics')
    local total_created=$(echo "$stats" | jq -r '.total_created')
    local total_completed=$(echo "$stats" | jq -r '.total_completed')
    local total_failed=$(echo "$stats" | jq -r '.total_failed')
    local total_micro=$(echo "$stats" | jq -r '.total_micro_tasks')
    local task_tree=$(echo "$project" | jq -r '.task_tree')
    local completed_tasks=$(echo "$project" | jq -r '.completed_tasks // []')
    local session_history=$(echo "$project" | jq -r '.session_history // []')
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}              SUPER TASK LIST: ${name}                          ${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${MAGENTA}Project:${NC}       $name"
    echo -e "${MAGENTA}Created:${NC}       $created"
    echo -e "${MAGENTA}Last Updated:${NC}  $updated"
    echo ""
    echo -e "${GREEN}Statistics:${NC}"
    printf "  Total Created:    %d\n" "$total_created"
    printf "  Total Completed:  %d\n" "$total_completed"
    printf "  Total Failed:     %d\n" "$total_failed"
    printf "  Micro Tasks:      %d\n" "$total_micro"
    echo ""
    
    local tree_count=$(echo "$task_tree" | jq 'length')
    echo -e "${BLUE}Task Tree (${tree_count} entries):${NC}"
    
    # Show task tree in order
    local task_ids=$(echo "$task_tree" | jq -r 'keys[]')
    for tid in $task_ids; do
        local entry=$(echo "$task_tree" | jq --arg id "$tid" '.[$id]')
        local action=$(echo "$entry" | jq -r '.action')
        local timestamp=$(echo "$entry" | jq -r '.timestamp')
        local session=$(echo "$entry" | jq -r '.session_id')
        local details=$(echo "$entry" | jq -r '.details | join(", ")')
        
        local action_icon=""
        case "$action" in
            "create") action_icon="${GREEN}+${NC}" ;;
            "decompose") action_icon="${BLUE}⌄${NC}" ;;
            "micro_decompose") action_icon="${CYAN}⋮${NC}" ;;
            "complete") action_icon="${GREEN}✓${NC}" ;;
            "fail") action_icon="${RED}✗${NC}" ;;
            *) action_icon="•" ;;
        esac
        
        local completed_mark=""
        [[ " ${completed_tasks[@]} " =~ " ${tid} " ]] && completed_mark=" ${GREEN}[DONE]${NC}"
        
        echo -e "  $action_icon [$timestamp] $tid - $action: $details$completed_mark"
    done
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
}

# Show all projects in super list
show_all_super_projects() {
    init_super_list
    
    local super_list=$(cat "$SUPER_LIST_FILE")
    local projects=$(echo "$super_list" | jq -r '.projects | keys[]')
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}                 ALL SUPER TASK PROJECTS                        ${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
    
    for project_name in $projects; do
        local project=$(echo "$super_list" | jq --arg name "$project_name" '.projects[$name]')
        local created=$(echo "$project" | jq -r '.created_at')
        local updated=$(echo "$project" | jq -r '.updated_at')
        local stats=$(echo "$project" | jq -r '.statistics')
        local total=$(echo "$stats" | jq -r '.total_created')
        local completed=$(echo "$stats" | jq -r '.total_completed')
        local tree_count=$(echo "$project" | jq -r '.task_tree | length')
        
        printf "  ${MAGENTA}%-20s${NC} | Tasks: %4d | Done: %4d | Tree: %3d | Updated: %s\n" \
            "$project_name" "$total" "$completed" "$tree_count" "$updated"
    done
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
}

# Quick resume - shows exactly where to continue
quick_resume() {
    local project_name="${1:-default}"
    
    init_super_list
    
    log_step "Quick resume for project: $project_name"
    
    local super_list=$(cat "$SUPER_LIST_FILE")
    local project=$(echo "$super_list" | jq --arg name "$project_name" '.projects[$name]')
    
    if [[ "$project" == "null" ]]; then
        log_warn "No project found: $project_name"
        show_all_super_projects
        return 1
    fi
    
    # Get current task state
    local tasks_json=$(cat "$TASK_FILE")
    local state_json=$(cat "$STATE_FILE")
    local current_index=$(echo "$state_json" | jq -r '.current_task_index // 0')
    
    # Find next pending task
    local next_task=$(get_next_task)
    
    # Show project summary
    local stats=$(echo "$project" | jq -r '.statistics')
    local total=$(echo "$stats" | jq -r '.total_created')
    local completed=$(echo "$stats" | jq -r '.total_completed')
    local failed=$(echo "$stats" | jq -r '.total_failed')
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}                    QUICK RESUME                                ${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo ""
    echo -e "${MAGENTA}Project:${NC} $project_name"
    printf "  ${GREEN}Total Tasks:${NC}     %d\n" "$total"
    printf "  ${GREEN}Completed:${NC}        %d\n" "$completed"
    printf "  ${RED}Failed:${NC}           %d\n" "$failed"
    printf "  ${YELLOW}Remaining:${NC}        %d\n" $((total - completed - failed))
    echo ""
    
    if [[ -n "$next_task" ]]; then
        echo -e "${GREEN}▶ NEXT TASK:${NC} $next_task"
        display_task_detail "$next_task"
        
        # Check for pending subtasks
        local task=$(echo "$tasks_json" | jq --arg id "$next_task" '.[] | select(.id == $id)')
        local subtasks=$(echo "$task" | jq -r '.subtasks // []')
        local sub_count=$(echo "$subtasks" | jq 'length')
        
        if [[ $sub_count -gt 0 ]]; then
            echo -e "${BLUE}Pending Subtasks:${NC}"
            for ((i=0; i<sub_count; i++)); do
                local st=$(echo "$subtasks" | jq ".[$i]")
                local st_id=$(echo "$st" | jq -r '.id')
                local st_title=$(echo "$st" | jq -r '.title')
                local st_status=$(echo "$st" | jq -r '.status')
                [[ "$st_status" == "pending" ]] && echo -e "  ${YELLOW}○${NC} $st_id: $st_title"
            done
        fi
    else
        echo -e "${GREEN}All tasks completed!${NC}"
    fi
    
    # Show recent session history
    local history=$(echo "$project" | jq -r '.session_history // [] | .[-5:] | reverse')
    local hist_count=$(echo "$history" | jq 'length')
    
    if [[ $hist_count -gt 0 ]]; then
        echo ""
        echo -e "${BLUE}Recent Activity (last $hist_count):${NC}"
        for ((i=0; i<hist_count; i++)); do
            local entry=$(echo "$history" | jq ".[$i]")
            local action=$(echo "$entry" | jq -r '.action')
            local tid=$(echo "$entry" | jq -r '.task_id')
            local ts=$(echo "$entry" | jq -r '.timestamp')
            local sess=$(echo "$entry" | jq -r '.session_id')
            echo -e "  [$ts] $action $tid (session: $sess)"
        done
    fi
    
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    
    # Output next task ID for scripting
    [[ -n "$next_task" ]] && echo "$next_task"
}

# Create project checkpoint
create_checkpoint() {
    local project_name="${1:-default}"
    local label="${2:-checkpoint_$(date +%Y%m%d_%H%M%S)}"
    
    init_super_list
    init_files
    
    local tasks_json=$(cat "$TASK_FILE")
    local state_json=$(cat "$STATE_FILE")
    local super_list=$(cat "$SUPER_LIST_FILE")
    local project=$(echo "$super_list" | jq --arg name "$project_name" '.projects[$name]')
    
    if [[ "$project" == "null" ]]; then
        log_error "Project not found: $project_name"
        return 1
    fi
    
    local checkpoint=$(jq -n \
        --arg label "$label" \
        --arg timestamp "$(get_timestamp)" \
        --argjson tasks "$tasks_json" \
        --argjson state "$state_json" \
        --argjson project "$project" \
        '{
            label: $label,
            timestamp: $timestamp,
            tasks_snapshot: $tasks,
            state_snapshot: $state,
            project_snapshot: $project
        }')
    
    local checkpoint_dir="$TASKMASTER_DIR/checkpoints"
    mkdir -p "$checkpoint_dir"
    local checkpoint_file="$checkpoint_dir/${project_name}_${label}.json"
    
    echo "$checkpoint" > "$checkpoint_file"
    
    # Also update super list with checkpoint reference
    local updated_super=$(echo "$super_list" | jq --arg name "$project_name" --arg label "$label" --arg file "$checkpoint_file" --arg ts "$(get_timestamp)" '
        .projects[$name].checkpoints += [{
            label: $label,
            file: $file,
            timestamp: $ts
        }] | .updated_at = now
    ')
    echo "$updated_super" > "$SUPER_LIST_FILE"
    
    log_info "Checkpoint created: $checkpoint_file"
    echo "$checkpoint_file"
}

# Restore from checkpoint
restore_checkpoint() {
    local checkpoint_file="$1"
    
    [[ ! -f "$checkpoint_file" ]] && { log_error "Checkpoint not found: $checkpoint_file"; return 1; }
    
    log_step "Restoring from checkpoint: $checkpoint_file"
    
    local checkpoint=$(cat "$checkpoint_file")
    local tasks=$(echo "$checkpoint" | jq -r '.tasks_snapshot')
    local state=$(echo "$checkpoint" | jq -r '.state_snapshot')
    local project=$(echo "$checkpoint" | jq -r '.project_snapshot')
    local label=$(echo "$checkpoint" | jq -r '.label')
    local timestamp=$(echo "$checkpoint" | jq -r '.timestamp')
    
    echo "$tasks" > "$TASK_FILE"
    echo "$state" > "$STATE_FILE"
    
    # Update super list
    local super_list=$(cat "$SUPER_LIST_FILE")
    local project_name=$(echo "$project" | jq -r '.name')
    local updated_super=$(echo "$super_list" | jq --arg name "$project_name" --argjson project "$project" '.projects[$name] = $project | .updated_at = now')
    echo "$updated_super" > "$SUPER_LIST_FILE"
    
    log_info "Restored checkpoint: $label from $timestamp"
}

# List checkpoints
list_checkpoints() {
    local project_name="${1:-default}"
    
    local checkpoint_dir="$TASKMASTER_DIR/checkpoints"
    [[ ! -d "$checkpoint_dir" ]] && { log_warn "No checkpoints directory"; return 0; }
    
    echo ""
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    echo -e "${CYAN}                    CHECKPOINTS                                 ${NC}"
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
    
    for cp in "$checkpoint_dir"/${project_name}_*.json; do
        [[ -f "$cp" ]] || continue
        local label=$(basename "$cp" .json)
        label="${label#${project_name}_}"
        local timestamp=$(jq -r '.timestamp' "$cp" 2>/dev/null)
        local task_count=$(jq -r '.tasks_snapshot | length' "$cp" 2>/dev/null)
        echo -e "  ${MAGENTA}$label${NC} | $timestamp | $task_count tasks"
    done
    
    echo -e "${CYAN}═══════════════════════════════════════════════════════════════${NC}"
}

# Main entry point
main() {
    local command="${1:-help}"
    shift || true
    
    case "$command" in
        add) add_task "$@" ;;
        list) display_tasks "$@" ;;
        show) display_task_detail "$@" ;;
        update) update_task "$@" ;;
        delete) delete_task "$@" ;;
        decompose) decompose_task "$@" ;;
        auto-decompose) auto_decompose_task "$@" ;;
        decompose-all) decompose_all_pending "$@" ;;
        # Micro-task decomposition
        micro-decompose) decompose_micro "$@" ;;
        decompose-all-micro) decompose_all_micro "$@" ;;
        decompose-recursive) decompose_recursive "$@" ;;
        execute) execute_tracked "$@" ;;
        sequence) execute_task_sequence "$@" ;;
        interactive) execute_interactive "$@" ;;
        watch) watch_tasks "$@" ;;
        history) show_execution_history "$@" ;;
        resume) resume ;;
        quick-resume) quick_resume "$@" ;;
        next) get_next_task ;;
        advance) advance_task ;;
        save-state) save_state "$@" ;;
        export) export_tasks "$@" ;;
        import) import_tasks "$@" ;;
        create-resume-script) create_resume_script "$@" ;;
        save-group) save_task_grouping "$@" ;;
        log) show_command_log "$@" ;;
        audit) show_audit_summary ;;
        export-log) export_audit_log "$@" ;;
        clean-logs) clean_logs "$@" ;;
        # Super task list
        super-list) show_super_list "$@" ;;
        super-projects) show_all_super_projects ;;
        # Checkpoints
        checkpoint) create_checkpoint "$@" ;;
        restore) restore_checkpoint "$@" ;;
        checkpoints) list_checkpoints "$@" ;;
        # Live tree
        tree) show_live_tree "$@" ;;
        # Verbose logging
        verbose) set_verbose_level "$@" ;;
        help|--help|-h) show_help ;;
        *)
            log_error "Unknown command: $command"
            show_help
            exit 1
            ;;
    esac
}

# Wrapper functions for new commands
taskmaster_micro_decompose() { decompose_micro "$@"; }
taskmaster_decompose_all_micro() { decompose_all_micro "$@"; }
taskmaster_decompose_recursive() { decompose_recursive "$@"; }
taskmaster_quick_resume() { quick_resume "$@"; }
taskmaster_super_list() { show_super_list "$@"; }
taskmaster_super_projects() { show_all_super_projects; }
taskmaster_checkpoint() { create_checkpoint "$@"; }
taskmaster_restore() { restore_checkpoint "$@"; }
taskmaster_checkpoints() { list_checkpoints "$@"; }
taskmaster_tree() { show_live_tree "$@"; }
taskmaster_verbose() { set_verbose_level "$@"; }

# Set verbose level
set_verbose_level() {
    local level="${1:-2}"
    export VERBOSE_LEVEL="$level"
    log_info "Verbose level set to: $level (0=critical, 1=info, 2=verbose, 3=debug)"
}

# Run main if not sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    main "$@"
fi
