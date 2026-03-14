---
name: timeline-generator
description: Generate incident timeline from events
metadata:
  {
    "openclaw": { "emoji": "📅" },
  }
---

# Timeline Generator Skill

Generate incident timeline from events.

## Timeline Format

```
## Incident Timeline

**Incident**: [TITLE]
**Started**: [TIMESTAMP]
**Resolved**: [TIMESTAMP]
**Duration**: [DURATION]

### Events

| Time | Event | Actor |
|------|-------|-------|
| 14:32 | Alert triggered | System |
| 14:33 | On-call notified | Agent |
| 14:35 | Acknowledged | @person |
| 14:40 | Root cause identified | @person |
| 14:50 | Fix deployed | @person |
| 15:00 | Confirmed resolved | @person |

### Actions Taken
1. [ACTION]
2. [ACTION]

### Communication
- [COMMUNICATION]
```
