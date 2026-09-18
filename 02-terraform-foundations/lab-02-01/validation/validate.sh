#!/usr/bin/env bash
set -euo pipefail
name="${TF_LAB_RG:-rg-data2ai-tf-lab}"
az group show --name "$name" --only-show-errors >/dev/null && echo "[PASS] Resource group exists" || { echo "[FAIL] Resource group not found"; exit 1; }
