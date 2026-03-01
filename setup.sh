#!/usr/bin/env bash
# ============================================================
#  OpenClaw Agents — One-Command Multi-Agent Setup
# ============================================================
#  Usage:
#    ./setup.sh                          # Interactive setup
#    ./setup.sh --channel feishu         # Pre-select channel
#    ./setup.sh --group-id oc_xxx        # Pre-fill group ID
#    ./setup.sh --model anthropic/claude-sonnet-4-5
#    ./setup.sh --skip-bindings          # Skip channel binding
#    ./setup.sh --dry-run                # Preview without executing
#
#  This script will:
#    1. Verify openclaw CLI is installed
#    2. Create all sub-agents with dedicated workspaces
#    3. Set visual identities for each agent
#    4. Deploy soul.md / agent.md / user.md into each workspace
#    5. Configure openclaw.json with routing bindings
#    6. Verify the setup
# ============================================================

set -euo pipefail

# ── Color & Formatting ──────────────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
BOLD='\033[1m'
DIM='\033[2m'
NC='\033[0m' # No Color

# ── Logging Helpers ─────────────────────────────────────────
info()    { echo -e "${BLUE}ℹ${NC}  $*"; }
success() { echo -e "${GREEN}✔${NC}  $*"; }
warn()    { echo -e "${YELLOW}⚠${NC}  $*"; }
error()   { echo -e "${RED}✖${NC}  $*" >&2; }
step()    { echo -e "\n${MAGENTA}▸${NC} ${BOLD}$*${NC}"; }
banner()  {
  echo -e ""
  echo -e "${CYAN}╔══════════════════════════════════════════════════╗${NC}"
  echo -e "${CYAN}║${NC}  ${BOLD}🐾 OpenClaw Multi-Agent Setup${NC}                    ${CYAN}║${NC}"
  echo -e "${CYAN}║${NC}  ${DIM}One-command fleet initialization${NC}                 ${CYAN}║${NC}"
  echo -e "${CYAN}╚══════════════════════════════════════════════════╝${NC}"
  echo -e ""
}

# ── Constants ───────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AGENTS_DIR="${SCRIPT_DIR}/.agents"
OPENCLAW_CONFIG="${HOME}/.openclaw/openclaw.json"
DEFAULT_MODEL="anthropic/claude-sonnet-4-5"
VERSION="1.0.0"

# Agent definitions: id|name|emoji|role
CORE_AGENTS=(
  "planner|Planner|🧠|Task decomposition, progress tracking, cross-agent coordination"
  "ideator|Ideator|💡|Idea generation, novelty assessment, contribution refinement"
  "critic|Critic|🎯|SHARP taste evaluation, soul questions, anti-pattern detection"
  "surveyor|Surveyor|📚|Literature search, paper analysis, research gap identification"
  "coder|Coder|💻|Algorithm implementation, experiment execution, code optimization"
  "writer|Writer|✍️|Paper writing, LaTeX formatting, academic expression"
  "reviewer|Reviewer|🔍|Internal peer review, weakness diagnosis, rebuttal strategy"
  "scout|Scout|📰|Daily paper digest, trend analysis, competitive intelligence"
)

# ── Default Flags ───────────────────────────────────────────
CHANNEL=""
GROUP_ID=""
SESSION_ID=""
MODEL="${DEFAULT_MODEL}"
SKIP_BINDINGS=false
DRY_RUN=false

# ── Parse Arguments ─────────────────────────────────────────
while [[ $# -gt 0 ]]; do
  case $1 in
    --channel)      CHANNEL="$2";      shift 2 ;;
    --group-id)     GROUP_ID="$2";     shift 2 ;;
    --session-id)   SESSION_ID="$2";   shift 2 ;;
    --model)        MODEL="$2";        shift 2 ;;
    --skip-bindings) SKIP_BINDINGS=true; shift ;;
    --dry-run)      DRY_RUN=true;      shift ;;
    -h|--help)
      echo "Usage: ./setup.sh [OPTIONS]"
      echo ""
      echo "Options:"
      echo "  --channel CHANNEL    Channel type (feishu|whatsapp|telegram|discord)"
      echo "  --group-id ID        Group/chat ID for channel binding"
      echo "  --session-id ID      Session ID for channel group routing"
      echo "  --model MODEL        LLM model (default: ${DEFAULT_MODEL})"
      echo "  --skip-bindings      Skip channel binding configuration"
      echo "  --dry-run            Preview commands without executing"
      echo "  -h, --help           Show this help message"
      exit 0
      ;;
    *) error "Unknown option: $1"; exit 1 ;;
  esac
