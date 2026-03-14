# Accounts Receivable Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for accounts receivable management. This agent tracks outstanding invoices, manages dunning sequences, sends payment follow-ups, and coordinates collections while maintaining positive customer relationships.

## What This Agent Does

The Accounts Receivable Agent is your automated collections specialist. It balances maintaining customer relationships with ensuring timely payment through professional dunning sequences, proactive follow-ups, and strategic collections coordination.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Collections Tracking** | Monitor and manage overdue account status |
| **Payment Follow-up** | Send reminders and track payment promises |
| **Dunning Management** | Execute staged dunning sequences |
| **Aging Analysis** | Generate aging reports by bucket |
| **Collections Coordination** | Work with collection agencies when needed |

## How It Works

### 1. Collections Tracking Process

```
┌─────────────────────────────────────────────────────────────┐
│                COLLECTIONS TRACKING WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Aging Buckets:                                            │
│  - Current: 0-30 days                                      │
│  - Past Due: 31-60 days                                   │
│  - Overdue: 61-90 days                                     │
│  - Critical: 90+ days                                      │
│                                                              │
│  Process:                                                  │
│  1. Pull accounts receivable aging                         │
│  2. Categorize by aging bucket                            │
│  3. Track collection activities                           │
│  4. Identify high-risk accounts                           │
│  5. Generate collection reports                           │
└─────────────────────────────────────────────────────────────┘
```

### 2. Payment Follow-up Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                PAYMENT FOLLOW-UP WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Follow-up Triggers:                                        │
│  - Invoice due date                                        │
│  - Payment promise date                                    │
│  - Customer inquiry received                                │
│                                                              │
│  Process:                                                  │
│  1. Identify accounts needing follow-up                    │
│  2. Select appropriate communication method               │
│  3. Draft reminder message                                │
│  4. Send via email/phone                                 │
│  5. Document response                                     │
│  6. Track promised payments                               │
│  7. Escalate broken promises                             │
└─────────────────────────────────────────────────────────────┘
```

### 3. Dunning Management Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 DUNNING MANAGEMENT WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Dunning Stages:                                           │
│  Stage 1 (1-15 days): Friendly reminder                    │
│  Stage 2 (16-30 days): Urgent payment request              │
│  Stage 3 (31-45 days): Final notice                        │
│  Stage 4 (45+ days): Collections escalation                │
│                                                              │
│  Process:                                                  │
│  1. Check aging daily                                     │
│  2. Execute dunning letter sequence                       │
│  3. Customize by customer history                         │
│  4. Track effectiveness                                   │
│  5. Escalate non-responsive accounts                     │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **collections-tracker** | Monitor collection status | Daily aging review |
| **payment-followup** | Send reminders, track promises | Due dates, overdue |
| **dunning-manager** | Execute dunning sequences | Aging progression |

### collections-tracker

Tracks and manages collections status across aging buckets.

**When to use:**
- Daily aging review
- Collections reporting
- High-risk account identification

**Key functions:**
- Monitor accounts by aging bucket
- Track collection activities
- Identify high-risk accounts
- Coordinate with collection agencies
- Generate collection reports

### payment-followup

Sends payment follow-up communications and tracks promises.

**When to use:**
- Overdue invoice reminders
- Payment promise tracking
- Customer inquiry follow-up

**Key functions:**
- Send payment reminders
- Track promised payments
- Document customer communications
- Escalate broken promises

### dunning-manager

Manages dunning sequences and communications.

**When to use:**
- Staged dunning execution
- Dunning effectiveness tracking
- Collections escalation

**Key functions:**
- Execute dunning letter sequences
- Customize communications by aging
- Track dunning effectiveness
- Escalate when needed

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `ERP_API_KEY` | API key for ERP system | Yes |
| `DUNNING_WEBHOOK` | Webhook for dunning notifications | No |
| `COLLECTION_AGENCY_API` | API for collection agency integration | No |

### Dunning Settings

| Aging Stage | Days Overdue | Action |
|-------------|--------------|--------|
| Stage 1 | 1-15 | Friendly reminder |
| Stage 2 | 16-30 | Urgent request |
| Stage 3 | 31-45 | Final notice |
| Stage 4 | 45+ | Collections escalation |

## Identity

- **Name**: Accounts Receivable Agent
- **Emoji**: 💵
- **Color**: green
- **Personality**: Persistent, professional, customer-focused, firm but fair

## Integrations

### Supported ERP Systems

- SAP
- Oracle
- NetSuite
- QuickBooks
- Microsoft Dynamics

### Supported Communication Channels

- Email
- SMS
- Phone (with dialer integration)
- Customer portal

## Success Metrics

This agent is successful when:

- [ ] DSO (Days Sales Outstanding) reduced
- [ ] Collection rate >95%
- [ ] Bad debt <2%
- [ ] Customer satisfaction maintained
- [ ] Dunning effectiveness >80%
- [ ] Follow-up response rate >60%

## Directory Structure

```
accounts-receivable-agent/
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
        ├── collections-tracker/
        │   └── SKILL.md
        ├── payment-followup/
        │   └── SKILL.md
        └── dunning-manager/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r accounts-receivable-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "accounts-receivable": {
           enabled: true,
           env: {
             ERP_API_KEY: "your-erp-api-key",
             DUNNING_WEBHOOK: "your-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for accounts receivable operations

## Security Notes

- This agent maintains customer confidentiality
- Collections follow legal requirements
- No threatening language in communications
- Escalation paths defined for disputes
- Payment data is encrypted
- PCI compliance for payment processing

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
