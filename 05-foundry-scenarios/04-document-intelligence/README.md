# Lab — Document Intelligence

> 🟢 Data2AI Academy — Learner Execution Guide

## Mission
Engineer this AI scenario from its business requirement and architecture. Create/edit the project, run it, inspect outputs, validate the deployed contract, break a controlled configuration and fix it.

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
Create the required Terraform/configuration files yourself. Identify every Azure service in the architecture and its purpose. Build progressively and keep configuration values separate from code.

## 4. RUN
```powershell
terraform fmt
terraform init
terraform validate
terraform plan
```
Read the plan and apply only when it matches the scenario contract:
```powershell
terraform apply
```

## 5. READ OUTPUT
Stop after each command. Record what happened, what was proved and what must be inspected next.

## 6. VALIDATE THE AI PLATFORM
Validate infrastructure independently with Azure CLI. Then validate the scenario contract: Foundry project/model/deployment and the supporting AI service required by the architecture.

## 7. EVIDENCE
Capture preflight, plan, apply, service inspection and validation outputs in evidence/.

## 8. BREAK/FIX
Use the supplied failure scenario. Diagnose from evidence using:
Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention.

Consider provider/API, region, model/version, capacity/quota, identity/RBAC and network dependencies.

## 9. CHALLENGE
Build the requested variation without opening solution. The challenge is requirement-driven, not copy-driven.

## 10. SOLUTION
Compare architecture, Terraform design, validation and operational choices only after the challenge.

## 11. CLEANUP
```powershell
terraform plan -destroy
terraform destroy
```

## Definition of Done
- [ ] I built/edited the project.
- [ ] I ran and interpreted the commands.
- [ ] I validated infrastructure and AI scenario behavior.
- [ ] I completed Break/Fix.
- [ ] I completed the challenge first.
- [ ] I captured evidence.
- [ ] I cleaned up.
