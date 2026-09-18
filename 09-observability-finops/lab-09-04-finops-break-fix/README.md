# Lab — Finops Break Fix

> 🟢 Data2AI Academy — Learner Execution Guide

## Mission
Build this operational scenario yourself. Create/edit the required project files, run commands, inspect outputs, validate the deployed contract, diagnose a controlled failure and complete the challenge.

## 1. Preflight
```powershell
git --version
az version
terraform version
az account show
```

## 2. BUILD
Create/edit the important files yourself. Start from requirements and architecture, not from solution. For Terraform, build progressively and validate after meaningful changes.

## 3. RUN
```powershell
terraform fmt
terraform init
terraform validate
terraform plan
```
Read the plan before applying:
```powershell
terraform apply
```

## 4. READ OUTPUT
For every command, record what happened, what the output proves, what changed and what you inspect next.

## 5. VALIDATE
Use Terraform state plus independent Azure evidence. For operations labs, also inspect monitoring, governance or cost evidence required by the mission.

## 6. EVIDENCE
Capture preflight, validation, plan, apply, inspection and operational evidence.

## 7. BREAK/FIX
Reproduce the supplied failure. Use:
Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention.

## 8. CHALLENGE
Complete the requirement-driven challenge before opening solution.

## 9. SOLUTION
Compare only after the challenge, focusing on engineering and operational decisions.

## 10. CLEANUP
Remove temporary resources and confirm the final state.

## Definition of Done
- [ ] I built/edited the project.
- [ ] I executed and interpreted commands.
- [ ] I validated independently.
- [ ] I completed Break/Fix.
- [ ] I completed the challenge first.
- [ ] I captured evidence.
- [ ] I cleaned up.
