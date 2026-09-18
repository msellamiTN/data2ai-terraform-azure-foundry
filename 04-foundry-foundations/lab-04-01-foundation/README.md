# Lab — Foundation

> 🟢 Data2AI Academy — Learner Execution Guide

## Mission
Build and validate this scenario yourself. Create or edit the important files, execute commands, inspect outputs, diagnose a controlled failure and complete the challenge.

## 1. Preflight
```powershell
git --version
az version
terraform version
az account show
```

## 2. Create the learner workspace
```powershell
New-Item -ItemType Directory -Name student-work -Force
cd student-work
code .
```
Never use solution as your starting point.

## 3. BUILD
Create/edit the files required by the scenario. For Terraform build progressively: provider/versions → variables → tfvars → resources/data/modules → outputs → validation.

Run after meaningful edits:
```powershell
terraform fmt
terraform validate
```

## 4. RUN
For Terraform:
```powershell
terraform init
terraform validate
terraform plan
```
Read the plan before:
```powershell
terraform apply
```

## 5. READ OUTPUT
After every command record:
- what the command did;
- what the output proves;
- what changed;
- what you inspect next.

## 6. VALIDATE
Use an independent Azure view where applicable:
```powershell
terraform state list
terraform state show <address>
terraform output
az resource list --output table
```
For Foundry, also verify the resource/project/model/deployment contract required by the mission.

## 7. EVIDENCE
```powershell
New-Item -ItemType Directory -Name evidence -Force
terraform validate | Tee-Object evidence/03-validate.txt
terraform plan | Tee-Object evidence/04-plan.txt
```
Capture deployment and validation evidence.

## 8. BREAK/FIX
Use the broken scenario when present. Follow:
```text
Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention
```
Check HCL, Terraform, provider/API, Azure, identity/RBAC, network and quota/capacity layers.

## 9. CHALLENGE
Complete the independent requirements before opening solution. Demonstrate your own implementation, outputs, validation and evidence.

## 10. SOLUTION
Compare only after the challenge. Focus on engineering decisions rather than copying text.

## 11. CLEANUP
```powershell
terraform plan -destroy
terraform destroy
```

## Definition of Done
- [ ] Files created/edited by me.
- [ ] Commands executed and outputs interpreted.
- [ ] Independent validation completed.
- [ ] Break/Fix completed.
- [ ] Challenge completed before solution.
- [ ] Evidence captured.
- [ ] Resources cleaned up.
