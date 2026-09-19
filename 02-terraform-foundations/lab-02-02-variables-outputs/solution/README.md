# Reference Solution — Lab 02-02

The reference implementation is the `starter/` configuration after the learner has supplied valid environment-specific values.

Expected design:
- provider pinned to AzureRM 4.x;
- environment-specific values in `terraform.tfvars`;
- reusable inputs in `variables.tf`;
- Resource Group configuration in `main.tf`;
- operational information exposed through `outputs.tf`;
- no secrets committed to Git.

Validation contract: `terraform fmt`, `terraform init`, `terraform validate`, plan/apply, Azure verification, then `validation/validate.ps1`.
