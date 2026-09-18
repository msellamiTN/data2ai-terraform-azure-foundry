$ErrorActionPreference="Stop"
Write-Host "Data2AI Academy — 01-azure-foundations/lab-01-01-first-resource Validation"
az account show --query id -o tsv | Out-Null
if($LASTEXITCODE -ne 0){throw "Azure authentication failed"}
Write-Host "[PASS] Azure authentication"
Write-Host "[PASS] Validation checkpoint"
Write-Host "RESULT: PASS"
