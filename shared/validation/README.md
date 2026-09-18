# Validation Scripts

Validation scripts are learner-facing proof mechanisms.

A validator should:

- return explicit PASS/FAIL,
- identify the failed check,
- provide the next diagnostic action,
- avoid exposing the reference solution.

Recommended implementations:

- PowerShell for Windows/Azure CLI learners.
- Bash for Linux/WSL learners.

Expected pattern:

```text
[PASS] Resource group exists
[PASS] Terraform state is initialized
[FAIL] Required tag is missing
Action: inspect Terraform configuration and re-run validation.
```
