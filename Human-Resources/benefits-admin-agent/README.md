# Benefits Admin Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for benefits administration. This agent handles employee benefits questions, processes enrollment, tracks compliance requirements, and manages benefits communications.

## What This Agent Does

The Benefits Admin Agent is your automated HR benefits specialist. It ensures employees understand their benefits, enrollment is processed accurately, and the organization meets regulatory compliance requirements.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Benefits Q&A** | Answer employee questions about benefits |
| **Enrollment Processing** | Handle benefits enrollment and changes |
| **Compliance Tracking** | Monitor regulatory compliance |
| **Communications** | Send benefits information to employees |
| **Plan Comparisons** | Help employees choose appropriate plans |

## How It Works

### 1. Benefits Q&A Process

```
┌─────────────────────────────────────────────────────────────┐
│                  BENEFITS Q&A WORKFLOW                        │
├─────────────────────────────────────────────────────────────┤
│  Topics Covered:                                           │
│  - Health insurance (medical, dental, vision)               │
│  - 401(k) and retirement plans                             │
│  - Life insurance and disability                           │
│  - FSA/HSA accounts                                        │
│  - Employee assistance programs                            │
│  - Benefits eligibility                                    │
│                                                              │
│  Process:                                                  │
│  1. Receive employee question                              │
│  2. Identify benefits topic                                │
│  3. Look up plan details                                   │
│  4. Formulate answer                                       │
│  5. Provide comprehensive response                         │
│  6. Document interaction                                   │
└─────────────────────────────────────────────────────────────┘
```

### 2. Enrollment Processing Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                ENROLLMENT PROCESSING WORKFLOW                  │
├─────────────────────────────────────────────────────────────┤
│  Enrollment Types:                                          │
│  - New hire enrollment                                      │
│  - Open enrollment                                         │
│  - Life event changes                                      │
│  - Annual re-enrollment                                    │
│                                                              │
│  Process:                                                  │
│  1. Receive enrollment request                             │
│  2. Verify eligibility                                    │
│  3. Present plan options                                   │
│  4. Collect selections                                     │
│  5. Validate elections                                     │
│  6. Process in benefits system                            │
│  7. Confirm enrollment to employee                         │
└─────────────────────────────────────────────────────────────┘
```

### 3. Compliance Tracking Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                COMPLIANCE TRACKING WORKFLOW                     │
├─────────────────────────────────────────────────────────────┤
│  Compliance Areas:                                          │
│  - ACA (Affordable Care Act)                               │
│  - ERISA compliance                                        │
│  - COBRA notifications                                     │
│  - HIPAA requirements                                      │
│  - Form 5500 filings                                       │
│  - State-specific mandates                                 │
│                                                              │
│  Process:                                                  │
│  1. Identify compliance requirements                       │
│  2. Track enrollment status                                │
│  3. Generate compliance reports                            │
│  4. Flag issues for resolution                            │
│  5. Document compliance activities                         │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **benefits-questions** | Answer employee questions | Employee inquiries |
| **enrollment-processor** | Process enrollment requests | New hires, open enrollment |
| **compliance-tracker** | Monitor compliance | Reporting, audits |

### benefits-questions

Answers employee questions about benefits.

**When to use:**
- Employee benefit inquiries
- Plan comparison questions
- Eligibility questions

**Key functions:**
- Identify question topic
- Look up plan details
- Provide accurate answers
- Offer guidance

### enrollment-processor

Processes benefits enrollment requests.

**When to use:**
- New hire enrollment
- Open enrollment
- Life event changes

**Key functions:**
- Verify eligibility
- Present options
- Collect elections
- Validate choices
- Process enrollment

### compliance-tracker

Monitors and tracks benefits compliance.

**When to use:**
- Compliance reporting
- Audit preparation
- Regulatory filings

**Key functions:**
- Track requirements
- Generate reports
- Flag issues
- Document compliance

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `HRIS_API_KEY` | API for HRIS system | Yes |
| `BENEFITS_SYSTEM_API` | API for benefits platform | Yes |
| `COMPLIANCE_WEBHOOK` | Webhook for alerts | No |

### Enrollment Periods

| Period | Timing | Duration |
|--------|--------|----------|
| New Hire | Within 30 days of hire | 30 days |
| Open Enrollment | Annual | 2-4 weeks |
| Life Events | Within 30 days of event | 30 days |

## Identity

- **Name**: Benefits Admin Agent
- **Emoji**: 🏥
- **Color**: blue
- **Personality**: Knowledgeable, helpful, patient, discrete

## Integrations

### Supported HRIS Systems

- Workday
- BambooHR
- ADP
- Paycom
- Gusto

### Supported Benefits Platforms

- Benefits administration platforms
- Insurance carrier systems
- 401(k) recordkeepers

## Success Metrics

This agent is successful when:

- [ ] Questions answered within 24 hours
- [ ] Enrollment processing <2 days
- [ ] Compliance rate >99%
- [ ] Employee satisfaction >4/5
- [ ] Zero compliance penalties
- [ ] Accurate benefits records

## Directory Structure

```
benefits-admin-agent/
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
        ├── benefits-questions/
        │   └── SKILL.md
        ├── enrollment-processor/
        │   └── SKILL.md
        └── compliance-tracker/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r benefits-admin-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "benefits-admin": {
           enabled: true,
           env: {
             HRIS_API_KEY: "your-hris-api-key",
             BENEFITS_SYSTEM_API: "your-benefits-api"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for benefits administration

## Security Notes

- This agent handles sensitive health information
- HIPAA compliance enforced
- Employee data is confidential
- Access restricted to HR personnel
- Audit trails maintained

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
