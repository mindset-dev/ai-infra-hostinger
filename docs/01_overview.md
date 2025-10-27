# 🧠 Overview

## Purpose

The **ai-infra-hostinger** repository serves as the *meta layer* for your AI-native infrastructure running on the Hostinger Cloud.

It documents, visualizes, and explains the full architecture of your DevOps × AI system — spanning from Docker Compose orchestration to KIND-based Kubernetes experimentation.

## Core Concepts

- **Meta Repository** — This repo describes and governs your live infrastructure (without hosting code).
- **Local Deployment Mirror** — Links to actively deployed Compose stacks (e.g., [local-ai-packaged](https://github.com/mindset-dev/local-ai-packaged)).
- **AI Infrastructure** — A hybrid environment combining self-hosted cognition tools, AI orchestration frameworks, and observability.

## Current Environment

| Layer | Stack | Description |
|-------|--------|-------------|
| Reverse Proxy | **Caddy** | Manages routing and TLS for all containers |
| AI Layer | **Flowise**, **Langfuse**, **Ollama** | Core LLM orchestration and reasoning |
| Data Layer | **Supabase**, **Qdrant**, **Neo4j** | Vector, relational, and graph storage |
| Workflow | **n8n**, **FastAPI** | Event-driven pipelines and API endpoints |
| Infrastructure | **Docker Compose**, **KIND** | Multi-project orchestration |

## Philosophy

> *Infrastructure as cognition — automation that thinks, learns, and collaborates.*

This repo documents that philosophy in action — how DevOps workflows evolve into cognitive pipelines, where every service is part of a distributed intelligence system.

---

➡️ Next: [Hostinger Infrastructure](./02_hostinger_infra.md)
