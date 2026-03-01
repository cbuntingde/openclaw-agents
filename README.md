<p align="center">
  <img src="https://img.shields.io/badge/OpenClaw-Multi--Agent-blue?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHRleHQgeD0iNCIgeT0iMTgiIGZvbnQtc2l6ZT0iMTYiPvCfkL48L3RleHQ+PC9zdmc+" alt="OpenClaw">
  <br/>
  <img src="https://img.shields.io/badge/version-1.0.0-brightgreen?style=flat-square" alt="Version">
  <img src="https://img.shields.io/badge/license-MIT-blue?style=flat-square" alt="License">
  <img src="https://img.shields.io/badge/agents-9-orange?style=flat-square" alt="Agents">
  <img src="https://img.shields.io/badge/channels-feishu%20%7C%20whatsapp%20%7C%20telegram%20%7C%20discord-purple?style=flat-square" alt="Channels">
</p>

<h1 align="center">🐾 OpenClaw Agents</h1>

<p align="center">
  <strong>One-command multi-agent initialization for <a href="https://docs.openclaw.ai">OpenClaw</a></strong>
  <br/>
  <em>Ship an entire AI research team to your chat in 60 seconds.</em>
</p>

<p align="center">
  <a href="#-quick-start">Quick Start</a> •
  <a href="#-architecture">Architecture</a> •
  <a href="#-agents">Agents</a> •
  <a href="#%EF%B8%8F-configuration">Configuration</a> •
  <a href="#-channel-support">Channels</a> •
  <a href="#-customization">Customization</a> •
  <a href="#-contributing">Contributing</a>
</p>

---

## ✨ What Is This?

