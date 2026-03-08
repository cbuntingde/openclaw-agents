# Procurement Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

🛒 Enterprise procurement and vendor management agent.

## Features

- **Purchase Processing** — Validate and process purchase requests
- **Vendor Management** — Manage vendor relationships and performance
- **Order Tracking** — Monitor orders and delivery status
- **Spend Analytics** — Track procurement spend and savings
- **Approval Workflows** — Route approvals based on policies

## Architecture

```
procurement-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term procurement knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── purchase-processor/    # Process purchases
│       ├── vendor-manager/        # Manage vendors
│       └── order-tracker/        # Track orders
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to procurement system

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-procurement

# Copy workspace files
cp -r procurement-agent/workspace/* ~/.openclaw/workspace-procurement/
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
openclaw agents add procurement
```

### 5. Configure Channels

```bash
# Slack (recommended for procurement updates)
openclaw channels login --channel slack --account procurement-bot
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
        id: "procurement",
        name: "Procurement Agent",
        workspace: "~/.openclaw/workspace-procurement",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "4h",
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

### purchase-processor

Processes purchase requests.

```markdown
# Features
- Validate requests
- Check budgets
- Route approvals
- Create orders
```

### vendor-manager

Manages vendor relationships.

```markdown
# Features
- Track vendors
- Performance ratings
- Contract management
- Relationship tracking
```

### order-tracker

Tracks orders.

```markdown
# Features
- Monitor status
- Track delivery
- Handle issues
- Receipt confirmation
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks to:
- Check pending approvals
- Monitor order status
- Verify deliveries

### Manual Commands

```bash
# Create purchase order
openclaw agent --message "create PO for 10 laptops" --agent procurement

# Vendor info
openclaw agent --message "vendor performance for Acme" --agent procurement

# Order status
openclaw agent --message "order status PO-12345" --agent procurement
```

### Cron Jobs

```bash
# Daily procurement review
openclaw cron add \
  --name "Daily Procurement Review" \
  --cron "0 9 * * *" \
  --session isolated \
  --message "Review pending purchases" \
  --announce \
  --channel slack
```

## Integration

| ERP | Status |
|-----|--------|
| SAP | Supported |
| Oracle | Supported |
| NetSuite | Supported |
| Custom | API configurable |

## Security Considerations

- **Financial Data**: Handles purchase orders
- **Approval Workflows**: Policy enforcement
- **Audit Trail**: Complete procurement history

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for operations and finance*
