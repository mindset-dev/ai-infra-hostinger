# Architecture — AI Infra on Hostinger

Hostinger server as a **cognitive fabric**:
- Docker Compose projects isolate capabilities (localai, maui, mem0, o3, arcane).
- Caddy + Cloudflare front public endpoints on `bigtorig.com`.
- KIND (3-node) supports agentic/K8s-native workloads (see `dot-ai`).
- Data plane (Supabase, Qdrant, Neo4j, MinIO) underpins memory & relationships.
- Orchestration (Flowise/LangChain; Archon for Claude Code RAG) composes reasoning.

Design principle: _Each Compose project is an isolated “neuron” — individually restartable, collectively intelligent._
