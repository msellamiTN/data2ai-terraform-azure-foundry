# Lab 01-03 — Rbac

> 🟢 **Build Lab** · Beginner → Intermediate · 45–75 min

## Mission
Build, validate, break, repair and clean up **Rbac**. This is an executable workshop: create/edit files, run commands, inspect evidence, diagnose a controlled failure, then complete a challenge.

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
cd data2ai-terraform-azure-foundry/01-azure-foundations/lab-01-03-rbac
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
Create the lab input/configuration under student-work/. Keep IDs and names parameterized. Example:
```text
AZURE_LOCATION=westeurope
AZURE_RESOURCE_GROUP=rg-data2ai-01-03-lab
```

## 4 — Execute
Execute the Azure CLI/Portal steps required by this lab. For Terraform files, run `terraform fmt`, `terraform init`, `terraform validate`, then `terraform plan`.

## 5 — Validate independently
```powershell
az account show --query "{subscription:id,tenant:tenantId}" --output table
az group show --name rg-data2ai-01-03-lab --query "{name:name,location:location,tags:tags}" --output json
```
Run validation/validate.ps1 from the lab root if present.

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
Remove only resources created for this lab; never delete shared course resources.

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