done

# ── Helper: run or preview ──────────────────────────────────
run() {
  if [[ "${DRY_RUN}" == true ]]; then
    echo -e "  ${DIM}\$ $*${NC}"
  else
    eval "$@"
  fi
}

# ── Preflight Checks ───────────────────────────────────────
preflight() {
  step "Preflight checks"

  # Check openclaw CLI
  if ! command -v openclaw &>/dev/null; then
    error "openclaw CLI not found."
    echo -e "  Install it with: ${CYAN}npm install -g openclaw@latest${NC}"
    echo -e "  Then run:        ${CYAN}openclaw onboard --install-daemon${NC}"
    exit 1
  fi
  success "openclaw CLI found: $(openclaw --version 2>/dev/null || echo 'installed')"

  # Check that agent source files exist
  if [[ ! -d "${AGENTS_DIR}" ]]; then
    error "Agent source directory not found: ${AGENTS_DIR}"
    error "Please run this script from the repository root."
    exit 1
  fi
  success "Agent source files found"

  # Check jq (needed for JSON manipulation)
  if ! command -v jq &>/dev/null; then
    warn "jq not found — JSON config patching will use fallback method."
    warn "Install jq for best results: https://jqlang.github.io/jq/download/"
  fi
}

# ── Create Agents ───────────────────────────────────────────
create_agents() {
  step "Creating ${#CORE_AGENTS[@]} sub-agents"

  for entry in "${CORE_AGENTS[@]}"; do
    IFS='|' read -r id name emoji role <<< "${entry}"
    local workspace="${SCRIPT_DIR}/.agents/${id}"

    info "Creating agent: ${emoji} ${name} (${id})"
    run "openclaw agents add ${id} \
      --model '${MODEL}' \
      --workspace '${workspace}' 2>/dev/null || true"

    success "Agent '${id}' created"
  done
}

# ── Set Identities ─────────────────────────────────────────
set_identities() {
  step "Setting visual identities"

  for entry in "${CORE_AGENTS[@]}"; do
    IFS='|' read -r id name emoji role <<< "${entry}"
    local display_name="${emoji} ${name}"

    info "Setting identity: ${display_name}"
    run "openclaw agents set-identity \
      --agent '${id}' \
      --name '${display_name}' 2>/dev/null || true"

    success "Identity set for '${id}' → ${display_name}"
  done
}

# ── Deploy Workspace Files ──────────────────────────────────
deploy_workspace_files() {
  step "Deploying workspace files (soul.md / agent.md / user.md)"

  for entry in "${CORE_AGENTS[@]}"; do
    IFS='|' read -r id name emoji role <<< "${entry}"
    local workspace="${AGENTS_DIR}/${id}"

    # Ensure workspace directory exists
    mkdir -p "${workspace}"

    # soul.md should already exist from the repository
    if [[ -f "${workspace}/soul.md" ]]; then
      success "${id}/soul.md ✓ (exists)"
    else
      warn "${id}/soul.md not found — creating placeholder"
      cat > "${workspace}/soul.md" << SOUL
# ${emoji} OpenClaw · ${name}

## Identity
You are **OpenClaw-${name}**, a specialized agent in the OpenClaw multi-agent system.
Your role: ${role}

## Core Principles
- Maintain professional standards at all times
- Collaborate effectively with other agents
- Report progress to Planner and escalate issues to Main Agent
SOUL
    fi

    # agent.md — technical configuration
    if [[ ! -f "${workspace}/agent.md" ]]; then
      cat > "${workspace}/agent.md" << AGENT
# ${emoji} ${name} — Agent Configuration

## Model
- **Primary**: ${MODEL}
- **Fallback**: anthropic/claude-sonnet-4-5

## Tools
- read, write, edit, exec, apply_patch
- sessions_list, sessions_history, sessions_send

## Sandbox
- mode: off (trusted agent)

## Session
- Maintain context across interactions
- Reference previous outputs when relevant
AGENT
      success "${id}/agent.md ✓ (created)"
    else
      success "${id}/agent.md ✓ (exists)"
    fi

    # user.md — user context
    if [[ ! -f "${workspace}/user.md" ]]; then
      cat > "${workspace}/user.md" << USER
# User Context for ${emoji} ${name}

## Research Profile
- **Domain**: AI / NLP / Multi-Agent Systems
- **Target Venues**: ACL, EMNLP, NAACL, NeurIPS, ICML, ICLR
- **Tech Stack**: Python, PyTorch, HuggingFace Transformers

## Preferences
- **Language**: Chinese (primary), English for technical terms
- **Quality Bar**: Top-tier AI conference Oral-level
- **Communication**: Structured output with clear sections
USER
      success "${id}/user.md ✓ (created)"
    else
      success "${id}/user.md ✓ (exists)"
    fi
  done
}

