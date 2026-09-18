# Lab — Pipeline Break Fix

> 🟢 Data2AI Academy — Learner Execution Guide

## Mission
Build and operate this enterprise DevOps/Terraform scenario yourself. Create/edit files, execute commands, read outputs, validate results, diagnose a controlled failure and complete the challenge.

## 1. Preflight
```powershell
git --version
az version
terraform version
az account show
```

## 2. BUILD
Create or edit the project/workflow files yourself. Understand each Terraform and CI/CD step before running it.

## 3. RUN
Local Terraform checks:
```powershell
terraform fmt -check
terraform validate
terraform plan
```
Where required, generate and inspect artifacts before approval/apply.

## 4. READ OUTPUT
Inspect command output and CI logs. Record what failed, what passed and what evidence supports the conclusion.

## 5. VALIDATE
Prove the infrastructure and pipeline contract independently. Check Terraform state and Azure state where applicable.

## 6. EVIDENCE
Capture validation, plan, workflow/log and deployment evidence.

## 7. BREAK/FIX
Use the supplied broken scenario. Follow:
Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention.

Reproduce the failure locally when possible before modifying the pipeline.

## 8. CHALLENGE
Implement the independent requirement before opening solution.

## 9. SOLUTION
Compare only after the challenge. Focus on architecture, automation, safety and maintainability.

## 10. CLEANUP
Destroy temporary Azure resources when the scenario creates them.

## Definition of Done
- [ ] I created/edited the implementation.
- [ ] I executed and interpreted the commands/logs.
- [ ] I validated the result.
- [ ] I completed Break/Fix.
- [ ] I completed the challenge first.
- [ ] I captured evidence.
- [ ] I cleaned up.
