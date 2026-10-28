#!/bin/bash
# process_batch.sh — Batch Processing Wrapper for lol.forge
# Usage: ./scripts/process_batch.sh --runner N --docs "PROD-XX PROD-YY"

set -euo pipefail

PROJECT_ROOT="/workspace/app/lol.forge"
SCRIPTS_DIR="$PROJECT_ROOT/scripts"

RUNNER=""
DOCS=""

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --runner)
            RUNNER="$2"
            shift 2
            ;;
        --docs)
            DOCS="$2"
            shift 2
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

if [[ -z "$RUNNER" ]]; then
    echo "Usage: $0 --runner N --docs \"PROD-XX PROD-YY\""
    exit 1
fi

RUNNER_PADDED=$(printf '%03d' "$RUNNER")
RUNNER_FILE="$PROJECT_ROOT/NEXT_runner_${RUNNER_PADDED}.md"

echo "╔══════════════════════════════════════════════════════════════════╗"
echo "║  lol.forge Batch Processor — Runner $RUNNER_PADDED                        ║"
echo "╚══════════════════════════════════════════════════════════════════╝"

# Load runner instructions
if [[ -f "$RUNNER_FILE" ]]; then
    echo "Loading runner instructions from $RUNNER_FILE"
    head -30 "$RUNNER_FILE"
else
    echo "Warning: Runner file not found: $RUNNER_FILE"
fi

# Process each document
for DOC in $DOCS; do
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "Processing $DOC..."
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    # Generate heuristic intros
    echo "Generating heuristic intros for $DOC..."
    python3 "$SCRIPTS_DIR/generate_intros.py" --doc "$DOC" --type prod --output-dir "$PROJECT_ROOT"
    
    # Verify document exists
    DOC_FILE=$(ls "$PROJECT_ROOT/docs"/${DOC}_*.md 2>/dev/null | head -1)
    if [[ -f "$DOC_FILE" ]]; then
        LINES=$(wc -l < "$DOC_FILE")
        echo "Document $DOC_FILE: $LINES lines"
        
        if [[ $LINES -lt 900 ]]; then
            echo "WARNING: Document has fewer than 900 lines ($LINES)"
        fi
        
        # Chunk the document
        echo "Chunking document..."
        CHUNK_DIR="$PROJECT_ROOT/chunks/$DOC"
        python3 ../../__Python_Tools/write_large_file.py split "$DOC_FILE" "$CHUNK_DIR" chapter .md
        
        # Generate manifest
        echo "Generating manifest..."
        python3 ../../__Python_Tools/write_large_file.py manifest "$CHUNK_DIR"
        
        # Verify chunks
        echo "Verifying chunks..."
        python3 ../../__Python_Tools/write_large_file.py verify "$CHUNK_DIR"
        
        # Compress
        echo "Compressing document..."
        python3 ../../__Python_Tools/write_large_file.py compress "$DOC_FILE"
        
        echo "✓ $DOC complete"
    else
        echo "WARNING: Document file not found for $DOC"
        echo "Expected: $PROJECT_ROOT/docs/${DOC}_*.md"
    fi
    
    # Verify combined intro
    INTRO_FILE=$(ls "$PROJECT_ROOT/intros"/${DOC}_*_COMBINED_INTRO.md 2>/dev/null | head -1)
    if [[ -f "$INTRO_FILE" ]]; then
        INTRO_LINES=$(wc -l < "$INTRO_FILE")
        echo "Combined intro: $INTRO_LINES lines"
        if [[ $INTRO_LINES -lt 200 ]]; then
            echo "WARNING: Combined intro has fewer than 200 lines ($INTRO_LINES)"
        fi
    else
        echo "WARNING: Combined intro not found for $DOC"
    fi
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Batch processing complete for Runner $RUNNER_PADDED"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Next steps:"
echo "  1. Review generated documents and intros"
echo "  2. Update Master_Todo.md and TODO.md"
echo "  3. Log progress to memory/$(date +%Y-%m-%d).md"
echo "  4. Create NEXT_runner_$(printf '%03d' $((RUNNER + 1))).md"
echo "  5. Git commit and push"