$ErrorActionPreference = "Stop"
terraform validate
if ($LASTEXITCODE -ne 0) { throw "Terraform validation failed." }
$state = terraform state list
if ($state -notmatch "azurerm_resource_group.imported") { throw "Imported Resource Group is missing from state." }
Write-Host "[PASS] Terraform validation"
Write-Host "[PASS] Imported Resource Group is tracked in state."
Write-Host "RESULT: PASS"
