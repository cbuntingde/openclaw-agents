---
name: payroll-processor
description: Process payroll runs and calculate employee compensation
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["PAYROLL_API_KEY"] },
        "primaryEnv": "PAYROLL_API_KEY",
        "emoji": "💰",
      },
  }
---

# Payroll Processor Skill

Process payroll runs and calculate employee compensation.

## Process

1. Gather hours/time data
2. Calculate gross pay
3. Calculate deductions
4. Calculate net pay
5. Process payments
6. Generate reports
