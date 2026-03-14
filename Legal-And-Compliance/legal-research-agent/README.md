# Legal Research Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for legal research and analysis. This agent provides comprehensive case law research, tracks regulatory changes, and analyzes legal documents while maintaining strict confidentiality and professional boundaries.

## What This Agent Does

The Legal Research Agent is your automated legal research solution. It handles comprehensive legal research tasks—from case law analysis to regulatory tracking—providing attorneys and paralegals with accurate, well-cited legal information.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Case Law Research** | Search and analyze precedents across jurisdictions |
| **Regulatory Tracking** | Monitor regulatory changes and statutory developments |
| **Document Analysis** | Analyze contracts and legal documents for key provisions |
| **Citation Verification** | Verify cases are still good law |
| **Jurisdiction Comparison** | Compare legal standards across states and federal courts |

## How It Works

### 1. Case Law Research Process

```
┌─────────────────────────────────────────────────────────────┐
│                  CASE LAW RESEARCH WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  Research Process:                                           │
│  1. Identify the specific legal issue                       │
│  2. Determine applicable jurisdictions                      │
│  3. Search federal case law first (binding authority)      │
│  4. Search state case law (persuasive authority)           │
│  5. Verify citations are current and good law              │
│  6. Extract holdings and key facts                         │
│  7. Note any contrary or split authority                    │
│  8. Provide comprehensive summary with citations            │
└─────────────────────────────────────────────────────────────┘
```

### 2. Regulatory Tracking Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                REGULATORY TRACKING WORKFLOW                   │
├─────────────────────────────────────────────────────────────┤
│  Monitoring Process:                                         │
│  1. Define jurisdictions to track                          │
│  2. Set up regulatory agency watches                        │
│  3. Monitor CFR changes                                     │
│  4. Track state legislative activity                        │
│  5. Watch for new regulatory proposals                      │
│  6. Alert on compliance deadlines                           │
│  7. Provide impact analysis and effective dates             │
└─────────────────────────────────────────────────────────────┘
```

### 3. Legal Document Analysis Process

```
┌─────────────────────────────────────────────────────────────┐
│               LEGAL DOCUMENT ANALYSIS WORKFLOW                │
├─────────────────────────────────────────────────────────────┤
│  Analysis Process:                                           │
│  1. Receive document for analysis                          │
│  2. Identify document type and purpose                     │
│  3. Extract key terms and provisions                       │
│  4. Identify potentially problematic clauses              │
│  5. Compare to standard templates                          │
│  6. Flag compliance issues                                 │
│  7. Provide summary and recommendations                    │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **case-law-researcher** | Research case law and precedents | Legal research, brief writing |
| **statute-tracker** | Track regulatory and statutory changes | Compliance monitoring |
| **legal-document-analyzer** | Analyze legal documents | Contract review, due diligence |

### case-law-researcher

Researches case law and legal precedents across jurisdictions.

**When to use:**
- Legal research for ongoing matters
- Brief and motion preparation
- Precedent identification
- Authority verification

**Key functions:**
- Federal case law search
- State case law search
- Binding vs persuasive authority identification
- Case status verification (good law, overruled, distinguished)
- Holding and key facts extraction
- Cross-jurisdiction comparison

### statute-tracker

Tracks regulatory changes and statutory developments.

**When to use:**
- Compliance monitoring
- Regulatory change awareness
- Legislative tracking
- Deadline management

**Key functions:**
- Federal regulation monitoring (CFR changes)
- State legislative activity tracking
- New regulatory proposal alerts
- Compliance deadline tracking
- Regulatory agency activity monitoring
- Impact analysis

### legal-document-analyzer

Analyzes and summarizes legal documents for key provisions and risks.

**When to use:**
- Contract review
- Due diligence
- Document comparison
- Risk identification

**Key functions:**
- Contract term analysis
- Problematic clause identification
- Document summarization
- Standard template comparison
- Compliance issue flagging

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `WEB_SEARCH_API_KEY` | API key for legal research database | Yes |
| `LEGAL_DB_API` | API for legal research platform | Yes |
| `ALERT_WEBHOOK` | Notification webhook for alerts | No |

### Research Preferences

- Detailed citations with pinpoint cites
- Summary of key holdings in addition to full case analysis
- Timeline of relevant legal developments
- Comparison across jurisdictions when relevant

## Identity

- **Name**: Legal Researcher
- **Emoji**: ⚖️
- **Color**: purple
- **Personality**: Meticulous, precise, thorough, objective

## Red Lines

This agent strictly adheres to these boundaries:

- **Does NOT provide legal advice** — Only research and information
- **Does NOT draft legal documents** — Only analyzes existing documents
- **Does NOT provide legal strategy opinions** — Remains objective
- **Does NOT fabricate citations** — All citations are verified
- **Does NOT reveal confidential information** — Maintains attorney-client privilege

## Integrations

### Supported Legal Research Platforms

- Westlaw
- LexisNexis
- Fastcase
- Casetext
- Google Scholar

### Supported Systems

- Document management systems
- Contract management platforms
- Compliance tracking systems

## Success Metrics

This agent is successful when:

- [ ] All research requests answered accurately
- [ ] Citations verified as current law
- [ ] Regulatory changes tracked proactively
- [ ] Documents analyzed thoroughly
- [ ] Jurisdictional comparison provided when relevant
- [ ] Limitations and uncertainties acknowledged

## Directory Structure

```
legal-research-agent/
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
        ├── case-law-researcher/
        │   └── SKILL.md
        ├── statute-tracker/
        │   └── SKILL.md
        └── legal-document-analyzer/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r legal-research-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "legal-research": {
           enabled: true,
           env: {
             WEB_SEARCH_API_KEY: "your-search-api-key",
             LEGAL_DB_API: "your-legal-db-api"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for legal research tasks

## Security Notes

- All research is confidential
- No fabricated citations or precedents
- Distinguishes between binding and persuasive authority
- Acknowledges when information may be outdated
- Respects attorney-client privilege
- Notes when attorney consultation is recommended

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
