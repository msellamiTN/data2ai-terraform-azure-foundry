$ErrorActionPreference = "Stop"
terraform validate
if ($LASTEXITCODE -ne 0) { throw "Terraform validation failed." }
$state = terraform state list
if ($state -notmatch "azurerm_resource_group.lab") { throw "Resource Group is missing from Terraform state." }
if ($state -notmatch "azurerm_storage_account.state_demo") { throw "Storage Account is missing from Terraform state." }
Write-Host "[PASS] Terraform validation"
Write-Host "[PASS] Expected state addresses are present."
Write-Host "RESULT: PASS"
