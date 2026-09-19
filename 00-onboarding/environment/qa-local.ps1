$ErrorActionPreference = "Continue"

param(
    [string]$RepositoryRoot = (Get-Location).Path,
    [switch]$StopOnError
)

$results = @()
$terraformDirs = Get-ChildItem -Path $RepositoryRoot -Recurse -Filter "*.tf" -File |
    Where-Object { $_.FullName -notmatch "\\.terraform\\" } |
    ForEach-Object { $_.Directory.FullName } |
    Sort-Object -Unique

if ($terraformDirs.Count -eq 0) {
    Write-Host "[FAIL] No Terraform files found under $RepositoryRoot"
    exit 1
}

function Add-Result($Lab, $Check, $Status, $Message) {
    $script:results += [pscustomobject]@{
        Lab = $Lab
        Check = $Check
        Status = $Status
        Message = $Message
    }
}

Write-Host "=== Data2AI Academy Local Terraform QA ==="
Write-Host "Root: $RepositoryRoot"
Write-Host "Terraform directories: $($terraformDirs.Count)"
Write-Host ""

foreach ($dir in $terraformDirs) {
    $lab = $dir.Substring($RepositoryRoot.Length).TrimStart("")
    if ([string]::IsNullOrWhiteSpace($lab)) { $lab = "." }

    Write-Host ">>> $lab"

    & terraform -chdir="$dir" fmt -check
    if ($LASTEXITCODE -eq 0) {
        Add-Result $lab "fmt" "PASS" "Formatting is compliant."
    } else {
        Add-Result $lab "fmt" "FAIL" "Run terraform fmt in this directory."
        if ($StopOnError) { break }
        continue
    }

    & terraform -chdir="$dir" init -backend=false -input=false -no-color
    if ($LASTEXITCODE -ne 0) {
        Add-Result $lab "init" "FAIL" "Terraform initialization failed."
        if ($StopOnError) { break }
        continue
    }
    Add-Result $lab "init" "PASS" "Initialization without backend succeeded."

    & terraform -chdir="$dir" validate -no-color
    if ($LASTEXITCODE -eq 0) {
        Add-Result $lab "validate" "PASS" "Terraform configuration is valid."
    } else {
        Add-Result $lab "validate" "FAIL" "Terraform validation failed."
    }

    if ($StopOnError -and $results[-1].Status -eq "FAIL") { break }
}

$reportDir = Join-Path $RepositoryRoot "qa-results"
New-Item -ItemType Directory -Force -Path $reportDir | Out-Null

$results | Export-Csv -NoTypeInformation -Encoding UTF8 (Join-Path $reportDir "terraform-local-qa.csv")

$summary = $results | Group-Object Status | ForEach-Object {
    "$($_.Name): $($_.Count)"
}
$summary | Set-Content -Encoding UTF8 (Join-Path $reportDir "terraform-local-qa-summary.txt")

Write-Host ""
Write-Host "=== SUMMARY ==="
$summary | ForEach-Object { Write-Host $_ }

$failed = @($results | Where-Object Status -eq "FAIL").Count
if ($failed -gt 0) {
    Write-Host "RESULT: FAIL"
    exit 1
}

Write-Host "RESULT: PASS"
