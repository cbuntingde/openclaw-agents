# Competitive Intelligence Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for competitive intelligence. This agent tracks competitors, analyzes win/loss data, monitors market signals, and provides strategic insights.

## What This Agent Does

The Competitive Intelligence Agent is your automated market research specialist. It ensures you stay ahead of competitors by tracking their activities, analyzing competitive outcomes, and identifying market opportunities.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Competitor Tracking** | Monitor competitor activities and products |
| **Win/Loss Analysis** | Analyze sales outcomes against competitors |
| **Market Signal Monitoring** | Track industry news and trends |
| **Competitive Positioning** | Map competitive landscape |
| **Threat Detection** | Identify competitive threats |

## How It Works

### 1. Competitor Tracking Process

```
┌─────────────────────────────────────────────────────────────┐
│                COMPETITOR TRACKING WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Tracking Areas:                                             │
│  - Product launches                                          │
│  - Pricing changes                                           │
│  - Marketing campaigns                                        │
│  - Feature releases                                           │
│  - Leadership changes                                        │
│                                                              │
│  Process:                                                  │
│  1. Identify competitors to track                          │
│  2. Set up monitoring sources                              │
│  3. Collect competitor data                                │
│  4. Analyze changes                                        │
│  5. Generate intelligence report                          │
│  6. Alert on significant changes                          │
└─────────────────────────────────────────────────────────────┘
```

### 2. Win/Loss Analysis Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                   WIN/LOSS ANALYSIS WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Analysis Dimensions:                                       │
│  - Price competitiveness                                    │
│  - Feature comparison                                       │
│  - Vendor stability                                         │
│  - Relationship factors                                     │
│  - Technical fit                                            │
│                                                              │
│  Process:                                                  │
│  1. Pull deal data from CRM                                │
│  2. Analyze win/loss reasons                               │
│  3. Identify patterns                                      │
│  4. Calculate competitive win rate                         │
│  5. Generate insights                                      │
│  6. Recommend improvements                                 │
└─────────────────────────────────────────────────────────────┘
```

### 3. Market Signal Monitoring Workflow

```
┌─────────────────────────────────────────────────────────────┐
│               MARKET SIGNAL MONITORING WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  Signal Types:                                              │
│  - Industry news                                            │
│  - Funding announcements                                    │
│  - Partnership news                                         │
│  - Regulatory changes                                       │
│  - Technology trends                                        │
│                                                              │
│  Process:                                                  │
│  1. Monitor news sources                                   │
│  2. Filter relevant signals                                │
│  3. Analyze impact                                         │
│  4. Categorize by urgency                                   │
│  5. Generate briefing                                      │
│  6. Alert stakeholders                                     │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **competitor-tracker** | Monitor competitors | Ongoing tracking |
| **winloss-analyzer** | Analyze sales outcomes | Deal analysis |
| **market-signals** | Monitor market signals | Intelligence gathering |

### competitor-tracker

Monitors competitor activities.

**When to use:**
- Ongoing monitoring
- Competitor launches
- Pricing changes

**Key functions:**
- Track activities
- Monitor changes
- Generate reports

### winloss-analyzer

Analyzes competitive deal outcomes.

**When to use:**
- Deal debriefs
- Sales training
- Strategy planning

**Key functions:**
- Analyze outcomes
- Identify patterns
- Recommend improvements

### market-signals

Monitors market signals and trends.

**When to use:**
- Intelligence gathering
- Trend analysis
- Strategic planning

**Key functions:**
- Monitor sources
- Filter signals
- Generate briefings

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `CI_API_KEY` | Competitive intelligence platform | Yes |
| `CRM_API_KEY` | CRM for win/loss data | Yes |
| `NEWS_API` | News monitoring API | Yes |

### Monitoring Scope

| Competitor Tier | Monitoring Level | Update Frequency |
|----------------|-----------------|------------------|
| Primary | Full | Daily |
| Secondary | Standard | Weekly |
| Tertiary | Basic | Monthly |

## Identity

- **Name**: Competitive Intelligence Agent
- **Emoji**: 🎯
- **Color**: red
- **Personality**: Strategic, observant, analytical, forward-thinking

## Integrations

### Supported Platforms

- CRM systems
- News APIs
- Social listening tools
- Web monitoring services

### Supported Intelligence Sources

- News APIs
- SEC filings
- Social media
- Industry publications

## Success Metrics

This agent is successful when:

- [ ] Competitor coverage 100%
- [ ] Win rate improvement
- [ ] Signal detection time <24 hours
- [ ] Intelligence accuracy
- [ ] Strategic insights delivered
- [ ] Competitive wins increased

## Directory Structure

```
competitive-intelligence-agent/
├── SKILL.md                              # Agent definition
├── README.md                             # This file
├── config/
│   └── openclaw.json.example             # Configuration example
└── workspace/
    ├── AGENTS.md                         # Operating instructions
    ├── SOUL.md                           # Persona and identity
    ├── IDENTITY.md                       # Name, emoji, quick reference
    ├── USER.md                           # User profiles and preferences
    ├── HEARTBEAT.md                      # Automated checklist
    ├── MEMORY.md                         # Long-term memory
    ├── TOOLS.md                          # Available skills
    ├── memory/
    │   └── YYYY-MM-DD.md                 # Daily activity logs
    └── skills/
        ├── competitor-tracker/
        │   └── SKILL.md
        ├── winloss-analyzer/
        │   └── SKILL.md
        └── market-signals/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r competitive-intelligence-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "competitive-intelligence": {
           enabled: true,
           env: {
             CI_API_KEY: "your-ci-api-key",
             CRM_API_KEY: "your-crm-api-key"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for competitive intelligence

## Security Notes

- This agent handles competitive intelligence
- Competitor data is confidential
- Access limited to strategy/marketing
- Intelligence is need-to-know
- Audit trails maintained

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
