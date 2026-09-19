# Break/Fix — State Drift

1. Apply the starter configuration.
2. Change a tag manually in Azure with `az group update`.
3. Run `terraform plan`.
4. Capture the proposed change.
5. Explain why the plan differs from the last State snapshot.
6. Restore the desired value through Terraform.
7. Re-run the plan and prove the drift is reconciled.

Evidence must include the Azure command and both Terraform plans.
