# Lab 01-02 — Cli

> 🟢 **Build Lab** · Beginner → Intermediate · 45–75 min

## Mission
Build, validate, break, repair and clean up a small Azure capability for **Cli**. This workshop is executable: you will create/edit files, run commands, inspect evidence, diagnose a failure and complete a challenge.

## Learning objectives
- verify Azure CLI, Terraform and subscription context;
- create or edit the required files;
- execute the workflow step by step;
- validate independently;
- diagnose a controlled failure;
- complete the challenge without the solution;
- clean up safely.

## Prerequisites
```powershell
git --version
az version
terraform version
az account show
```

If needed:
```powershell
az login
az account list --output table
az account set --subscription "<SUBSCRIPTION_ID>"
az account show --query "{name:name,id:id,tenant:tenantId}" --output table
```

## 1 — Clone and enter
```powershell
git clone https://github.com/msellamiTN/data2ai-terraform-azure-foundry.git
cd data2ai-terraform-azure-foundry/01-azure-foundations/lab-01-02-cli
```

## 2 — Inspect
```powershell
Get-ChildItem -Force
Get-ChildItem -Recurse -File | Select-Object FullName
```
**Do not open solution/ yet.**

## 3 — Create your workspace
```powershell
if (Test-Path starter) { Copy-Item starter student-work -Recurse -Force } else { New-Item -ItemType Directory student-work -Force | Out-Null }
cd student-work
code .
```

## 4 — Create / edit files
Create the service configuration requested by this lab under student-work/. Keep identifiers parameterized and record resource IDs in notes.md.

Example:
```text
AZURE_LOCATION=westeurope
AZURE_RESOURCE_GROUP=rg-data2ai-01-02-lab
```
Do not place secrets in the repository.

## 5 — Execute
Execute the service-specific Azure CLI/Portal steps described by the lab. For any Terraform configuration present, run:
```powershell
terraform fmt -recursive
terraform init
terraform validate
terraform plan
```

## 6 — Independent validation
```powershell
az account show --query "{subscription:id,tenant:tenantId}" --output table
az group show --name rg-data2ai-01-02-lab --query "{name:name,location:location,tags:tags}" --output json
```
Run the automated validator from the lab root if provided.

## 7 — Evidence checkpoint
Record in notes.md:
```text
Command:
Expected:
Observed:
Evidence:
Result: PASS / FAIL
```

## 8 — BREAK / FIX 🔴
Introduce one reversible failure: invalid region, wrong variable, missing permission, wrong identifier, missing tag, provider mismatch or incorrect pipeline path.

Capture:
```text
SYMPTOM:
EVIDENCE:
DIAGNOSIS:
ROOT CAUSE:
FIX:
VALIDATION:
PREVENTION:
```

Repair and rerun the validation sequence, then validate independently again.

## 9 — Challenge ⚫
Without opening solution/, deliver a working variant that:
1. keeps inputs parameterized;
2. preserves security/tagging constraints;
3. can be independently validated;
4. leaves no secrets in Git;
5. can be reset or destroyed cleanly.

## 10 — Reference solution
Only after the challenge:
```powershell
cd ..
Get-ChildItem solution -Recurse
```
Record one difference between your implementation and the reference and explain its consequence.

## 11 — Cleanup
Remove only resources created for this lab. Do not delete shared course infrastructure.

## Troubleshooting
| Symptom | Evidence | Layer | First action |
|---|---|---|---|
| command not found | tool version | Toolchain | fix PATH |
| login failure | az account show | Identity | re-authenticate |
| authorization denied | error + scope | RBAC | inspect role/scope |
| provider failure | terraform init | Provider | check version/connectivity |
| invalid location | Azure API error | Configuration | choose supported region |
| unexpected plan | terraform plan | State/config | inspect variables/state |

## Completion criteria
- [ ] files created/edited
- [ ] commands executed in order
- [ ] independent validation passed
- [ ] Break/Fix repaired
- [ ] challenge completed
- [ ] solution compared
- [ ] cleanup completed

> **Academy rule:** a successful apply is not enough. Prove the result, explain it, break it, fix it, and clean it up.
