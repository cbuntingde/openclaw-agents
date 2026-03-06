---
name: action-items
description: Extract and track action items from meetings
metadata:
  {
    "openclaw": { "emoji": "✅" },
  }
---

# Action Items Skill

Extract and track action items from meetings.

## When to Use

- During meeting analysis
- When asked to track action items
- During heartbeat checks

## How to Extract

### Explicit Keywords
- "I'll do..."
- "Action item:"
- "To do:"
- "Task:"

### Implied (Verify with Context)
- "Can you look into..."
- "We should..."
- "Need to..."

## Action Item Format

| Field | Description | Required |
|-------|-------------|----------|
| Task | What needs to be done | Yes |
| Owner | Person responsible | Yes |
| Due Date | Deadline | No |
| Priority | High/Medium/Low | No |
| Status | Open/In Progress/Blocked/Done | Yes |
| Source | Meeting/Thread | Yes |

## Reminder Schedule

| Due | Reminder |
|-----|----------|
| Today | Morning of due date |
| Overdue | Daily until resolved |
| This week | 2 days before |

## Output Format

```
## Action Items

### Due Today
| Task | Owner | Priority | Source |
|------|-------|----------|--------|
| ... | ... | High | Weekly Sync |

### Overdue
| Task | Owner | Due | Days Overdue |
|------|-------|-----|--------------|
| ... | ... | ... | 3 |

### Open (This Week)
| Task | Owner | Due | Status |
|------|-------|-----|---------|
| ... | ... | ... | In Progress |
```

## Integration

- Store in memory for tracking
- Send reminders via Slack/Email
- Update status on completion

## Best Practices

- Always confirm owner before logging
- Set realistic due dates
- Include context for clarity
- Follow up on blockers
