# Facilities Agent

[![OpenClaw v2026.1+](https://img.shields.io/badge/OpenClaw-v2026.1+-blue.svg)](https://docs.openclaw.ai)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

A professional OpenClaw enterprise agent for facilities management. This agent schedules maintenance, manages work orders, tracks assets, and ensures facilities operate smoothly.

## What This Agent Does

The Facilities Agent is your automated facilities operations specialist. It ensures buildings, equipment, and systems are properly maintained, work orders are processed efficiently, and assets are tracked throughout their lifecycle.

### Core Capabilities

| Capability | Description |
|------------|-------------|
| **Maintenance Scheduling** | Schedule preventive and corrective maintenance |
| **Work Order Management** | Process and track facility work requests |
| **Asset Tracking** | Maintain asset inventory and lifecycle |
| **Vendor Coordination** | Manage facility vendor relationships |
| **Space Management** | Track workspace utilization |

## How It Works

### 1. Maintenance Scheduling Process

```
┌─────────────────────────────────────────────────────────────┐
│               MAINTENANCE SCHEDULING WORKFLOW                    │
├─────────────────────────────────────────────────────────────┤
│  Maintenance Types:                                          │
│  - Preventive: Scheduled equipment maintenance               │
│  - Corrective: Repair after failure                         │
│  - Predictive: Based on condition monitoring                 │
│  - Emergency: Urgent repairs                                │
│                                                              │
│  Process:                                                  │
│  1. Review maintenance schedule                            │
│  2. Identify upcoming maintenance                          │
│  3. Schedule with vendors                                  │
│  4. Notify stakeholders                                    │
│  5. Track completion                                      │
│  6. Document work performed                               │
└─────────────────────────────────────────────────────────────┘
```

### 2. Work Order Management Workflow

```
┌─────────────────────────────────────────────────────────────┐
│               WORK ORDER MANAGEMENT WORKFLOW                     │
├─────────────────────────────────────────────────────────────┤
│  Work Order Lifecycle:                                       │
│  - Submitted: Request received                              │
│  - Approved: Work authorized                               │
│  - Assigned: Technician assigned                            │
│  - In Progress: Work underway                              │
│  - Completed: Work finished                                │
│  - Closed: Verified complete                               │
│                                                              │
│  Process:                                                  │
│  1. Receive work request                                  │
│  2. Assess priority                                       │
│  3. Approve work order                                    │
│  4. Assign to technician                                  │
│  5. Track progress                                        │
│  6. Verify completion                                     │
└─────────────────────────────────────────────────────────────┘
```

### 3. Asset Tracking Workflow

```
┌─────────────────────────────────────────────────────────────┐
│                   ASSET TRACKING WORKFLOW                      │
├─────────────────────────────────────────────────────────────┤
│  Asset Lifecycle:                                           │
│  - Acquisition: Purchase or procurement                      │
│  - Deployment: Install and configure                        │
│  - Maintenance: Service and repair                          │
│  - Decommission: Retire or dispose                         │
│                                                              │
│  Process:                                                  │
│  1. Track asset inventory                                  │
│  2. Record location                                       │
│  3. Monitor condition                                     │
│  4. Schedule replacements                                 │
│  5. Track depreciation                                    │
│  6. Document disposal                                     │
└─────────────────────────────────────────────────────────────┘
```

## Skills

This agent includes 3 specialized skills:

| Skill | Purpose | Use When |
|-------|---------|----------|
| **maintenance-scheduler** | Schedule maintenance | Preventive maintenance |
| **work-order-manager** | Process work orders | Request handling |
| **asset-tracker** | Track assets | Inventory management |

### maintenance-scheduler

Schedules preventive and corrective maintenance.

**When to use:**
- Preventive maintenance
- Equipment servicing
- Vendor coordination

**Key functions:**
- Schedule maintenance
- Coordinate vendors
- Track completion

### work-order-manager

Manages facility work orders.

**When to use:**
- Request processing
- Work assignment
- Completion verification

**Key functions:**
- Process requests
- Assign work
- Track progress

### asset-tracker

Tracks facility assets.

**When to use:**
- Inventory management
- Asset lifecycle
- Depreciation tracking

**Key functions:**
- Track inventory
- Monitor condition
- Document lifecycle

## Configuration

### Environment Variables

Set these in your OpenClaw configuration:

| Variable | Description | Required |
|----------|-------------|----------|
| `FACILITIES_API` | API for facilities system | Yes |
| `WORK_ORDER_WEBHOOK` | Webhook for notifications | Yes |
| `VENDOR_PORTAL` | Vendor management portal | No |

### Priority Response Times

| Priority | Response | Resolution |
|----------|----------|------------|
| Emergency | 15 min | 4 hours |
| High | 1 hour | 24 hours |
| Medium | 4 hours | 72 hours |
| Low | 24 hours | 1 week |

## Identity

- **Name**: Facilities Agent
- **Emoji**: 🏢
- **Color**: blue
- **Personality**: Organized, practical, responsive, thorough

## Integrations

### Supported Facilities Systems

- FM Systems
- Archibus
- ServiceNow
- FaciliWorks
- Facility Dude

### Supported Vendors

- HVAC contractors
- Electricians
- Plumbers
- Cleaning services

## Success Metrics

This agent is successful when:

- [ ] Maintenance completion >95%
- [ ] Work order response met
- [ ] Asset tracking accuracy >98%
- [ ] Vendor performance tracked
- [ ] Cost savings achieved
- [ ] Zero safety incidents

## Directory Structure

```
facilities-agent/
├── SKILL.md                              # Agent definition
├── README.md                             # This file
├── config/
│   └── openclaw.json.example             # Configuration example
└── workspace/
    ├── AGENTS.md                         # Operating instructions
    ├── SOUL.md                           # Persona and identity
    ├── IDENTITY.md                       # Name, emoji, quick reference
    ├── USER.md                           # User profiles and preferences
    ├── HEARTBEAT.md                      # Automated checklist
    ├── MEMORY.md                         # Long-term memory
    ├── TOOLS.md                          # Available skills
    ├── memory/
    │   └── YYYY-MM-DD.md                 # Daily activity logs
    └── skills/
        ├── maintenance-scheduler/
        │   └── SKILL.md
        ├── work-order-manager/
        │   └── SKILL.md
        └── asset-tracker/
            └── SKILL.md
```

## Getting Started

### Quick Setup

1. Copy the workspace to your OpenClaw workspace:
   ```bash
   cp -r facilities-agent/workspace/* ~/.openclaw/workspace/
   ```

2. Configure environment variables in `~/.openclaw/openclaw.json`:
   ```json5
   {
     skills: {
       entries: {
         "facilities": {
           enabled: true,
           env: {
             FACILITIES_API: "your-facilities-api",
             WORK_ORDER_WEBHOOK: "your-webhook"
           }
         }
       }
     }
   }
   ```

3. Start using the agent for facilities management

## Security Notes

- This agent manages building access
- Asset data is confidential
- Vendor information protected
- Maintenance records audited
- Safety incidents tracked

## License

MIT License - See LICENSE file for details.

---

**Part of the Claw Skills collection - Professional OpenClaw Enterprise Agents**
