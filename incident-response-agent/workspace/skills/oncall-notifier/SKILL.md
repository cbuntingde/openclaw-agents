---
name: oncall-notifier
description: Alert on-call staff about incidents
metadata:
  {
    "openclaw": { "emoji": "📞" },
  }
---

# On-Call Notifier Skill

Alert on-call staff about incidents.

## Notification Channels

| Severity | Channels |
|----------|----------|
| SEV1 | Phone + SMS + Slack |
| SEV2 | SMS + Slack |
| SEV3 | Slack |
| SEV4 | Email |

## Notification Template

```
🚨 INCIDENT ALERT

**Severity**: [SEV1-4]
**Service**: [SERVICE]
**Issue**: [DESCRIPTION]

**Impact**: [IMPACT]
**Started**: [TIME]

**Actions Taken**:
- [ACTION 1]
- [ACTION 2]

**Link**: [INCIDENT LINK]

@oncall - Please acknowledge within [TIMEFRAME]
```

## Escalation

If no acknowledgment:
- SEV1: Escalate after 5 minutes
- SEV2: Escalate after 15 minutes
