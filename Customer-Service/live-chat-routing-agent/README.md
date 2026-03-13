# Live Chat Routing Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

💬 Intelligent live chat routing and customer support agent.

## Features

- **Chat Routing** — Route chats to appropriate agents based on expertise
- **FAQ Handling** — Answer common questions with instant responses
- **Agent Assignment** — Match customers to best available agents
- **Queue Management** — Prioritize and balance chat workload
- **SLA Monitoring** — Track response times and meet SLAs

## Architecture

```
live-chat-routing-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term chat knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── chat-router/           # Route chats
│       ├── faq-handler/           # Handle FAQs
│       └── agent-assigner/        # Assign agents
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- At least one configured channel (Slack, WhatsApp)
- Chat platform integration (Intercom, Zendesk, etc.)

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
# Create workspace directory
mkdir -p ~/.openclaw/workspace-live-chat

# Copy workspace files
cp -r live-chat-routing-agent/workspace/* ~/.openclaw/workspace-live-chat/
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
openclaw agents add live-chat-routing
```

### 5. Configure Channels

```bash
# Slack (recommended for routing)
openclaw channels login --channel slack --account live-chat-bot
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
        id: "live-chat-routing",
        name: "Live Chat Routing Agent",
        workspace: "~/.openclaw/workspace-live-chat",
        model: "anthropic/claude-sonnet-4-5",
        heartbeat: {
          every: "5m",
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

### chat-router

Routes chats to agents.

```markdown
# Features
- Route based on topic
- Priority queuing
- Skill matching
- Language detection
```

### faq-handler

Handles frequently asked questions.

```markdown
# Features
- Instant responses
- Knowledge base lookup
- Self-service options
- Escalation triggers
```

### agent-assigner

Assigns agents to chats.

```markdown
# Features
- Workload balancing
- Availability tracking
- Skill matching
- Priority routing
```

## Usage

### Heartbeat Checks

The agent runs periodic heartbeat checks (default: every 5 minutes) to:
- Check chat queue
- Verify agent availability
- Monitor SLA status

### Manual Commands

```bash
# Queue status
openclaw agent --message "queue status" --agent live-chat-routing

# Reassign chat
openclaw agent --message "reassign chat-123 to billing" --agent live-chat-routing
```

### Chat Flow

```
Customer Chat → Intent Detection → FAQ Check → 
Routing → Agent Assignment → Resolution
```

## Integration

| Platform | Status |
|----------|--------|
| Intercom | Supported |
| Zendesk | Supported |
| Freshdesk | Supported |
| Custom | API configurable |

## Security Considerations

- **Customer Data**: Handles chat conversations
- **PII Protection**: Data retention policies
- **Agent Privacy**: Agent details protected

See [OpenClaw Security](https://docs.openclaw.ai/gateway/security) for more.

## License

MIT License — see [LICENSE](LICENSE) for details.

## Support

- **Documentation**: [docs.openclaw.ai](https://docs.openclaw.ai)
- **Issues**: [GitHub Issues](https://github.com/anomalyco/opencode/issues)
- **Discord**: [OpenClaw Community](https://discord.gg/openclaw)

---

*Built for customer support teams*
