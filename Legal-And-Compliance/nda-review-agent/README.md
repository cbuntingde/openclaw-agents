# NDA Review Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Legal: NDAs | Signatures | Expirations](https://img.shields.io/badge/Legal-NDAs%20%7C%20Signatures%20%7C%20Expirations-purple.svg)](README.md)

A professional OpenClaw agent for NDA management. Analyzes NDAs for concerning terms, tracks signatures, and monitors expirations.

## Features

- **NDA Analysis** — Review NDA terms and flag concerning provisions
- **Signature Tracking** — Monitor NDA signature status and completion
- **Expiration Monitoring** — Track expiration dates and manage renewals
- **Risk Assessment** — Identify imbalanced or aggressive terms
- **Renewal Management** — Proactive renewal reminders and workflows

## Quick Start

```bash
# Create workspace
mkdir -p ~/.openclaw/workspace-nda-review
cp -r nda-review-agent/workspace/* ~/.openclaw/workspace-nda-review/

# Configure
cp config/openclaw.json.example ~/.openclaw/openclaw.json

# Register agent
openclaw agents add nda-review

# Start gateway
openclaw gateway restart
```

## Skills

- `nda-analyzer` - Analyze NDA terms and identify risks
- `signature-tracker` - Track NDA signature status
- `expiration-monitor` - Monitor NDA expiration and renewals
