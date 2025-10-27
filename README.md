# 🧠 AI Infra on Hostinger — mindset-dev
*Where automation evolves into cognition.*

This repository is the **meta-layer** for the Hostinger-based AI Systems Lab.

- **Working deployments live here →** https://github.com/mindset-dev/local-ai-packaged
- **Kubernetes agent workflows (KIND)** → https://github.com/journeyman33/dot-ai (upstream: https://github.com/vfarcic/dot-ai)
- **Agent frameworks** → https://github.com/coleam00/ottomator-agents
- **Archon (Claude Code RAG server)** → fork: https://github.com/journeyman33/Archon (upstream: https://github.com/coleam00/Archon)

> This repo explains the architecture, shows diagrams, and provides lightweight scripts and templates.  
> **It does not duplicate the running Docker Compose stacks.**

## 🧩 System Map
```mermaid
graph LR
    subgraph Hostinger[Hostinger Cloud]
        Caddy[Caddy Reverse Proxy]:::edge -->|Cloudflare DNS| PublicInternet((Internet))
        subgraph DockerProjects[Docker Compose Projects (-p)]
            L[localai (23 services)\nFlowise, n8n, Neo4j, Qdrant, Supabase, Langfuse, Redis, OpenWebUI, MinIO, etc.]
            M[maui (3 services)]
            MEM[mem0 (1 service)]
            O3[o3 (OpenMRS + DB + overrides)]
            A[arcane (1 service)]
        end
        subgraph KIND[KIND Cluster (3 nodes)]
            CP[control-plane] --> W1[worker]
            CP --> W2[worker2]
        end
        Caddy --> L
        Caddy --> M
        Caddy --> MEM
        Caddy --> O3
        Caddy --> A
    end
    classDef edge stroke-width:2px;

Routing: Endpoints are fronted by Caddy and Cloudflare on bigtorig.com.

Projects as Units: Each stack runs with a Compose project name (e.g., -p localai, -p maui, -p o3) so docker compose down only affects that group.

🧰 This Repo Contains

/docs — Architecture notes (network, projects, upstream inspirations)

/scripts — Non-invasive helpers for documentation/housekeeping

.env.example — Common variables (no secrets)

What it does not contain: full Docker Compose or secrets. Those stay in local-ai-packaged.

