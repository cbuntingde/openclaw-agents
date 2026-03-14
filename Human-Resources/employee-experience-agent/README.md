# Employee Experience Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for employee experience management. This agent monitors employee sentiment, manages recognition programs, handles employee requests, and helps maintain a positive workplace culture.

## What This Agent Does

The Employee Experience Agent is your automated people operations specialist. It ensures employees feel heard, recognized, and supported by tracking sentiment, facilitating recognition, and managing routine employee requests efficiently.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Sentiment Monitoring** | Track employee sentiment across channels |
| **Recognition Management** | Facilitate peer and manager recognition |
| **Request Handling** | Process employee service requests |
| **Survey Analysis** | Analyze employee survey results |
| **Trend Identification** | Identify patterns in employee feedback |

## How It Works

### 1. Sentiment Monitoring Process

```
┌─────────────────────────────────────────────────────────────┐
│                SENTIMENT MONITORING WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Monitoring Channels:                                        │
│  - Employee surveys                                        │
│  - Pulse polls                                             │
│  - Feedback forms                                           │
│  - Slack/Teams sentiment                                   │
│  - Exit interview analysis                                  │
│                                                              │
│  Process:                                                  │
│  1. Collect feedback from all channels                     │
│  2. Analyze sentiment                                      │
│  3. Identify themes                                       │
│  4. Track trends over time                                │
│  5. Alert on negative sentiment                           │
│  6. Generate insights                                     │
└─────────────────────────────────────────────────────────────┘
```

### 2. Recognition Management Workflow

```
┌─────────────────────────────────────────────────────────────┐
│               RECOGNITION MANAGEMENT WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  Recognition Types:                                         │
│  - Peer recognition                                        │
│  - Manager recognition                                     │
│  - Work anniversary                                        │
│  - Performance milestones                                  │
│  - Team achievements                                       │
│                                                              │
│  Process:                                                  │
│  1. Receive recognition submission                        │
│  2. Validate content appropriateness                      │
│  3. Process recognition                                   │
│  4. Notify recipient                                       │
│  5. Update recognition feed                                │
│  6. Track recognition metrics                             │
└─────────────────────────────────────────────────────────────┘
```

### 3. Request Handling Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                  REQUEST HANDLING WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Request Types:                                             │
│  - IT equipment requests                                    │
│  - Time-off requests                                        │
│  - Policy questions                                         │
│  - Facilities requests                                      │
│  - General inquiries                                        │
│                                                              │
│  Process:                                                  │
│  1. Receive employee request                               │
│  2. Categorize request                                     │
│  3. Route to appropriate team                             │
│  4. Track resolution                                       │
│  5. Confirm completion                                     │
│  6. Gather feedback                                        │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **sentiment-monitor** | Track employee sentiment | Regular pulse checks |
| **recognition-manager** | Facilitate recognition | Peer awards, milestones |
| **request-handler** | Process employee requests | IT, facilities, HR requests |

### sentiment-monitor

Monitors and analyzes employee sentiment.

**When to use:**
- Regular sentiment tracking
- Post-change surveys
- Climate assessments

**Key functions:**
- Collect feedback
- Analyze sentiment
- Identify themes
- Track trends
- Generate alerts

### recognition-manager

Manages employee recognition programs.

**When to use:**
- Peer recognition
- Work anniversaries
- Performance awards

**Key functions:**
- Process submissions
- Validate content
- Notify recipients
- Track metrics

### request-handler

Handles employee service requests.

**When to use:**
- IT requests
- Facilities issues
- HR inquiries

**Key functions:**
- Receive requests
- Categorize
- Route appropriately
- Track resolution

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `HRIS_API_KEY` | API for HRIS system | Yes |
| `SURVEY_PLATFORM_API` | API for survey platform | Yes |
| `SLACK_WEBHOOK` | Webhook for notifications | No |

### Response Times

| Request Type | Target Response | Resolution Target |
|-------------|-----------------|-------------------|
| Urgent | 1 hour | 4 hours |
| Standard | 4 hours | 24 hours |
| General | 24 hours | 72 hours |

## Identity

- **Name**: Employee Experience Agent
- **Emoji**: 👋
- **Color**: purple
- **Personality**: Warm, supportive, attentive, culture-focused

## Integrations

### Supported Platforms

- HRIS systems
- Survey platforms
- Slack/Teams
- Recognition platforms
- ServiceNow

## Success Metrics

This agent is successful when:

- [ ] Sentiment tracking coverage >90%
- [ ] Request resolution time met
- [ ] Employee satisfaction improved
- [ ] Recognition participation >50%
- [ ] Trends identified early
- [ ] Culture initiatives supported

## Directory Structure

```
employee-experience-agent/
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
        ├── sentiment-monitor/
        │   └── SKILL.md
        ├── recognition-manager/
        │   └── SKILL.md
        └── request-handler/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r employee-experience-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "employee-experience": {
           enabled: true,
           env: {
             HRIS_API_KEY: "your-hris-api-key",
             SURVEY_PLATFORM_API: "your-survey-api"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for employee experience

## Security Notes

- This agent protects employee privacy
- Feedback is anonymous where appropriate
- Recognition content is moderated
- Request data is confidential
- Access controls enforced

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
