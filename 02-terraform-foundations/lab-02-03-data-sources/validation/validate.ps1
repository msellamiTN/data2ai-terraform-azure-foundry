$ErrorActionPreference = "Stop"
terraform validate
if ($LASTEXITCODE -ne 0) { throw "Terraform validation failed." }
terraform output -raw discovered_resource_group_id | Out-Null
terraform output -raw storage_account_id | Out-Null
if ($LASTEXITCODE -ne 0) { throw "Expected outputs are missing." }
Write-Host "[PASS] Terraform validation"
Write-Host "[PASS] Data source and storage outputs are available."
Write-Host "RESULT: PASS"
