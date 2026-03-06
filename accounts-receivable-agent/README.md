# Accounts Receivable Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw agent for accounts receivable. Manages collections, payment follow-ups, and dunning processes.

## Features

- **Collections Tracking** — Monitor and manage overdue accounts
- **Payment Followup** — Send payment reminders and track promises
- **Dunning Management** — Execute dunning sequences by aging stage

## Quick Start

```bash
mkdir -p ~/.openclaw/workspace-accounts-receivable
cp -r accounts-receivable-agent/workspace/* ~/.openclaw/workspace-accounts-receivable/
cp config/openclaw.json.example ~/.openclaw/openclaw.json
openclaw agents add accounts-receivable
openclaw gateway restart
```

## Skills

- `collections-tracker` - Track collection status
- `payment-followup` - Send payment follow-ups
- `dunning-manager` - Manage dunning sequences
