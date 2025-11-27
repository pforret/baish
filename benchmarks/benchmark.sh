#!/usr/bin/env bash
### ==============================================================================
### Benchmark script to compare token counting methods
### - baish tokens (offline estimation)
### - tiktoken-cli (OpenAI tokenizer)
### - Anthropic API (Claude tokenizer)
### ==============================================================================

set -uo pipefail

# Configuration
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BAISH_DIR="${SCRIPT_DIR}/.."
BAISH_SCRIPT="${BAISH_DIR}/baish.sh"
BENCHMARK_DIR="${SCRIPT_DIR}"
DOCUMENTS_DIR="${SCRIPT_DIR}/documents"
RESULTS_FILE="${SCRIPT_DIR}/benchmark_results.csv"

### Load .env file for API keys

load_env() {
  local env_files=(
    "${BAISH_DIR}/.env"
    "${BAISH_DIR}/baish.env"
    "${SCRIPT_DIR}/.env"
    "$HOME/.config/baish/.env"
  )

  for env_file in "${env_files[@]}"; do
    if [[ -f "$env_file" ]]; then
      # Source the env file (only export lines with KEY=value format)
      while IFS='=' read -r key value; do
        # Skip comments and empty lines
        [[ -z "$key" || "$key" =~ ^# ]] && continue
        # Remove quotes from value
        value="${value%\"}"
        value="${value#\"}"
        value="${value%\'}"
        value="${value#\'}"
        # Export if not already set
        if [[ -z "${!key:-}" ]]; then
          export "$key=$value"
        fi
      done < "$env_file"
      LOADED_ENV_FILE="$env_file"
      return 0
    fi
  done
  LOADED_ENV_FILE=""
  return 1
}

# Load environment variables from .env
load_env

# Models (can be overridden by env vars)
MODEL_TIKTOKEN="${TIKTOKEN_MODEL:-gpt-4}"
MODEL_ANTHROPIC="${ANTHROPIC_MODEL:-claude-3-haiku-20240307}"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
BOLD='\033[1m'
RESET='\033[0m'

### Helper functions

print_header() {
  echo -e "\n${BOLD}${BLUE}=== $1 ===${RESET}\n"
}

print_info() {
  echo -e "${GREEN}✓${RESET} $1"
}

print_warn() {
  echo -e "${YELLOW}⚠${RESET} $1"
}

print_error() {
  echo -e "${RED}✗${RESET} $1"
}

### Check available tools

check_tools() {
  print_header "Checking Available Tools"

  # Show loaded .env file
  if [[ -n "${LOADED_ENV_FILE:-}" ]]; then
    print_info "Loaded config from: $LOADED_ENV_FILE"
  fi

  # Check baish
  if [[ -x "$BAISH_SCRIPT" ]]; then
    print_info "baish.sh found at $BAISH_SCRIPT"
    HAS_BAISH=1
  else
    print_error "baish.sh not found or not executable"
    HAS_BAISH=0
  fi

  # Check tiktoken-cli variants
  HAS_TIKTOKEN=0
  TIKTOKEN_CMD=""
  if command -v tiktoken &>/dev/null; then
    print_info "tiktoken found (pip install tiktoken-cli)"
    HAS_TIKTOKEN=1
    TIKTOKEN_CMD="tiktoken"
  elif command -v tiktoken-cli &>/dev/null; then
    print_info "tiktoken-cli found"
    HAS_TIKTOKEN=1
    TIKTOKEN_CMD="tiktoken-cli"
  elif command -v token-counter &>/dev/null; then
    print_info "token-counter found"
    HAS_TIKTOKEN=1
    TIKTOKEN_CMD="token-counter"
  elif command -v tokens &>/dev/null; then
    print_info "tokens (tokens-cli) found"
    HAS_TIKTOKEN=1
    TIKTOKEN_CMD="tokens"
  elif command -v count-tokens &>/dev/null; then
    print_info "count-tokens found"
    HAS_TIKTOKEN=1
    TIKTOKEN_CMD="count-tokens"
  else
    print_warn "No tiktoken CLI tool found"
    print_info "Install with: pip install tiktoken-cli"
    print_info "         or: pip install token-counter-cli"
    print_info "         or: pip install tokens-cli"
  fi

  # Check Anthropic API key
  if [[ -n "${ANTHROPIC_API_KEY:-}" ]]; then
    local key_preview="${ANTHROPIC_API_KEY:0:10}..."
    print_info "ANTHROPIC_API_KEY is set ($key_preview)"
    HAS_ANTHROPIC=1
  else
    print_warn "ANTHROPIC_API_KEY not set"
    print_info "Add to .env file: ANTHROPIC_API_KEY=sk-ant-..."
    print_info "Or export: export ANTHROPIC_API_KEY='your-key'"
    HAS_ANTHROPIC=0
  fi

  # Check jq for JSON parsing
  if command -v jq &>/dev/null; then
    print_info "jq found (for JSON parsing)"
    HAS_JQ=1
  else
    print_warn "jq not found (needed for Anthropic API)"
    HAS_JQ=0
  fi

  echo ""
}

### Token counting functions

count_baish() {
  local file="$1"
  local syntax="${2:-auto}"
  if [[ $HAS_BAISH -eq 1 ]]; then
    "$BAISH_SCRIPT" -s "$syntax" tokens "$file" 2>/dev/null | tr -d ' '
  else
    echo "N/A"
  fi
}

detect_file_syntax() {
  local file="$1"
  local ext="${file##*.}"
  ext="${ext,,}"

  case "$ext" in
    txt|md|markdown|rst) echo "prose" ;;
    py|js|ts|go|rs|php|pl|rb|java|c|cpp|h) echo "code" ;;
    sh|bash|zsh) echo "shell" ;;
    html|htm|css|xml|vue|jsx|tsx) echo "markup" ;;
    json|csv|yaml|yml|toml|ini) echo "data" ;;
    *) echo "prose" ;;
  esac
}

