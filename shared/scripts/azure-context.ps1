$ErrorActionPreference="Stop"
$account = az account show --query "{user:user.name,tenant:tenantId,subscription:id,name:name}" -o json
if ($LASTEXITCODE -ne 0) { throw "Azure CLI is not authenticated." }
$account
Write-Host "Never commit tokens, passwords or client secrets."