# ── Interactive Channel Setup ───────────────────────────────
prompt_channel() {
  if [[ "${SKIP_BINDINGS}" == true ]]; then
    info "Skipping channel binding (--skip-bindings)"
    return
  fi

  if [[ -z "${CHANNEL}" ]]; then
    echo -e "\n${BOLD}Select a channel for group binding:${NC}"
    echo -e "  ${CYAN}1${NC}) feishu   (飞书)"
    echo -e "  ${CYAN}2${NC}) whatsapp"
    echo -e "  ${CYAN}3${NC}) telegram"
    echo -e "  ${CYAN}4${NC}) discord"
    echo -e "  ${CYAN}5${NC}) slack"
    echo -e "  ${CYAN}s${NC}) skip"
    echo -en "\n${BOLD}  Choice [1-5/s]: ${NC}"
    read -r choice
    case "${choice}" in
      1) CHANNEL="feishu" ;;
      2) CHANNEL="whatsapp" ;;
      3) CHANNEL="telegram" ;;
      4) CHANNEL="discord" ;;
      5) CHANNEL="slack" ;;
      s|S) SKIP_BINDINGS=true; return ;;
      *) warn "Invalid choice, skipping bindings."; SKIP_BINDINGS=true; return ;;
    esac
  fi

  if [[ -z "${GROUP_ID}" ]]; then
    echo -en "\n${BOLD}  Enter group/chat ID for ${CHANNEL}: ${NC}"
    read -r GROUP_ID
    if [[ -z "${GROUP_ID}" ]]; then
      warn "No group ID provided, skipping bindings."
      SKIP_BINDINGS=true
      return
    fi
  fi

  if [[ -z "${SESSION_ID}" ]]; then
    echo -en "${BOLD}  Enter session ID (optional, press Enter to skip): ${NC}"
    read -r SESSION_ID
  fi
}

# ── Configure Bindings ──────────────────────────────────────
configure_bindings() {
  if [[ "${SKIP_BINDINGS}" == true ]]; then
    return
  fi

  step "Configuring channel bindings (${CHANNEL})"

  # Build the agents list for openclaw.json
  local agents_json='['
  local first=true
  for entry in "${CORE_AGENTS[@]}"; do
    IFS='|' read -r id name emoji role <<< "${entry}"
    local workspace="${SCRIPT_DIR}/.agents/${id}"
    if [[ "${first}" == true ]]; then
      first=false
    else
      agents_json+=','
    fi
    agents_json+="$(cat <<AJSON
{
      "id": "${id}",
      "name": "${emoji} ${name}",
      "workspace": "${workspace}",
      "model": "${MODEL}"
    }
AJSON
)"
  done
  agents_json+=']'

  # Build bindings array — bind each agent to the group
  local bindings_json='['
  first=true
  for entry in "${CORE_AGENTS[@]}"; do
    IFS='|' read -r id name emoji role <<< "${entry}"
    if [[ "${first}" == true ]]; then
      first=false
    else
      bindings_json+=','
    fi
    bindings_json+="$(cat <<BJSON
{
      "agentId": "${id}",
      "match": {
        "channel": "${CHANNEL}",
        "peer": {
          "kind": "group",
          "id": "${GROUP_ID}"
        }
      }
    }
