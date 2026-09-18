$ErrorActionPreference='Stop'
$name = if ($env:TF_LAB_RG) { $env:TF_LAB_RG } else { 'rg-data2ai-tf-lab' }
try { $rg = az group show --name $name --only-show-errors | ConvertFrom-Json; if ($rg.name -eq $name) { '[PASS] Resource group exists' } else { '[FAIL] Resource group mismatch'; exit 1 } } catch { '[FAIL] Resource group not found'; Write-Host 'Action: verify subscription, name and terraform apply.'; exit 1 }
