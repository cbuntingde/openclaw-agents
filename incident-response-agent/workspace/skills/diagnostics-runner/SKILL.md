---
name: diagnostics-runner
description: Run automated diagnostic checks for incidents
metadata:
  {
    "openclaw": { "emoji": "🔧" },
  }
---

# Diagnostics Runner Skill

Run automated diagnostic checks for incidents.

## Diagnostic Checks

### Service Health
- HTTP status codes
- Response times
- Error rates

### Infrastructure
- CPU/Memory usage
- Disk space
- Network connectivity

### Application
- Database connections
- Cache hit rates
- Queue depths

## Output Format

```
## Diagnostic Results

**Service**: [NAME]
**Check Time**: [TIMESTAMP]

### Health Status
| Check | Status | Details |
|-------|--------|---------|
| HTTP | ✅ OK | 200 in 45ms |
| DB | ✅ OK | 5 connections |

### Recommendations
- [RECOMMENDATION]
```
