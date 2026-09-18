# Lab — Private Networking

> 🟢 Data2AI Academy — Learner Execution Guide

## Mission
Build the security/platform scenario yourself. Create or edit the important files, run commands, inspect outputs, validate identity and Azure state, break a controlled configuration and fix it.

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
Create/edit the requested Terraform files. Work progressively: provider/versions → variables → resources → identity/RBAC/network dependencies → outputs → validation.

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
For every command record what happened, what was proved and what you inspect next.

## 6. SECURITY VALIDATION
Use Azure CLI to inspect the actual identity, role assignments, scopes, Key Vault or private-network resources as applicable. Prove the intended access boundary.

## 7. EVIDENCE
Capture validation, plan, apply and security inspection outputs in evidence/.

## 8. BREAK/FIX
Use the broken scenario. Diagnose:
```text
Identity → Role → Scope → Permission → Network → Service
```
Then apply the full troubleshooting loop: Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention.

## 9. CHALLENGE
Implement the independent security requirement before opening solution.

## 10. SOLUTION
Compare only after the challenge.

## 11. CLEANUP
```powershell
terraform plan -destroy
terraform destroy
```

## Definition of Done
- [ ] Files created/edited by me.
- [ ] Commands executed and interpreted.
- [ ] Security boundary independently validated.
- [ ] Break/Fix completed.
- [ ] Challenge completed before solution.
- [ ] Evidence captured.
- [ ] Resources cleaned up.