**OpenClaw Agents** is a ready-to-deploy multi-agent configuration kit for [OpenClaw](https://docs.openclaw.ai). It provisions **9 specialized AI agents** as a collaborative research team — complete with identities, workspace files, routing rules, and channel bindings — using a single command.

### Why?

Setting up a multi-agent system on OpenClaw requires:

1. Creating each agent (`openclaw agents add ...`)
2. Setting identities (`openclaw agents set-identity ...`)
3. Deploying workspace files (`soul.md`, `agent.md`, `user.md`)
4. Configuring routing in `openclaw.json`
5. Binding agents to channels (Feishu, WhatsApp, etc.)

This repo automates **all of it**.

---

## 🚀 Quick Start

### Prerequisites

```bash
# Install OpenClaw CLI
npm install -g openclaw@latest

# Initialize OpenClaw
openclaw onboard --install-daemon
```

### One-Command Setup

```bash
# Clone this repository
git clone https://github.com/shenhao-stu/openclaw-agents.git
cd openclaw-agents

# Run the setup script
chmod +x setup.sh
./setup.sh
```

That's it. The script will:

| Step | What Happens |
|------|-------------|
| 1 | ✅ Verify `openclaw` CLI is installed |
| 2 | 🤖 Create 8 sub-agents with dedicated workspaces |
| 3 | 🎨 Set emoji-rich visual identities for each agent |
| 4 | 📝 Deploy `soul.md` / `agent.md` / `user.md` to each workspace |
| 5 | 🔗 Configure `openclaw.json` with channel routing bindings |
| 6 | ✅ Verify the entire setup |

### Advanced Usage

```bash
# Non-interactive: specify channel and group ID directly
./setup.sh --channel feishu --group-id oc_b1c331592eaa36d06a7e5df05d08a890

# Use a different model
./setup.sh --model anthropic/claude-sonnet-4-5

# Preview all commands without executing (dry-run)
./setup.sh --dry-run

# Skip channel binding (agents only)
./setup.sh --skip-bindings

# With session ID for channel group routing
./setup.sh --channel feishu --group-id oc_xxx --session-id sess_xxx
```

---

## 🏗 Architecture

```
                         ┌──────────────┐
                         │   👤 User    │
                         └──────┬───────┘
                                │
                    ┌───────────▼───────────┐
                    │  🐾 OpenClaw Main     │
                    │  (Audit · Manage · Arbitrate)
                    └───────────┬───────────┘
                                │
                         ┌──────▼───────┐
                         │  🧠 Planner  │ ◄── Orchestration Hub
                         └──────┬───────┘
                                │
       ┌────────────────────────┼────────────────────────┐
       │                        │                        │
 ┌─────▼─────┐           ┌─────▼─────┐           ┌─────▼─────┐
 │ 💡Ideator │◄── ⚔️ ──►│ 🎯 Critic │           │ 📰 Scout  │
 │  Creative  │           │   Taste    │           │   Intel    │
 └─────┬─────┘           └─────┬─────┘           └───────────┘
       │                       │
 ┌─────▼─────┐           ┌─────▼─────┐
 │ 📚Surveyor│           │ 💻 Coder  │
 │  Research  │           │ Engineer   │
 └─────┬─────┘           └─────┬─────┘
       │                       │
       └───────────┬───────────┘
             ┌─────▼─────┐
             │ ✍️ Writer │
             │  Author    │
             └─────┬─────┘
                   │
             ┌─────▼─────┐
             │ 🔍Reviewer│ ◄── Quality Gate
             │  Reviewer  │
             └───────────┘
```

### Adversarial Collaboration

The system is designed with **productive tension** between agents:

- **💡 Ideator ↔ 🎯 Critic** — Creativity vs. Taste: forge top-tier ideas through rigorous debate
- **✍️ Writer ↔ 🔍 Reviewer** — Writing vs. Review: polish papers through iterative feedback
- **🎯 Critic** — Holds ultimate veto on idea quality (SHARP ≥ 18 to pass)
- **🔍 Reviewer** — Holds ultimate veto on paper quality (Accept required to submit)

---

## 🤖 Agents

### Core Fleet (🔒 Protected — cannot be removed)

| Agent | ID | Emoji | Role | Key Files |
|-------|----|-------|------|-----------|
| **Main** | `main` | 🐾 | System orchestrator, audit, final arbiter | `soul.md` |
| **Planner** | `planner` | 🧠 | Task decomposition, progress tracking, coordination | `soul.md` `agent.md` `user.md` |
| **Ideator** | `ideator` | 💡 | Idea generation, novelty assessment, contribution framing | `soul.md` `agent.md` `user.md` |
| **Critic** | `critic` | 🎯 | SHARP taste evaluation, anti-pattern detection | `soul.md` `agent.md` `user.md` |
| **Surveyor** | `surveyor` | 📚 | Literature search, research gap identification | `soul.md` `agent.md` `user.md` |
| **Coder** | `coder` | 💻 | Algorithm implementation, experiment execution | `soul.md` `agent.md` `user.md` |
| **Writer** | `writer` | ✍️ | Paper writing, LaTeX formatting | `soul.md` `agent.md` `user.md` |
| **Reviewer** | `reviewer` | 🔍 | Internal peer review, rebuttal strategy | `soul.md` `agent.md` `user.md` |
| **Scout** | `scout` | 📰 | Daily paper digest, trend monitoring | `soul.md` `agent.md` `user.md` |

### Workspace File Structure

Each agent has three core files:

```
.agents/<agent_id>/
├── soul.md     # 🧬 Identity, personality, decision principles
├── agent.md    # ⚙️ Technical config, tools, model, inter-agent protocols
└── user.md     # 👤 User context, research profile, preferences
```

| File | Purpose | What to Customize |
|------|---------|-------------------|
| `soul.md` | Agent personality and capabilities | Role-specific expertise and behavior |
| `agent.md` | Technical configuration | Model, tools, sandbox, communication protocols |
| `user.md` | User/team context | Research domain, target venues, preferences |

---

## ⚙️ Configuration

### `openclaw.json` — Routing & Bindings

The setup script generates `openclaw.json` at `~/.openclaw/openclaw.json` with:

```jsonc
{
  "agents": {
    "list": [
      {
        "id": "planner",
        "name": "🧠 Planner",
        "workspace": "/path/to/.agents/planner",
        "model": "anthropic/claude-sonnet-4-5"
      }
      // ... 8 more agents
    ]
  },
  "bindings": [
    {
      "agentId": "planner",
      "match": {
        "channel": "feishu",
        "peer": {
          "kind": "group",
          "id": "oc_your_group_id"
        }
      }
    }
    // ... bindings for each agent
  ]
}
```

### `agents.yaml` — Agent Manifest

The declarative manifest defines all agents and their properties:

```yaml
agents:
  - id: "planner"
    name: "🧠 Planner"
    emoji: "🧠"
    role: "Task decomposition, progress tracking, cross-agent coordination"
    model: "anthropic/claude-sonnet-4-5"
    protected: true
    workspace: ".agents/planner"
```

> **Tip**: Edit `agents.yaml` to add custom agents before running `setup.sh`.

---

## 📡 Channel Support

OpenClaw Agents supports binding to any channel that OpenClaw supports:

| Channel | Group ID Format | Example |
|---------|----------------|---------|
| **Feishu** (飞书) | `oc_xxxxxxxxx` | `oc_b1c331592eaa36d06a7e5df05d08a890` |
| **WhatsApp** | `xxxxx@g.us` | `120363999999999999@g.us` |
| **Telegram** | Negative integer | `-1001234567890` |
| **Discord** | Guild ID | `1234567890` |
| **Slack** | Team + Channel ID | `T0123/C0123` |

### Feishu (飞书) Example

```bash
# Interactive
./setup.sh --channel feishu

# Non-interactive
./setup.sh --channel feishu --group-id oc_b1c331592eaa36d06a7e5df05d08a890
```

The generated binding:
```json
{
  "agentId": "planner",
  "match": {
    "channel": "feishu",
    "peer": {
      "kind": "group",
      "id": "oc_b1c331592eaa36d06a7e5df05d08a890"
    }
  }
}
```

> **Finding your Feishu Group ID**: Send any message in the group, then run `openclaw channels feishu groups` to list all group IDs.

### Pre-built Examples

See the [`examples/`](examples/) directory for ready-to-use config templates:

- [`openclaw.feishu.json`](examples/openclaw.feishu.json) — Full Feishu setup
- [`openclaw.whatsapp.json`](examples/openclaw.whatsapp.json) — WhatsApp setup

---

## 📋 Workflows

Four built-in workflow templates automate common research processes:

| Workflow | Command | Description |
|----------|---------|-------------|
| 📋 Paper Pipeline | `/paper-pipeline` | Full 9-phase paper production workflow with taste gates |
| 📰 Daily Digest | `/daily-digest` | Scout-led daily paper summarization |
| 💡 Brainstorm | `/brainstorm` | Rapid idea generation and evaluation |
| 🔄 Rebuttal | `/rebuttal` | Reviewer response preparation |

### Taste Gates (品鉴节点)

The Critic agent enforces quality at four critical checkpoints:

| Gate | What is Evaluated | Pass Criteria |
|------|------------------|---------------|
| Idea Confirmation | SHARP score + Soul Questions | SHARP ≥ 18 |
| Method Design | Elegance + Parsimony | Parsimony ≥ 4 |
| First Draft | Narrative quality + Memorability | ≥ 1 clear hook |
| Pre-submission | Full quality judgment | Critic says "worth submitting" |

---

## 🧩 Customization

### Adding Custom Agents

Edit `agents.yaml` to add new agents:

```yaml
agents:
  # ... existing agents ...
  - id: "math-prover"
    name: "🔢 Math Prover"
    emoji: "🔢"
    role: "Theorem proving, convergence analysis, complexity derivation"
    model: "anthropic/claude-sonnet-4-5"
    protected: false
    workspace: ".agents/math-prover"
```

Then re-run `setup.sh`, or add manually:

```bash
openclaw agents add math-prover \
  --model anthropic/claude-sonnet-4-5 \
  --workspace .agents/math-prover

openclaw agents set-identity \
  --agent math-prover \
  --name "🔢 Math Prover"
```

### Suggested Custom Agents

| Agent | Use Case | Capabilities |
|-------|----------|-------------|
| `math-prover` | Theory-heavy papers | Theorem proving, convergence analysis |
| `visualizer` | Figure-rich papers | Architecture diagrams, data visualization |
| `data-engineer` | Dataset construction | Data collection, annotation, QC |
| `benchmark-designer` | New evaluation tasks | Benchmark design, metric definition |
| `presenter` | Post-acceptance | Poster/slide creation, talk preparation |

### Changing the Default Model

```bash
./setup.sh --model anthropic/claude-sonnet-4-5
```

Or edit `agents.yaml`:

```yaml
project:
  default_model: "anthropic/claude-sonnet-4-5"
```

---

## 📁 Repository Structure

```
openclaw-agents/
├── setup.sh                          # 🚀 One-command setup script
├── agents.yaml                       # 📋 Agent manifest (single source of truth)
├── soul.md                           # 🐾 Main Agent definition
├── README.md                         # 📖 This file
├── LICENSE                           # MIT License
├── CONTRIBUTING.md                   # Contribution guidelines
├── CHANGELOG.md                      # Version history
├── .gitignore                        # Git ignore rules
│
├── .agents/
│   ├── planner/                      # 🧠 Project orchestrator
│   │   ├── soul.md                   #    Identity & capabilities
│   │   ├── agent.md                  #    Technical configuration
│   │   └── user.md                   #    User context
│   ├── ideator/                      # 💡 Creative researcher
│   │   ├── soul.md / agent.md / user.md
│   ├── critic/                       # 🎯 Taste evaluator
│   │   ├── soul.md / agent.md / user.md
│   ├── surveyor/                     # 📚 Literature analyst
│   │   ├── soul.md / agent.md / user.md
│   ├── coder/                        # 💻 ML engineer
│   │   ├── soul.md / agent.md / user.md
│   ├── writer/                       # ✍️ Paper author
│   │   ├── soul.md / agent.md / user.md
│   ├── reviewer/                     # 🔍 Internal reviewer
│   │   ├── soul.md / agent.md / user.md
│   ├── scout/                        # 📰 Research intelligence
│   │   ├── soul.md / agent.md / user.md
│   └── workflows/
│       ├── paper-pipeline.md         # 📋 End-to-end paper workflow
│       ├── daily-digest.md           # 📰 Daily paper digest
│       ├── brainstorm.md             # 💡 Idea brainstorming
│       └── rebuttal.md               # 🔄 Rebuttal preparation
│
└── examples/
    ├── openclaw.feishu.json          # Feishu channel config
    └── openclaw.whatsapp.json        # WhatsApp channel config
```

---

## 🔧 CLI Reference

### Setup Script Options

| Flag | Description | Default |
|------|-------------|---------|
| `--channel` | Channel type (feishu/whatsapp/telegram/discord/slack) | Interactive prompt |
| `--group-id` | Group or chat ID for channel binding | Interactive prompt |
| `--session-id` | Session ID for channel group routing | None |
| `--model` | LLM model for all agents | `anthropic/claude-sonnet-4-5` |
| `--skip-bindings` | Skip channel binding configuration | `false` |
| `--dry-run` | Preview commands without executing | `false` |
| `-h, --help` | Show help message | — |

### Useful OpenClaw Commands

```bash
# List all agents and their bindings
openclaw agents list --bindings

# Check channel connectivity
openclaw channels status --probe

# Restart the gateway after config changes
openclaw gateway restart

# View agent identity
openclaw agents get <agent_id>
```

---

## 🤝 Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

- 🐛 **Bug Reports** — Open a GitHub Issue
- 💡 **New Agent Ideas** — Submit a PR with agent files
- 📋 **Workflow Templates** — Share your research workflows
- 📖 **Documentation** — Improve guides and examples

---

## 📄 License

[MIT](LICENSE) — Use freely, modify openly, share generously.

---

<p align="center">
  <strong>Built with ❤️ for the AI research community</strong>
  <br/>
  <sub>Powered by <a href="https://docs.openclaw.ai">OpenClaw</a> 🦞</sub>
</p>
