# Knowledge Base Curator Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for knowledge base management. This agent identifies content gaps, tracks documentation freshness, generates FAQs from support tickets, and improves overall knowledge base quality.

## What This Agent Does

The Knowledge Base Curator Agent is your automated documentation quality solution. It handles the entire knowledge management lifecycle—from gap detection to content freshness—ensuring your documentation remains accurate, complete, and findable.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Gap Detection** | Identify missing documentation topics |
| **Content Freshness** | Track document age and flag outdated content |
| **FAQ Generation** | Create FAQs from common support questions |
| **Content Suggestions** | Recommend improvements and updates |
| **Search Optimization** | Improve documentation findability |

## How It Works

### 1. Gap Detection Process

```
┌─────────────────────────────────────────────────────────────┐
│                    GAP DETECTION WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Detection Methods:                                          │
│  1. Analyze support tickets for unanswered questions       │
│  2. Review search queries with no results                   │
│  3. Check for broken links                                  │
│  4. Survey users for gaps                                   │
│  5. Review competitor documentation                         │
│  6. Prioritize gaps by impact and frequency                │
│  7. Generate gap reports with recommendations               │
└─────────────────────────────────────────────────────────────┘
```

### 2. Content Freshness Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                CONTENT FRESHNESS WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Freshness Tracking:                                         │
│  1. Track last modified date for all documents            │
│  2. Categorize by review cycle (quarterly/monthly)        │
│  3. Identify stale content (beyond review cycle)           │
│  4. Flag outdated technical screenshots                    │
│  5. Highlight deprecated features                          │
│  6. Generate freshness reports                              │
│  7. Recommend updates based on priority                     │
└─────────────────────────────────────────────────────────────┘
```

### 3. FAQ Generation Process

```
┌─────────────────────────────────────────────────────────────┐
│                    FAQ GENERATION WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  Generation Process:                                         │
│  1. Collect common support ticket questions                 │
│  2. Identify patterns and recurring topics                  │
│  3. Create FAQ entries with answers                         │
│  4. Link to related documentation                           │
│  5. Submit for editorial review                            │
│  6. Publish to knowledge base                               │
│  7. Track FAQ effectiveness                                 │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 4 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **gap-detector** | Identify missing documentation topics | Weekly gap analysis |
| **freshness-tracker** | Track documentation age and freshness | Content review cycles |
| **faq-generator** | Generate FAQs from support tickets | FAQ creation |
| **content-suggester** | Recommend content improvements | Content updates |

### gap-detector

Identifies missing documentation topics.

**When to use:**
- Weekly documentation reviews
- Support ticket analysis
- User feedback review
- Periodic gap assessments

**Key functions:**
- Support ticket analysis
- Search query review
- Broken link detection
- User survey collection
- Gap prioritization (Critical P0, High P1, Medium P2, Low P3)

### freshness-tracker

Tracks documentation freshness and age.

**When to use:**
- Content review cycles
- Quarterly reviews
- Annual audits

**Key functions:**
- Last modified date tracking
- Review cycle management
- Content staleness identification
- Update scheduling

### faq-generator

Generates FAQs from support tickets.

**When to use:**
- FAQ creation requests
- Support ticket pattern analysis
- Self-service improvement

**Key functions:**
- Common question identification
- Pattern recognition
- FAQ entry creation
- Related article linking

### content-suggester

Suggests content improvements and updates.

**When to use:**
- Content improvement reviews
- Documentation enhancement
- Quality assurance

**Key functions:**
- Rewrite suggestions for clarity
- Example additions
- Screenshot updates
- Section expansions
- Error corrections

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `KB_API_KEY` | API for knowledge base system | Yes |
| `SUPPORT_API_KEY` | API for support ticket system | Yes |
| `SEARCH_API_KEY` | API for search analytics | No |
| `ALERT_WEBHOOK` | Notification webhook | No |

### Review Schedule

| Frequency | Content Type |
|-----------|--------------|
| Quarterly | Core docs |
| Monthly | Popular articles |
| As needed | Release notes |

## Identity

- **Name**: Knowledge Base Curator
- **Emoji**: 📚
- **Color**: green
- **Personality**: Thorough, organized, clear, proactive

## Integrations

### Supported Knowledge Base Platforms

- Confluence
- GitBook
- Zendesk Guide
- Notion
- ReadMe
- Document360

### Supported Support Systems

- Zendesk
- Freshdesk
- Intercom
- Salesforce Service Cloud

## Success Metrics

This agent is successful when:

- [ ] All critical gaps identified and reported
- [ ] Content freshness maintained per schedule
- [ ] FAQs generated from top support questions
- [ ] Content suggestions improve documentation quality
- [ ] Zero broken links in knowledge base
- [ ] Documentation search success rate >80%

## Directory Structure

```
knowledge-base-curator-agent/
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
        ├── gap-detector/
        │   └── SKILL.md
        ├── freshness-tracker/
        │   └── SKILL.md
        ├── faq-generator/
        │   └── SKILL.md
        └── content-suggester/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r knowledge-base-curator-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "knowledge-base": {
           enabled: true,
           env: {
             KB_API_KEY: "your-kb-api-key",
             SUPPORT_API_KEY: "your-support-api-key"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for knowledge base tasks

## Security Notes

- Documentation access follows role-based permissions
- Draft content is protected until published
- User feedback is handled confidentially
- API access is secured via authentication
- Audit trails maintained for compliance

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
