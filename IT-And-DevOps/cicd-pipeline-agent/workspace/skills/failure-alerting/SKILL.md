---
name: failure-alerting
description: Alert on pipeline failures
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["CI_API_KEY", "SLACK_WEBHOOK_URL"] },
        "emoji": "⚠️",
      },
  }
---

# Failure Alerting

Alert team on pipeline failures and track issues.
