# Product Analytics Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

📈 Product metrics and analytics intelligence agent.

## Features

- **Metric Tracking** — Monitor KPIs and product metrics
- **Insight Generation** — Identify patterns and actionable insights
- **Dashboard Building** — Create and maintain dashboards
- **Cohort Analysis** — Analyze user behavior by cohort
- **Funnel Analysis** — Track conversion funnels

## Architecture

```
product-analytics-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term analytics knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── metric-tracker/         # Track metrics
│       ├── insight-generator/      # Generate insights
│       └── dashboard-builder/     # Build dashboards
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to analytics platforms

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-product-analytics

# Copy workspace files
cp -r product-analytics-agent/workspace/* ~/.openclaw/workspace-product-analytics/
```

### 3. Configure the Agent

```bash
# Copy configuration template
cp config/openclaw.json_example ~/.openclaw/openclaw.json

# Edit with your credentials
nano ~/.openclaw/openclaw.json
```

### 4. Register the Agent

```bash
openclaw agents add product-analytics
```

### 5. Configure Channels

```bash
# Slack (recommended for analytics)
openclaw channels login --channel slack --account product-analytics-bot
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
        id: "product-analytics",
        name: "Product Analytics Agent",
        workspace: "~/.openclaw/workspace-product-analytics",
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
| `MIXPANEL_TOKEN` | Mixpanel API token | No |
| `AMPLITUDE_KEY` | Amplitude API key | No |
| `SEGMENT_WRITE_KEY` | Segment write key | No |

## Skills

### metric-tracker

Tracks product metrics.

```markdown
# Features
- Monitor KPIs
- Track trends
- Alert on anomalies
- Report performance
```

### insight-generator

Generates insights.

```markdown
# Features
- Identify patterns
- Surface correlations
- Recommend actions
- A/B test analysis
```

### dashboard-builder

Builds dashboards.

```markdown
# Features
- Create visualizations
- Custom metrics
- Shareable reports
- Automated updates
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: hourly) to:
- Check metric health
- Detect anomalies
- Verify data freshness

### Manual Commands

```bash
# Daily metrics
openclaw agent --message "daily metrics" --agent product-analytics

# User engagement
openclaw agent --message "engagement trends" --agent product-analytics

# Funnel analysis
openclaw agent --message "funnel conversion" --agent product-analytics
```

### Cron Jobs

```bash
# Daily metrics report
openclaw cron add \
  --name "Daily Metrics" \
  --cron "0 8 * * *" \
  --session isolated \
  --message "Generate daily metrics" \
  --announce \
  --channel slack
```

## Integration

| Platform | Status |
|----------|--------|
| Mixpanel | Supported |
| Amplitude | Supported |
| Segment | Supported |
| Google Analytics | Supported |
| Mixpanel | Supported |

## Metrics Tracked

| Category | Metrics |
|----------|---------|
| Acquisition | Signups, CAC, Traffic |
| Activation | First Action, Onboarding |
| Retention | Day 1/7/30, Churn |
| Revenue | MRR, ARPU, LTV |

## Security Considerations

- **Product Data**: Handles usage metrics
- **Access Control**: Product and leadership
- **Data Privacy**: Aggregated data only

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for product and data teams*
