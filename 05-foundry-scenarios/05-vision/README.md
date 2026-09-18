# Lab — Vision

> 🟢 Data2AI Academy — Learner Execution Guide

## Mission
Build this Foundry AI scenario as an engineer. Create/edit files, execute commands, inspect outputs, validate the service contract, diagnose a controlled failure and complete the challenge.

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
Start from requirements and architecture. Create the important project files yourself. Identify the role of Foundry and every supporting Azure AI service.

## 4. RUN
```powershell
terraform fmt
terraform init
terraform validate
terraform plan
```
Read the plan before:
```powershell
terraform apply
```

## 5. READ OUTPUT
After every command answer:
1. What did it do?
2. What did the output prove?
3. What changed?
4. What should I inspect next?

## 6. VALIDATE
Compare Terraform configuration, state and Azure. Then verify the AI scenario contract: required resource/project/model/service configuration and expected functional behavior.

## 7. EVIDENCE
Capture plan, apply, service inspection and validation outputs in evidence/.

## 8. BREAK/FIX
Reproduce the supplied failure. Diagnose with:
```text
Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention
```
Check API/provider, configuration, identity/RBAC, network and service limits.

## 9. CHALLENGE
Implement the independent variation before opening solution. Prove it with outputs and validation.

## 10. SOLUTION
Compare only after the challenge.

## 11. CLEANUP
```powershell
terraform plan -destroy
terraform destroy
```

## Definition of Done
- [ ] I created/edited the project.
- [ ] I executed and interpreted commands.
- [ ] I validated Azure and the AI scenario.
- [ ] I completed Break/Fix.
- [ ] I completed the challenge first.
- [ ] I captured evidence.
- [ ] I cleaned up.
