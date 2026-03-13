# Collections Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

📬 Professional accounts receivable collections management.

## Features

- **Payment Tracking** — Monitor outstanding invoices and track aging
- **Reminder System** — Automated payment reminders at configurable intervals
- **Dispute Handling** — Investigate and resolve payment disputes
- **Collection Analytics** — Track collection rates and DSO metrics
- **Customer Communication** — Professional follow-ups and escalations

## Architecture

```
collections-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term collections knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── payment-tracker/       # Track payments
│       ├── reminder-sender/       # Send reminders
│       └── dispute-handler/       # Handle disputes
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Email, Slack, or WhatsApp)
- Access to accounts receivable system

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-collections

# Copy workspace files
cp -r collections-agent/workspace/* ~/.openclaw/workspace-collections/
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
openclaw agents add collections
```

### 5. Configure Channels

```bash
# Email (recommended for payment reminders)
openclaw channels login --channel email --account collections
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
        id: "collections",
        name: "Collections Agent",
        workspace: "~/.openclaw/workspace-collections",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "4h",
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

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `SMTP_HOST` | SMTP server host | No |
| `SMTP_USER` | SMTP username | No |
| `SMTP_PASSWORD` | SMTP password | No |

## Skills

### payment-tracker

Tracks payments and aging.

```markdown
# Features
- Monitor outstanding invoices
- Track aging (30/60/90+)
- Flag overdue accounts
- Generate aging reports
```

### reminder-sender

Sends payment reminders.

```markdown
# Features
- Automated reminders
- Escalation sequences
- Customizable templates
- Multiple channels (email, SMS, mail)
```

### dispute-handler

Handles payment disputes.

```markdown
# Features
- Investigate disputes
- Document resolutions
- Process adjustments
- Track dispute history
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: every 4 hours) to:
- Check for overdue invoices
- Trigger reminder sequences
- Flag accounts for escalation

### Manual Commands

```bash
# Get aging report
openclaw agent --message "aging report" --agent collections

# Send reminder
openclaw agent --message "send reminder to customer123" --agent collections

# Check DSO
openclaw agent --message "dso metrics" --agent collections
```

### Cron Jobs

```bash
# Daily aging review
openclaw cron add \
  --name "Daily Aging Review" \
  --cron "0 9 * * *" \
  --session isolated \
  --message "Review aging and send reminders" \
  --announce \
  --channel email
```

## Collection Workflow

```
Invoice Due → Reminder Day -7 → Reminder Day -3 → 
Reminder Day Due → Escalation → Collection Agency
```

## Security Considerations

- **Confidential Data**: Handles sensitive financial information
- **Customer Privacy**: PII protection compliant
- **Audit Trail**: Maintains complete communication logs

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for accounts receivable teams*
