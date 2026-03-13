# Legal Research Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Legal: Research | Statutes | Analysis](https://img.shields.io/badge/Legal-Research%20%7C%20Statutes%20%7C%20Analysis-purple.svg)](README.md)

A professional OpenClaw agent for legal research. Provides case law research, regulatory tracking, and legal document analysis.

## Features

- **Case Law Research** — Search and analyze precedents across jurisdictions
- **Regulatory Tracking** — Monitor regulatory changes and statutory developments
- **Document Analysis** — Analyze contracts and legal documents for key provisions
- **Citation Verification** — Verify cases are still good law
- **Jurisdiction Comparison** — Compare legal standards across states/federal

## Quick Start

```bash
# Create workspace
mkdir -p ~/.openclaw/workspace-legal-research
cp -r legal-research-agent/workspace/* ~/.openclaw/workspace-legal-research/

# Configure
cp config/openclaw.json.example ~/.openclaw/openclaw.json

# Register agent
openclaw agents add legal-research

# Start gateway
openclaw gateway restart
```

## Skills

- `case-law-researcher` - Research case law and precedents
- `statute-tracker` - Track regulatory and statutory changes
- `legal-document-analyzer` - Analyze legal documents
