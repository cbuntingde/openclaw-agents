# Knowledge Base Curator Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Knowledge: docs | wikis | FAQs](https://img.shields.io/badge/Knowledge-Docs%20%7C%20Wikis%20%7C%20FAQs-green.svg)](README.md)

A professional OpenClaw agent for knowledge base management. Identifies content gaps, updates outdated docs, and creates FAQs from support tickets.

## Features

- **Gap Detection** — Identify missing documentation
- **Content Freshness** — Track document age
- **FAQ Generation** — Create FAQs from support
- **Update Suggestions** - Recommend improvements
- **Search Optimization** - Improve findability

## Quick Start

```bash
mkdir -p ~/.openclaw/workspace-knowledge
cp -r knowledge-base-curator-agent/workspace/* ~/.openclaw/workspace-knowledge/
cp config/openclaw.json.example ~/.openclaw/openclaw.json
openclaw agents add knowledge-base
```

## Skills

- `gap-detector` - Identify missing content
- `freshness-tracker` - Track document age
- `faq-generator` - Create FAQs from tickets
- `content-suggester` - Recommend updates
