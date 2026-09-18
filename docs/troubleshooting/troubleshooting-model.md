# Troubleshooting Model

| Stage | Question |
|---|---|
| Symptom | What exactly failed? |
| Evidence | What did Terraform/Azure actually report? |
| Diagnosis | Which component is implicated? |
| Root Cause | Why did it fail? |
| Fix | What is the smallest safe correction? |
| Validation | What proves recovery? |
| Prevention | What guardrail prevents recurrence? |

## Permission failures
Use **Identity → Role → Scope → Permission**.

## Model deployment failures
Check identifier, version, deployment configuration, regional availability, quota/capacity and authorization. Record the exact error before changing configuration.
