---
name: privileged-access
description: Monitor and manage privileged access and administrative accounts
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["PAM_SYSTEM_API"] },
        "primaryEnv": "PAM_SYSTEM_API",
        "emoji": "👑",
      },
  }
---

# Privileged Access Management Skill

Monitor and manage privileged access across the organization.

## When to Use

- During heartbeat checks
- When monitoring admin account activity
- When investigating suspicious privileged access
- During access reviews
- When enforcing just-in-time access

## How It Works

1. Query privileged account systems
2. Track admin and root account usage
3. Monitor session activity
4. Enforce just-in-time access policies
5. Generate alerts for anomalies
6. Document privileged access events

## Privileged Access Categories

### Tier 1 - Domain Admins
- Full domain control
- Requires CISO approval
- Session recording mandatory
- Quarterly access review

### Tier 2 - System Admins
- Server/Application admin
- Requires IT Security approval
- Session recording recommended
- Monthly access review

### Tier 3 - Application Admins
- Application-level admin
- Requires manager approval
- Access logged
- Monthly access review

## Just-in-Time Access

Implement just-in-time (JIT) privileged access:

```
1. User requests elevated access
2. Request routed to approver
3. If approved, access granted for limited time
4. Access automatically revoked after timeout
5. Session logged for audit
```

## Monitoring Metrics

Track these metrics:
- Number of privileged accounts
- Privileged session duration
- Commands executed during sessions
- Files accessed by privileged accounts
- Failed privileged access attempts
- Time between privilege escalation and use

## Alert Thresholds

| Event | Alert Level | Action |
|-------|-------------|--------|
| New admin account created | Critical | Immediate notification |
| Privileged session > 8 hours | High | Review and approve |
| Failed admin login > 5 | High | Investigate |
| Access granted outside business hours | Medium | Log for review |
| Sensitive command executed | Medium | Log for review |

## Configuration

Set via environment variables:

- `PAM_SYSTEM_API` - API for privileged access management system
- `SESSION_RECORDING_ENABLED` - Whether sessions are recorded
- `JIT_MAX_DURATION_MINUTES` - Maximum JIT access duration
- `ALERT_WEBHOOK` - Slack/Email webhook for alerts

## Compliance Requirements

- All privileged access requires approval
- Sessions must be recorded for Tier 1
- Access must be reviewed monthly
- Emergency access must be documented
- All JIT requests logged for audit

## Notes

- Never grant permanent privileged access when temporary will do
- Require business justification for all elevated access
- Review and certify privileged access regularly
- Monitor for privilege creep
- Investigate all anomalous privileged activity
