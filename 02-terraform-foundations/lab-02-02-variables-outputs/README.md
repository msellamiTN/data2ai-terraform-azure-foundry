# Lab 02-02 — variables outputs

> 🟢 **Build Lab** · 45–75 min

## Mission
Build **variables outputs** from a clean student workspace. You will create/edit files, execute commands, validate independently, break the configuration, fix it, complete a challenge, compare the solution and clean up.

## 1. Prerequisites
```powershell
git --version
az version
terraform version
az account show
```
If required: `az login` and `az account set --subscription "<SUBSCRIPTION_ID>"`.

## 2. Enter the lab
```powershell
cd data2ai-terraform-azure-foundry/02-terraform-foundations/lab-02-02-variables-outputs
Get-ChildItem -Force
```
Do not inspect `solution/` before the challenge.

## 3. Create the student workspace
```powershell
Copy-Item starter student-work -Recurse -Force
cd student-work
code .
```

## 4. Create / edit the files
Create or complete `main.tf`, `variables.tf`, `outputs.tf` and `terraform.tfvars`. Use this baseline:

```hcl
terraform { required_version = ">= 1.6.0" required_providers { azurerm = { source = "hashicorp/azurerm", version = "~> 4.0" } } }
provider "azurerm" { features {} }
resource "azurerm_resource_group" "lab" { name = var.resource_group_name location = var.location tags = var.tags }
```

Parameterize values; never hard-code secrets.

## 5. Execute step by step
```powershell
terraform fmt -recursive
terraform init
terraform validate
terraform plan
```
Review the plan. If correct:
```powershell
terraform apply
```

## 6. Independent validation
```powershell
az account show --query "{subscription:id,tenant:tenantId}" --output table
az group show --name rg-data2ai-02-02-lab --query "{name:name,location:location,tags:tags}" --output json
```
```powershell
terraform output
terraform state list
```

## 7. Break / Fix 🔴
Introduce one deliberate failure: wrong variable, invalid region, missing permission, incorrect identifier or state/configuration mismatch. Capture:
```text
SYMPTOM:
EVIDENCE:
DIAGNOSIS:
ROOT CAUSE:
FIX:
VALIDATION:
PREVENTION:
```
Repair and repeat validation.

## 8. Challenge ⚫
Build a working variant without opening `solution/`. Keep inputs parameterized, preserve required tags/security constraints, prove the result independently and leave no secrets in Git.

## 9. Reference solution
After the challenge:
```powershell
cd ..
Get-ChildItem solution -Recurse
```
Compare one design choice and explain its consequence.

## 10. Cleanup
```powershell
terraform plan -destroy
terraform destroy
```

## Troubleshooting
| Symptom | Evidence | Layer | Action |
|---|---|---|---|
| Login failure | `az account show` | Identity | re-authenticate |
| Access denied | error + scope | RBAC | inspect role/scope |
| Init failure | `terraform init` | Provider | check version/network |
| Bad plan | `terraform plan` | State/config | inspect inputs/state |

## Completion
- [ ] files created/edited
- [ ] workflow executed
- [ ] independent validation passed
- [ ] Break/Fix repaired
- [ ] challenge completed
- [ ] solution compared
- [ ] cleanup completed
