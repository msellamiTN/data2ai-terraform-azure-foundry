$ErrorActionPreference="Stop"
terraform fmt -check
terraform init -backend=false -input=false
terraform validate
if($LASTEXITCODE -ne 0){throw "FAIL: Terraform contract"}
Write-Host "PASS: project boundary configuration validated."
