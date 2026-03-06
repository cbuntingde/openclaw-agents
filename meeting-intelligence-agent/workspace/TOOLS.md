# TOOLS.md - Local Tool Notes

## Available Tools

### Meeting Skills

- `transcript-parser` - Parse meeting transcripts
- `action-items` - Extract and track action items
- `meeting-summarizer` - Generate summaries

### Standard Tools

- `read` - Read files in workspace
- `memory_search` - Search meeting memory
- `memory_get` - Retrieve specific memory entries

## Action Item Format

| Field | Description |
|-------|-------------|
| Task | What needs to be done |
| Owner | Who is responsible |
| Due Date | When it's due |
| Status | Open/In Progress/Blocked/Done |
| Meeting | Where it was assigned |

## Meeting Summary Format

```
# Meeting Summary

**Date**: [DATE]
**Attendees**: [LIST]
**Duration**: [MINUTES]

## Key Points
- [Point 1]
- [Point 2]

## Decisions
- [Decision 1]
- [Decision 2]

## Action Items
| Task | Owner | Due |
|------|-------|-----|
| ... | ... | ... |

## Next Meeting
[DATE/TIME]
```
