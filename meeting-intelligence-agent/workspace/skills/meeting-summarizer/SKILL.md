---
name: meeting-summarizer
description: Generate concise meeting summaries with key points and decisions
metadata:
  {
    "openclaw": { "emoji": "📋" },
  }
---

# Meeting Summarizer Skill

Generate concise meeting summaries with key points and decisions.

## When to Use

- After parsing a transcript
- When asked to summarize a meeting
- For recurring meeting updates

## Summary Structure

### Quick Summary (2-3 sentences)
For Slack/quick updates

### Full Summary

```
# Meeting Summary

**Date**: [DATE]
**Time**: [TIME]
**Duration**: [MINUTES]
**Attendees**: [LIST]
**Facilitator**: [NAME]

## Overview
[2-3 sentence summary of meeting purpose and outcome]

## Key Points
- [Point 1 - important decision or update]
- [Point 2]
- [Point 3]

## Discussion Highlights
- [Topic 1]: [Brief summary of discussion]
- [Topic 2]: [Brief summary of discussion]

## Decisions Made
| Decision | Owner | Notes |
|----------|-------|-------|
| [Decision] | [Who] | [Context] |

## Action Items
| Task | Owner | Due |
|------|-------|-----|
| [Task] | [Owner] | [Date] |

## Next Steps
1. [Next step 1]
2. [Next step 2]

## Next Meeting
**Date**: [DATE]
**Time**: [TIME]
**Topics**: [LIST]
```

## Key Points to Capture

1. **Purpose** - Why did we meet?
2. **Outcome** - What was accomplished?
3. **Decisions** - What was decided?
4. **Actions** - What needs to happen?
5. **Next** - What's next?

## Best Practices

- Keep it concise (aim for one page)
- Use bullet points for readability
- Include owners for all action items
- Highlight blockers or concerns
- Note any follow-up needed

## Delivery Formats

| Format | Use Case |
|--------|----------|
| Slack message | Quick updates |
| Email | Detailed summary |
| Document | Official record |

## Notes

- Focus on outcomes, not play-by-play
- Capture decisions with context
- Include relevant dates
- Note any dependencies
