# Lead Qualification Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for sales development and lead qualification. This agent qualifies leads using BANT criteria, enriches data from multiple sources, and routes qualified leads to the appropriate sales representatives.

## What This Agent Does

The Lead Qualification Agent is your automated sales development specialist. It ensures sales reps focus only on leads that are ready to buy by qualifying prospects, enriching their profiles, and routing them at the right time.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Lead Qualification** | Assess leads using BANT criteria (Budget, Authority, Need, Timeline) |
| **Data Enrichment** | Enhance lead profiles with firmographic and technographic data |
| **Lead Routing** | Route qualified leads to appropriate sales reps |
| **Lead Scoring** | Score leads based on readiness to buy |
| **Nurture Coordination** | Identify leads that need further nurturing |

## How It Works

### 1. Lead Qualification Process

```
┌─────────────────────────────────────────────────────────────┐
│                LEAD QUALIFICATION WORKFLOW                     │
├─────────────────────────────────────────────────────────────┤
│  BANT Criteria:                                            │
│  - Budget: Does prospect have budget authority?           │
│  - Authority: Is this person a decision maker?            │
│  - Need: Is there a genuine business need?                │
│  - Timeline: What's the purchase timeline?                │
│                                                              │
│  Process:                                                  │
│  1. Review lead profile and source                         │
│  2. Assess budget fit and authority level                  │
│  3. Validate pain points and need                          │
│  4. Determine timeline and urgency                         │
│  5. Assign qualification status                            │
└─────────────────────────────────────────────────────────────┘
```

### 2. Data Enrichment Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 DATA ENRICHMENT WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Enrichment Sources:                                        │
│  - Company data (size, industry, revenue)                   │
│  - Contact data (title, LinkedIn, email)                    │
│  - Technographic data (tech stack, tools used)            │
│  - Intent data (content consumption, website visits)       │
│  - News and funding information                             │
│                                                              │
│  Process:                                                  │
│  1. Query enrichment providers                             │
│  2. Merge data with existing lead profile                  │
│  3. Flag data quality issues                               │
│  4. Update CRM record                                      │
└─────────────────────────────────────────────────────────────┘
```

### 3. Lead Routing Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                   LEAD ROUTING WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Routing Criteria:                                           │
│  - Territory assignment                                      │
│  - Industry specialization                                   │
│  - Company size match                                        │
│  - Rep availability and capacity                             │
│                                                              │
│  Process:                                                  │
│  1. Identify qualified leads                                │
│  2. Match to territory/industry                            │
│  3. Check rep capacity                                      │
│  4. Assign to best-fit rep                                  │
│  5. Send notification                                      │
│  6. Update CRM with assignment                              │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **lead-qualifier** | Assess leads using BANT | New leads, re-qualification |
| **data-enricher** | Enhance lead profiles | Qualification, routing |
| **lead-router** | Route to sales reps | Qualified leads, territory assignment |

### lead-qualifier

Qualifies leads using BANT criteria and lead scoring models.

**When to use:**
- New lead received
- Lead status review
- Re-qualification needed
- Qualification audit

**Key functions:**
- Assess budget fit
- Verify decision authority
- Validate business need
- Determine timeline
- Calculate lead score
- Assign qualification status

### data-enricher

Enriches lead data with firmographic, technographic, and intent information.

**When to use:**
- Before qualification
- Before routing
- Periodic enrichment updates

**Key functions:**
- Pull company data
- Find contact information
- Identify tech stack
- Gather intent signals
- Merge with CRM

### lead-router

Routes qualified leads to appropriate sales reps based on territory and specialization.

**When to use:**
- Lead qualified
- Territory rebalancing
- Rep capacity changes

**Key functions:**
- Match to territory
- Apply industry rules
- Check rep capacity
- Execute assignment
- Send notifications

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `CRM_API_KEY` | API key for CRM system | Yes |
| `ENRICHMENT_API` | API for data enrichment | Yes |
| `ROUTING_WEBHOOK` | Webhook for routing notifications | No |

### Qualification Thresholds

| Score Range | Status | Action |
|-------------|--------|--------|
| 80-100 | Hot | Immediate routing |
| 60-79 | Warm | Nurture + routing |
| 40-59 | Cold | Nurture campaign |
| 0-39 | Unqualified | Remove from active |

## Identity

- **Name**: Lead Qualification Agent
- **Emoji**: ✅
- **Color**: green
- **Personality**: Strategic, data-driven, efficient, sales-oriented

## Integrations

### Supported CRM Systems

- Salesforce
- HubSpot
- Microsoft Dynamics
- Pipedrive
- Zoho CRM

### Supported Enrichment Providers

- Clearbit
- ZoomInfo
- Apollo
- LinkedIn Sales Navigator

## Success Metrics

This agent is successful when:

- [ ] Qualification completed within 4 hours
- [ ] Lead score accuracy >85%
- [ ] Routing accuracy >95%
- [ ] Data enrichment >90% success rate
- [ ] Sales rep acceptance >90%
- [ ] Conversion rate improvement >20%

## Directory Structure

```
lead-qualification-agent/
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
        ├── lead-qualifier/
        │   └── SKILL.md
        ├── data-enricher/
        │   └── SKILL.md
        └── lead-router/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r lead-qualification-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "lead-qualification": {
           enabled: true,
           env: {
             CRM_API_KEY: "your-crm-api-key",
             ENRICHMENT_API: "your-enrichment-api",
             ROUTING_WEBHOOK: "your-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for lead qualification tasks

## Security Notes

- This agent handles PII with strict confidentiality
- Lead data is never shared between competitors
- Enrichment data sources are vetted
- CRM access follows least-privilege
- Audit trail maintained for all routing decisions

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