count_tiktoken() {
  local file="$1"
  if [[ $HAS_TIKTOKEN -eq 1 ]]; then
    case "$TIKTOKEN_CMD" in
      tiktoken)
        # tiktoken outputs one token per line, count the lines
        tiktoken --model "$MODEL_TIKTOKEN" "$file" 2>/dev/null | wc -l | tr -d ' '
        ;;
      tiktoken-cli)
        TIKTOKEN_MODEL="$MODEL_TIKTOKEN" cat "$file" | tiktoken-cli 2>/dev/null | tr -d ' '
        ;;
      token-counter)
        token-counter "$file" 2>/dev/null | grep -oE '[0-9]+' | head -1
        ;;
      tokens)
        cat "$file" | tokens -m "$MODEL_TIKTOKEN" 2>/dev/null | tr -d ' '
        ;;
      count-tokens)
        count-tokens "$file" 2>/dev/null | grep -oE '[0-9]+' | head -1
        ;;
    esac
  else
    echo "N/A"
  fi
}

ANTHROPIC_CACHE_FILE="${SCRIPT_DIR}/anthropic_cache.txt"

count_anthropic() {
  local file="$1"
  local filename
  filename=$(basename "$file")

  # First check cache file
  if [[ -f "$ANTHROPIC_CACHE_FILE" ]]; then
    local cached
    cached=$(grep "^${filename}:" "$ANTHROPIC_CACHE_FILE" 2>/dev/null | cut -d: -f2)
    if [[ -n "$cached" ]] && [[ "$cached" != "ERROR" ]]; then
      echo "$cached"
      return
    fi
  fi

  # Fall back to API call if not in cache
  if [[ $HAS_ANTHROPIC -eq 1 ]] && [[ $HAS_JQ -eq 1 ]]; then
    local content
    # Read file and escape for JSON
    content=$(cat "$file" | jq -Rs .)

    local response
    response=$(curl -s "https://api.anthropic.com/v1/messages/count_tokens" \
      --header "x-api-key: $ANTHROPIC_API_KEY" \
      --header "anthropic-version: 2023-06-01" \
      --header "content-type: application/json" \
      --data "{
        \"model\": \"$MODEL_ANTHROPIC\",
        \"messages\": [{\"role\": \"user\", \"content\": $content}]
      }" 2>/dev/null)

    echo "$response" | jq -r '.input_tokens // "ERROR"' 2>/dev/null
  else
    echo "N/A"
  fi
}

### Calculate accuracy

calc_accuracy() {
  local estimated="$1"
  local actual="$2"

  if [[ "$estimated" == "N/A" ]] || [[ "$actual" == "N/A" ]] || [[ "$actual" == "ERROR" ]] || [[ "$estimated" == "ERROR" ]]; then
    echo "N/A"
    return
  fi

  if [[ "$actual" -eq 0 ]]; then
    echo "N/A"
    return
  fi

  # Calculate percentage accuracy
  awk "BEGIN {
    diff = $estimated - $actual
    if (diff < 0) diff = -diff
    accuracy = 100 - (diff / $actual * 100)
    printf \"%.1f%%\", accuracy
  }"
}

### Run benchmark

