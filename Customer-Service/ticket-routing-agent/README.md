# Ticket Routing Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for automated support ticket management. This agent triages incoming tickets, prioritizes based on urgency and impact, and routes to appropriate support teams while managing SLA compliance.

## What This Agent Does

The Ticket Routing Agent is your automated support operations solution. It handles the entire ticket lifecycle—from intake to assignment—ensuring every customer issue reaches the right team quickly.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Ticket Triaging** | Analyze and categorize incoming support tickets |
| **Priority Assignment** | Assess urgency and impact to assign priority levels |
| **Team Routing** | Route tickets to appropriate teams based on expertise |
| **SLA Management** | Monitor and enforce service level agreements |
| **Escalation** | Identify and escalate critical issues appropriately |

## How It Works

### 1. Ticket Triage Process

```
┌─────────────────────────────────────────────────────────────┐
│                    TICKET TRIAGE WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  1. Receive incoming ticket                                 │
│  2. Read and analyze ticket content                         │
│  3. Identify issue category (Bug, Feature, Billing, etc.)  │
│  4. Extract key information (customer, product, error)    │
│  5. Apply labels and tags                                   │
│  6. Route to appropriate team queue                         │
│  7. Acknowledge receipt to customer                         │
└─────────────────────────────────────────────────────────────┘
```

### 2. Priority Assignment Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 PRIORITY ASSIGNMENT WORKFLOW                  │
├─────────────────────────────────────────────────────────────┤
│  Priority Factors:                                           │
│  1. Customer tier (VIP, Enterprise, Standard)              │
│  2. Issue severity (System down, Feature broken, Minor)    │
│  3. Number of users affected                                │
│  4. Business impact assessment                              │
│  5. SLA requirements                                        │
│                                                              │
│  Priority Levels:                                           │
│  - P1 (Critical): System down, security breach, data loss  │
│  - P2 (High): Feature broken, significant impact            │
│  - P3 (Medium): Minor issue, workaround available           │
│  - P4 (Low): Feature request, how-to question              │
└─────────────────────────────────────────────────────────────┘
```

### 3. Team Routing Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                    TEAM ROUTING WORKFLOW                     │
├─────────────────────────────────────────────────────────────┤
│  1. Identify issue category from triage                    │
│  2. Look up team mapping for category                      │
│  3. Check current team workload                             │
│  4. Consider agent availability and expertise              │
│  5. Assign to optimal team member                           │
│  6. Send notification to team channel                      │
│  7. Update ticket status                                   │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **ticket-triage** | Analyze and categorize tickets | New tickets arriving, re-categorizing |
| **prioritizer** | Assign priority levels | New tickets, circumstances change |
| **team-assigner** | Route to support teams | After triage, during assignment |

### ticket-triage

Analyzes and categorizes incoming support tickets for efficient handling.

**When to use:**
- When new tickets arrive
- During triage review
- When re-categorizing tickets

**Key functions:**
- Read and analyze ticket content
- Identify issue category (Bug, Feature, Billing, Account, Technical)
- Extract key information
- Apply labels and tags
- Determine required team

### prioritizer

Assigns priority levels to support tickets based on urgency and impact.

**When to use:**
- New tickets arriving
- During triage
- When circumstances change

**Key functions:**
- Assess customer tier
- Evaluate issue severity
- Determine number affected
- Calculate business impact
- Apply SLA requirements

### team-assigner

Routes tickets to appropriate support teams based on issue type and expertise.

**When to use:**
- After triage
- When re-routing
- During assignment

**Key functions:**
- Map issue to team
- Check workload balance
- Assign to optimal agent
- Send notifications
- Track assignment status

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `TICKET_SYSTEM_API` | API key for ticketing system | Yes |
| `SLACK_WEBHOOK` | Webhook for team notifications | No |
| `ESCALATION_WEBHOOK` | Webhook for escalations | No |

### Approval Requirements

| Priority | Response SLA | Resolution Target |
|----------|--------------|-------------------|
| P1 Critical | 15 minutes | 4 hours |
| P2 High | 1 hour | 8 hours |
| P3 Medium | 4 hours | 24 hours |
| P4 Low | 24 hours | 72 hours |

## Identity

- **Name**: Ticket Routing Agent
- **Emoji**: 🎫
- **Color**: green
- **Personality**: Efficient, organized, analytical, customer-focused

## Integrations

### Supported Ticketing Systems

- Zendesk
- Freshdesk
- Jira Service Management
- ServiceNow
- HelpScout

### Supported Notification Systems

- Slack
- Microsoft Teams
- Email

## Success Metrics

This agent is successful when:

- [ ] All tickets triaged within 15 minutes
- [ ] Priority assignment accuracy >95%
- [ ] Routing accuracy >98%
- [ ] SLA compliance >99%
- [ ] Zero critical escalations missed
- [ ] Customer satisfaction maintained

## Directory Structure

```
ticket-routing-agent/
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
        ├── ticket-triage/
        │   └── SKILL.md
        ├── prioritizer/
        │   └── SKILL.md
        └── team-assigner/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r ticket-routing-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "ticket-routing": {
           enabled: true,
           env: {
             TICKET_SYSTEM_API: "your-ticketing-api-key",
             SLACK_WEBHOOK: "your-slack-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for ticket management tasks

## Security Notes

- This agent follows data classification policies
- All customer data is handled within workspace boundaries
- Ticket details are never shared with unauthorized parties
- Escalation workflows require proper authentication
- Audit trails maintained for all routing decisions

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
