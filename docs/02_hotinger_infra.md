# ⚙️ Hostinger Infrastructure

## Overview

The Hostinger Cloud environment forms the backbone of your self-hosted **AI Infrastructure Lab**. It’s designed to balance reliability, experimental freedom, and cognitive orchestration across Docker and Kubernetes ecosystems.

---

## ☁️ Hostinger Cloud Environment

| Component | Description | Purpose |
|------------|-------------|----------|
| **Hostinger VPS** | Ubuntu-based VPS running Docker + KIND | Core compute environment for cognitive automation |
| **Domain** | bigtorig.com | Cloudflare-managed domain linked to Hostinger instance |
| **Reverse Proxy** | Caddy | Handles HTTPS, routing, and endpoint exposure |
| **Security** | Cloudflare Access + Caddy TLS | Protects services while allowing AI agent routing |

All services run on a single Hostinger VPS under your user `charles`, orchestrated primarily via Docker Compose projects.

---

## 🌐 Cloudflare + Caddy Setup

### 1. Cloudflare DNS Structure

Each major service (Flowise, n8n, Supabase Studio, Neo4j, OpenWebUI, etc.) has its own subdomain:

| Service | Subdomain |
|----------|------------|
| Flowise | `flowise.bigtorig.com` |
| n8n | `n8n.bigtorig.com` |
| Supabase Studio | `supabase.bigtorig.com` |
| Neo4j Browser | `neo4j.bigtorig.com` |
| OpenWebUI | `chat.bigtorig.com` |

DNS is proxied through Cloudflare for SSL, caching, and DDoS protection.

### 2. Caddy Configuration

Caddy serves as the reverse proxy and certificate manager. Each service is exposed via HTTPS with automatic TLS. Example block:

```caddyfile
flowise.bigtorig.com {
    reverse_proxy localhost:3000
}

neo4j.bigtorig.com {
    reverse_proxy localhost:7474
}
```

Backups of the working Caddyfile are versioned under [`local-ai-packaged`](https://github.com/mindset-dev/local-ai-packaged).

---

## 🧩 Container Topology

Each Docker Compose project runs independently under a unique project name.

| Project | Purpose | Example Containers |
|----------|----------|--------------------|
| `localai` | AI core stack | Flowise, Langfuse, Supabase, Qdrant, Neo4j, n8n |
| `maui` | Cognitive app backend | FastAPI services + data handlers |
| `mem0` | Lightweight memory API | mem0 + Redis |
| `o3` | Medical automation stack | OpenMRS + MySQL |
| `arcane` | Experimental single-service stack | Flowise test deployments |

This modularization allows granular updates and isolation.

---

## 🔐 Security & Networking

- All traffic passes through **Caddy + Cloudflare**, ensuring HTTPS-only routes.  
- Internal Docker networks isolate services (`localai_default`, `maui_default`, etc.).  
- Access to the server is handled via SSH key-based auth (`~/.ssh/config` alias: `hostinger`).

---

## 🧠 Summary

The Hostinger infrastructure provides a **stable but experimental playground** for AI orchestration. It unites Cloudflare, Caddy, Docker, and KIND into a cohesive, cognitive-ready system — where each containerized project contributes to a larger automation network.

---

➡️ Next: [Docker Projects](./03_docker_projects.md)

