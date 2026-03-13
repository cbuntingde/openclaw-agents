# Treasury Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

💰 Cash flow forecasting and treasury management agent.

## Features

- **Cash Flow Forecasting** — Predict future cash positions and model scenarios
- **Liquidity Management** — Monitor bank balances and optimize working capital
- **Investment Tracking** — Track portfolio performance and rebalancing
- **Working Capital Optimization** — Analyze DSO, DPO, and inventory turns
- **Treasury Reporting** — Daily, weekly, and monthly financial reports

## Architecture

```
treasury-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term treasury knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── cashflow-forecaster/    # Forecast cash flow
│       ├── liquidity-monitor/     # Monitor liquidity
│       └── investment-tracker/   # Track investments
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to banking and financial systems

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-treasury

# Copy workspace files
cp -r treasury-agent/workspace/* ~/.openclaw/workspace-treasury/
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
openclaw agents add treasury
```

### 5. Configure Channels

```bash
# Slack (recommended for daily updates)
openclaw channels login --channel slack --account treasury-bot
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
        id: "treasury",
        name: "Treasury Agent",
        workspace: "~/.openclaw/workspace-treasury",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "6h",
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

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `BANK_API_KEY` | Banking API key | No |
| `ERP_INTEGRATION` | ERP connection | No |

## Skills

### cashflow-forecaster

Forecasts cash flow.

```markdown
# Features
- Predict cash positions
- Model scenarios
- Identify trends
- Flag shortfalls
```

### liquidity-monitor

Monitors liquidity.

```markdown
# Features
- Track balances
- Monitor DSO/DPO
- Working capital analysis
- Ensure liquidity
```

### investment-tracker

Tracks investments.

```markdown
# Features
- Monitor portfolio
- Track returns
- Rebalance alerts
- Performance reporting
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: every 6 hours) to:
- Check cash positions
- Review forecasts
- Flag potential issues
- Monitor investments

### Manual Commands

```bash
# Cash position
openclaw agent --message "cash position" --agent treasury

# Cash forecast
openclaw agent --message "30 day forecast" --agent treasury

# Investment report
openclaw agent --message "investment performance" --agent treasury
```

### Cron Jobs

```bash
# Daily cash report
openclaw cron add \
  --name "Daily Cash Report" \
  --cron "0 7 * * *" \
  --session isolated \
  --message "Generate daily cash report" \
  --announce \
  --channel slack

# Weekly forecast
openclaw cron add \
  --name "Weekly Forecast" \
  --cron "0 8 * * 1" \
  --session isolated \
  --message "Weekly cash flow forecast" \
  --announce \
  --channel slack
```

## Reporting

| Report | Frequency | Channel |
|--------|-----------|---------|
| Cash Position | Daily | Slack |
| Cash Flow Forecast | Weekly | Slack/Email |
| Investment Performance | Monthly | Email |
| Treasury Review | Quarterly | Meeting |

## Security Considerations

- **Financial Confidentiality**: Handles sensitive cash data
- **Strict Access**: CFO and Treasury only
- **Audit Trail**: Complete transaction logs

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## Escalation Triggers

| Issue | Response |
|-------|----------|
| Cash shortfall < 7 days | Immediate alert |
| Large unexpected outflow | Phone + Slack |
| Investment loss > 5% | Immediate alert |
| Bank issues | Immediate alert |

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for finance and treasury teams*
