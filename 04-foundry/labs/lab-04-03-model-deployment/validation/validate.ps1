$ErrorActionPreference="Stop"
terraform fmt -check
terraform init -backend=false -input=false
terraform validate
if($LASTEXITCODE -ne 0){throw "FAIL: model deployment contract"}
Write-Host "PASS: deployment contract validated."
