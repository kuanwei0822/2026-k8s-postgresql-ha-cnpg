#!/bin/bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

helm upgrade --install cnpg . \
  --namespace cnpg-system \
  --create-namespace \
  --wait \
  -f values.yaml

echo ""
echo "[完成] CNPG Operator 安裝-升級結束"
kubectl get pod -n cnpg-system