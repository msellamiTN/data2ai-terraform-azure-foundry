$ErrorActionPreference = "Stop"
$failed = $false
function Test-CommandAvailable([string]$Name) {
  if (Get-Command $Name -ErrorAction SilentlyContinue) { Write-Host "[PASS] $Name"; return $true }
  Write-Host "[FAIL] $Name is not installed"; return $false
}
Write-Host "=== Data2AI Academy Environment Validation ==="
Test-CommandAvailable "git" | Out-Null
if (-not (Test-CommandAvailable "terraform")) { $failed = $true }
if (-not (Test-CommandAvailable "az")) { $failed = $true }
if (-not (Test-CommandAvailable "pwsh")) { $failed = $true }
if (-not $failed) {
  $tf = terraform version -json | ConvertFrom-Json
  $parts = $tf.terraform_version.Split('.')
  if ([int]$parts[0] -gt 1 -or ([int]$parts[0] -eq 1 -and [int]$parts[1] -ge 6)) {
    Write-Host "[PASS] Terraform >= 1.6"
  } else {
    Write-Host "[FAIL] Terraform >= 1.6 required"; $failed = $true
  }
  try {
    az account show --query id -o tsv | Out-Null
    if ($LASTEXITCODE -eq 0) { Write-Host "[PASS] Azure CLI authentication" }
    else { Write-Host "[INFO] Azure CLI installed but not authenticated" }
  } catch { Write-Host "[INFO] Azure CLI installed but not authenticated" }
}
if ($failed) { Write-Host "RESULT: FAIL"; exit 1 }
Write-Host "RESULT: PASS"
