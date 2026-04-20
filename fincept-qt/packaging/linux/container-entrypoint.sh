#!/bin/sh
set -eu

mode="${FINCEPT_CONTAINER_MODE:-mcp}"

if [ "$mode" = "desktop" ]; then
    exec ./FinceptTerminal
fi

host="${FINCEPT_MCP_HOST:-0.0.0.0}"
port="${PORT:-${FINCEPT_MCP_PORT:-18765}}"

exec python3 ./scripts/agents/rdagents/mcp_server.py --host "$host" --port "$port"