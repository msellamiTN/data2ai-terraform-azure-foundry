$ErrorActionPreference = "Stop"
Write-Host "=== Data2AI Academy Environment Setup ==="
$commands = @("git","terraform","az","pwsh")
$missing = @()
foreach ($command in $commands) {
  if (-not (Get-Command $command -ErrorAction SilentlyContinue)) { $missing += $command }
}
if ($missing.Count -gt 0) {
  Write-Host "[FAIL] Missing: $($missing -join ', ')"
  Write-Host "Install the missing tools, restart the terminal, then rerun this script."
  exit 1
}
Write-Host "[PASS] Git"
terraform version
Write-Host "[PASS] Terraform"
az version
Write-Host "[PASS] Azure CLI"
pwsh --version
Write-Host "[PASS] PowerShell"
Write-Host "Run 'az login' when Azure-connected QA is required."
Write-Host "RESULT: PASS"
