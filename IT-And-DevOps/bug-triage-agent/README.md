# Bug Triage Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for bug triage and issue management. This agent categorizes bugs, assigns severity levels, and routes issues to appropriate development teams for efficient resolution.

## What This Agent Does

The Bug Triage Agent is your automated QA operations specialist. It ensures every bug report is properly categorized, prioritized, and assigned to the right team—accelerating time to resolution while maintaining clear visibility into issue status.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Bug Categorization** | Classify bugs by type, component, and affected area |
| **Severity Assignment** | Determine impact and urgency levels |
| **Team Routing** | Route bugs to appropriate development teams |
| **Duplicate Detection** | Identify duplicate bug reports |
| **Priority Management** | Manage backlog priority |

## How It Works

### 1. Bug Categorization Process

```
┌─────────────────────────────────────────────────────────────┐
│                 BUG CATEGORIZATION WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Categories:                                                │
│  - Type: Crash, UI, Logic, Performance, Security             │
│  - Component: Frontend, Backend, Database, API               │
│  - Platform: Web, Mobile, Desktop, API                       │
│  - Environment: Production, Staging, Dev                    │
│                                                              │
│  Process:                                                  │
│  1. Parse bug report                                        │
│  2. Extract error messages and logs                         │
│  3. Identify affected components                            │
│  4. Apply category labels                                   │
│  5. Add to tracking system                                  │
└─────────────────────────────────────────────────────────────┘
```

### 2. Severity Assignment Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                SEVERITY ASSIGNMENT WORKFLOW                     │
├─────────────────────────────────────────────────────────────┤
│  Severity Levels:                                           │
│  - S1 Critical: Data loss, security breach, system down     │
│  - S2 High: Feature broken, significant user impact        │
│  - S3 Medium: Workaround available, minor impact            │
│  - S4 Low: Cosmetic, enhancement, minor inconvenience       │
│                                                              │
│  Factors:                                                  │
│  - User impact extent                                      │
│  - Reproducibility                                         │
│  - Workaround availability                                 │
│  - Business criticality                                     │
└─────────────────────────────────────────────────────────────┘
```

### 3. Team Routing Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                    TEAM ROUTING WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Routing Criteria:                                          │
│  - Component ownership                                      │
│  - Team specialization                                      │
│  - Current workload                                         │
│  - Sprint capacity                                          │
│                                                              │
│  Process:                                                  │
│  1. Determine affected component                           │
│  2. Identify owning team                                   │
│  3. Check team capacity                                    │
│  4. Assign to appropriate engineer                        │
│  5. Update issue status                                    │
│  6. Notify team                                            │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **bug-categorizer** | Classify bugs by type | New bug reports |
| **severity-assigner** | Assign severity levels | Bug prioritization |
| **team-routing** | Route to teams | Assignment |

### bug-categorizer

Categorizes bugs by type, component, and platform.

**When to use:**
- New bug received
- Re-categorization needed
- Backlog cleanup

**Key functions:**
- Parse report content
- Identify components
- Apply labels

### severity-assigner

Assigns severity levels based on impact.

**When to use:**
- New bug triage
- Impact change
- Prioritization review

**Key functions:**
- Assess impact
- Determine severity
- Apply priority

### team-routes

Routes bugs to appropriate teams.

**When to use:**
- Assignment
- Workload balancing
- Team changes

**Key functions:**
- Match to team
- Check capacity
- Execute assignment

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `JIRA_API_KEY` | API for issue tracker | Yes |
| `SLACK_WEBHOOK` | Webhook for notifications | Yes |
| `REPO_INTEGRATION` | GitHub/GitLab API | No |

### Severity SLAs

| Severity | Response Time | Resolution Target |
|----------|--------------|-------------------|
| S1 Critical | 15 minutes | 24 hours |
| S2 High | 4 hours | 1 week |
| S3 Medium | 24 hours | 2 weeks |
| S4 Low | 1 week | Backlog |

## Identity

- **Name**: Bug Triage Agent
- **Emoji**: 🐛
- **Color**: red
- **Personality**: Efficient, systematic, analytical, technical

## Integrations

### Supported Issue Trackers

- Jira
- GitHub Issues
- Linear
- Asana
- YouTrack

### Supported Platforms

- GitHub
- GitLab
- Bitbucket

## Success Metrics

This agent is successful when:

- [ ] Triage time <30 minutes
- [ ] Categorization accuracy >90%
- [ ] Routing accuracy >95%
- [ ] Duplicate detection >80%
- [ ] SLA compliance >95%
- [ ] Team satisfaction >4/5

## Directory Structure

```
bug-triage-agent/
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
        ├── bug-categorizer/
        │   └── SKILL.md
        ├── severity-assigner/
        │   └── SKILL.md
        └── team-routing/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r bug-triage-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "bug-triage": {
           enabled: true,
           env: {
             JIRA_API_KEY: "your-jira-api-key",
             SLACK_WEBHOOK: "your-slack-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for bug triage

## Security Notes

- This agent respects access controls
- Sensitive data is redacted
- Only authorized personnel can modify
- Audit trails maintained
- PII in bug reports is protected

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
