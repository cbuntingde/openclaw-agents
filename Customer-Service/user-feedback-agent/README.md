# User Feedback Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for comprehensive customer feedback analysis. This agent aggregates feedback from multiple sources, analyzes sentiment and themes, prioritizes insights for action, and generates actionable reports for product teams.

## What This Agent Does

The User Feedback Agent is your automated insight engine for customer voice. It transforms scattered feedback into structured intelligence, enabling data-driven product decisions while ensuring nothing falls through the cracks.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Feedback Aggregation** | Collect feedback from multiple channels into unified view |
| **Sentiment Analysis** | Analyze emotion, tone, and satisfaction levels |
| **Theme Identification** | Detect patterns and recurring topics in feedback |
| **Prioritization** | Score and rank feedback by impact and frequency |
| **Insight Generation** | Create actionable reports for product teams |

## How It Works

### 1. Feedback Collection Process

```
┌─────────────────────────────────────────────────────────────┐
│                 FEEDBACK COLLECTION WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  1. Query feedback sources (tickets, surveys, reviews)      │
│  2. Deduplicate similar feedback items                       │
│  3. Normalize data format across sources                    │
│  4. Organize by category and tags                            │
│  5. Store in unified feedback repository                    │
│  6. Update daily aggregates                                 │
└─────────────────────────────────────────────────────────────┘
```

### 2. Sentiment Analysis Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                SENTIMENT ANALYSIS WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Input Sources:                                             │
│  - Support tickets                                          │
│  - Survey responses (NPS, CSAT)                            │
│  - App store reviews                                       │
│  - Social media mentions                                    │
│  - Email feedback                                           │
│                                                              │
│  Analysis Output:                                           │
│  - Overall sentiment score (positive/neutral/negative)      │
│  - Trend over time                                          │
│  - Key themes identified                                    │
│  - Emerging concerns                                       │
└─────────────────────────────────────────────────────────────┘
```

### 3. Prioritization Process

```
┌─────────────────────────────────────────────────────────────┐
│                 PRIORITIZATION WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Priority Factors:                                           │
│  1. Frequency mentioned (how many mention same issue)       │
│  2. Sentiment severity (strongly negative = higher)         │
│  3. Customer tier (Enterprise/VIP feedback weighted more)   │
│  4. Business impact (revenue, retention risk)              │
│                                                              │
│  Output:                                                    │
│  - Ranked feedback list                                     │
│  - Recommended actions                                       │
│  - Impact scores                                            │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **feedback-aggregator** | Collect feedback from multiple sources | New feedback arrives, scheduled collection |
| **sentiment-analyzer** | Analyze sentiment and themes | Regular analysis, trend reporting |
| **prioritization** | Score and rank feedback by impact | Weekly reviews, roadmap planning |

### feedback-aggregator

Collects and aggregates user feedback from multiple sources into a unified view.

**When to use:**
- Scheduled feedback collection
- New feedback arriving from any channel
- Periodic aggregation for reporting

**Key functions:**
- Query support tickets for feedback
- Collect survey responses
- Pull app store reviews
- Monitor social media mentions
- Deduplicate similar items
- Normalize format

### sentiment-analyzer

Analyzes sentiment and identifies themes in user feedback using NLP.

**When to use:**
- Daily sentiment tracking
- Weekly sentiment reports
- Trend analysis
- Emerging issue detection

**Key functions:**
- Classify sentiment (positive/neutral/negative/mixed)
- Calculate sentiment scores
- Identify key themes
- Track sentiment trends over time
- Detect emerging concerns

### prioritization

Scores and prioritizes user feedback based on impact and frequency.

**When to use:**
- Weekly prioritization reviews
- Product roadmap planning
- Sprint planning input

**Key functions:**
- Calculate frequency scores
- Weight by customer tier
- Assess business impact
- Generate ranked recommendations
- Flag urgent issues

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `FEEDBACK_API_KEY` | API key for feedback sources | Yes |
| `NLP_API_KEY` | API key for sentiment analysis | Yes |
| `SLACK_WEBHOOK` | Webhook for feedback alerts | No |
| `REPORT_EMAIL` | Email for weekly reports | No |

### Analysis Settings

| Parameter | Default | Description |
|-----------|---------|-------------|
| `SENTIMENT_THRESHOLD` | -0.3 | Negative sentiment flag threshold |
| `FREQUENCY_THRESHOLD` | 10 | Minimum mentions to flag as trend |
| `CUSTOMER_WEIGHT` | 1.5 | Multiplier for enterprise feedback |

## Identity

- **Name**: User Feedback Agent
- **Emoji**: 💬
- **Color**: purple
- **Personality**: Insightful, customer-focused, analytical, organized

## Integrations

### Supported Feedback Sources

- Support ticketing systems (Zendesk, Freshdesk)
- Survey platforms (SurveyMonkey, Typeform)
- App stores (iOS, Google Play)
- Social media monitoring
- NPS/CSAT platforms
- Email feedback

### Supported Output Channels

- Slack
- Email reports
- Product management tools (Jira, Asana)
- Data warehouses

## Success Metrics

This agent is successful when:

- [ ] All feedback sources aggregated daily
- [ ] Sentiment analysis accuracy >85%
- [ ] Key themes identified within 48 hours
- [ ] Urgent issues escalated within 1 hour
- [ ] Weekly reports delivered on time
- [ ] Product team satisfaction >4/5

## Directory Structure

```
user-feedback-agent/
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
        ├── feedback-aggregator/
        │   └── SKILL.md
        ├── sentiment-analyzer/
        │   └── SKILL.md
        └── prioritization/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r user-feedback-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "user-feedback": {
           enabled: true,
           env: {
             FEEDBACK_API_KEY: "your-feedback-api-key",
             NLP_API_KEY: "your-nlp-api-key",
             SLACK_WEBHOOK: "your-slack-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for feedback analysis tasks

## Security Notes

- This agent handles customer data with strict confidentiality
- Raw feedback is never shared externally
- Sentiment analysis is performed in-house where possible
- PII is redacted from reports
- Data retention policies enforced

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
