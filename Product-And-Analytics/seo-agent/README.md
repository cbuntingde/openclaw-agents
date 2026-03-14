# SEO Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for search engine optimization. This agent tracks keyword rankings, optimizes content for search, monitors SEO performance, and provides actionable recommendations.

## What This Agent Does

The SEO Agent is your automated search optimization specialist. It ensures your content ranks well in search engines by tracking keywords, analyzing content, monitoring rankings, and providing optimization recommendations.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Keyword Tracking** | Monitor keyword rankings over time |
| **Content Optimization** | Analyze and recommend content improvements |
| **Ranking Monitoring** | Track search engine rankings |
| **Technical SEO** | Identify technical SEO issues |
| **Competitor Analysis** | Compare against competitors |

## How It Works

### 1. Keyword Tracking Process

```
┌─────────────────────────────────────────────────────────────┐
│                  KEYWORD TRACKING WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Tracking Metrics:                                           │
│  - Current ranking position                                  │
│  - Ranking changes over time                                 │
│  - Search volume                                             │
│  - Keyword difficulty                                        │
│  - SERP features                                             │
│                                                              │
│  Process:                                                  │
│  1. Define keyword set to track                             │
│  2. Query search engine rankings                            │
│  3. Record current positions                                │
│  4. Calculate changes                                       │
│  5. Generate tracking report                               │
│  6. Alert on significant changes                           │
└─────────────────────────────────────────────────────────────┘
```

### 2. Content Optimization Workflow

```
┌─────────────────────────────────────────────────────────────┐
│               CONTENT OPTIMIZATION WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Optimization Areas:                                         │
│  - Title tag optimization                                    │
│  - Meta description                                          │
│  - Heading structure                                         │
│  - Keyword usage                                             │
│  - Internal linking                                          │
│  - Content quality                                           │
│                                                              │
│  Process:                                                  │
│  1. Analyze target page content                            │
│  2. Compare to SEO best practices                          │
│  3. Identify optimization opportunities                    │
│  4. Prioritize recommendations                             │
│  5. Generate optimization guide                            │
└─────────────────────────────────────────────────────────────┘
```

### 3. Ranking Monitoring Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                 RANKING MONITORING WORKFLOW                       │
├─────────────────────────────────────────────────────────────┤
│  Monitoring Scope:                                           │
│  - Organic rankings                                          │
│  - Local rankings                                            │
│  - Image rankings                                            │
│  - Video rankings                                            │
│  - Featured snippets                                         │
│                                                              │
│  Process:                                                  │
│  1. Check current rankings                                  │
│  2. Compare to baseline                                    │
│  3. Identify trends                                        │
│  4. Correlate with changes                                  │
│  5. Generate insights                                       │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **keyword-tracker** | Track keyword rankings | Ongoing monitoring |
| **content-optimizer** | Optimize content | Content updates |
| **ranking-monitor** | Monitor rankings | Performance tracking |

### keyword-tracker

Monitors keyword rankings.

**When to use:**
- Ongoing tracking
- Campaign analysis
- Performance reporting

**Key functions:**
- Track positions
- Calculate changes
- Generate reports

### content-optimizer

Analyzes and optimizes content.

**When to use:**
- Content updates
- New page creation
- SEO audits

**Key functions:**
- Analyze content
- Identify issues
- Recommend improvements

### ranking-monitors

Monitors search engine rankings.

**When to use:**
- Performance tracking
- Competitor comparison
- SERP analysis

**Key functions:**
- Check rankings
- Identify trends
- Generate insights

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `SEO_API_KEY` | SEO platform API | Yes |
| `SEARCH_CONSOLE_API` | Google Search Console | Yes |
| `RANKING_API` | Ranking tracking API | Yes |

### Tracking Cadence

| Metric | Frequency |
|--------|-----------|
| Rankings | Daily |
| Technical SEO | Weekly |
| Content | On publish |
| Competitors | Weekly |

## Identity

- **Name**: SEO Agent
- **Emoji**: 🔍
- **Color**: green
- **Personality**: Analytical, methodical, patient, ethical

## Integrations

### Supported Platforms

- Google Search Console
- Ahrefs
- SEMrush
- Moz
- Screaming Frog

### Supported CMS

- WordPress
- Contentful
- Sanity
- Custom CMS

## Success Metrics

This agent is successful when:

- [ ] Keyword rankings improved
- [ ] Organic traffic increased
- [ ] Technical issues resolved
- [ ] Content optimized
- [ ] Competitor gaps identified
- [ ] ROI demonstrated

## Directory Structure

```
seo-agent/
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
        ├── keyword-tracker/
        │   └── SKILL.md
        ├── content-optimizer/
        │   └── SKILL.md
        └── ranking-monitor/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r seo-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "seo": {
           enabled: true,
           env: {
             SEO_API_KEY: "your-seo-api-key",
             SEARCH_CONSOLE_API: "your-sc-api"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for SEO optimization

## Security Notes

- This agent handles search data
- Keyword data is confidential
- Access limited to marketing
- Ranking data protected
- Audit trails maintained

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