run_benchmark() {
  print_header "Running Token Count Benchmark"

  echo "Models:"
  echo "  - tiktoken: $MODEL_TIKTOKEN"
  echo "  - anthropic: $MODEL_ANTHROPIC"
  echo ""

  # CSV header
  echo "file,syntax,lines,chars,words,baish,tiktoken,anthropic,accuracy_vs_tiktoken,accuracy_vs_anthropic" > "$RESULTS_FILE"

  # Table header
  printf "${BOLD}%-30s %6s %6s %8s %8s %8s %7s %7s${RESET}\n" \
    "File" "Syntax" "Lines" "Baish" "Tiktoken" "Anthro" "Acc(T)" "Acc(A)"
  printf "%-30s %6s %6s %8s %8s %8s %7s %7s\n" \
    "------------------------------" "------" "------" "--------" "--------" "--------" "-------" "-------"

  local total_baish=0
  local total_tiktoken=0
  local total_anthropic=0
  local file_count=0

  # Process each benchmark file
  for file in "$DOCUMENTS_DIR"/*.{txt,py,js,ts,go,rs,php,pl,sh,css,html,json,csv,yaml,toml,md}; do
    [[ -f "$file" ]] || continue

    local filename
    filename=$(basename "$file")

    # Get file stats
    local lines chars words
    lines=$(wc -l < "$file" | tr -d ' ')
    chars=$(wc -c < "$file" | tr -d ' ')
    words=$(wc -w < "$file" | tr -d ' ')

    # Detect syntax type
    local file_syntax
    file_syntax=$(detect_file_syntax "$file")

    # Count tokens
    echo -ne "  Processing: $filename ($file_syntax)...\r"

    local baish_count tiktoken_count anthropic_count
    baish_count=$(count_baish "$file" "$file_syntax")
    tiktoken_count=$(count_tiktoken "$file")
    anthropic_count=$(count_anthropic "$file")

    # Calculate accuracy
    local acc_tiktoken acc_anthropic
    acc_tiktoken=$(calc_accuracy "$baish_count" "$tiktoken_count")
    acc_anthropic=$(calc_accuracy "$baish_count" "$anthropic_count")

    # Output row
    printf "%-30s %6s %6s %8s %8s %8s %7s %7s\n" \
      "$filename" "$file_syntax" "$lines" "$baish_count" "$tiktoken_count" "$anthropic_count" "$acc_tiktoken" "$acc_anthropic"

    # CSV row
    echo "$filename,$file_syntax,$lines,$chars,$words,$baish_count,$tiktoken_count,$anthropic_count,$acc_tiktoken,$acc_anthropic" >> "$RESULTS_FILE"

    # Accumulate totals (only if numeric)
    if [[ "$baish_count" =~ ^[0-9]+$ ]]; then
      total_baish=$((total_baish + baish_count))
    fi
    if [[ "$tiktoken_count" =~ ^[0-9]+$ ]]; then
      total_tiktoken=$((total_tiktoken + tiktoken_count))
    fi
    if [[ "$anthropic_count" =~ ^[0-9]+$ ]]; then
      total_anthropic=$((total_anthropic + anthropic_count))
    fi

    file_count=$((file_count + 1))

    # Rate limiting for Anthropic API
    [[ $HAS_ANTHROPIC -eq 1 ]] && sleep 0.5
  done

  # Totals
  printf "%-30s %6s %6s %8s %8s %8s %7s %7s\n" \
    "------------------------------" "------" "------" "--------" "--------" "--------" "-------" "-------"

  local total_acc_tiktoken total_acc_anthropic
  total_acc_tiktoken=$(calc_accuracy "$total_baish" "$total_tiktoken")
  total_acc_anthropic=$(calc_accuracy "$total_baish" "$total_anthropic")

  printf "${BOLD}%-30s %6s %6s %8s %8s %8s %7s %7s${RESET}\n" \
    "TOTAL ($file_count files)" "" "" "$total_baish" "$total_tiktoken" "$total_anthropic" "$total_acc_tiktoken" "$total_acc_anthropic"

  echo ""
  print_info "Results saved to: $RESULTS_FILE"
}

### Summary

print_summary() {
  print_header "Summary"

  echo "Token counting methods compared:"
  echo ""
  echo "  ${BOLD}baish tokens${RESET} (offline estimation)"
  echo "    - Algorithm: (chars/4 + words*1.33) / 2"
  echo "    - No dependencies, works offline"
  echo "    - Best for: quick estimates, no API costs"
  echo ""

  if [[ $HAS_TIKTOKEN -eq 1 ]]; then
    echo "  ${BOLD}tiktoken${RESET} (OpenAI tokenizer)"
    echo "    - Model: $MODEL_TIKTOKEN"
    echo "    - Exact BPE tokenization"
    echo "    - Best for: OpenAI API usage estimation"
    echo ""
  fi

  if [[ $HAS_ANTHROPIC -eq 1 ]]; then
    echo "  ${BOLD}Anthropic API${RESET} (Claude tokenizer)"
    echo "    - Model: $MODEL_ANTHROPIC"
    echo "    - Exact Claude tokenization"
    echo "    - Best for: Anthropic API usage estimation"
    echo ""
  fi

  echo "Accuracy notes:"
  echo "  - Acc(T) = Accuracy vs tiktoken (OpenAI)"
  echo "  - Acc(A) = Accuracy vs Anthropic API"
  echo "  - 100% = exact match, lower = more deviation"
  echo ""
}

### Main

main() {
  print_header "Token Counting Benchmark"
  echo "Comparing: baish (estimate) vs tiktoken (OpenAI) vs Anthropic API"

  check_tools

  if [[ $HAS_BAISH -eq 0 ]]; then
    print_error "baish.sh is required to run this benchmark"
    exit 1
  fi

  run_benchmark
  print_summary
}

# Run
main "$@"
