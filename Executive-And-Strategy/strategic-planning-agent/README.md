# Strategic Planning Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

♟️ Strategic planning and competitive intelligence agent.

## Features

- **Market Analysis** — Analyze market trends and opportunities
- **Competitor Benchmarking** — Track competitors and compare performance
- **Scenario Planning** — Model scenarios and assess risks
- **SWOT Analysis** — Comprehensive strategic assessments
- **Roadmap Planning** — Strategic initiative planning

## Architecture

```
strategic-planning-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term strategy knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── market-analyzer/        # Analyze markets
│       ├── competitor-benchmarker/ # Benchmark competitors
│       └── scenario-planner/      # Plan scenarios
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to market research data

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-strategic-planning

# Copy workspace files
cp -r strategic-planning-agent/workspace/* ~/.openclaw/workspace-strategic-planning/
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
openclaw agents add strategic-planning
```

### 5. Configure Channels

```bash
# Slack (recommended for strategy updates)
openclaw channels login --channel slack --account strategic-planning-bot
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
        id: "strategic-planning",
        name: "Strategic Planning Agent",
        workspace: "~/.openclaw/workspace-strategic-planning",
        model: "anthropic/claude-opus-4-6",
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

### market-analyzer

Analyzes market conditions.

```markdown
# Features
- Industry trends
- Market size
- Growth drivers
- Opportunity identification
```

### competitor-benchmarker

Benchmarks competitors.

```markdown
# Features
- Competitor tracking
- Feature comparison
- Pricing analysis
- Market positioning
```

### scenario-planner

Plans strategic scenarios.

```markdown
# Features
- Model scenarios
- Risk assessment
- Impact analysis
- Strategic recommendations
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: daily) to:
- Monitor market changes
- Track competitor moves
- Update strategic recommendations

### Manual Commands

```bash
# Market analysis
openclaw agent --message "market analysis for SaaS" --agent strategic-planning

# Competitor report
openclaw agent --message "competitor analysis" --agent strategic-planning

# Scenario planning
openclaw agent --message "plan scenarios for expansion" --agent strategic-planning
```

### Cron Jobs

```bash
# Weekly strategy briefing
openclaw cron add \
  --name "Weekly Strategy" \
  --cron "0 9 * * 1" \
  --session isolated \
  --message "Generate strategic briefing" \
  --announce \
  --channel slack
```

## Analysis Frameworks

| Framework | Description |
|-----------|-------------|
| SWOT | Strengths, Weaknesses, Opportunities, Threats |
| Porter's Five Forces | Industry competition analysis |
| PESTLE | Political, Economic, Social, Technical, Legal, Environmental |
| BCG Matrix | Portfolio strategy |

## Security Considerations

- **Confidential Strategy**: Handles sensitive strategic data
- **Access Control**: Executives and strategy team only
- **Data Sources**: Verified market research

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for executives and strategy teams*
