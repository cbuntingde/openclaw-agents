---
name: access-reviewer
description: Review and certify user access rights across systems
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["DIRECTORY_API_KEY"] },
        "primaryEnv": "DIRECTORY_API_KEY",
        "emoji": "🔍",
      },
  }
---

# Access Reviewer Skill

Review and certify user access rights across enterprise systems.

## When to Use

- During scheduled access reviews (quarterly/monthly)
- When asked to review specific user access
- During heartbeat checks
- When suspicious access patterns detected

## How It Works

1. Query directory for all user access rights
2. Identify users with elevated or excessive access
3. Check for orphaned accounts (no recent login)
4. Verify access aligns with job role
5. Flag violations for remediation
6. Generate certification report

## Review Types

### Quarterly Access Review
- All users with elevated access
- Privileged account holders
- Users with access to sensitive systems
- Service accounts

### Monthly Access Review
- Users with new access granted
- Access requests pending certification
- Temporary access expiring

### Continuous Monitoring
- Orphaned account detection
- Excessive privilege detection
- Anomalous access pattern detection

## Orphaned Account Detection

Identify accounts that should be disabled:
- No login in 30+ days (active users)
- No login in 7+ days (contractors)
- Terminated employees
- Failed creation (never logged in)

## Excessive Access Detection

Flag access that violates least-privilege:
- Access to systems not required for job role
- Duplicate permissions across groups
- Access that was granted but no longer needed
- Privileged access without approval

## Certification Workflow

```
1. Generate list of users requiring review
2. Send access report to managers
3. Collect manager certification
4. Identify exceptions requiring remediation
5. Track remediation to completion
6. Generate compliance report
```

## Report Output Format

```
## Access Review Report

**Review Period**: Q1 2026
**Total Users Reviewed**: 150
**Access Certified**: 145
**Access Revoked**: 5
**Exceptions Flagged**: 3

### Users with Issues

| User | Issue | Severity | Status |
|------|-------|----------|--------|
| jsmith | Excessive DB access | High | Pending |
```

## Configuration

Set via environment variables:

- `DIRECTORY_API_KEY` - API for directory service
- `REVIEW_CADENCE` - quarterly/monthly
- `ORPHAN_THRESHOLD_DAYS` - Days before account orphaned
- `ALERT_WEBHOOK` - Slack/Email webhook for alerts

## Notes

- Always verify access against job requirements
- Document rationale for access decisions
- Track exceptions requiring remediation
- Ensure timely completion of reviews
- Generate audit-ready documentation
