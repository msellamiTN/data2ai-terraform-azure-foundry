$ErrorActionPreference="Stop"
az account show --query id -o tsv | Out-Null
if($LASTEXITCODE -ne 0){throw "Azure authentication failed"}
Write-Host "[PASS] Azure authentication"
Write-Host "RESULT: PASS"