BJSON
)"
  done
  bindings_json+=']'

  # Build the complete config patch
  local config_patch
  config_patch="$(cat <<CONFIG
{
  "agents": {
    "list": ${agents_json}
  },
  "bindings": ${bindings_json}
}
CONFIG
)"

  # Merge into existing openclaw.json
  if command -v jq &>/dev/null && [[ -f "${OPENCLAW_CONFIG}" ]]; then
    info "Merging into existing ${OPENCLAW_CONFIG}"
    local tmp_file
    tmp_file="$(mktemp)"
    jq -s '.[0] * .[1]' "${OPENCLAW_CONFIG}" <(echo "${config_patch}") > "${tmp_file}"
    if [[ "${DRY_RUN}" == true ]]; then
      echo -e "  ${DIM}Would write to ${OPENCLAW_CONFIG}:${NC}"
      cat "${tmp_file}"
    else
      cp "${tmp_file}" "${OPENCLAW_CONFIG}"
    fi
    rm -f "${tmp_file}"
  else
    # Create or overwrite config
    local config_dir
    config_dir="$(dirname "${OPENCLAW_CONFIG}")"
    mkdir -p "${config_dir}"
    if [[ "${DRY_RUN}" == true ]]; then
      echo -e "  ${DIM}Would write to ${OPENCLAW_CONFIG}:${NC}"
      echo "${config_patch}"
    else
      echo "${config_patch}" > "${OPENCLAW_CONFIG}"
    fi
  fi

  success "Channel bindings configured for ${CHANNEL} → ${GROUP_ID}"

  # Also save a local copy of the generated config
  echo "${config_patch}" > "${SCRIPT_DIR}/openclaw.generated.json"
  success "Local config copy saved to openclaw.generated.json"
}

# ── Verify Setup ────────────────────────────────────────────
verify() {
  step "Verifying setup"

  if [[ "${DRY_RUN}" == true ]]; then
    info "Dry-run mode — skipping verification"
    return
  fi

  info "Listing agents..."
  openclaw agents list --bindings 2>/dev/null || warn "Could not verify agents (gateway may not be running)"

  success "Setup complete!"
}

# ── Summary ─────────────────────────────────────────────────
summary() {
  echo -e ""
  echo -e "${GREEN}╔══════════════════════════════════════════════════╗${NC}"
  echo -e "${GREEN}║${NC}  ${BOLD}✅ Setup Complete!${NC}                              ${GREEN}║${NC}"
  echo -e "${GREEN}╚══════════════════════════════════════════════════╝${NC}"
  echo -e ""
  echo -e "  ${BOLD}Agents created:${NC} ${#CORE_AGENTS[@]}"
  echo -e "  ${BOLD}Model:${NC}          ${MODEL}"
  if [[ "${SKIP_BINDINGS}" != true ]]; then
    echo -e "  ${BOLD}Channel:${NC}        ${CHANNEL}"
    echo -e "  ${BOLD}Group ID:${NC}       ${GROUP_ID}"
    [[ -n "${SESSION_ID}" ]] && echo -e "  ${BOLD}Session ID:${NC}     ${SESSION_ID}"
  fi
  echo -e ""
  echo -e "  ${DIM}Next steps:${NC}"
  echo -e "    1. Start the gateway:  ${CYAN}openclaw gateway${NC}"
  echo -e "    2. Check status:       ${CYAN}openclaw agents list --bindings${NC}"
  echo -e "    3. Test in channel:    Mention any agent in your ${CHANNEL} group"
  echo -e ""
}

# ── Main ────────────────────────────────────────────────────
main() {
  banner
  preflight
  create_agents
  set_identities
  deploy_workspace_files
  prompt_channel
  configure_bindings
  verify
  summary
}

main "$@"
