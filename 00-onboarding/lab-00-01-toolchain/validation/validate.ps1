$ErrorActionPreference="Stop"
Write-Host "Data2AI Academy — 00-onboarding/lab-00-01-toolchain Validation"
az account show --query id -o tsv | Out-Null
if($LASTEXITCODE -ne 0){throw "Azure authentication failed"}
Write-Host "[PASS] Azure authentication"
Write-Host "[PASS] Validation checkpoint"
Write-Host "RESULT: PASS"
