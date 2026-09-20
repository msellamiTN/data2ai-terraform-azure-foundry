$ErrorActionPreference = "Stop"

terraform fmt -check
if ($LASTEXITCODE -ne 0) { throw "terraform fmt failed" }

terraform validate
if ($LASTEXITCODE -ne 0) { throw "terraform validate failed" }

Write-Host "RESULT: READY"
