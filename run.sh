#!/usr/bin/env bash
# Anivexa-API sidecar (Node, zero deps) — runs on http://127.0.0.1:8002
# (anidoom backend expects it there; see ANIVEXA_URL in backend/.env)
set -e
cd "$(dirname "$0")"
command -v node >/dev/null || { echo "Node.js is required."; exit 1; }
export PORT=8002
exec node server.js
