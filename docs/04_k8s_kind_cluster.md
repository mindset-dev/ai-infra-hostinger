# ☸️ Kubernetes KIND Cluster

## Overview

Your Hostinger server hosts not only Docker Compose projects but also a lightweight **Kubernetes cluster** — built using **KIND (Kubernetes in Docker)**.  
This environment serves as an **AI-native experimentation lab**, where automation, reasoning, and deployment pipelines converge.

---

## 🧱 Cluster Configuration

| Node | Role | Description |
|------|------|-------------|
| `k8s-control-plane` | Control Plane | Manages cluster state, API server, and scheduling |
| `k8s-worker` | Worker Node 1 | Runs application pods, agents, and jobs |
| `k8s-worker2` | Worker Node 2 | Handles background compute and storage services |

Kubernetes version: **v1.33.1**  
Cluster initialized via KIND configuration file (`kubernetes/kind-cluster.yaml`).

---

## ⚙️ KIND Setup Summary

KIND (Kubernetes in Docker) is ideal for **on-server sandbox clusters**.  
It allows rapid creation, teardown, and automation testing without needing a managed service.

### Example Creation Command

```bash
kind create cluster --name k8s --config kubernetes/kind-cluster.yaml
```

### Sample Configuration

```yaml
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
  - role: control-plane
  - role: worker
  - role: worker
networking:
  disableDefaultCNI: false
  kubeProxyMode: iptables
```

---

## 🔗 Integration with Docker Projects

While your Docker Compose projects run directly on the Hostinger VPS, they can be mirrored or extended into the Kubernetes cluster.

| Integration Mode | Description | Example |
|------------------|-------------|----------|
| **Port Mirroring** | Expose Docker service ports to KIND network | Flowise UI available in both Compose and KIND |
| **Helm-based Migration** | Convert Compose definitions to Helm charts via `kompose convert` | Future-ready packaging for Kubernetes deployment |
| **Agent Deployment** | Deploy AI microservices as Pods for distributed reasoning | Run individual LangChain or n8n agents inside cluster |

---

## 🧠 Cognitive Workloads

This cluster acts as a **staging ground for intelligent orchestration**.  
It supports deployment of multi-agent systems that self-monitor and adapt.

### Example AI-Native Workload Flow

```mermaid
graph TD
    A[LangGraph Controller] -->|Deploys| B[FastMCP Agents]
    B --> C[Vector Store Pods (Qdrant)]
    B --> D[Supabase API Pods]
    D --> E[LLM Routers (Flowise)]
    E --> F[Monitoring Stack (Loki + Grafana)]
```

This setup forms the backbone for **self-regulating AI systems** — where agents can redeploy, balance load, and manage workflows autonomously.

---

## 🧩 Observability Stack

Your future Kubernetes observability pipeline may include:

| Tool | Role | Notes |
|------|------|-------|
| **Grafana** | Visualization | Dashboards for agent performance and metrics |
| **Loki** | Log aggregation | Lightweight log collection for AI agent output |
| **Prometheus** | Metrics collection | Optional integration for system health |
| **Langfuse** | AI tracing | Tracks token usage, agent reasoning steps, and API flow |

This observability layer provides visibility into cognitive orchestration performance across both Docker and Kubernetes.

---

## 🧬 Future Enhancements

- 🔁 Integrate **FastMCP** for multi-container reasoning flows  
- 🧠 Deploy **LangGraph** as the control plane for cognitive orchestration  
- 🌍 Extend cluster networking for federated AI nodes (multi-server mesh)  
- 📈 Implement **self-healing AI agents** using Kubernetes Jobs + CronWorkflows

---

## 🚀 Summary

The KIND cluster transforms your Hostinger VPS into a **mini cognitive cloud**.  
It acts as a proving ground for the next generation of infrastructure — where **DevOps discipline meets autonomous intelligence**.

---

➡️ Next: [AI Stack](./05_ai_stack.md)

