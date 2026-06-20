#!/bin/bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

kubectl delete -f cluster.yaml
kubectl delete -f secret.yaml

echo ""
echo "[完成] CNPG Cluster 刪除完成"