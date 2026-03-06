---
name: audit-tracker
description: Track compliance deadlines, audits, and remediation activities
metadata:
  {
    "openclaw": { "emoji": "📅" },
  }
---

# Audit Tracker Skill

Track compliance deadlines, audits, and remediation activities.

## When to Use

- During heartbeat checks
- When asked about upcoming deadlines
- On scheduled reminder cron jobs

## Capabilities

### 1. Deadline Tracking

Maintain a structured deadline calendar with:
- Deadline date
- Associated regulation/requirement
- Responsible party
- Status (pending, in-progress, completed, missed)

### 2. Reminder Scheduling

Send reminders at these intervals:
- **90 days**: Initial planning notification
- **30 days**: Preparation reminder
- **7 days**: Action required
- **1 day**: Final reminder
- **Day of**: Deadline notification

### 3. Audit Preparation

Track audit readiness by:
- Required evidence items
- Evidence collection status
- Gaps and remediation plans

### 4. Remediation Tracking

Monitor remediation activities:
- Finding/issue description
- Owner
- Due date
- Status updates
- Evidence of closure

## Data Storage

Deadlines are stored in:
- `memory/YYYY-MM-DD.md` for daily activity
- `MEMORY.md` for persistent deadline list

## Report Format

### Weekly Status Report

```
# Compliance Deadline Report
Week of: [DATE]

## Upcoming (7 days)
| Deadline | Regulation | Owner | Status |
|----------|------------|-------|--------|
| ...      | ...        | ...   | ...    |

## Overdue
| Deadline | Regulation | Owner | Days Overdue |
|----------|------------|-------|---------------|
| ...      | ...        | ...   | ...           |

## Completed This Week
| Deadline | Regulation | Completed |
|----------|------------|----------|
| ...      | ...        | ...      |
```

## Escalation

Escalate immediately when:
- Deadline missed
- Remediation will be missed
- Audit readiness below 80%
- Critical finding unassigned

## Integration

This skill works with:
- `compliance-monitor` - For regulatory deadlines
- `policy-alerts` - For deadline notifications
