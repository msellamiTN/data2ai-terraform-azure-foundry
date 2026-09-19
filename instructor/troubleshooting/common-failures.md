# Data2AI Academy — Common Failures

## Diagnostic model

Use this order:

**Identity → Subscription → Scope → Provider → Configuration → Resource → State → Network → Quota**

## Wrong subscription

**Symptom:** Terraform creates or searches in an unexpected subscription.

**Evidence:** `az account show`

**Diagnosis:** the active Azure CLI subscription does not match the training target.

**Fix:** select the intended subscription and re-run validation.

**Prevention:** make subscription verification a mandatory preflight checkpoint.

## Wrong tenant

**Symptom:** authentication succeeds but the expected subscription or resource is unavailable.

**Evidence:** `az account show --query tenantId`

**Diagnosis:** the authenticated identity is associated with a different tenant than expected.

**Fix:** re-authenticate against the intended tenant.

## RBAC scope

**Symptom:** Azure returns authorization or forbidden errors.

Use the sequence **Identity → Role → Scope → Permission** before changing Terraform.

## Provider version

**Symptom:** a resource argument is rejected or behavior differs from the lab.

**Evidence:** `terraform version` and `terraform providers`

**Prevention:** pin the provider compatibility range and run `terraform init` before execution.

## State

**Symptom:** Terraform proposes unexpected create, update, or destroy operations.

**Evidence:** `terraform state list`, `terraform state show`, and `terraform plan`

Never delete state blindly.

## Drift

A resource changed outside Terraform and the next plan detects changes. Teach that Terraform state is not Azure itself; drift is an engineering signal.
