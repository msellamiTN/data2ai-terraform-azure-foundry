#!/usr/bin/env bash
set -euo pipefail
echo "=== Data2AI Academy Environment Setup ==="
missing=0
for command in git terraform az pwsh; do
  if command -v "$command" >/dev/null 2>&1; then echo "[PASS] $command"; else echo "[FAIL] $command is not installed"; missing=1; fi
done
if [ "$missing" -ne 0 ]; then
  echo "Install the missing tools, restart the terminal, then rerun this script."
  exit 1
fi
terraform version
az version
pwsh --version
echo "Run 'az login' when Azure-connected QA is required."
echo "RESULT: PASS"
