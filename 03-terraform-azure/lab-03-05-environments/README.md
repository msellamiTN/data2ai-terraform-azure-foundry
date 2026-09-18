# Lab 03-05 — environments

> 🟢 **Build Lab** · 45–75 min

## Mission
Build, validate, break, repair and clean up this Azure/Terraform capability.

## 1. Prerequisites
```powershell
git --version
az version
terraform version
az account show
```

## 2. Build
```powershell
cd data2ai-terraform-azure-foundry/03-terraform-azure/lab-03-05-environments
Copy-Item starter student-work -Recurse -Force
cd student-work
code .
```
Create/edit the files in student-work. Keep inputs parameterized and never commit secrets.

## 3. Execute
```powershell
terraform fmt -recursive
terraform init
terraform validate
terraform plan
terraform apply
```

## 4. Validate independently
```powershell
az account show --query "{subscription:id,tenant:tenantId}" --output table
az group show --name rg-data2ai-03-05-lab --output json
terraform output
terraform state list
```

## 5. Break / Fix 🔴
Introduce one controlled failure. Document Symptom, Evidence, Diagnosis, Root Cause, Fix, Validation and Prevention. Repair and rerun the full validation sequence.

## 6. Challenge ⚫
Build a working variant without opening solution/. Preserve parameterization, security/tagging requirements and independent validation.

## 7. Reference solution
After the challenge, inspect solution/ and record one meaningful design difference.

## 8. Cleanup
```powershell
terraform plan -destroy
terraform destroy
```

## Completion
- [ ] build complete
- [ ] validation passed
- [ ] Break/Fix repaired
- [ ] challenge complete
- [ ] cleanup complete
