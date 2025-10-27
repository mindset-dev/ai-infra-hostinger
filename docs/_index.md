# 🧭 Documentation Index — Mindset Dev AI Infrastructure

Welcome to the **AI Systems Lab** documentation hub for  
[`mindset-dev/ai-infra-hostinger`](https://github.com/mindset-dev/ai-infra-hostinger).  

This index connects all core modules, architecture docs, and roadmap entries — forming a cohesive map of your self-hosted cognitive infrastructure.

---

## 📘 Core Documents

| Section | File | Description |
|----------|------|-------------|
| 🏠 Overview | [README.md](../README.md) | Introductory overview and context for this meta-repo |
| ⚙️ Environment Variables | [.env.example](../.env.example) | Environment variable template for local setup |
| 🧩 Hostinger Infrastructure | [02_hostinger_infra.md](./02_hostinger_infra.md) | Description of your Hostinger server environment and architecture |
| 🌐 Network Topology | [06_network_topology.md](./06_network_topology.md) | Routing flow from Cloudflare → Caddy → Docker → KIND |
| 🧠 AI Stack Overview | [05_ai_stack.md](./05_ai_stack.md) | Deep dive into the Flowise–LangChain–Supabase–Neo4j ecosystem |
| 🧩 Architecture Overview | [07_architecture_overview.md](./07_architecture_overview.md) | Visual and conceptual overview of your entire system |
| 🚀 Roadmap | [99_roadmap.md](./99_roadmap.md) | Future plans and cognitive evolution of your infrastructure |

---

## 🧱 Directory Structure

```bash
ai-infra-hostinger/
├── README.md
├── .env.example
├── /docs/
│   ├── 02_hostinger_infra.md
│   ├── 05_ai_stack.md
│   ├── 06_network_topology.md
│   ├── 07_architecture_overview.md
│   ├── 99_roadmap.md
│   └── _index.md  ← You are here
└── /scripts/
    ├── deploy.sh
    ├── update.sh
    └── sync-diagrams.sh
```

---

## 🧠 How to Use This Documentation

1. Start from the **README.md** for high-level orientation.  
2. Proceed through `/docs` in order for a narrative experience — each document builds upon the previous.  
3. Use `_index.md` as your navigational hub for MkDocs or GitHub Pages.

---

## 🌍 Publishing (MkDocs / GitHub Pages)

If you want to publish these docs with **MkDocs**:

```bash
pip install mkdocs mkdocs-material
mkdocs new .
# Move docs into the existing /docs folder
mkdocs serve
```

Example `mkdocs.yml` snippet:

```yaml
site_name: "Mindset Dev — AI Infrastructure"
repo_url: "https://github.com/mindset-dev/ai-infra-hostinger"
nav:
  - Home: README.md
  - Docs:
      - Hostinger Infrastructure: docs/02_hostinger_infra.md
      - AI Stack Overview: docs/05_ai_stack.md
      - Network Topology: docs/06_network_topology.md
      - Architecture Overview: docs/07_architecture_overview.md
      - Roadmap: docs/99_roadmap.md
```

---

## 🧩 Contribution Workflow

All edits are committed directly to `main`.  
Future contributors should fork and open PRs against this repository.

---

## 🧬 Meta Philosophy

This documentation serves not just as a manual —  
but as the **blueprint of a living, cognitive system**.  

Each document corresponds to a neural layer of your infrastructure:  
- *Topology* → Synaptic pathways  
- *Architecture* → Cognitive structure  
- *Roadmap* → Future evolution  

---

➡️ Next: [02_hostinger_infra.md](./02_hostinger_infra.md)

