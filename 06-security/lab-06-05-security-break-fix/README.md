# Lab — Security Break Fix

> 🟢 Data2AI Academy — Learner Execution Guide

## Mission
Engineer the enterprise Terraform scenario. Create/edit the project, execute commands, read outputs, validate the infrastructure contract, diagnose a controlled failure and complete the challenge.

## 1. Preflight
```powershell
git --version
az version
terraform version
az account show
```

## 2. Workspace
```powershell
New-Item -ItemType Directory -Name student-work -Force
cd student-work
code .
```

## 3. BUILD
Create the requested modules/configuration yourself. Define explicit inputs, outputs, dependencies and validation. Never start from solution.

## 4. RUN
```powershell
terraform fmt
terraform init
terraform validate
terraform plan
```
Read the plan, then:
```powershell
terraform apply
```

## 5. READ OUTPUT
After each command record what it did, what it proved, what changed and what must be inspected next.

## 6. VALIDATE
Inspect:
```powershell
terraform state list
terraform state show <address>
terraform output
az resource list --output table
```
Compare configuration ↔ state ↔ Azure.

## 7. EVIDENCE
Capture fmt, validate, plan, apply, state/inspection and independent validation evidence.

## 8. BREAK/FIX
Reproduce the supplied failure. Use:
Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention.

## 9. CHALLENGE
Complete the requirement-driven challenge before opening solution.

## 10. SOLUTION
Compare architecture, module contracts, environment design, validation and maintainability only after the challenge.

## 11. CLEANUP
```powershell
terraform plan -destroy
terraform destroy
```

## Definition of Done
- [ ] I created/edited the important files.
- [ ] I executed and interpreted the commands.
- [ ] I validated state and Azure.
- [ ] I completed Break/Fix.
- [ ] I completed the challenge before solution.
- [ ] I captured evidence.
- [ ] I cleaned up.
