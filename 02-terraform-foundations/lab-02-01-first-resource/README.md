# Lab 02-01 — First Resource

> 🟢 **Build Lab** · Beginner → Intermediate · 45–75 min

## Mission
Build, validate, break, repair and clean up **First Resource**. This is an executable workshop: create/edit files, run commands, inspect evidence, diagnose a controlled failure, then complete a challenge.

## Prerequisites
```powershell
git --version
az version
terraform version
az account show
```
If needed: `az login`, then `az account set --subscription "<SUBSCRIPTION_ID>"`.

## 1 — Enter the lab
```powershell
cd data2ai-terraform-azure-foundry/02-terraform-foundations/lab-02-01-first-resource
Get-ChildItem -Force
```
Do not open solution/ before the challenge.

## 2 — Create your workspace
```powershell
if (Test-Path starter) { Copy-Item starter student-work -Recurse -Force } else { New-Item student-work -ItemType Directory -Force | Out-Null }
cd student-work
code .
```

## 3 — Create / edit files
Create `main.tf`, `variables.tf`, `outputs.tf`, `terraform.tfvars`.

```hcl
# main.tf
terraform {
  required_version = ">= 1.6.0"
  required_providers { azurerm = { source = "hashicorp/azurerm", version = "~> 4.0" } }
}
provider "azurerm" { features {} }
resource "azurerm_resource_group" "lab" {
  name = var.resource_group_name
  location = var.location
  tags = var.tags
}
```

```hcl
# variables.tf
variable "resource_group_name" { type = string }
variable "location" { type = string, default = "westeurope" }
variable "tags" { type = map(string), default = {} }
```

```hcl
# outputs.tf
output "resource_group_name" { value = azurerm_resource_group.lab.name }
output "resource_group_id" { value = azurerm_resource_group.lab.id }
```

```hcl
# terraform.tfvars
resource_group_name = "rg-data2ai-02-01-lab"
location = "westeurope"
tags = { environment = "lab", managed_by = "terraform", course = "02" }
```

## 4 — Execute
```powershell
terraform fmt -recursive
terraform init
terraform validate
terraform plan
terraform apply
```

## 5 — Validate independently
```powershell
az account show --query "{subscription:id,tenant:tenantId}" --output table
az group show --name rg-data2ai-02-01-lab --query "{name:name,location:location,tags:tags}" --output json
```
```powershell
terraform output
terraform state list
```

## 6 — Evidence
Record command, expected output, observed output, evidence location and PASS/FAIL in notes.md.

## 7 — BREAK / FIX 🔴
Introduce one reversible failure: invalid region, wrong variable, missing permission, wrong identifier, missing tag or provider mismatch. Capture:
```text
SYMPTOM:
EVIDENCE:
DIAGNOSIS:
ROOT CAUSE:
FIX:
VALIDATION:
PREVENTION:
```
Repair, rerun and independently validate.

## 8 — Challenge ⚫
Without opening solution/, create a working variant that remains parameterized, respects security/tagging constraints, can be independently validated and can be reset safely. Capture the final validation evidence.

## 9 — Reference solution
Only after the challenge:
```powershell
cd ..
Get-ChildItem solution -Recurse
```
Write down one meaningful difference between your implementation and the reference.

## 10 — Cleanup
```powershell
terraform plan -destroy
terraform destroy
az group exists --name rg-data2ai-02-01-lab
```

## Troubleshooting
| Symptom | Evidence | Layer | First action |
|---|---|---|---|
| command not found | tool version | Toolchain | fix PATH |
| login failure | az account show | Identity | re-authenticate |
| authorization denied | error + scope | RBAC | inspect role/scope |
| provider failure | terraform init | Provider | check version |
| invalid location | Azure API error | Configuration | choose supported region |
| unexpected plan | terraform plan | State/config | inspect inputs/state |

## Completion criteria
- [ ] files created/edited
- [ ] execution completed
- [ ] independent validation passed
- [ ] Break/Fix repaired
- [ ] challenge completed
- [ ] solution compared
- [ ] cleanup completed
