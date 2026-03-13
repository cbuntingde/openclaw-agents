# Board Reporting Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

🎯 Professional board reporting and executive dashboard agent.

## Features

- **Metric Gathering** — Collect KPIs and performance metrics from multiple sources
- **Presentation Building** — Create board-ready presentations and reports
- **KPI Tracking** — Monitor targets and report progress to stakeholders
- **Data Visualization** — Build dashboards and visualizations
- **Automated Reporting** — Schedule and deliver board reports automatically

## Architecture

```
board-reporting-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term reporting knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── metric-gatherer/       # Gather metrics
│       ├── presentation-builder/ # Build presentations
│       └── kpi-tracker/          # Track KPIs
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email, or WhatsApp)
- Access to data sources (databases, APIs, dashboards)

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-board-reporting

# Copy workspace files
cp -r board-reporting-agent/workspace/* ~/.openclaw/workspace-board-reporting/
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
openclaw agents add board-reporting
```

### 5. Configure Channels

```bash
# Slack (recommended for executive updates)
openclaw channels login --channel slack --account board-reporting-bot
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
        id: "board-reporting",
        name: "Board Reporting Agent",
        workspace: "~/.openclaw/workspace-board-reporting",
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

### Channel Bindings

```json5
bindings: [
  {
    agentId: "board-reporting",
    match: { channel: "slack" },
  },
],
```

## Skills

### metric-gatherer

Collects metrics from various data sources.

```markdown
# Features
- Aggregate KPIs
- Pull from databases and APIs
- Ensure data accuracy
- Validate calculations
```

### presentation-builder

Builds presentations for board meetings.

```markdown
# Features
- Create slides
- Format reports
- Apply branding
- Export to multiple formats
```

### kpi-tracker

Tracks KPIs and monitors targets.

```markdown
# Features
- Monitor KPI trends
- Compare to targets
- Flag deviations
- Generate status reports
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks to:
- Check for metric updates
- Verify data freshness
- Monitor KPI performance

### Manual Commands

```bash
# Generate board report
openclaw agent --message "generate monthly board report" --agent board-reporting

# Check KPI status
openclaw agent --message "kpi status" --agent board-reporting

# Update dashboard
openclaw agent --message "update dashboard" --agent board-reporting
```

### Cron Jobs

```bash
# Daily KPI summary
openclaw cron add \
  --name "Daily KPI Summary" \
  --cron "0 8 * * *" \
  --session isolated \
  --message "Generate daily KPI summary" \
  --announce \
  --channel slack

# Monthly board report
openclaw cron add \
  --name "Monthly Board Report" \
  --cron "0 9 1 * *" \
  --session isolated \
  --message "Generate monthly board report" \
  --announce \
  --channel slack
```

## Security Considerations

- **Sandbox Mode**: Enabled by default
- **Data Access**: Only reads from configured data sources
- **Confidential Reporting**: Handles sensitive executive information

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## Supported Metrics

| Category | Metrics |
|----------|---------|
| Financial | Revenue, ARR, EBITDA, Cash Position |
| Growth | Customer Count, Churn Rate, NRR |
| Operations | Support Tickets, Resolution Time |
| Product | DAU/MAU, Feature Usage, NPS |

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for executive reporting*
