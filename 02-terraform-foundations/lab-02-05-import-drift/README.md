# Lab 02-05 — Import Drift

> 🟢 **Build Lab** · 45–75 min

## Mission
Build **Import Drift** as an executable Azure engineering workshop.

## Prerequisites
```powershell
git --version
az version
terraform version
az account show
```

## Build
```powershell
cd data2ai-terraform-azure-foundry/02-terraform-foundations/lab-02-05-import-drift
Copy-Item starter student-work -Recurse -Force
cd student-work
code .
```
Create/edit the files in this workspace. Keep names, regions and IDs parameterized. Never store secrets.

## Execute
```powershell
terraform fmt -recursive
terraform init
terraform validate
terraform plan
terraform apply
```

## Validate independently
```powershell
az account show --query "{subscription:id,tenant:tenantId}" --output table
az group show --name rg-data2ai-02-05-lab --output json
terraform output
terraform state list
```

## Break / Fix 🔴
Introduce a controlled error relevant to this topic. Capture Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention. Repair and rerun the validation sequence.

## Challenge ⚫
Create a working variant without opening the solution folder. Preserve parameterization, security/tagging constraints and independent validation.

## Reference solution
Only after the challenge: Get-ChildItem solution -Recurse. Compare one design choice.

## Cleanup
```powershell
terraform plan -destroy
terraform destroy
```

## Completion
- [ ] files created/edited
- [ ] plan reviewed
- [ ] deployment executed
- [ ] independent validation passed
- [ ] Break/Fix repaired
- [ ] challenge completed
- [ ] cleanup completed
