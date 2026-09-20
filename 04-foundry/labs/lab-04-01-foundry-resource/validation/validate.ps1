$ErrorActionPreference="Stop"
terraform fmt -check
if($LASTEXITCODE -ne 0){throw "FAIL: formatting"}
terraform init -backend=false -input=false
if($LASTEXITCODE -ne 0){throw "FAIL: init"}
terraform validate
if($LASTEXITCODE -ne 0){throw "FAIL: validate"}
Write-Host "PASS: local Terraform contract."
Write-Host "NEXT: verify the actual Azure resource contract with az resource show."
