# Network Topology — Caddy + Cloudflare

- Cloudflare manages DNS for `bigtorig.com` → Hostinger IP.
- Caddy terminates TLS and reverse-proxies to Compose/KIND services.
- Only selected services are exposed publicly.
- Compose `-p <project>` ensures targeted down/up without collateral impact.

Keep Caddyfile diffs/versioning in `local-ai-packaged`; document public endpoints here.
