# Social Media Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for social media management. This agent schedules content, tracks engagement metrics, analyzes sentiment, and optimizes social media performance.

## What This Agent Does

The Social Media Agent is your automated social operations specialist. It ensures your brand has a strong social presence by managing content scheduling, tracking performance, and analyzing audience sentiment.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Content Scheduling** | Plan and schedule social posts |
| **Engagement Tracking** | Monitor likes, shares, comments |
| **Sentiment Analysis** | Analyze audience sentiment |
| **Performance Reporting** | Generate social media analytics |
| **Trend Identification** | Spot trending topics |

## How It Works

### 1. Content Scheduling Process

```
┌─────────────────────────────────────────────────────────────┐
│                 CONTENT SCHEDULING WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Scheduling Strategy:                                        │
│  - Optimal posting times                                     │
│  - Platform-specific content                                 │
│  - Content calendar integration                              │
│  - Campaign coordination                                     │
│  - Hashtag strategy                                          │
│                                                              │
│  Process:                                                  │
│  1. Review content calendar                                 │
│  2. Select content for scheduling                          │
│  3. Optimize for each platform                             │
│  4. Schedule at optimal times                              │
│  5. Monitor scheduled posts                                │
└─────────────────────────────────────────────────────────────┘
```

### 2. Engagement Tracking Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                ENGAGEMENT TRACKING WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Engagement Metrics:                                         │
│  - Likes and reactions                                       │
│  - Comments and replies                                      │
│  - Shares and retweets                                       │
│  - Saves and bookmarks                                       │
│  - Click-through rate                                        │
│                                                              │
│  Process:                                                  │
│  1. Pull engagement data from platforms                     │
│  2. Calculate engagement rates                              │
│  3. Compare to benchmarks                                   │
│  4. Identify top performing content                         │
│  5. Generate engagement report                               │
└─────────────────────────────────────────────────────────────┘
```

### 3. Sentiment Analysis Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 SENTIMENT ANALYSIS WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Sentiment Categories:                                       │
│  - Positive: Praise, recommendations                       │
│  - Neutral: General mentions                                │
│  - Negative: Complaints, issues                            │
│  - Questions: Inquiries needing response                    │
│                                                              │
│  Process:                                                  │
│  1. Collect mentions and comments                          │
│  2. Analyze sentiment using NLP                            │
│  3. Categorize by sentiment                                 │
│  4. Identify trending topics                               │
│  5. Alert on negative sentiment                            │
│  6. Generate sentiment report                               │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **content-scheduler** | Schedule social posts | Content planning |
| **engagement-tracker** | Track metrics | Performance analysis |
| **sentiment-analyzer** | Analyze sentiment | Brand monitoring |

### content-scheduler

Schedules social media content.

**When to use:**
- Content planning
- Campaign scheduling
- Calendar management

**Key functions:**
- Select content
- Optimize for platform
- Schedule posts

### engagement-tracker

Tracks engagement metrics.

**When to use:**
- Performance reporting
- Content analysis
- Campaign evaluation

**Key functions:**
- Pull metrics
- Calculate rates
- Generate reports

### sentiment-analyzer

Analyzes audience sentiment.

**When to use:**
- Brand monitoring
- Crisis detection
- Customer feedback

**Key functions:**
- Collect mentions
- Analyze sentiment
- Alert on issues

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `SOCIAL_API_KEY` | Social media API | Yes |
| `SCHEDULING_PLATFORM` | Scheduling tool | Yes |
| `ANALYTICS_API` | Analytics platform | Yes |

### Posting Cadence

| Platform | Posts/Week | Best Times |
|----------|------------|-----------|
| LinkedIn | 3-5 | Tue-Thu |
| Twitter | 5-10 | Daily |
| Instagram | 3-5 | Weekdays |
| Facebook | 3-5 | Weekdays |

## Identity

- **Name**: Social Media Agent
- **Emoji**: 📱
- **Color**: purple
- **Personality**: Creative, timely, analytical, audience-focused

## Integrations

### Supported Platforms

- LinkedIn
- Twitter/X
- Instagram
- Facebook
- TikTok

### Supported Scheduling Tools

- Hootsuite
- Buffer
- Sprout Social
- Later

## Success Metrics

This agent is successful when:

- [ ] Engagement rate >industry average
- [ ] Content scheduled on time
- [ ] Sentiment positive
- [ ] Response time <1 hour
- [ ] Growth targets met
- [ ] Campaign objectives achieved

## Directory Structure

```
social-media-agent/
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
        ├── content-scheduler/
        │   └── SKILL.md
        ├── engagement-tracker/
        │   └── SKILL.md
        └── sentiment-analyzer/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r social-media-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "social-media": {
           enabled: true,
           env: {
             SOCIAL_API_KEY: "your-social-api-key",
             SCHEDULING_PLATFORM: "your-scheduling-tool"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for social media management

## Security Notes

- This agent manages brand presence
- Social credentials secured
- Access limited to marketing
- Content approved before posting
- Audit trails maintained

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
