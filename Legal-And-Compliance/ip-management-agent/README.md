# IP Management Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

🏛️ Intellectual property portfolio management agent.

## Features

- **Patent Tracking** — Monitor applications, deadlines, and renewals
- **Trademark Management** — Track registrations and monitor conflicts
- **Copyright Monitoring** — Track registrations and expirations
- **Portfolio Analytics** — IP valuation and coverage analysis
- **Deadline Management** — Never miss filing or renewal deadlines

## Architecture

```
ip-management-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term IP knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── patent-tracker/        # Track patents
│       ├── trademark-tracker/    # Track trademarks
│       └── copyright-tracker/    # Track copyrights
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to IP management system or database

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-ip-management

# Copy workspace files
cp -r ip-management-agent/workspace/* ~/.openclaw/workspace-ip-management/
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
openclaw agents add ip-management
```

### 5. Configure Channels

```bash
# Slack (recommended for IP alerts)
openclaw channels login --channel slack --account ip-management-bot
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
        id: "ip-management",
        name: "IP Management Agent",
        workspace: "~/.openclaw/workspace-ip-management",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "24h",
          target: "slack",
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

### patent-tracker

Tracks patents.

```markdown
# Features
- Track applications
- Monitor prosecution
- Deadline reminders
- Renewal management
```

### trademark-tracker

Tracks trademarks.

```markdown
# Features
- Track registrations
- Monitor conflicts
- Watch for infringement
- Renewal management
```

### copyright-tracker

Tracks copyrights.

```markdown
# Features
- Track registrations
- Monitor expirations
- Ensure compliance
- Portfolio reporting
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: daily) to:
- Check for upcoming deadlines
- Monitor application status
- Verify renewals

### Manual Commands

```bash
# Portfolio summary
openclaw agent --message "portfolio summary" --agent ip-management

# Upcoming deadlines
openclaw agent --message "upcoming deadlines" --agent ip-management

# Patent status
openclaw agent --message "patent status for US-12345" --agent ip-management
```

### Cron Jobs

```bash
# Weekly IP review
openclaw cron add \
  --name "Weekly IP Review" \
  --cron "0 9 * * 1" \
  --session isolated \
  --message "Review IP portfolio" \
  --announce \
  --channel slack
```

## IP Types Supported

| Type | Features |
|------|----------|
| Patents | Applications, grants, renewals |
| Trademarks | Registrations, renewals, conflicts |
| Copyrights | Registrations, expirations |

## Security Considerations

- **Confidential IP**: Handles sensitive intellectual property
- **Access Control**: Restricted to Legal and R&D
- **Audit Trail**: Complete IP history maintained

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for legal and R&D teams*
