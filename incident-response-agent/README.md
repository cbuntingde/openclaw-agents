# Incident Response Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Incidents: monitoring | alerts | response](https://img.shields.io/badge/Incidents-Monitoring%20%7C%20Alerts%20%7C%20Response-red.svg)](README.md)

A professional OpenClaw agent for incident response automation. Monitors alerts, runs diagnostics, notifies on-call staff, and generates incident reports.

## Features

- **Alert Monitoring** — Watch monitoring systems for issues
- **Initial Diagnostics** — Run automated checks on alerts
- **On-Call Notifications** — Alert on-call staff immediately
- **Timeline Generation** — Create incident timeline automatically
- **Post-Incident Reports** — Generate detailed post-mortems

## Quick Start

```bash
# Create workspace
mkdir -p ~/.openclaw/workspace-incidents
cp -r incident-response-agent/workspace/* ~/.openclaw/workspace-incidents/

# Configure
cp config/openclaw.json.example ~/.openclaw/openclaw.json

# Register agent
openclaw agents add incidents
```

## Skills

- `alert-monitor` - Watch for alerts from monitoring systems
- `diagnostics-runner` - Run automated diagnostic checks
- `oncall-notifier` - Alert on-call staff
- `timeline-generator` - Create incident timeline
- `postmortem-generator` - Generate post-incident reports
