# Audit Prep Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

📋 Getting you audit-ready, one document at a time.

## Features

- **Evidence Gathering** — Collect and organize audit evidence by control
- **Findings Tracking** — Monitor remediation progress and escalate overdue items
- **Documentation Management** — Prepare audit workpapers and maintain evidence index
- **Deadline Monitoring** — Track audit timelines and send reminders
- **Memory Persistence** — Long-term audit knowledge and daily activity logs

## Architecture

```
audit-prep-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term audit knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── evidence-gatherer/     # Collect audit evidence
│       ├── findings-tracker/     # Track audit findings
│       └── audit-documentation/  # Prepare documentation
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email, or WhatsApp)
- Access to audit management systems (optional)

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-audit-prep

# Copy workspace files
cp -r audit-prep-agent/workspace/* ~/.openclaw/workspace-audit-prep/
```

### 3. Configure the Agent

```bash
# Copy configuration template
cp config/openclaw.json.example ~/.openclaw/openclaw.json

# Edit with your credentials
nano ~/.openclaw/openclaw.json
```

### 4. Register the Agent

```bash
openclaw agents add audit-prep
```

### 5. Configure Channels

```bash
# Slack (recommended for audit updates)
openclaw channels login --channel slack --account audit-prep-bot

# Or WhatsApp
openclaw channels login --channel whatsapp --account audit
```

### 6. Start the Gateway

```bash
openclaw gateway restart
```

## Configuration

### Agent Settings

Edit `~/.openclaw/openclaw.json` to customize:

```json5
{
  agents: {
    list: [
      {
        id: "audit-prep",
        name: "Audit Prep Agent",
        workspace: "~/.openclaw/workspace-audit-prep",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "30m",
          target: "slack",
        },
        sandbox: {
          mode: "all",
          scope: "agent",
        },
        tools: {
          allow: ["read", "memory_search", "cron_list"],
          deny: ["exec", "write", "browser"],
        },
      },
    ],
  },
}
```

### Channel Bindings

Route audit updates to specific channels:

```json5
bindings: [
  {
    agentId: "audit-prep",
    match: { channel: "slack" },
  },
],
```

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `SLACK_BOT_TOKEN` | Bot token for Slack alerts | No |
| `SMTP_PASSWORD` | Email sending credentials | No |

## Skills

### evidence-gatherer

Collects and organizes audit evidence.

```markdown
# Features
- Collect supporting documents
- Organize evidence by control
- Verify completeness
- Track evidence requests
```

### findings-tracker

Tracks audit findings and remediation.

```markdown
# Features
- Track open findings
- Monitor remediation status
- Escalate overdue items
- Generate status reports
```

### audit-documentation

Prepares audit documentation.

```markdown
# Features
- Prepare audit workpapers
- Create trail narratives
- Maintain evidence index
- Generate summary reports
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: every 30 minutes) to:
- Check for pending evidence requests
- Review open findings status
- Verify deadlines

### Manual Commands

```bash
# Check audit status
openclaw agent --message "audit status" --agent audit-prep

# Generate evidence summary
openclaw agent --message "evidence summary" --agent audit-prep

# List open findings
openclaw agent --message "list open findings" --agent audit-prep
```

### Cron Jobs

Schedule automated audit tasks:

```bash
# Weekly evidence review
openclaw cron add \
  --name "Weekly Evidence Review" \
  --cron "0 9 * * 1" \
  --session isolated \
  --message "Review pending evidence requests" \
  --announce \
  --channel slack
```

## Security Considerations

- **Sandbox Mode**: Enabled by default; restricts tools to read-only
- **No Exec**: Command execution is disabled for this agent
- **Isolated Sessions**: Each agent has separate session storage
- **Confidential Data**: Handles sensitive audit information

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for enterprise audit teams*
