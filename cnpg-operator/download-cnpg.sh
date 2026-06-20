#!/bin/bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

helm dependency update .

echo ""
echo "[完成] CNPG 離線包下載完成"
ls charts/