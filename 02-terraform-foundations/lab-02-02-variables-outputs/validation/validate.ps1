$ErrorActionPreference = "Stop"
terraform validate
if ($LASTEXITCODE -ne 0) { throw "Terraform validation failed." }
$name = terraform output -raw resource_group_name
if ([string]::IsNullOrWhiteSpace($name)) { throw "resource_group_name output is empty." }
$rg = az group show --name $name --only-show-errors --output json | ConvertFrom-Json
if (-not $rg.id) { throw "Resource Group '$name' was not found." }
Write-Host "[PASS] Terraform validation"
Write-Host "[PASS] Resource Group exists: $name"
Write-Host "RESULT: PASS"
