---
name: transcript-parser
description: Parse meeting transcripts from Zoom, Teams, Google Meet
metadata:
  {
    "openclaw": { "emoji": "📄" },
  }
---

# Transcript Parser Skill

Parse meeting transcripts from various platforms.

## When to Use

- When asked to analyze a meeting
- When extracting action items from transcripts

## Supported Platforms

| Platform | Format | Support |
|----------|--------|---------|
| Zoom | VTT, JSON | Full |
| Microsoft Teams | JSON | Full |
| Google Meet | JSON | Full |

## How It Works

1. Receive transcript (paste or file)
2. Identify speaker segments
3. Extract key content
4. Identify action items and decisions

## Output Structure

```
## Meeting Transcript Analysis

**Platform**: [Zoom/Teams/Meet]
**Date**: [DATE]
**Duration**: [MINUTES]
**Participants**: [COUNT]

### Speakers
| Name | Messages |
|------|----------|
| [Speaker] | [Count] |

### Timeline
- [00:05] - Topic introduced
- [00:15] - Discussion started
- [00:45] - Decision made

### Action Items Identified
[See action-items skill]

### Decisions Identified
[See meeting-summarizer skill]
```

## Notes

- Handle different transcript formats
- Identify speaker patterns
- Note timestamps for reference
- Flag unclear items for review
