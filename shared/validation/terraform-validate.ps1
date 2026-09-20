param([string]$Path=".")
$ErrorActionPreference="Stop"
Push-Location $Path
try {
  terraform fmt -check -recursive
  if ($LASTEXITCODE -ne 0) { throw "FAIL: terraform fmt -check" }
  terraform init -backend=false -input=false
  if ($LASTEXITCODE -ne 0) { throw "FAIL: terraform init" }
  terraform validate
  if ($LASTEXITCODE -ne 0) { throw "FAIL: terraform validate" }
  Write-Host "PASS: Terraform configuration contract validated."
} finally { Pop-Location }
