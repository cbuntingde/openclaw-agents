---
name: ticket-triage
description: Analyze and categorize incoming support tickets
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["TICKET_SYSTEM_API"] },
        "primaryEnv": "TICKET_SYSTEM_API",
        "emoji": "🎫",
      },
  }
---

# Ticket Triage Skill

Analyze and categorize incoming support tickets for efficient handling.

## When to Use

- When new tickets arrive
- During triage review
- When re-categorizing tickets

## How It Works

1. Read ticket content
2. Identify issue category
3. Extract key information
4. Determine required team
5. Apply labels

## Categories

- Bug Report
- Feature Request
- How-To Question
- Billing Issue
- Account Access
- Technical Support
- General Inquiry

## Output

- Category assigned
- Key information extracted
- Suggested team
- Labels applied
