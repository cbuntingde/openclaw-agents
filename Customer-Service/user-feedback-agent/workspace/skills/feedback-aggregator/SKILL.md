---
name: feedback-aggregator
description: Aggregate user feedback from multiple sources
metadata:
  {
    "openclaw":
      {
        "requires": { "env": ["FEEDBACK_API_KEY"] },
        "primaryEnv": "FEEDBACK_API_KEY",
        "emoji": "📥",
      },
  }
---

# Feedback Aggregator Skill

Aggregate user feedback from multiple sources into unified view.

## Sources

- Support tickets
- Survey responses
- App reviews
- Social media
- NPS surveys

## Process

1. Query each source
2. Deduplicate similar feedback
3. Normalize format
4. Organize by category
