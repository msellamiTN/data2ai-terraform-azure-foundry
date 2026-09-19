# Data2AI Academy — Lab Delivery Guide

## Before the session

Verify GitHub access, Azure subscription access, tenant, region, Azure CLI, Terraform, PowerShell or Bash, Git, VS Code, permissions, and quota.

Run the learner preflight before the first lab.

## During a Build Lab

1. Mission briefing — short and focused.
2. Learner build — majority of the lab.
3. Validation checkpoint.
4. Break/Fix.
5. Challenge.
6. Solution comparison.
7. Cleanup.

## During Break/Fix

Do not provide the broken line immediately. Ask the learner to capture the command, error, affected resource, Terraform state, Azure state, and suspected layer.

Classify the failure through:

**CLI → Terraform → Provider → Azure API → Identity → RBAC → Resource → State**

## During Challenge

Provide only the contract. The learner decides resource structure, variables, outputs, dependencies, validation, naming, tags, and recovery strategy.

## Evidence protocol

Capture evidence in this order:

1. preflight
2. plan
3. apply
4. validation
5. break
6. fix
7. cleanup

Evidence must show what happened, not only the final state.

## Completion gate

A learner is not complete merely because `terraform validate` passes. The implementation must satisfy the real lab contract and survive the challenge.
