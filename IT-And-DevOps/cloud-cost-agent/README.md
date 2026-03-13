# Cloud Cost Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

☁️ Cloud cost optimization and spending analysis agent.

## Features

- **Spend Tracking** — Monitor cloud spend across AWS, Azure, GCP
- **Savings Identification** — Find reserved instances, savings plans, and idle resources
- **Resource Optimization** — Right-size instances and kill idle resources
- **Budget Alerts** — Proactive alerts before budget thresholds are exceeded
- **Trend Analysis** — Analyze spending patterns and forecast future costs

## Architecture

```
cloud-cost-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term cost knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── spend-tracker/         # Track spend
│       ├── savings-identifier/    # Find savings
│       └── resource-optimizer/    # Optimize resources
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email, or WhatsApp)
- Cloud provider API access (AWS, Azure, GCP)

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-cloud-cost

# Copy workspace files
cp -r cloud-cost-agent/workspace/* ~/.openclaw/workspace-cloud-cost/
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
openclaw agents add cloud-cost
```

### 5. Configure Channels

```bash
# Slack (recommended for cost alerts)
openclaw channels login --channel slack --account cloud-cost-bot
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
        id: "cloud-cost",
        name: "Cloud Cost Agent",
        workspace: "~/.openclaw/workspace-cloud-cost",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "1h",
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
| `AWS_ACCESS_KEY_ID` | AWS access key | No |
| `AWS_SECRET_ACCESS_KEY` | AWS secret key | No |
| `AZURE_SUBSCRIPTION_ID` | Azure subscription | No |
| `GCP_PROJECT_ID` | GCP project ID | No |

## Skills

### spend-tracker

Tracks cloud spending.

```markdown
# Features
- Monitor daily spend
- Track by service/tag
- Report trends
- Budget vs actual
```

### savings-identifier

Identifies cost savings opportunities.

```markdown
# Features
- Find reserved instance opportunities
- Identify idle resources
- Detect underutilized instances
- Recommend savings plans
```

### resource-optimizer

Optimizes cloud resources.

```markdown
# Features
- Right-size instances
- Kill idle resources
- Optimize storage
- Schedule non-production resources
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: every hour) to:
- Check current spend against budget
- Identify new savings opportunities
- Verify scheduled optimizations ran

### Manual Commands

```bash
# Get cost report
openclaw agent --message "daily cost report" --agent cloud-cost

# Find savings
openclaw agent --message "find savings" --agent cloud-cost

# Forecast spend
openclaw agent --message "forecast spend" --agent cloud-cost
```

### Cron Jobs

```bash
# Daily cost report
openclaw cron add \
  --name "Daily Cost Report" \
  --cron "0 7 * * *" \
  --session isolated \
  --message "Generate daily cost report" \
  --announce \
  --channel slack
```

## Supported Cloud Providers

| Provider | Status |
|----------|--------|
| AWS | Supported |
| Azure | Supported |
| GCP | Supported |
| Kubernetes | Supported |

## Security Considerations

- **Read-Only Access**: Agent primarily reads from cloud APIs
- **No Auto-Apply**: Recommendations require human approval
- **Audit Trail**: Maintains logs of all recommendations

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for cloud cost optimization*
