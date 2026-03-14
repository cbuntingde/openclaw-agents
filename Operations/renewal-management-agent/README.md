# Renewal Management Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for subscription and contract renewal management. This agent tracks upcoming renewals, identifies upsell opportunities, and executes churn prevention strategies.

## What This Agent Does

The Renewal Management Agent is your automated customer success specialist. It ensures high retention rates by tracking renewals, identifying growth opportunities, and preventing churn through proactive engagement.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Renewal Tracking** | Monitor upcoming subscription renewals |
| **Upsell Identification** | Identify expansion opportunities |
| **Churn Prevention** | Detect and prevent at-risk accounts |
| **Engagement Automation** | Trigger renewal communications |
| **Health Scoring** | Monitor customer health indicators |

## How It Works

### 1. Renewal Tracking Process

```
┌─────────────────────────────────────────────────────────────┐
│                  RENEWAL TRACKING WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Tracking Milestones:                                        │
│  - 90 days: Renewal review initiated                        │
│  - 60 days: Customer contact for planning                  │
│  - 30 days: Proposal/quote delivered                       │
│  - 14 days: Contract negotiation                           │
│  - 7 days: Final confirmation                              │
│  - 0 days: Renewal date                                   │
│                                                              │
│  Process:                                                  │
│  1. Pull renewal schedule                                  │
│  2. Calculate milestones                                  │
│  3. Initiate renewal process                              │
│  4. Track progress                                        │
│  5. Generate reports                                      │
└─────────────────────────────────────────────────────────────┘
```

### 2. Upsell Identification Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 UPSELL IDENTIFICATION WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  Upsell Signals:                                            │
│  - Usage growth                                             │
│  - Feature adoption expansion                               │
│  - Headcount increase                                       │
│  - New use cases                                           │
│  - High satisfaction scores                                 │
│                                                              │
│  Process:                                                  │
│  1. Analyze account data                                   │
│  2. Identify upsell signals                                │
│  3. Calculate expansion potential                          │
│  4. Generate recommendations                               │
│  5. Route to account team                                  │
└─────────────────────────────────────────────────────────────┘
```

### 3. Churn Prevention Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 CHURN PREVENTION WORKFLOW                        │
├─────────────────────────────────────────────────────────────┤
│  Risk Indicators:                                           │
│  - Declining usage                                         │
│  - Support ticket increase                                  │
│  - Low NPS/CSAT scores                                      │
│  - Non-responsive to engagement                             │
│  - Competitor activity                                     │
│                                                              │
│  Process:                                                  │
│  1. Monitor health indicators                               │
│  2. Calculate risk score                                   │
│  3. Identify at-risk accounts                              │
│  4. Trigger intervention                                   │
│  5. Route to success team                                 │
│  6. Track resolution                                      │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **renewal-tracker** | Monitor renewals | Ongoing tracking |
| **upsell-identifier** | Find expansion opportunities | Account planning |
| **churn-prevention** | Prevent customer loss | At-risk accounts |

### renewal-tracker

Tracks upcoming renewals and manages the renewal process.

**When to use:**
- Renewal calendar management
- Process tracking
- Deadline management

**Key functions:**
- Track renewals
- Calculate milestones
- Generate reports

### upsell-identifier

Identifies expansion opportunities within existing accounts.

**When to use:**
- Account planning
- Growth identification
- QBR preparation

**Key functions:**
- Analyze signals
- Calculate potential
- Recommend actions

### churn-prevention

Detects and prevents at-risk customer churn.

**When to use:**
- Risk monitoring
- Intervention triggers
- Retention efforts

**Key functions:**
- Monitor health
- Identify risk
- Trigger intervention

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `CRM_API_KEY` | API for CRM system | Yes |
| `CS_PLATFORM_API` | Customer success platform | Yes |
| `RENEWAL_WEBHOOK` | Webhook for alerts | No |

### Engagement Schedule

| Stage | Lead Time | Action |
|-------|-----------|--------|
| Review | 90 days | Initiate planning |
| Contact | 60 days | Customer meeting |
| Proposal | 30 days | Deliver quote |
| Negotiation | 14 days | Contract discussion |
| Confirm | 7 days | Final sign-off |

## Identity

- **Name**: Renewal Management Agent
- **Emoji**: 🔄
- **Color**: green
- **Personality**: Proactive, customer-focused, growth-oriented, attentive

## Integrations

### Supported CRM Systems

- Salesforce
- HubSpot
- Gainsight
- ChurnZero
- Totango

### Supported Customer Success

- Gainsight
- Totango
- CustomerSuccessBox

## Success Metrics

This agent is successful when:

- [ ] Renewal rate >95%
- [ ] Net revenue retention >100%
- [ ] Churn rate <5%
- [ ] Upsell conversion >30%
- [ ] At-risk identification >90%
- [ ] Customer satisfaction maintained

## Directory Structure

```
renewal-management-agent/
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
        ├── renewal-tracker/
        │   └── SKILL.md
        ├── upsell-identifier/
        │   └── SKILL.md
        └── churn-prevention/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r renewal-management-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "renewal-management": {
           enabled: true,
           env: {
             CRM_API_KEY: "your-crm-api-key",
             CS_PLATFORM_API: "your-cs-platform"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for renewal management

## Security Notes

- This agent handles customer data
- Account information is confidential
- Renewal data protected
- Access limited to customer success
- Audit trails maintained

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
