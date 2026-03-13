---
name: severity-assigner
description: Assess and assign severity levels to bugs
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["BUG_TRACKER_API"] },
        "primaryEnv": "BUG_TRACKER_API",
        "emoji": "⚡",
      },
  }
---

# Severity Assigner Skill

Assess and assign severity levels to bugs based on impact and urgency.

## When to Use

- When new bugs arrive
- During triage
- When new information changes understanding
- When bug age changes priority

## How It Works

1. Analyze bug impact and scope
2. Assess reproducibility
3. Evaluate customer/business impact
4. Consider workaround availability
5. Assign severity level
6. Document rationale

## Severity Levels

### Critical (P0)
- **Definition**: Complete system failure, data loss, security breach
- **Response**: Immediate fix required, all hands on deck
- **Examples**: Production outage, data corruption, security vulnerability

### High (P1)
- **Definition**: Major feature broken, no workaround
- **Response**: Fix in current sprint
- **Examples**: Key feature unusable, significant data issues

### Medium (P2)
- **Definition**: Feature broken with workaround, minor issues
- **Response**: Fix in upcoming sprints
- **Examples**: Non-critical feature broken, workaround exists

### Low (P3)
- **Definition**: Minor issues, cosmetic, enhancement
- **Response**: Backlog, fix when time permits
- **Examples**: Typos, UI glitches, minor annoyances

## Assessment Criteria

| Factor | Critical | High | Medium | Low |
|--------|----------|------|--------|-----|
| User Impact | All users | Many users | Some users | Few users |
| Workaround | None | None | Yes | Yes |
| Data Loss | Yes | Potential | No | No |
| Security | Breach | Risk | No | No |
| Revenue | Major impact | Some impact | Minimal | None |

## Severity Decision Tree

```
1. Does the bug cause data loss or security breach?
   → CRITICAL
2. Does the bug make a major feature completely unusable?
   → HIGH
3. Does the bug have a workaround?
   → MEDIUM (yes) / HIGH (no)
4. Is it a minor issue or enhancement?
   → LOW
```

## Output Format

```
## Severity Assignment

**Bug ID**: BUG-123
**Severity**: High (P1)
**Rationale**: Key feature unusable by 40% of users, no workaround
**Confidence**: High
**Reassess**: When more info available or after fix attempt
```

## Configuration

Set via environment variables:

- `BUG_TRACKER_API` - API for bug tracker
- `SEVERITY_MATRIX` - Custom severity criteria

## Notes

- When uncertain, assign higher severity
- Reassess severity as new information emerges
- Document all severity decisions
- Align with SLAs for each severity level
