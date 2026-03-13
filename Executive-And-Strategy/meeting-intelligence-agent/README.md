# Meeting Intelligence Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Meetings: Zoom | Teams | Meet](https://img.shields.io/badge/Meetings-Zoom%20%7C%20Teams%20%7C%20Meet-blue.svg)](README.md)

A professional OpenClaw agent for meeting intelligence. Extracts action items, decisions, and deadlines from meeting transcripts.

## Features

- **Transcript Analysis** — Parse meeting transcripts from Zoom, Teams, Meet
- **Action Item Extraction** — Identify tasks, owners, and due dates
- **Decision Tracking** — Record decisions made in meetings
- **Follow-up Management** — Track completion of action items
- **Meeting Summaries** — Generate concise summaries
- **Calendar Integration** — Link meetings to calendars

## Architecture

```
meeting-intelligence-agent/
├── config/
│   └── openclaw.json.example     # Agent configuration template
├── workspace/
│   ├── AGENTS.md                 # Operating instructions
│   ├── SOUL.md                   # Persona and boundaries
│   ├── USER.md                   # User/team profile
│   ├── IDENTITY.md               # Agent identity
│   ├── TOOLS.md                  # Tool conventions
│   ├── HEARTBEAT.md              # Heartbeat checklist
│   ├── MEMORY.md                 # Long-term meeting knowledge
│   ├── memory/
│   │   └── YYYY-MM-DD.md        # Daily activity logs
│   └── skills/
│       ├── transcript-parser/     # Parse meeting transcripts
│       ├── action-items/          # Extract and track action items
│       └── meeting-summarizer/    # Generate summaries
└── README.md
```

## Prerequisites

- [OpenClaw](https://docs.openclaw.ai) v2026.1 or later
- Calendar API access (Google Calendar, Microsoft Graph)
- Meeting recording/transcript access

## Quick Start

### 1. Install OpenClaw

```bash
npm install -g openclaw@latest
```

### 2. Create the Agent Workspace

```bash
mkdir -p ~/.openclaw/workspace-meetings
cp -r meeting-intelligence-agent/workspace/* ~/.openclaw/workspace-meetings/
```

### 3. Configure the Agent

```bash
cp config/openclaw.json.example ~/.openclaw/openclaw.json
nano ~/.openclaw/openclaw.json
```

### 4. Register the Agent

```bash
openclaw agents add meetings
```

### 5. Configure Channels

```bash
openclaw channels login --channel slack --account meetings-bot
```

### 6. Start the Gateway

```bash
openclaw gateway restart
```

## Configuration

### Agent Settings

```json5
{
  agents: {
    list: [
      {
        id: "meetings",
        name: "Meeting Intelligence",
        workspace: "~/.openclaw/workspace-meetings",
        heartbeat: {
          every: "1h",
          target: "slack",
        },
        tools: {
          allow: ["read", "memory_search", "cron_list"],
          deny: ["exec", "write", "browser"],
        },
      },
    ],
  },
}
```

### Environment Variables

| Variable | Description | Required |
|----------|-------------|----------|
| `GOOGLE_CALENDAR_API_KEY` | Google Calendar API | No |
| `MICROSOFT_GRAPH_KEY` | Microsoft Graph API | No |
| `ZOOM_API_KEY` | Zoom API | No |

## Usage

### Extract Action Items

```bash
openclaw agent --message "extract action items from yesterday's standup" --agent meetings
```

### Generate Summary

```bash
openclaw agent --message "summarize this week's meetings" --agent meetings
```

### Track Follow-ups

```bash
openclaw agent --message "what action items are overdue" --agent meetings
```

## Skills

### transcript-parser

Parses meeting transcripts from various platforms.

### action-items

Extracts and tracks action items with owners and due dates.

### meeting-summarizer

Generates concise meeting summaries.

## Supported Platforms

| Platform | Transcripts | Calendar |
|----------|-------------|----------|
| Zoom | Supported | - |
| Microsoft Teams | Supported | Supported |
| Google Meet | Supported | Supported |

## License

MIT License — see [LICENSE](LICENSE) for details.

---

*Built with for meeting productivity*
