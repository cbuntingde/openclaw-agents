# User Research Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

🔬 User research and feedback analysis agent.

## Features

- **Survey Design** — Design and conduct user research surveys
- **Feedback Analysis** — Analyze qualitative and quantitative feedback
- **Pattern Detection** — Identify trends and patterns in user behavior
- **Persona Development** — Build user personas from research
- **Research Synthesis** — Summarize findings into actionable insights

## Architecture

```
user-research-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term research knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── survey-conductor/       # Conduct surveys
│       ├── feedback-analyzer/      # Analyze feedback
│       └── pattern-detector/      # Detect patterns
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, Email)
- Access to research tools

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-user-research

# Copy workspace files
cp -r user-research-agent/workspace/* ~/.openclaw/workspace-user-research/
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
openclaw agents add user-research
```

### 5. Configure Channels

```bash
# Slack (recommended for research updates)
openclaw channels login --channel slack --account user-research-bot
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
        id: "user-research",
        name: "User Research Agent",
        workspace: "~/.openclaw/workspace-user-research",
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

### survey-conductor

Conducts surveys.

```markdown
# Features
- Design surveys
- Recruit participants
- Collect responses
- Analyze results
```

### feedback-analyzer

Analyzes feedback.

```markdown
# Features
- Sentiment analysis
- Categorize responses
- Summarize findings
- Extract themes
```

### pattern-detector

Detects patterns.

```markdown
# Features
- Identify trends
- Behavior patterns
- Pain point detection
- Opportunity mapping
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: daily) to:
- Analyze new feedback
- Update research insights
- Monitor survey responses

### Manual Commands

```bash
# Survey design
openclaw agent --message "design onboarding survey" --agent user-research

# Feedback analysis
openclaw agent --message "analyze recent feedback" --agent user-research

# Research synthesis
openclaw agent --message "synthesize findings" --agent user-research
```

### Cron Jobs

```bash
# Weekly research summary
openclaw cron add \
  --name "Weekly Research" \
  --cron "0 9 * * 1" \
  --session isolated \
  --message "Generate research summary" \
  --announce \
  --channel slack
```

## Research Methods

| Method | Status |
|--------|--------|
| Surveys | Supported |
| Interviews | Supported |
| Usability Tests | Supported |
| Feedback Analysis | Supported |

## Security Considerations

- **Participant Privacy**: Research participant data protected
- **Confidential Findings**: Sensitive research data
- **Ethical Guidelines**: Research ethics compliance

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for product and design teams*
