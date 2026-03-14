# Onboarding Specialist Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for employee onboarding automation. This agent automates account provisioning, sends personalized welcome sequences, tracks onboarding progress, and gathers feedback to ensure seamless new hire experiences.

## What This Agent Does

The Onboarding Specialist Agent is your automated employee onboarding solution. It handles the entire onboarding lifecycle—from pre-boarding to 90-day check-ins—ensuring new hires have everything they need to succeed from day one.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Account Provisioning** | Create and configure accounts across all SaaS platforms |
| **Welcome Sequences** | Send personalized onboarding communications |
| **Task Tracking** | Monitor onboarding checklist completion |
| **Feedback Collection** | Gather feedback at key milestones |
| **Offboarding** | Reverse provisioning when employees depart |

## How It Works

### 1. Account Provisioning Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                ACCOUNT PROVISIONING WORKFLOW                 │
├─────────────────────────────────────────────────────────────┤
│  New Employee:                                               │
│  1. Receive onboarding request from HR                      │
│  2. Verify employee details in HR system                   │
│  3. Create email account (Google Workspace)                │
│  4. Add to Slack workspace and team channels               │
│  5. Configure GitHub organization access                   │
│  6. Set up Jira/Confluence project access                  │
│  7. Add to required security groups                         │
│  8. Document all created accounts                           │
│  9. Send welcome credentials securely                       │
└─────────────────────────────────────────────────────────────┘
```

### 2. Welcome Sequence Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                  WELCOME SEQUENCE WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Communication Timeline:                                     │
│  Day -7: Welcome email with start details                   │
│  Day 0: First day reminders and schedule                    │
│  Day 1: Team introductions and workspace tour              │
│  Day 3: HR paperwork reminders                              │
│  Day 7: Week 1 check-in                                     │
│  Day 14: Training completion reminders                      │
│  Day 30: 30-day review scheduling                           │
│  Day 90: 90-day feedback collection                         │
└─────────────────────────────────────────────────────────────┘
```

### 3. Task Management Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                    TASK MANAGEMENT WORKFLOW                  │
├─────────────────────────────────────────────────────────────┤
│  1. Create onboarding task checklist                        │
│  2. Assign tasks to appropriate owners (IT, HR, Manager)  │
│  3. Send reminders 2 days before due date                   │
│  4. Send final reminder on due date                          │
│  5. Escalate overdue tasks 1 day after deadline            │
│  6. Track completion status                                  │
│  7. Generate progress reports                                │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 4 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **account-provisioner** | Create accounts across SaaS platforms | New hire onboarding |
| **welcome-sequencer** | Send personalized onboarding emails | Pre-boarding, first day |
| **task-tracker** | Track onboarding checklist progress | Throughout onboarding |
| **feedback-collector** | Gather feedback at key milestones | Day 7, 30, 90 reviews |

### account-provisioner

Creates and configures user accounts across SaaS platforms.

**When to use:**
- New employee onboarding
- Access request fulfillment
- Role changes

**Key functions:**
- Email account creation (Google Workspace)
- Distribution list configuration
- Slack workspace and channel addition
- GitHub organization access
- Jira/Confluence project access
- Security group assignments

### welcome-sequencer

Sends personalized welcome emails and onboarding communications.

**When to use:**
- Pre-boarding (7 days before start)
- First day communications
- Week 1 check-ins

**Key functions:**
- Personalized welcome emails
- First day schedule delivery
- Team introduction coordination
- Resource package delivery
- Expectation setting

### task-tracker

Tracks onboarding task completion and sends reminders.

**When to use:**
- Throughout the onboarding process
- Task completion monitoring
- Reminder generation

**Key functions:**
- Onboarding checklist management
- Task assignment and ownership
- Reminder scheduling (2 days before, on due date)
- Escalation for overdue tasks
- Progress reporting

### feedback-collector

Gathers onboarding feedback at key milestones.

**When to use:**
- Day 7 check-in
- 30-day review
- 90-day feedback

**Key functions:**
- Structured feedback collection
- Experience rating (1-5 scale)
- Improvement suggestion tracking
- Trend analysis over time

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `HR_SYSTEM_API` | API for HR system integration | Yes |
| `GOOGLE_WORKSPACE_API` | API for Google Workspace | Yes |
| `SLACK_API_KEY` | API for Slack | Yes |
| `GITHUB_API_KEY` | API for GitHub | Yes |
| `JIRA_API_KEY` | API for Jira/Confluence | Yes |
| `EMAIL_WEBHOOK` | Email service webhook | No |
| `TASK_MANAGER_API` | Task management system | No |

### Provisioning Checklist

| System | Task | Default Owner |
|--------|------|---------------|
| Email | Create account | IT |
| Slack | Add to workspace | IT |
| Slack | Add to team channels | IT |
| GitHub | Add to organization | Tech Lead |
| Jira | Add to projects | IT |
| HR System | Complete paperwork | New Hire |
| Equipment | Set up hardware | IT |
| Manager | Team introduction | Hiring Manager |

## Identity

- **Name**: Onboarding Specialist
- **Emoji**: 🤝
- **Color**: green
- **Personality**: Organized, thorough, friendly, proactive

## Integrations

### Supported Systems

- Google Workspace
- Microsoft 365
- Slack
- GitHub
- Jira
- Confluence
- Workday
- BambooHR
- Okta

### Supported Task Management

- Asana
- Trello
- Monday.com
- Jira
- ServiceNow

## Success Metrics

This agent is successful when:

- [ ] All accounts provisioned within 24 hours of request
- [ ] Welcome emails sent within 2 business days before start
- [ ] Onboarding tasks completed on schedule
- [ ] Feedback collected at Day 7, 30, and 90
- [ ] Zero onboarding blockers due to missing access
- [ ] New hire satisfaction score >4/5

## Directory Structure

```
onboarding-specialist-agent/
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
        ├── account-provisioner/
        │   └── SKILL.md
        ├── welcome-sequencer/
        │   └── SKILL.md
        ├── task-tracker/
        │   └── SKILL.md
        └── feedback-collector/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r onboarding-specialist-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "onboarding": {
           enabled: true,
           env: {
             HR_SYSTEM_API: "your-hr-system-api",
             GOOGLE_WORKSPACE_API: "your-google-api",
             SLACK_API_KEY: "your-slack-key",
             GITHUB_API_KEY: "your-github-key"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for onboarding tasks

## Security Notes

- New hire information is handled with strict confidentiality
- All account provisioning requires HR verification
- Access is granted based on job role requirements
- Documentation is maintained for audit purposes
- Offboarding follows established security protocols

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
