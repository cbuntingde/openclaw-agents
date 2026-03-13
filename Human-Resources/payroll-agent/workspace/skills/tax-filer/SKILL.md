---
name: tax-filer
description: File payroll tax forms and manage tax compliance
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["PAYROLL_API_KEY"] },
        "primaryEnv": "PAYROLL_API_KEY",
        "emoji": "📋",
      },
  }
---

# Tax Filer Skill

File payroll tax forms and manage tax compliance.

## Tax Forms

- Form 941 (Quarterly)
- Form 940 (Annual)
- State withholding forms
- W-2 forms (Annual)

## Process

1. Calculate tax withholdings
2. File federal forms
3. File state forms
4. Track deadlines
