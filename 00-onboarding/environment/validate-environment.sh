#!/usr/bin/env bash
set -euo pipefail
failed=0
echo "=== Data2AI Academy Environment Validation ==="
for command in git terraform az pwsh; do
  if command -v "$command" >/dev/null 2>&1; then echo "[PASS] $command"; else echo "[FAIL] $command is not installed"; failed=1; fi
done
if command -v terraform >/dev/null 2>&1; then
  version="$(terraform version -json | python -c 'import json,sys; print(json.load(sys.stdin)["terraform_version"])')"
  if printf '%s
' "$version" | awk -F. '{exit !($1 > 1 || ($1 == 1 && $2 >= 6))}'; then
    echo "[PASS] Terraform >= 1.6"
  else
    echo "[FAIL] Terraform >= 1.6 required"; failed=1
  fi
fi
if command -v az >/dev/null 2>&1; then
  if az account show --query id -o tsv >/dev/null 2>&1; then echo "[PASS] Azure CLI authentication"; else echo "[INFO] Azure CLI installed but not authenticated"; fi
fi
if [ "$failed" -ne 0 ]; then echo "RESULT: FAIL"; exit 1; fi
echo "RESULT: PASS"
