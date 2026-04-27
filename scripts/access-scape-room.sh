#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-8080}"

cd "$(dirname "$0")/.."

echo "Scape Room running at: http://localhost:${PORT}/scape-room/"
echo "Press Ctrl+C to stop."
python3 -m http.server "$PORT"
