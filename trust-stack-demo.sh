#!/bin/bash
# Trust Stack Demo — all tools working together
# Usage: bash trust-stack-demo.sh <path-to-project>

set -e

PROJECT=${1:-.}
echo "=== Trust Stack Demo ==="
echo "Project: $PROJECT"
echo ""

# 1. Probe: scan MCP security
echo "--- Step 1: MCP Security (probe) ---"
if [ -f "$PROJECT/.mcp.json" ]; then
    probe scan -p "$PROJECT/.mcp.json" --markdown
else
    echo "No .mcp.json found — skipping"
fi
echo ""

# 2. Vigil: scan dependency health
echo "--- Step 2: Dependency Health (vigil) ---"
if [ -f "$PROJECT/pyproject.toml" ]; then
    vigil report "$PROJECT/pyproject.toml" --name "$(basename $PROJECT)"
elif [ -f "$PROJECT/requirements.txt" ]; then
    vigil report "$PROJECT/requirements.txt" --name "$(basename $PROJECT)"
else
    echo "No dependency file found — skipping"
fi
echo ""

# 3. Caliber: show Trust Card
echo "--- Step 3: Agent Trust Card (caliber) ---"
caliber summary 2>/dev/null || echo "No calibration data yet"
echo ""

echo "=== Done ==="
