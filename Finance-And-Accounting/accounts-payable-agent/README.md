# Accounts Payable Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw agent for accounts payable. Processes invoices, schedules payments, and manages approval workflows.

## Features

- **Invoice Processing** — Validate and match incoming invoices
- **Payment Scheduling** — Optimize cash flow and early payment discounts
- **Approval Workflows** — Route invoices for approval based on thresholds

## Quick Start

```bash
mkdir -p ~/.openclaw/workspace-accounts-payable
cp -r accounts-payable-agent/workspace/* ~/.openclaw/workspace-accounts-payable/
cp config/openclaw.json.example ~/.openclaw/openclaw.json
openclaw agents add accounts-payable
openclaw gateway restart
```

## Skills

- `invoice-processor` - Process and validate invoices
- `payment-scheduler` - Schedule payments for cash flow
- `approval-workflow` - Manage approval workflows
