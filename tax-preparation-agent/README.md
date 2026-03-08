# Tax Preparation Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

🏛️ Tax document management and preparation agent.

## Features

- **Document Gathering** — Collect and organize tax documents
- **Tax Calculations** — Calculate quarterly estimates and projections
- **Deadline Tracking** — Monitor filing deadlines and send reminders
- **Compliance Monitoring** — Ensure regulatory compliance
- **Preparation Support** — Assist with tax return preparation

## Architecture

```
tax-preparation-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term tax knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── document-gatherer/      # Collect documents
│       ├── tax-calculator/        # Calculate estimates
│       └── deadline-tracker/     # Track deadlines
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to financial data

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-tax-prep

# Copy workspace files
cp -r tax-preparation-agent/workspace/* ~/.openclaw/workspace-tax-prep/
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
openclaw agents add tax-prep
```

### 5. Configure Channels

```bash
# Email (recommended for tax updates)
openclaw channels login --channel email --account tax
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
        id: "tax-prep",
        name: "Tax Preparation Agent",
        workspace: "~/.openclaw/workspace-tax-prep",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "24h",
          target: "email",
        },
        sandbox: {
          mode: "all",
          scope: "agent",
        },
      },
    ],
  },
}
```

## Skills

### document-gatherer

Collects tax documents.

```markdown
# Features
- Organize by type
- Verify completeness
- Request missing docs
- Secure storage
```

### tax-calculator

Calculates tax estimates.

```markdown
# Features
- Quarterly estimates
- Deduction tracking
- Projection models
- Tax liability forecasts
```

### deadline-tracker

Tracks deadlines.

```markdown
# Features
- Filing deadlines
- Extension tracking
- Reminder sequences
- Calendar integration
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: daily) to:
- Check for missing documents
- Verify upcoming deadlines
- Monitor filing status

### Manual Commands

```bash
# Document checklist
openclaw agent --message "document checklist" --agent tax-prep

# Quarterly estimate
openclaw agent --message "Q2 estimate" --agent tax-prep

# Deadline list
openclaw agent --message "upcoming deadlines" --agent tax-prep
```

### Cron Jobs

```bash
# Quarterly reminder
openclaw cron add \
  --name "Quarterly Tax Reminder" \
  --cron "0 9 15 3,6,9,12" \
  --session isolated \
  --message "Quarterly tax reminder" \
  --announce \
  --channel email
```

## Tax Types

| Type | Support |
|------|---------|
| Corporate | Supported |
| Partnership | Supported |
| Individual | Supported |
| Sales & Use | Supported |

## Security Considerations

- **Financial Confidentiality**: Handles sensitive tax data
- **PII Protection**: Client data secured
- **Professional Use**: Tax professional tools

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for finance and tax teams*
