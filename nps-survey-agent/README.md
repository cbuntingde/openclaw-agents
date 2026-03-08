# NPS Survey Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

📊 Net Promoter Score survey and feedback analysis agent.

## Features

- **Survey Management** — Send NPS surveys at optimal times
- **Response Analysis** — Segment and analyze feedback
- **Trend Tracking** — Monitor NPS scores over time
- **Detractor Management** — Route detractors to support teams
- **Insights Generation** — Identify themes and actionable insights

## Architecture

```
nps-survey-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term NPS knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── survey-sender/         # Send surveys
│       ├── result-analyzer/      # Analyze results
│       └── trend-tracker/        # Track trends
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Email, Slack)
- Customer data access

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-nps

# Copy workspace files
cp -r nps-survey-agent/workspace/* ~/.openclaw/workspace-nps/
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
openclaw agents add nps
```

### 5. Configure Channels

```bash
# Email (recommended for surveys)
openclaw channels login --channel email --account nps
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
        id: "nps",
        name: "NPS Survey Agent",
        workspace: "~/.openclaw/workspace-nps",
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

### survey-sender

Sends NPS surveys.

```markdown
# Features
- Optimal timing
- Personalization
- Multi-channel delivery
- Survey templates
```

### result-analyzer

Analyzes survey results.

```markdown
# Features
- Score calculation
- Segment by customer type
- Sentiment analysis
- Root cause identification
```

### trend-tracker

Tracks NPS trends.

```markdown
# Features
- Track over time
- Compare segments
- Forecast changes
- Benchmark against goals
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: daily) to:
- Check for new responses
- Monitor response rates
- Analyze detractor feedback

### Manual Commands

```bash
# Current NPS
openclaw agent --message "current NPS" --agent nps

# Segment analysis
openclaw agent --message "NPS by segment" --agent nps

# Detractor list
openclaw agent --message "recent detractors" --agent nps
```

### Cron Jobs

```bash
# Weekly NPS report
openclaw cron add \
  --name "Weekly NPS Report" \
  --cron "0 9 * * 1" \
  --session isolated \
  --message "Generate NPS report" \
  --announce \
  --channel slack
```

## NPS Segments

| Score | Segment | Action |
|-------|---------|--------|
| 9-10 | Promoters | Reward, refer |
| 7-8 | Passives | Improve |
| 0-6 | Detractors | Follow up immediately |

## Integration

| Platform | Status |
|----------|--------|
| Delighted | Supported |
| Wootric | Supported |
| Qualtrics | Supported |
| Custom | API configurable |

## Security Considerations

- **Customer Feedback**: Handles sensitive feedback
- **PII Protection**: Customer data anonymized
- **Data Retention**: Configurable policies

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for product and customer success teams*
