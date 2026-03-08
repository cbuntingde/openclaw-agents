# Contract Lifecycle Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

📝 End-to-end contract lifecycle management agent.

## Features

- **Contract Creation** — Generate contracts from templates
- **Negotiation Tracking** — Track changes and version control
- **Renewal Management** — Monitor expirations and send reminders
- **Clause Library** — Manage standard and approved clauses
- **Signature Tracking** — Monitor execution status

## Architecture

```
contract-lifecycle-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term contract knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── contract-creator/      # Create contracts
│       ├── negotiation-tracker/   # Track negotiations
│       └── renewal-manager/       # Manage renewals
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to contract management system

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-contracts

# Copy workspace files
cp -r contract-lifecycle-agent/workspace/* ~/.openclaw/workspace-contracts/
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
openclaw agents add contracts
```

### 5. Configure Channels

```bash
# Slack (recommended for contract updates)
openclaw channels login --channel slack --account contracts-bot
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
        id: "contracts",
        name: "Contract Lifecycle Agent",
        workspace: "~/.openclaw/workspace-contracts",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "12h",
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

### contract-creator

Creates contracts from templates.

```markdown
# Features
- Generate from templates
- Auto-fill variables
- Ensure compliance
- Version management
```

### negotiation-tracker

Tracks negotiations.

```markdown
# Features
- Track changes
- Version control
- Document discussions
- Approval workflows
```

### renewal-manager

Manages renewals.

```markdown
# Features
- Track expirations
- Send reminders
- Auto-renewal processing
- Renewal planning
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks to:
- Check for expiring contracts
- Monitor pending signatures
- Verify renewal dates

### Manual Commands

```bash
# Create contract
openclaw agent --message "create NDA with Acme Corp" --agent contracts

# Track negotiation
openclaw agent --message "negotiation status for contract-123" --agent contracts

# Renewal list
openclaw agent --message "upcoming renewals" --agent contracts
```

### Cron Jobs

```bash
# Weekly renewal review
openclaw cron add \
  --name "Weekly Renewal Review" \
  --cron "0 9 * * 1" \
  --session isolated \
  --message "Review upcoming renewals" \
  --announce \
  --channel slack
```

## Contract Types

| Type | Status |
|------|--------|
| NDAs | Supported |
| MSAs | Supported |
| SOWs | Supported |
| Vendor Agreements | Supported |
| Employment | Supported |

## Security Considerations

- **Legal Confidentiality**: Handles sensitive legal documents
- **Access Control**: Restricted to Legal, Sales, Procurement
- **Audit Trail**: Complete contract history

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://docs.openclaw.ai)

---

*Built for legal and business teams*
