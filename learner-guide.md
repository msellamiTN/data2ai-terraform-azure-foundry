# Data2AI Academy — Learner Guide

## Terraform + Azure AI Foundry

This is a hands-on engineering curriculum. You are expected to **build**, not merely read.

### The rule

**Read less. Build more. Break it. Fix it. Explain it. Automate it.**

## Every lab

```text
MISSION
 ↓
CREATE / EDIT FILES
 ↓
RUN COMMAND
 ↓
READ OUTPUT
 ↓
VALIDATE
 ↓
BREAK
 ↓
DIAGNOSE
 ↓
FIX
 ↓
CHALLENGE
 ↓
SOLUTION
 ↓
CLEANUP
```

## How to work

1. Clone the repository.
2. Enter the lab.
3. Read the mission and acceptance criteria.
4. Create `student-work/` when requested.
5. Create or edit the required files manually.
6. Run the exact command.
7. Stop and read the output.
8. Record evidence.
9. Continue only after the checkpoint passes.
10. Complete Break/Fix.
11. Complete the challenge without the solution.
12. Compare with the reference solution.
13. Clean up Azure resources.

## Output-first learning

For every important command, answer:

- What did the command do?
- What did the output prove?
- What changed?
- What should I inspect next?

For Terraform, always understand:

```text
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
terraform state list
terraform state show
terraform output
terraform destroy
```

## Evidence

Capture the outputs that prove your work:

```text
evidence/
├── 01-preflight.txt
├── 02-init.txt
├── 03-validate.txt
├── 04-plan.txt
├── 05-apply.txt
├── 06-inspection.txt
└── 07-validation.txt
```

PowerShell example:

```powershell
terraform plan | Tee-Object evidence/04-plan.txt
```

## Break/Fix

Use:

**Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention**

First identify the layer:

```text
HCL → Terraform → Provider → Azure API → Identity/RBAC → Network → Quota/Capacity
```

## Solution policy

Do not open `solution/` until the challenge is attempted.

## Security

Never commit passwords, PATs, tokens, client secrets or other credentials. Use example files and appropriate Azure/GitHub secret mechanisms.

## Definition of done

A lab is complete only when you can reproduce the result in a fresh workspace and explain the important outputs and failure/recovery path.
