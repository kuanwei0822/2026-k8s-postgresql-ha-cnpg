#!/bin/bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

kubectl apply -f secret.yaml
kubectl apply -f cluster.yaml

echo ""
echo "[完成] CNPG Cluster 建立完成"
kubectl get cluster -n mynamespace