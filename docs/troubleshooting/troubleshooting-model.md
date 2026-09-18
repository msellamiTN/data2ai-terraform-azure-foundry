# Troubleshooting Guide

## Standard diagnostic sequence

| Step | Question |
|---|---|
| Symptom | What exactly failed? |
| Evidence | What does Terraform/Azure report? |
| Diagnosis | Which component is implicated? |
| Root Cause | Why did the failure occur? |
| Fix | What minimal change resolves it? |
| Validation | How do we prove recovery? |
| Prevention | How do we stop recurrence? |

## Common Terraform failures

### Wrong subscription

**Evidence:** resources are missing from the expected subscription.

**Diagnosis:** Azure CLI/Terraform context points to another subscription.

**Fix:** verify the active Azure subscription and Terraform provider configuration.

### State problems

**Evidence:** Terraform proposes unexpected recreation or reports state conflicts.

**Diagnosis:** state does not represent the intended infrastructure.

**Fix:** inspect state before modifying resources; use import or state operations deliberately.

### Permission failure

Use:

**Identity → Role → Scope → Permission**

Check the caller identity, assigned role, assignment scope, and target operation.

### Model deployment failure

Check:

1. model identifier,
2. model/version compatibility,
3. deployment configuration,
4. regional availability,
5. quota/capacity,
6. permissions.

Never treat the error message alone as sufficient evidence.
